import { expect, test } from "bun:test";
import { distanceFun, filterColinearPoints, orderPointsByNearestNeighbor } from "../src";
import * as kdTree from "kd-tree-javascript";

type Point = {
  x: number;
  y: number;
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
];

const pointsA = [
  { x: 0, y: 1 },
  { x: 0.5, y: 1 },
  { x: 1, y: 1 },
  { x: 1.5, y: 1 },
  { x: 2, y: 1 },
  { x: 2.5, y: 1 },
  { x: 3, y: 1 },
  { x: 3.5, y: 1 },
  { x: 4, y: 1 },
  { x: 4.5, y: 1 },
];

export function shuffleArray(array: Array<any>) {
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1)); // Generate a random index from 0 to i
    [array[i], array[j]] = [array[j], array[i]]; // Swap elements at indices i and j
  }
  return array;
}

function isSortedCorrectly(points: Point[], sortedPoints: Point[]) {
  const startIndex = sortedPoints.findIndex(
    (point) => point.x === points[0].x && point.y === points[0].y
  );
  return points.every((point, index) => {
    const sortedIndex = startIndex + index;
    const modIndex =
      sortedIndex > sortedPoints.length - 1
        ? sortedIndex - sortedPoints.length
        : sortedIndex;
    return (
      point.x === sortedPoints[modIndex].x &&
      point.y === sortedPoints[modIndex].y
    );
  });
}

function giveVertexArray(points: Point[]) {
  let vertex = [`/vertex/number ${points.length}`];
  points.forEach(({ x, y }, index) => {
    vertex.push(`/vertex/${index + 1}/xy ${x} ${y}`);
  });
  return vertex;
}



const tree = new kdTree.kdTree([...points], distanceFun, ["x", "y"]);

test("shuffle and sort array see if same modulo index", () => {
  const simplifiedSourcePoints = filterColinearPoints([...points], tree);
  // Shuffle the array indices
  const shuffledPoints = shuffleArray(points.slice());
  const shuffledTree = new kdTree.kdTree([...shuffledPoints], distanceFun, [
    "x",
    "y",
  ]);
  const simplifiedPoints = filterColinearPoints(
    [...shuffledPoints],
    shuffledTree
  );

  // Sort the shuffled array
  const sortedPoints = orderPointsByNearestNeighbor(simplifiedPoints);

  //   console.log(sortedPoints);
  console.log(giveVertexArray(sortedPoints)); // to import path in spat5.viewer

  expect(sortedPoints.length).toBe(simplifiedSourcePoints.length);

  // Check if every point in the original array matches the corresponding point in the sorted array with an offset
  const isSortCorrect = isSortedCorrectly(simplifiedSourcePoints, sortedPoints);

  // Check if the sort as been done in the reverse order
  const reversedSorted = [...sortedPoints].reverse();

  const isRevSortCorrect = isSortedCorrectly(
    simplifiedSourcePoints,
    reversedSorted
  );

  expect(isSortCorrect || isRevSortCorrect).toBe(true);
});

// test("100X times shuffle and sort array see if same modulo index", () => {
//   for (let i = 0; i < 100; i++) {
//     const simplifiedSourcePoints = filterColinearPoints([...points], tree);
//     // Shuffle the array indices
//     const shuffledPoints = shuffleArray(points.slice());
//     const shuffledTree = new kdTree.kdTree([...shuffledPoints], distanceFun, [
//       "x",
//       "y",
//     ]);
//     const simplifiedPoints = filterColinearPoints(
//       [...shuffledPoints],
//       shuffledTree
//     );

//     // Sort the shuffled array
//     const sortedPoints = orderPointsByNearestNeighbor(simplifiedPoints);

//     //   console.log(sortedPoints);
//     console.log(giveVertexArray(sortedPoints)); // to import path in spat5.viewer

//     expect(sortedPoints.length).toBe(simplifiedSourcePoints.length);

//     // Check if every point in the original array matches the corresponding point in the sorted array with an offset
//     const isSortCorrect = isSortedCorrectly(
//       simplifiedSourcePoints,
//       sortedPoints
//     );

//     // Check if the sort as been done in the reverse order
//     const reversedSorted = [...sortedPoints].reverse();

//     const isRevSortCorrect = isSortedCorrectly(
//       simplifiedSourcePoints,
//       reversedSorted
//     );

//     expect(isSortCorrect || isRevSortCorrect).toBe(true);
//   }
// });
