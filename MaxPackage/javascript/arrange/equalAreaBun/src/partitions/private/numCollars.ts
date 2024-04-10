/**
 * Calculates the number of collars between the polar caps.
 * @param {number | number[]} N - Either a single number or an array of numbers representing the number of regions.
 * @param {number | number[]} c_polar - Either a single number or an array of numbers representing the angle of the polar caps.
 * @param {number | number[]} a_ideal - Either a single number or an array of numbers representing the ideal angle.
 * @returns {number | number[]} The number of collars between the polar caps.
 */
export function numCollars(
  N: number | number[],
  c_polar: number | number[],
  a_ideal: number | number[]
): number | number[] {
  // If all arguments are numbers, perform the calculation directly
  if (
    typeof N === "number" &&
    typeof c_polar === "number" &&
    typeof a_ideal === "number"
  ) {
    if (N <= 2 || a_ideal <= 0) return 0;
    return Math.max(1, Math.round((Math.PI - 2 * c_polar) / a_ideal));
  } else if (
    Array.isArray(N) &&
    Array.isArray(c_polar) &&
    Array.isArray(a_ideal)
  ) {
    // If all arguments are arrays, ensure they have the same length
    if (N.length !== c_polar.length || N.length !== a_ideal.length) {
      throw new Error(
        "Lengths of input arrays N, c_polar, and a_ideal must match."
      );
    }

    // Calculate number of collars for each element in the arrays
    const n_collars: number[] = [];
    for (let i = 0; i < N.length; i++) {
      if (N[i] <= 2 || a_ideal[i] <= 0) {
        n_collars.push(0);
      } else {
        n_collars.push(
          Math.max(1, Math.round((Math.PI - 2 * c_polar[i]) / a_ideal[i]))
        );
      }
    }
    return n_collars;
  } else {
    throw new Error(
      "Invalid input types. Please provide either all arguments as numbers or all arguments as arrays of numbers with the same length."
    );
  }
}

// Example usage:
// console.log(numCollars(6, 0.1, 0.05)); // Output: 59
// console.log(numCollars(32, 0.4, 0.6)); // Output : 4

// const N_values = [3, 4, 5, 6];
// const c_polar_values = [0.1, 0.2, 0.3, 0.4];
// const a_ideal_values = [0.01, 0.02, 0.03, 0.04];
// console.log(numCollars(N_values, c_polar_values, a_ideal_values)); // Output : [294, 137, 85, 59]
