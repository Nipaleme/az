import { createSocket } from "dgram";
import { THoloPacket } from "./oscReceiver";
import { writePacket } from "osc/dist/osc";

export const stringArrayToOscAddress = (address: string[]) =>
  `/${address.join("/")}`;

const oscSenderFactory = () => {
  const onError = console.error;

  let ip = "";

  let port = 0;

  let active = false;

  let ready = false;

  const udpSocket = createSocket({
    type: "udp4",
  });

  const onSocketError = (e: Error) => {
    if ((e as any).code === "ECONNREFUSED") return;
    onError(e);
    onError(new Error(`${port} ${ip}`));
  };

  udpSocket.on("error", onSocketError);

  const isReady = () => {
    return ready && active;
  };

  const connect = (newIP: string, newPort: number) => {
    return new Promise<void>((resolve) => {
      if (ready) {
        udpSocket.disconnect();
      }
      udpSocket.connect(newPort, newIP, () => {
        ready = true;
        console.log("connect udp send to", newIP, newPort);
        resolve();
      });
    });
  };

  const disconnect = () => {
    if (isReady()) {
      udpSocket.disconnect();
      ready = false;
    }
  };

  const setActive = async (newActive: boolean) => {
    if (newActive !== active) {
      active = newActive;
      if (active) {
        await connect(ip, port).catch(onError);
      } else {
        disconnect();
      }
    }
  };

  const getActive = () => active;

  const setIP = (newIP: string) => {
    if (ip !== newIP && active) {
      connect(newIP, port).catch(onError);
    }
    ip = newIP;
  };

  const setPort = (newPort: number) => {
    if (port !== newPort && active) {
      connect(ip, newPort).catch(onError);
    }
    port = newPort;
  };

  const send = (message: THoloPacket) => {
    if (active && isReady()) {
      try {
        const { address, args } = message;
        const oscPacket = writePacket({
          address: stringArrayToOscAddress(address),
          args,
        });
        udpSocket.send(oscPacket);
      } catch (e: any) {
        onError(e);
      }
    }
  };

  const dispose = () => {
    udpSocket.removeListener("error", onSocketError);
    return new Promise<void>((resolve) => {
      if (isReady()) {
        active = false;
        udpSocket.close(() => {
          ready = false;
          resolve();
        });
      } else {
        resolve();
      }
    });
  };

  return { setIP, setPort, dispose, send, setActive, disconnect, getActive };
};

export default oscSenderFactory;
