import { kdTree } from "kd-tree-javascript";
import oscReceiverFactory, { THoloPacket } from "./osc/oscReceiver";
import oscSenderFactory from "./osc/oscSender";

export type Point = {
  x: number;
  y: number;
};

type Corner = {
  point: Point;
  dist: number | undefined;
};

const points = [
  { x: 2.3, y: 46 },
  { x: 6.8, y: 40.8 },
  { x: 6.8, y: 36.8 },
  { x: 6.3, y: 32 },
  { x: 10.7, y: 26.9 },
  { x: 10.7, y: 22.8 },
  { x: 10.7, y: 18.8 },
  { x: 6.3, y: 13.7 },
  { x: 13.7, y: 6.25 },
  { x: 18.8, y: 10.7 },
  { x: 22.8, y: 10.7 },
  { x: 26.8, y: 10.7 },
  { x: 33.7, y: 4 },
  { x: 33.7, y: 0 },
  { x: 33.7, y: -4 },
  { x: 26.8, y: -10.7 },
  { x: 22.8, y: -10.7 },
  { x: 18.8, y: -10.7 },
  { x: 13.7, y: -6.25 },
  { x: 6.3, y: -13.7 },
  { x: 10.7, y: -18.8 },
  { x: 10.7, y: -22.8 },
  { x: 10.7, y: -26.9 },
  { x: 6.3, y: -32 },
  { x: 6.8, y: -36.8 },
  { x: 6.8, y: -41 },
  { x: 2.3, y: -43.2 },
  { x: -2.3, y: -43.2 },
  { x: -6.8, y: -41 },
  { x: -6.8, y: -36.8 },
  { x: -6.3, y: -32 },
  { x: -10.7, y: -26.9 },
  { x: -10.7, y: -22.8 },
  { x: -10.7, y: -18.8 },
  { x: -6.3, y: -13.7 },
  { x: -13.7, y: -6.25 },
  { x: -18.8, y: -10.7 },
  { x: -22.8, y: -10.7 },
  { x: -26.8, y: -10.7 },
  { x: -33.7, y: -4 },
  { x: -33.7, y: -0 },
  { x: -33.7, y: 4 },
  { x: -26.8, y: 10.7 },
  { x: -22.8, y: 10.7 },
  { x: -18.8, y: 10.7 },
  { x: -13.7, y: 6.25 },
  { x: -6.3, y: 13.7 },
  { x: -10.7, y: 18.8 },
  { x: -10.7, y: 22.8 },
  { x: -10.7, y: 26.9 },
  { x: -6.3, y: 32 },
  { x: -6.8, y: 36.8 },
  { x: -6.8, y: 40.8 },
  { x: -2.3, y: 46 },
  // { x: 4.01, y: 9.92, z: 37 },
  // { x: 9.85, y: 4.18, z: 37 },
  // { x: 9.88, y: -4.11, z: 37 },
  // { x: 3.92, y: -9.96, z: 37 },
  // { x: -3.92, y: -9.96, z: 37 },
  // { x: -9.88, y: -4.11, z: 37 },
  // { x: -9.85, y: 4.18, z: 37 },
  // { x: -4.01, y: 9.92, z: 37 },
];

const AvignonPoints = [
  { x: -14.297914, y: 17.1 },
  { x: -13.578505, y: 16.888254 },
  { x: -12.87, y: 16.67 },
  { x: -12.152647, y: 16.447361 },
  { x: -11.436519, y: 16.224319 },
  { x: -10.719787, y: 16.025124 },
  { x: -9.989264, y: 15.832025 },
  { x: -9.26182, y: 15.667122 },
  { x: -8.529149, y: 15.520879 },
  { x: -7.794607, y: 15.377311 },
  { x: -7.060101, y: 15.244506 },
  { x: -6.321141, y: 15.111173 },
  { x: -5.585004, y: 14.993589 },
  { x: -4.843909, y: 14.8815 },
  { x: -4.102017, y: 14.781376 },
  { x: -3.359251, y: 14.690825 },
  { x: -2.615191, y: 14.607751 },
  { x: -1.869117, y: 14.55044 },
  { x: -1.121326, y: 14.506727 },
  { x: -0.374248, y: 14.485166 },
  { x: 0.374248, y: 14.485166 },
  { x: 1.121326, y: 14.506727 },
  { x: 1.869117, y: 14.55044 },
  { x: 2.615191, y: 14.607751 },
  { x: 3.359251, y: 14.690825 },
  { x: 4.102017, y: 14.781376 },
  { x: 4.843909, y: 14.8815 },
  { x: 5.585004, y: 14.993589 },
  { x: 6.321141, y: 15.111173 },
  { x: 7.060101, y: 15.244506 },
  { x: 7.794607, y: 15.377311 },
  { x: 8.529149, y: 15.520879 },
  { x: 9.26182, y: 15.667122 },
  { x: 9.989264, y: 15.832025 },
  { x: 10.719787, y: 16.025124 },
  { x: 11.436519, y: 16.224319 },
  { x: 12.152647, y: 16.447361 },
  { x: 12.87, y: 16.67 },
  { x: 13.578505, y: 16.888254 },
  { x: 14.297914, y: 17.1 },
];

function findNearestIndex(thisPoint: Point, listToSearch: Point[]) {
  let nearestDistSquared = Infinity;
  let nearestIndex: number = 0;

  for (let i = 0; i < listToSearch.length; i++) {
    const point2 = listToSearch[i];
    const distsq =
      Math.pow(thisPoint.x - point2.x, 2) + Math.pow(thisPoint.y - point2.y, 2);

    if (distsq < nearestDistSquared) {
      nearestDistSquared = distsq;
      nearestIndex = i;
    }
  }

  return nearestIndex;
}

function findPointWithFarthestPoints(points: Point[]) {
  let maxDistanceSquared = 0;
  let pointWithFarthestPointsIndex = 0;

  for (let i = 0; i < points.length; i++) {
    let maxDistSquaredFromPointI = 0;

    for (let j = 0; j < points.length; j++) {
      if (i === j) continue;

      const distSquared =
        Math.pow(points[i].x - points[j].x, 2) +
        Math.pow(points[i].y - points[j].y, 2);

      maxDistSquaredFromPointI = Math.max(
        maxDistSquaredFromPointI,
        distSquared
      );
    }

    if (maxDistSquaredFromPointI > maxDistanceSquared) {
      maxDistanceSquared = maxDistSquaredFromPointI;
      pointWithFarthestPointsIndex = i;
    }
  }

  return pointWithFarthestPointsIndex;
}

// Function to order points based on nearest neighbor algorithm inspired by https://stackoverflow.com/questions/25287834/how-to-sort-a-collection-of-points-so-that-they-set-up-one-after-another#answer-25289128
export function orderPointsByNearestNeighbor(points: Point[]) {
  const point1Index = findPointWithFarthestPoints(points);

  const orderedList = [points[point1Index]] as Point[]; // Start with the first point
  const remainingPoints = points.slice(); // Copy the array of points

  // Remove the chosen point from the remaining points
  remainingPoints.splice(point1Index, 1);

  while (remainingPoints.length > 0) {
    // Find the index of the closest point
    const nearestIndex = findNearestIndex(
      orderedList[orderedList.length - 1],
      remainingPoints
    );

    // Remove from the unorderedList and add to the ordered one
    orderedList.push(remainingPoints.splice(nearestIndex, 1)[0]);
  }

  return orderedList;
}

export function distanceFun(point1: Point, point2: Point) {
  const dx = point1.x - point2.x;
  const dy = point1.y - point2.y;
  return Math.sqrt(dx * dx + dy * dy);
}

export function distanceFunSquared(point1: Point, point2: Point) {
  const dx = point1.x - point2.x;
  const dy = point1.y - point2.y;
  return dx * dx + dy * dy;
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
    ) < tolerance;

  if (!collinear) {
    return false; // Point is not on the line passing through point1 and point2
  }

  // Check if the point's coordinates fall within the range of the coordinates of point1 and point2
  const minX = Math.min(point1.x, point2.x) - tolerance;
  const maxX = Math.max(point1.x, point2.x) + tolerance;
  const minY = Math.min(point1.y, point2.y) - tolerance;
  const maxY = Math.max(point1.y, point2.y) + tolerance;

  return (
    point.x >= minX && point.x <= maxX && point.y >= minY && point.y <= maxY
  );
}

function distance2Line(
  vectorPoint: Point,
  cornerA: Corner,
  cornerB: Corner,
  onlyProjectionDist = false as boolean
) {
  // Calculate the direction vector of the line
  const lineDirection = {
    x: cornerB.point.x - cornerA.point.x,
    y: cornerB.point.y - cornerA.point.y,
  };

  // Calculate the vector from linePoint1 to the point
  const pointToLinePoint1 = {
    x: vectorPoint.x - cornerA.point.x,
    y: vectorPoint.y - cornerA.point.y,
  };

  // Calculate the projection scalar
  const dotProduct =
    pointToLinePoint1.x * lineDirection.x +
    pointToLinePoint1.y * lineDirection.y;
  const lineDirectionLengthSquared =
    lineDirection.x * lineDirection.x + lineDirection.y * lineDirection.y;
  const projectionScalar = dotProduct / lineDirectionLengthSquared;

  // Calculate the projection vector
  const projectionVector = {
    x: cornerA.point.x + lineDirection.x * projectionScalar,
    y: cornerA.point.y + lineDirection.y * projectionScalar,
  };

  if (onlyProjectionDist === false) {
    const isOnSegment = isPointOnSegment(
      projectionVector as Point,
      cornerA.point,
      cornerB.point
    );

    if (isOnSegment === false) {
      const distA = distanceFun(cornerA.point, vectorPoint);
      const distB = distanceFun(cornerB.point, vectorPoint);
      return Math.min(distA, distB);
    }
  }

  // Calculate the distance between the point and the projection
  const distance = Math.sqrt(
    (vectorPoint.x - projectionVector.x) ** 2 +
      (vectorPoint.y - projectionVector.y) ** 2
  );

  return distance;
}

function pointIsInPoly(point: Point, polygon: Point[]) {
  let isInside = false;

  let minX = Number.POSITIVE_INFINITY;
  let maxX = Number.NEGATIVE_INFINITY;
  let minY = Number.POSITIVE_INFINITY;
  let maxY = Number.NEGATIVE_INFINITY;

  for (const poly of polygon) {
    minX = Math.min(minX, poly.x);
    maxX = Math.max(maxX, poly.x);
    minY = Math.min(minY, poly.y);
    maxY = Math.max(maxY, poly.y);
  }

  if (point.x < minX || point.x > maxX || point.y < minY || point.y > maxY) {
    return false;
  }

  for (let i = 0, j = polygon.length - 1; i < polygon.length; j = i++) {
    const pi = polygon[i];
    const pj = polygon[j];

    if (
      pi.y > point.y !== pj.y > point.y &&
      point.x < ((pj.x - pi.x) * (point.y - pi.y)) / (pj.y - pi.y) + pi.x
    ) {
      isInside = !isInside;
    }
  }

  return isInside;
}

function orientation(p: Point, q: Point, r: Point) {
  // See https://www.geeksforgeeks.org/orientation-3-ordered-points/
  // for details of below formula.
  let val = (q.y - p.y) * (r.x - q.x) - (q.x - p.x) * (r.y - q.y);

  if (val == 0) return 0; // collinear

  return val > 0 ? 1 : 2; // clock or counterclock wise
}

//https://www.geeksforgeeks.org/check-if-two-given-line-segments-intersect/
function onSegment(p: Point, q: Point, r: Point) {
  if (
    q.x <= Math.max(p.x, r.x) &&
    q.x >= Math.min(p.x, r.x) &&
    q.y <= Math.max(p.y, r.y) &&
    q.y >= Math.min(p.y, r.y)
  )
    return true;

  return false;
}

function doIntersect(p1: Point, q1: Point, p2: Point, q2: Point) {
  // Find the four orientations needed for general and
  // special cases
  let o1 = orientation(p1, q1, p2);
  let o2 = orientation(p1, q1, q2);
  let o3 = orientation(p2, q2, p1);
  let o4 = orientation(p2, q2, q1);

  // General case
  if (o1 != o2 && o3 != o4) return true;

  // Special Cases
  // p1, q1 and p2 are collinear and p2 lies on segment p1q1
  if (o1 == 0 && onSegment(p1, p2, q1)) return true;

  // p1, q1 and q2 are collinear and q2 lies on segment p1q1
  if (o2 == 0 && onSegment(p1, q2, q1)) return true;

  // p2, q2 and p1 are collinear and p1 lies on segment p2q2
  if (o3 == 0 && onSegment(p2, p1, q2)) return true;

  // p2, q2 and q1 are collinear and q1 lies on segment p2q2
  if (o4 == 0 && onSegment(p2, q1, q2)) return true;

  return false; // Doesn't fall in any of the above cases
}

export function isPointCrossLine(target: Point, points: Point[]) {
  // for open loops
  return points.findIndex((point, index) => {
    if (index === points.length - 1) return false;
    const nextIndex = index + (1 % points.length);
    if (index === 0) {
      const exctendedLeftPoint = {
        x: points[1].x + (points[0].x - points[1].x) * 1000,
        y: points[1].y + (points[0].y - points[1].y) * 1000,
      };
      return doIntersect(
        { x: 0, y: 0 },
        target,
        points[1],
        exctendedLeftPoint
      );
    } else if (index === points.length - 2) {

      const exctendedRightPoint = {
        x:  points[points.length - 2].x + (points[points.length - 1].x -  points[points.length - 2].x) * 1000,
        y:  points[points.length - 2].y + (points[points.length - 1].y -  points[points.length - 2].y) * 1000,
      };
      return doIntersect(
        { x: 0, y: 0 },
        target,
        points[points.length - 2],
        exctendedRightPoint
      );
    } else {
      return doIntersect({ x: 0, y: 0 }, target, point, points[nextIndex]);
    }
  });
}

function findMiddlePoint(p1: Point, p2: Point, p3: Point): Point {
  // Sort the points by their x-coordinates
  const sortedPointsX = [p1, p2, p3].sort((a, b) => a.x - b.x);

  // If x-coordinates are equal, sort by y-coordinates
  if (sortedPointsX[0].x === sortedPointsX[2].x) {
    return [p1, p2, p3].sort((a, b) => a.y - b.y)[1];
  }

  // The middle point will be the one with the median x-coordinate
  return sortedPointsX[1];
}

export function filterColinearPoints(points: Point[], tree) {
  // Ensure at least 3 points are present to form a line
  if (points.length < 3) {
    return points;
  }

  // Helper function to calculate cross product of vectors (p1p2, p1p3)
  function crossProduct(p1: Point, p2: Point, p3: Point) {
    return (p2.x - p1.x) * (p3.y - p1.y) - (p3.x - p1.x) * (p2.y - p1.y);
  }

  // Iterate through points to filter colinear ones
  const filteredPoints = [] as Point[];
  for (let i = 0, j = points.length; i < j; i += 1) {
    const p1 = points[i];
    const nearestPoints: [Point, number][] = tree
      .nearest(p1, 3)
      .filter(([{ x, y }, dist]) => !(x === p1.x && y === p1.y));
    const p2 = nearestPoints[0][0];
    const p3 = nearestPoints[1][0];

    // Calculate cross product
    const cross = crossProduct(p2, p1, p3);

    // If cross product is not close to 0 (indicating non-collinearity), add the point to filtered list
    if (Math.abs(cross) > 1e-5) {
      filteredPoints.push(p1);
    } else {
      const middlePoint = findMiddlePoint(p1, p2, p3);
      if (!(middlePoint.x === p1.x && middlePoint.y === p1.y)) {
        filteredPoints.push(p1);
      } else {
        // filteredPoints.push(p2, p3);
      }
    }
  }

  // Add the last point since it is not included in the loop
  // filteredPoints.push(points[points.length - 1]);

  return filteredPoints;
}

function giveVertexArray(points: Point[]) {
  let vertex = [`/vertex/number ${points.length}`];
  points.forEach(({ x, y }, index) => {
    vertex.push(`/vertex/${index + 1}/xy ${x} ${y}`);
  });
  return vertex;
}

export function getSegmentsLength(points: Point[]) {
  return points.map((point, index) => {
    const newIndex = (index + 1) % points.length;
    return distanceFunSquared(point, points[newIndex]);
  });
}

export function rotatePoints(points: Point[], lengths: number[]) {
  // Trouver l'index de la plus grande distance
  let maxDistanceIndex = 0;
  for (let i = 1; i < lengths.length; i++) {
    if (lengths[i] > lengths[maxDistanceIndex]) {
      maxDistanceIndex = i;
    }
  }

  // Calculer le décalage : try to place max length in last Index
  const shift = points.length - 1 - maxDistanceIndex;

  // Effectuer la rotation des points
  const rotatedPoints = [] as Point[];
  for (let i = 0; i < points.length; i++) {
    const newIndex = (i + shift) % points.length;
    rotatedPoints.push(points[newIndex]);
  }

  return rotatedPoints;
}

export function analyzeMaxValue(distances: number[]) {
  // Trier le tableau de distances
  distances.sort((a, b) => a - b);

  // Calculer les quartiles
  const n = distances.length;
  const q1Index = Math.floor((n + 1) / 4);
  const q2Index = Math.floor((n + 2) / 2);
  const q3Index = Math.floor((3 * (n + 1)) / 4);

  const q1 =
    n % 4 === 0
      ? (distances[q1Index - 1] + distances[q1Index]) / 2
      : distances[q1Index - 1];
  // const q2 =
  //   n % 2 === 0
  //     ? (distances[q2Index - 1] + distances[q2Index]) / 2
  //     : distances[q2Index - 1];
  const q3 =
    n % 4 === 0
      ? (distances[q3Index - 1] + distances[q3Index]) / 2
      : distances[q3Index - 1];

  // Calculer l'écart interquartile (IQR)
  const iqr = q3 - q1;

  // Déterminer la borne supérieure pour les valeurs aberrantes
  const upperBound = q3 + 1.5 * iqr;

  // Vérifier si la valeur maximale est une valeur aberrante
  const maxValue = distances[n - 1];
  const isOutlier = maxValue > upperBound;

  // Calculer le pourcentage que représente la valeur maximale par rapport au reste du tableau
  const totalSum = distances.reduce((acc, val) => acc + val, 0);
  const maxValuePercentage = (maxValue / totalSum) * 100;

  return {
    isOutlier,
    maxValuePercentage,
  };
}

export function getSortedPoints(points: Point[]) {
  const tree = new kdTree([...points], distanceFunSquared, ["x", "y"]);
  const simplifiedPoints = filterColinearPoints([...points], tree);
  const sortedPoints = orderPointsByNearestNeighbor(simplifiedPoints);
  const segmentsLengths = getSegmentsLength(sortedPoints);

  const { isOutlier, maxValuePercentage } = analyzeMaxValue(segmentsLengths);

  const rotatedPoints = rotatePoints(sortedPoints, segmentsLengths);

  return { rotatedPoints: rotatedPoints, isOutlier: isOutlier };
}

const listenPort = 1234;
const HoloPort = 4003;
const k = 2;

// const tree = new kdTree([...points], distanceFunSquared, ["x", "y"]);
// const simplifiedPoints = filterColinearPoints([...points], tree);
const { rotatedPoints, isOutlier } = getSortedPoints(AvignonPoints);

const simplifiedTree = new kdTree([...rotatedPoints], distanceFunSquared, [
  "x",
  "y",
]);

const loop = !isOutlier;

const dist2Path = async () => {
  try {
    console.log("test");
    console.log(giveVertexArray(rotatedPoints));
    const receiveUdpSocket = oscReceiverFactory();
    const sendUdpSocket = oscSenderFactory();

    const receive = (message: THoloPacket) => {
      const { address, args } = message;
      if (address[address.length - 1] === "xyz" && args.length === 3) {
        const target = { x: args[0], y: args[1], z: args[2] } as Point;

        const index = address[1];

        let sendDefaultValue = false;
        if (loop === true) {
          const isInside = pointIsInPoly(target, rotatedPoints);
          sendDefaultValue = isInside;
        } else {
          const indexPointCrossLine = isPointCrossLine(target, rotatedPoints);
          sendDefaultValue = indexPointCrossLine === -1;
        }
        if (sendDefaultValue === true) {
          sendUdpSocket.send({
            address: ["track", String(index), "direct", "gain"],
            args: [0],
          });
          sendUdpSocket.send({
            address: ["track", String(index), "early", "gain"],
            args: [-8.5],
          });
          sendUdpSocket.send({
            address: ["track", String(index), "reverb", "send"],
            args: [-18],
          });
          return;
        }

        const nearestPoints: [Point, number][] = simplifiedTree.nearest(
          target,
          k
        );
        const nearestWithIndex = nearestPoints.map(([point, dist]) => {
          const index = rotatedPoints.findIndex(({ x, y }) => {
            return x === point.x && y === point.y;
          });
          return { point, dist, index };
        });

        let result: { [key: string]: number } = {};

        nearestWithIndex.forEach((corner) => {
          if (corner.index === -1) return;
          const nextIndex =
            corner.index === rotatedPoints.length - 1
              ? loop === false
                ? -1
                : 0
              : corner.index + 1;
          const previousIndex =
            corner.index === 0
              ? loop === false
                ? -1
                : rotatedPoints.length - 1
              : corner.index - 1;
          const prevCorner: Corner = {
            point: rotatedPoints[previousIndex],
            dist: undefined,
          };
          const currCorner: Corner = {
            point: rotatedPoints[corner.index],
            dist: corner.dist,
          };
          const nextCorner: Corner = {
            point: rotatedPoints[nextIndex],
            dist: undefined,
          };
          if (
            previousIndex !== -1 &&
            !result.hasOwnProperty(`${previousIndex + 1}-${corner.index + 1}`)
          ) {
            const distWithPrevious = distance2Line(
              target,
              prevCorner,
              currCorner,
              loop === false && previousIndex === 0 // if open loop, then extend the first segment to a line
            );
            result[`${previousIndex + 1}-${corner.index + 1}`] =
              distWithPrevious;
          }
          if (
            nextIndex !== -1 &&
            !result.hasOwnProperty(`${corner.index + 1}-${nextIndex + 1}`)
          ) {
            const distWithNext = distance2Line(
              target,
              currCorner,
              nextCorner,
              loop === false && nextIndex === rotatedPoints.length - 1 // if open loop, then extend the last segment to a line
            );
            result[`${corner.index + 1}-${nextIndex + 1}`] = distWithNext;
          }
        });

        const finalDist = Object.entries(result).sort(
          ([keyA, a], [keyB, b]) => a - b
        )[0][1];
        // console.log(result, finalDist);
        const directG = -8.69 * Math.log(finalDist) - 0.5;
        sendUdpSocket.send({
          address: ["track", String(index), "direct", "gain"],
          args: [Math.min(directG, 0)],
        });
        const earlyG = -8.51 * Math.log(finalDist) - 8.51;
        sendUdpSocket.send({
          address: ["track", String(index), "early", "gain"],
          args: [Math.min(earlyG, -8.5)],
        });
        const reverbS = -0.13 * finalDist - 18;
        sendUdpSocket.send({
          address: ["track", String(index), "reverb", "send"],
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
