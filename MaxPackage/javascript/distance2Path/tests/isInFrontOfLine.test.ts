import { expect, test } from "bun:test";
import { getSortedPoints, isPointCrossLine } from "../src";

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

test("test if point is in front of line working", () => {
  const { rotatedPoints, isOutlier } = getSortedPoints(AvignonPoints);
  expect(isOutlier).toBe(true);

  const target1 = { x: 0, y: 20 };
  const isT1inFront = isPointCrossLine(target1, rotatedPoints);
  expect(isT1inFront !== -1).toBe(true);

  const target2 = { x: 0, y: 10 };
  const isT2inFront = isPointCrossLine(target2, rotatedPoints);
  expect(isT2inFront).toBe(-1);

  const target3 = { x: 0, y: 12.5 };
  const isT3inFront = isPointCrossLine(target3, rotatedPoints);
  expect(isT3inFront).toBe(-1);

  const target4 = { x: 0.4499635100364685, y: 12.885269165039062 };
  const isT4inFront = isPointCrossLine(target4, rotatedPoints);
  expect(isT4inFront).toBe(-1);

  const target5 = { x: 17, y: 20 };
  const isT5inFront = isPointCrossLine(target5, rotatedPoints);
  expect(isT5inFront !== -1).toBe(true);
});
