import { areaOfCap } from "./areaOfCap";

/**
 * Calculate the area of a spherical collar.
 * @param dim - The dimension of the collar (a positive integer).
 * @param aTop - The top (smaller) spherical radius or an array of top radii.
 * @param aBot - The bottom (larger) spherical radius or an array of bottom radii.
 * @returns The area of the spherical collar.
 */

export function areaOfCollar(
  dim: number,
  aTop: number | number[],
  aBot: number | number[]
): number | number[] {
  // Ensure aTop and aBot are arrays for consistent processing
  const aTopArray = Array.isArray(aTop) ? aTop : [aTop];
  const aBotArray = Array.isArray(aBot) ? aBot : [aBot];

  // Validate dimensions
  if (!Number.isInteger(dim) || dim <= 0) {
    throw new Error("Dimension must be a positive integer.");
  }

  // Validate array sizes
  if (aTopArray.length !== aBotArray.length) {
    throw new Error("aTop and aBot must have the same array size.");
  }

  // Calculate the area of the spherical collar
  const areaArray: number[] = [];
  for (let i = 0; i < aTopArray.length; i++) {
    const areaTop = areaOfCap(dim, aTopArray[i]) as number;
    const areaBot = areaOfCap(dim, aBotArray[i]) as number;
    const area = areaBot - areaTop;
    areaArray.push(area);
  }

  // Return single value or array of areas
  return areaArray.length === 1 ? areaArray[0] : areaArray;
}

// Example usage
// const area = areaOfCollar(2, [0, 1, 2], [1, 2, 3]); // [ 2.88836579751364, 6.009547198688216, 3.6055786198356863]
// console.log(area);
// console.log(areaOfCollar(2, 6, 3)); //12.253234146329946
