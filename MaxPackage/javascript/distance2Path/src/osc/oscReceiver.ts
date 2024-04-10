import { readPacket } from "osc/dist/osc";
import { createSocket, RemoteInfo, Socket } from "dgram";
import { EventEmitter } from "tsee";

export type TInfos = Array<number | string | boolean>;

export type THoloPacket = {
  address: string[];
  args: TInfos;
};

export type TOSCPacket = { address: string; args: TInfos };

export const oscAddressToStringArray = (address: string) =>
  address.split("/").slice(1);

type IUdpReceiveEvents = {
  message: (message: THoloPacket, remoteAddress: string) => void;
};

const oscReceiverFactory = () => {
  let ready = false;

  const events = new EventEmitter<IUdpReceiveEvents>();

  let udpSocket = createSocket({
    type: "udp4",
  });

  const onClose = () => {
    ready = false;
  };
  udpSocket.on("close", onClose);
  udpSocket.on("error", console.error);

  const onMessage = (msg: Buffer, remoteInfo: RemoteInfo) => {
    try {
      const message = readPacket(msg.buffer, {}) as TOSCPacket & {
        packets: TOSCPacket[];
      };
      if (message.packets !== undefined) {
        message.packets
          .map(({ address, args }) => ({
            address: oscAddressToStringArray(address),
            args,
          }))
          .filter((newMessage) => newMessage.address[0] !== "group") // block 'group' messages from Pano
          .forEach((mess) => events.emit("message", mess, remoteInfo.address));
      } else {
        const { address, args } = message;
        events.emit(
          "message",
          { address: oscAddressToStringArray(address), args },
          remoteInfo.address
        );
      }
    } catch (e) {
      if (e instanceof Error) {
        console.error(e);
      } else {
        console.error(new Error(String(e)));
      }
    }
  };
  udpSocket.on("message", onMessage);

  const dispose = () => {
    udpSocket.removeListener("close", onClose);
    udpSocket.removeListener("message", onMessage);
    return new Promise<void>((resolve) => {
      if (ready) {
        resolve();
        // NOTE : works better without closing udpsocket, so comment code below for now

        // udpSocket.close(() => {
        //   ready = false;
        //   resolve();
        // });
        // udpSocket = dgram.createSocket({
        //   type: 'udp4',
        // });
      } else {
        resolve();
      }
    });
  };

  const checkPortAvailability = (port: number) => {
    const testSocket: Socket = createSocket({
      type: "udp4",
    });
    return new Promise((resolve, reject) => {
      testSocket.once("error", (error: NodeJS.ErrnoException) => {
        if (error.code === "EADDRINUSE") {
          resolve(false);
          reject(new Error(`Port ${port} is already in use`));
        } else {
          resolve(false);
          reject(error);
        }
        testSocket.close();
      });
      testSocket.once("listening", () => {
        testSocket.close();
        resolve(true);
      });
      testSocket.bind(port);
    });
  };

  const listen = async (localPort: number, localAddress?: string) => {
    const test = await checkPortAvailability(localPort);
    if (test === false) {
      console.error(new Error(`Port ${localPort} already in use`));
    }
    udpSocket = createSocket({
      type: "udp4",
    });
    udpSocket.on("message", onMessage);
    udpSocket.on("close", onClose);
    if (localAddress !== undefined) {
      return new Promise<void>((resolve) => {
        udpSocket.bind(localPort, localAddress, () => {
          ready = true;
          resolve();
        });
      });
    }
    return new Promise<void>((resolve) => {
      udpSocket.bind(localPort, () => {
        ready = true;
        resolve();
      });
    });
  };

  const disconnect = () => {
    udpSocket.close();
  };

  const isReady = () => {
    return ready;
  };

  return { dispose, isReady, listen, disconnect, events };
};

export default oscReceiverFactory;
