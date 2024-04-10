import { areaOfIdealRegion } from "./areaOfIdealRegion";

/**
 * Calculates the ideal angle for spherical collars of an EQ partition.
 * @param {number} dim - The dimension of the sphere.
 * @param {number | number[]} N - The number of regions in the partition.
 * @returns {number | number[]} The ideal angle(s) for the spherical collars.
 */

export function idealCollarAngle(
  dim: number,
  N: number | number[]
): number | number[] {
  const area = areaOfIdealRegion(dim, N);

  let angle: number | number[];
  if (typeof area === "number") {
    angle = Math.pow(area, 1 / dim);
  } else {
    angle = area.map((a) => Math.pow(a, 1 / dim));
  }

  return angle;
}

// Example usage:
// console.log(idealCollarAngle(2, 10)); // Output: 1.1210
// console.log(idealCollarAngle(3, [1, 2, 3, 4, 5, 6])); // Output: [2.7026, 2.145, 1.8739, 1.7025, 1.5805, 1.4873]
