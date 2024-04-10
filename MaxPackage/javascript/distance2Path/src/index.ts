import oscReceiverFactory, { THoloPacket } from "./osc/oscReceiver";
import oscSenderFactory from "./osc/oscSender";
import * as kdTree from "kd-tree-javascript";

type Point = {
  x: number;
  y: number;
  z: number;
};

type Corner = {
  point: Point;
  dist: number;
};

const points: Point[] = [
  { x: 2.3, y: 46, z: 0 },
  { x: 6.8, y: 40.8, z: 0 },
  { x: 6.8, y: 36.8, z: 0 },
  { x: 6.3, y: 32, z: 0 },
  { x: 10.7, y: 26.9, z: 0 },
  { x: 10.7, y: 22.8, z: 0 },
  { x: 10.7, y: 18.8, z: 0 },
  { x: 6.3, y: 13.7, z: 0 },
  { x: 13.7, y: 6.25, z: 0 },
  { x: 18.8, y: 10.7, z: 0 },
  { x: 22.8, y: 10.7, z: 0 },
  { x: 26.8, y: 10.7, z: 0 },
  { x: 33.7, y: 4, z: 0 },
  { x: 33.7, y: 0, z: 0 },
  { x: 33.7, y: -4, z: 0 },
  { x: 26.8, y: -10.7, z: 0 },
  { x: 22.8, y: -10.7, z: 0 },
  { x: 18.8, y: -10.7, z: 0 },
  { x: 13.7, y: -6.25, z: 0 },
  { x: 6.3, y: -13.7, z: 0 },
  { x: 10.7, y: -18.8, z: 0 },
  { x: 10.7, y: -22.8, z: 0 },
  { x: 10.7, y: -26.9, z: 0 },
  { x: 6.3, y: -32, z: 0 },
  { x: 6.8, y: -36.8, z: 0 },
  { x: 6.8, y: -41, z: 0 },
  { x: 2.3, y: -43.2, z: 0 },
  { x: -2.3, y: -43.2, z: 0 },
  { x: -6.8, y: -41, z: 0 },
  { x: -6.8, y: -36.8, z: 0 },
  { x: -6.3, y: -32, z: 0 },
  { x: -10.7, y: -26.9, z: 0 },
  { x: -10.7, y: -22.8, z: 0 },
  { x: -10.7, y: -18.8, z: 0 },
  { x: -6.3, y: -13.7, z: 0 },
  { x: -13.7, y: -6.25, z: 0 },
  { x: -18.8, y: -10.7, z: 0 },
  { x: -22.8, y: -10.7, z: 0 },
  { x: -26.8, y: -10.7, z: 0 },
  { x: -33.7, y: -4, z: 0 },
  { x: -33.7, y: -0, z: 0 },
  { x: -33.7, y: 4, z: 0 },
  { x: -26.8, y: 10.7, z: 0 },
  { x: -22.8, y: 10.7, z: 0 },
  { x: -18.8, y: 10.7, z: 0 },
  { x: -13.7, y: 6.25, z: 0 },
  { x: -6.3, y: 13.7, z: 0 },
  { x: -10.7, y: 18.8, z: 0 },
  { x: -10.7, y: 22.8, z: 0 },
  { x: -10.7, y: 26.9, z: 0 },
  { x: -6.3, y: 32, z: 0 },
  { x: -6.8, y: 36.8, z: 0 },
  { x: -6.8, y: 40.8, z: 0 },
  { x: -2.3, y: 46, z: 0 },
  // { x: 4.01, y: 9.92, z: 37 },
  // { x: 9.85, y: 4.18, z: 37 },
  // { x: 9.88, y: -4.11, z: 37 },
  // { x: 3.92, y: -9.96, z: 37 },
  // { x: -3.92, y: -9.96, z: 37 },
  // { x: -9.88, y: -4.11, z: 37 },
  // { x: -9.85, y: 4.18, z: 37 },
  // { x: -4.01, y: 9.92, z: 37 },
];

function distanceFun(point1: Point, point2: Point) {
  const dx = point1.x - point2.x;
  const dy = point1.y - point2.y;
  const dz = point1.z - point2.z;
  return Math.sqrt(dx * dx + dy * dy + dz * dz);
}

function isPointOnSegment(
  point: Point,
  point1: Point,
  point2: Point,
  tolerance = 1e-6
) {
  // Check if the point is collinear with the line passing through point1 and point2
  const collinear =
    Math.abs(
      (point.x - point1.x) * (point2.y - point1.y) -
        (point.y - point1.y) * (point2.x - point1.x)
    ) < tolerance &&
    Math.abs(
      (point.x - point1.x) * (point2.z - point1.z) -
        (point.z - point1.z) * (point2.x - point1.x)
    ) < tolerance &&
    Math.abs(
      (point.y - point1.y) * (point2.z - point1.z) -
        (point.z - point1.z) * (point2.y - point1.y)
    ) < tolerance;

  if (!collinear) {
    return false; // Point is not on the line passing through point1 and point2
  }

  // Check if the point's coordinates fall within the range of the coordinates of point1 and point2
  const minX = Math.min(point1.x, point2.x) - tolerance;
  const maxX = Math.max(point1.x, point2.x) + tolerance;
  const minY = Math.min(point1.y, point2.y) - tolerance;
  const maxY = Math.max(point1.y, point2.y) + tolerance;
  const minZ = Math.min(point1.z, point2.z) - tolerance;
  const maxZ = Math.max(point1.z, point2.z) + tolerance;

  return (
    point.x >= minX &&
    point.x <= maxX &&
    point.y >= minY &&
    point.y <= maxY &&
    point.z >= minZ &&
    point.z <= maxZ
  );
}

function distance2Line(vectorPoint: Point, cornerA: Corner, cornerB: Corner) {
  // Calculate the direction vector of the line
  const lineDirection = {
    x: cornerB.point.x - cornerA.point.x,
    y: cornerB.point.y - cornerA.point.y,
    z: cornerB.point.z - cornerA.point.z,
  };

  // Calculate the vector from linePoint1 to the point
  const pointToLinePoint1 = {
    x: vectorPoint.x - cornerA.point.x,
    y: vectorPoint.y - cornerA.point.y,
    z: vectorPoint.z - cornerA.point.z,
  };

  // Calculate the projection scalar
  const dotProduct =
    pointToLinePoint1.x * lineDirection.x +
    pointToLinePoint1.y * lineDirection.y +
    pointToLinePoint1.z * lineDirection.z;
  const lineDirectionLengthSquared =
    lineDirection.x * lineDirection.x +
    lineDirection.y * lineDirection.y +
    lineDirection.z * lineDirection.z;
  const projectionScalar = dotProduct / lineDirectionLengthSquared;

  // Calculate the projection vector
  const projectionVector = {
    x: cornerA.point.x + lineDirection.x * projectionScalar,
    y: cornerA.point.y + lineDirection.y * projectionScalar,
    z: cornerA.point.z + lineDirection.z * projectionScalar,
  };

  const isOnSegment = isPointOnSegment(
    projectionVector as Point,
    cornerA.point,
    cornerB.point
  );

  if (isOnSegment === false) {
    const distA =
      cornerA.dist !== undefined
        ? cornerA.dist
        : distanceFun(cornerA.point, vectorPoint);
    const distB =
      cornerB.dist !== undefined
        ? cornerB.dist
        : distanceFun(cornerB.point, vectorPoint);
    return Math.min(distA, distB);
  }

  // Calculate the distance between the point and the projection
  const distance = Math.sqrt(
    (vectorPoint.x - projectionVector.x) ** 2 +
      (vectorPoint.y - projectionVector.y) ** 2 +
      (vectorPoint.z - projectionVector.z) ** 2
  );

  return distance;
}

const listenPort = 1234;
const HoloPort = 4003;

const tree = new kdTree.kdTree([...points], distanceFun, ["x", "y", "z"]);
const k = 2;

const dist2Path = async () => {
  try {
    const receiveUdpSocket = oscReceiverFactory();
    const sendUdpSocket = oscSenderFactory();

    const receive = (message: THoloPacket) => {
      const { address, args } = message;
      if (address[address.length - 1] === "xyz" && args.length === 3) {
        const target = { x: args[0], y: args[1], z: args[2] } as Point;
        const nearestPoints: [Point, number][] = tree.nearest(target, k);
        const nearestWithIndex = nearestPoints.map(([point, dist]) => {
          const index = points.findIndex(({ x, y, z }) => {
            return x === point.x && y === point.y && z === point.z;
          });
          return { point, dist, index };
        });

        let result: { [key: string]: number } = {};

        nearestWithIndex.forEach((corner) => {
          if (corner.index === -1) return;
          const nextIndex =
            corner.index === points.length - 1 ? 0 : corner.index + 1;
          const previousIndex =
            corner.index === 0 ? points.length - 1 : corner.index - 1;
          const prevCorner: Corner = {
            point: points[previousIndex],
            dist: undefined,
          };
          const currCorner: Corner = {
            point: points[corner.index],
            dist: corner.dist,
          };
          const nextCorner: Corner = {
            point: points[nextIndex],
            dist: undefined,
          };
          if (
            !result.hasOwnProperty(`${previousIndex + 1}-${corner.index + 1}`)
          ) {
            const distWithPrevious = distance2Line(
              target,
              prevCorner,
              currCorner
            );
            result[`${previousIndex + 1}-${corner.index + 1}`] =
              distWithPrevious;
          }
          if (!result.hasOwnProperty(`${corner.index + 1}-${nextIndex + 1}`)) {
            const distWithNext = distance2Line(target, currCorner, nextCorner);
            result[`${corner.index + 1}-${nextIndex + 1}`] = distWithNext;
          }
        });

        const finalDist = Object.entries(result).sort(
          ([keyA, a], [keyB, b]) => a - b
        )[0][1];
        // console.log(result, finalDist);
        const directG = -8.69 * Math.log(finalDist) - 0.5;
        sendUdpSocket.send({
          address: ["track", "1", "direct", "gain"],
          args: [Math.min(directG, 0)],
        });
        const earlyG = -8.51 * Math.log(finalDist) - 8.51;
        sendUdpSocket.send({
          address: ["track", "1", "early", "gain"],
          args: [Math.min(earlyG, -8.5)],
        });
        const reverbS = -0.13 * finalDist - 18;
        sendUdpSocket.send({
          address: ["track", "1", "reverb", "send"],
          args: [Math.min(reverbS, -18)],
        });
      } else if (address[address.length - 1] === "aed") {
      }
    };

    await receiveUdpSocket.listen(listenPort, "127.0.0.1");
    receiveUdpSocket.events.on("message", receive);

    sendUdpSocket.setIP("127.0.0.1");
    sendUdpSocket.setPort(HoloPort);
    await sendUdpSocket.setActive(true);
  } catch (e) {
    console.error(e);
  }
};

dist2Path().catch(console.error);
