/**
 * Convert Euclidean to spherical distance.
 * @param {number | number[]} e - The Euclidean distance or an array of Euclidean distances.
 * @returns {number | number[]} The spherical distance or an array of spherical distances.
 */

export function euc2sphDist(e: number | number[]): number | number[] {
  if (typeof e === "number") {
    // Convert a single number
    return 2 * Math.asin(e / 2);
  } else if (Array.isArray(e)) {
    // Convert an array of numbers
    return e.map((val) => 2 * Math.asin(val / 2));
  } else {
    throw new Error("Invalid input. Expected a number or an array of numbers.");
  }
}

// Example usage:
// console.log(euc2sphDist(2)); // Output: 3.141592653589793
// console.log(euc2sphDist([0, 0.5, 1, 1.5, 2])); // Output: [0, 0.5053605156578263, 1.0471975511965979, 1.6961192029220228, 3.141592653589793]
// console.log(euc2sphDist(-2)); // Output: -3.141592653589793
