import betainc from "@stdlib/math/base/special/betainc";
import { areaOfSphere } from "./areaOfSphere";

/**
 * Calculate the area of a spherical cap.
 * @param {number} dim - The dimension of the cap (a positive integer).
 * @param {number | number[]} sCap - The spherical cap radius or an array of cap radii.
 * @returns {number | number[]} The area of the spherical cap. If sCap is a single number, returns a single area. If sCap is an array, returns an array of areas corresponding to each radius.
 * @remarks
 * The argument dim must be a positive integer.
 * The argument sCap must be a real number or an array of real numbers.
 * The result area will be an array of the same size as sCap.
 * sCap is assumed to be in the range [0, pi].
 * The area is defined via the Lebesgue measure on S^dim inherited from its embedding in R^(dim+1).
 * For dim <= 2, and for dim==3 (when pi/6 <= sCap <= pi*5/6), the area is calculated in closed form using the analytic solution of the definite integral given in the reference. Otherwise, the area is calculated using the Matlab function BETAINC, the incomplete Beta function ratio.
 * @see [LeGS01_Lemma_4.1] p255
 */

export function areaOfCap(
  dim: number,
  sCap: number | number[]
): number | number[] {
  const pi = Math.PI;

  const sCapArray = typeof sCap === "number" ? [sCap] : sCap;

  const area = sCapArray.map((s) => {
    switch (dim) {
      case 1:
        return 2 * s;
      case 2:
        return 4 * pi * Math.sin(s / 2) ** 2;
      case 3:
        if (s < pi / 6 || s > (pi * 5) / 6) {
          const area = areaOfSphere(dim) as number; // areafOfSpehere(integer) is a number
          // Near the poles
          return area * betainc(Math.sin(s / 2) ** 2, dim / 2, dim / 2);
        } else {
          // In the tropics
          return (2 * s - Math.sin(2 * s)) * pi;
        }
      default:
        const area = areaOfSphere(dim) as number; // areafOfSpehere(integer) is a number
        // For dim > 3
        return area * betainc(Math.sin(s / 2) ** 2, dim / 2, dim / 2);
    }
  });

  if (typeof sCap === "number") {
    return area[0]; // Return a single number if input was a single number
  }

  return area; // Return an array if input was an array
}

// Example usage:
// console.log(areaOfCap(2, Math.PI / 2));
// console.log(
//   areaOfCap(3, [0, Math.PI / 4, Math.PI / 2, (Math.PI * 3) / 4, Math.PI])
// );
