import { areaOfSphere } from "./areaOfSphere";

/**
 * Calculate the area of one region of an equal area partition on S^dim.
 * @param {number} dim - The dimension of the region (a positive integer).
 * @param {number | number[]} N - The number of equal area regions or an array of region counts.
 * @returns {number | number[]} The area of one region. If N is a single number, returns a single area. If N is an array, returns an array of areas corresponding to each region count.
 */

export function areaOfIdealRegion(
  dim: number,
  N: number | number[]
): number | number[] {
  const area = areaOfSphere(dim) as number;

  if (typeof N === "number") {
    return area / N;
  } else {
    return N.map((n) => area / n);
  }
}

// Example usage:
// console.log(areaOfIdealRegion(3, [1, 2, 3, 4, 5, 6]));
