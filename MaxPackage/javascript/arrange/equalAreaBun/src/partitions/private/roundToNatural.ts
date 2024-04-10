/**
 * Round off a given list of numbers of regions.
 * @param {number[]} r_regions - The list of the real number of regions in each collar and the polar caps.
 * @returns {number[]} The list of the natural number of regions in each collar and the polar caps.
 */

export const roundToNaturals = (r_regions: number[]): number[] =>
  r_regions.map((val) => Math.round(val));


// Example usage:
// console.log(roundToNaturals([1.2, 2.8, 3.5, 2.3])); // [1, 3, 4, 2]
