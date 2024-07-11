import { expect, test } from "bun:test";
import {
  analyzeMaxValue,
  distanceFunSquared,
  filterColinearPoints,
  getSegmentsLength,
  orderPointsByNearestNeighbor,
  rotatePoints,
} from "../src";
import * as kdTree from "kd-tree-javascript";

type Point = {
  x: number;
  y: number;
};

const pantheonPoints = [
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

const curveLinePoints = [
  { x: 0, y: 1 },
  { x: 0.5, y: 1 },
  { x: 1, y: 0.7 },
  { x: 1.5, y: 0.7 },
  { x: 2, y: 0.5 },
  { x: 2.5, y: 0.5 },
  { x: 3, y: 0.8 },
  { x: 3.5, y: 0.9 },
  { x: 4, y: 1 },
  { x: 4.5, y: 1 },
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

const pantheonTree = new kdTree.kdTree(
  [...pantheonPoints],
  distanceFunSquared,
  ["x", "y"]
);

const curveTree = new kdTree.kdTree([...curveLinePoints], distanceFunSquared, [
  "x",
  "y",
]);

const avignonTree = new kdTree.kdTree([...AvignonPoints], distanceFunSquared, [
  "x",
  "y",
]);

test("shuffle and sort Pantheon array see if same modulo index", () => {
  for (let i = 0; i < 100; i++) {
    const simplifiedSourcePoints = filterColinearPoints(
      [...pantheonPoints],
      pantheonTree
    );
    // Shuffle the array indices
    const shuffledPoints = shuffleArray(pantheonPoints.slice());
    const shuffledTree = new kdTree.kdTree(
      [...shuffledPoints],
      distanceFunSquared,
      ["x", "y"]
    );
    const simplifiedPoints = filterColinearPoints(
      [...shuffledPoints],
      shuffledTree
    );

    // Sort the shuffled array
    const sortedPoints = orderPointsByNearestNeighbor(simplifiedPoints);

    //   console.log(sortedPoints);
    // console.log(giveVertexArray(sortedPoints)); // to import path in spat5.viewer

    const segmentsLengths = getSegmentsLength(sortedPoints);

    const rotatedPoints = rotatePoints(sortedPoints, segmentsLengths);

    console.log(giveVertexArray(rotatedPoints));

    expect(rotatedPoints.length).toBe(simplifiedSourcePoints.length);

    const { isOutlier, maxValuePercentage } = analyzeMaxValue(segmentsLengths);

    expect(isOutlier).toBe(false);

    // Check if every point in the original array matches the corresponding point in the sorted array with an offset
    const isSortCorrect = isSortedCorrectly(
      simplifiedSourcePoints,
      rotatedPoints
    );

    // Check if the sort as been done in the reverse order
    const reversedSorted = [...rotatedPoints].reverse();

    const isRevSortCorrect = isSortedCorrectly(
      simplifiedSourcePoints,
      reversedSorted
    );

    expect(isSortCorrect || isRevSortCorrect).toBe(true);
  }
});

test("shuffle and sort LineCurve array see if same modulo index", () => {
  for (let i = 0; i < 100; i++) {
    const simplifiedSourcePoints = filterColinearPoints(
      [...curveLinePoints],
      curveTree
    );
    // Shuffle the array indices
    const shuffledPoints = shuffleArray(curveLinePoints.slice());
    const shuffledTree = new kdTree.kdTree(
      [...shuffledPoints],
      distanceFunSquared,
      ["x", "y"]
    );
    const simplifiedPoints = filterColinearPoints(
      [...shuffledPoints],
      shuffledTree
    );

    // Sort the shuffled array
    const sortedPoints = orderPointsByNearestNeighbor(simplifiedPoints);

    //   console.log(sortedPoints);
    // console.log(giveVertexArray(sortedPoints)); // to import path in spat5.viewer

    const segmentsLengths = getSegmentsLength(sortedPoints);

    const rotatedPoints = rotatePoints(sortedPoints, segmentsLengths);

    const vertex = giveVertexArray(rotatedPoints);

    // console.log(vertex);

    expect(rotatedPoints.length).toBe(simplifiedSourcePoints.length);

    const { isOutlier, maxValuePercentage } = analyzeMaxValue(segmentsLengths);

    expect(isOutlier).toBe(true);

    // Check if every point in the original array matches the corresponding point in the sorted array with an offset
    const isSortCorrect = isSortedCorrectly(
      simplifiedSourcePoints,
      rotatedPoints
    );

    // Check if the sort as been done in the reverse order
    const reversedSorted = [...rotatedPoints].reverse();

    const isRevSortCorrect = isSortedCorrectly(
      simplifiedSourcePoints,
      reversedSorted
    );

    expect(isSortCorrect || isRevSortCorrect).toBe(true);
  }
});

test("shuffle and sort AvignonPoints array see if same modulo index", () => {
  const deb = performance.now();
  for (let i = 0; i < 100; i++) {
    const simplifiedSourcePoints = filterColinearPoints(
      [...AvignonPoints],
      avignonTree
    );
    // Shuffle the array indices
    const shuffledPoints = shuffleArray(AvignonPoints.slice());
    const shuffledTree = new kdTree.kdTree(
      [...shuffledPoints],
      distanceFunSquared,
      ["x", "y"]
    );
    const simplifiedPoints = filterColinearPoints(
      [...shuffledPoints],
      shuffledTree
    );

    // Sort the shuffled array
    const sortedPoints = orderPointsByNearestNeighbor(simplifiedPoints);

    //   console.log(sortedPoints);
    // console.log(giveVertexArray(sortedPoints)); // to import path in spat5.viewer

    const segmentsLengths = getSegmentsLength(sortedPoints);

    const rotatedPoints = rotatePoints(sortedPoints, segmentsLengths);

    const vertex = giveVertexArray(rotatedPoints);

    // console.log(vertex);

    expect(rotatedPoints.length).toBe(simplifiedSourcePoints.length);

    const { isOutlier, maxValuePercentage } = analyzeMaxValue(segmentsLengths);

    expect(isOutlier).toBe(true);

    // Check if every point in the original array matches the corresponding point in the sorted array with an offset
    const isSortCorrect = isSortedCorrectly(
      simplifiedSourcePoints,
      rotatedPoints
    );

    // Check if the sort as been done in the reverse order
    const reversedSorted = [...rotatedPoints].reverse();

    const isRevSortCorrect = isSortedCorrectly(
      simplifiedSourcePoints,
      reversedSorted
    );

    expect(isSortCorrect || isRevSortCorrect).toBe(true);
  }
  const end = performance.now();
  console.log(end - deb);

  console.log("----");
console.log(
  giveVertexArray([
    { x: -6.8, y: -41 },
    { x: -6.8, y: -36.8 },
    { x: -6.3, y: -32 },
    { x: -10.7, y: -26.9 },
    { x: -10.7, y: -22.8 },
    { x: -10.7, y: -18.8 },
    { x: -18.8, y: -10.7 },
    { x: -22.8, y: -10.7 },
    { x: -26.8, y: -10.7 },
    { x: -33.7, y: -4 },
    { x: -33.7, y: -0 },
    { x: -33.7, y: 4 },
    { x: -26.8, y: 10.7 },
    { x: -22.8, y: 10.7 },
    { x: -18.8, y: 10.7 },
    { x: -10.7, y: 18.8 },
    { x: -10.7, y: 22.8 },
    { x: -10.7, y: 26.9 },
    { x: -6.3, y: 32 },
    { x: -6.8, y: 36.8 },
    { x: -6.8, y: 40.8 },
    { x: -2.3, y: 46 },
    { x: 2.3, y: 46 },
    { x: 6.8, y: 40.8 },
    { x: 6.8, y: 36.8 },
    { x: 6.3, y: 32 },
    { x: 10.7, y: 26.9 },
    { x: 10.7, y: 22.8 },
    { x: 10.7, y: 18.8 },
    { x: 18.8, y: 10.7 },
    { x: 22.8, y: 10.7 },
    { x: 26.8, y: 10.7 },
    { x: 33.7, y: 4 },
    { x: 33.7, y: 0 },
    { x: 33.7, y: -4 },
    { x: 26.8, y: -10.7 },
    { x: 22.8, y: -10.7 },
    { x: 18.8, y: -10.7 },
    { x: 10.7, y: -18.8 },
    { x: 10.7, y: -22.8 },
    { x: 10.7, y: -26.9 },
    { x: 6.3, y: -32 },
    { x: 6.8, y: -36.8 },
    { x: 6.8, y: -41 },
    { x: 2.3, y: -43.2 },
    { x: -2.3, y: -43.2 },
    { x: -6.8, y: -41 },
  ])
);
});

