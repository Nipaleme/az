import { areaOfCap } from "./areaOfCap";
import { areaOfSphere } from "./areaOfSphere";
import { uniroot } from "./functions";

/**
 * Calculate the spherical radius of a spherical cap of given area.
 * @param {number} dim - The number of dimensions
 * @param {number | number[]} area - The area of the spherical cap(s).
 * @returns {number | number[]} The spherical radius of the spherical cap(s).
 */
export function sRadiusOfCap(
  dim: number,
  area: number | number[]
): number | number[] {
  // For dimensions greater than 2, approximate using FZERO
  switch (dim) {
    case 1:
      return Array.isArray(area) ? area.map((ar) => ar / 2) : area / 2;
    case 2:
      return Array.isArray(area)
        ? area.map(
            (currArea) => 2 * Math.asin(Math.sqrt(currArea / Math.PI) / 2)
          )
        : 2 * Math.asin(Math.sqrt(area / Math.PI) / 2);
    default:
      if (Array.isArray(area)) {
        // Flatten area into a row vector
        const shape = area.length;
        const s_cap: number[] = [];
        let flipped = false;

        for (let k = 0; k < shape; k++) {
          let ak = area[k];
          const as = areaOfSphere(dim) as number;

          if (ak >= as) {
            s_cap.push(Math.PI);
          } else {
            if (2 * ak > as) {
              ak = as - ak;
              flipped = true;
            } else {
              flipped = false;
            }
            const fzeroFunction = (s: number) => {
              const offset = ak;
              const currArea = areaOfCap(dim, s) as number;
              return currArea - offset;
            };
            const sk = uniroot(fzeroFunction, 0, Math.PI);
            if (sk === undefined) {
              throw new Error("ZEROIN Cannot find zero.");
            }
            if (flipped === true) {
              s_cap.push(Math.PI - sk);
            } else {
              s_cap.push(sk);
            }
          }
        }
        return s_cap;
      } else {
        let ak = area;
        const as = areaOfSphere(dim) as number;
        let flipped = false;

        if (ak >= as) {
          return Math.PI;
        } else {
          if (2 * ak > as) {
            ak = as - ak;
            flipped = true;
          } else {
            flipped = false;
          }
          const fzeroFunction = (s: number) => {
            const currArea = areaOfCap(dim, s) as number;
            return currArea - ak;
          };
          const zero = uniroot(fzeroFunction, 0, Math.PI);
          if (zero === undefined) {
            throw new Error("ZEROIN Cannot find zero.");
          }
          if (flipped === true) {
            return Math.PI - zero;
          } else {
            return zero;
          }
        }
      }
  }
}

// Example usage :
// const area = areaOfSphere(2) as number;
// console.log(sRadiusOfCap(2, area / 2));
// console.log(sRadiusOfCap(3, [0, 4.9348, 9.8696, 14.8044, 19.7392]));
