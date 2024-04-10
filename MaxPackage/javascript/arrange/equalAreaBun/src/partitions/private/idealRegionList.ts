// import { cpolar } from "@stdlib/math/base/special";
import {areaOfCollar} from "../../utilities/areaOfCollar";
import {areaOfIdealRegion} from "../../utilities/areaOfIdealRegion";
// import { inv, lsolve, multiply } from "mathjs";
import { leastSquares } from "../../utilities/functions";

/**
 * Lists the ideal real number of regions in each zone.
 * @param {number} dim - The dimension.
 * @param {number | number[]} N - The total number of regions. Can be a single number or an array of numbers.
 * @param {number | number[]} c_polar - The angle of the polar caps. Can be a single number or an array of numbers.
 * @param {number} n_collars - The number of collars.
 * @returns {number[]} The list of the ideal real number of regions in each collar, plus the polar caps.
 */

export function idealRegionList(
  dim: number,
  N: number | number[],
  c_polar: number | number[],
  n_collars: number
): number[] {
  const r_regions: number[] = new Array(1 + n_collars).fill(0);
  r_regions[0] = 1;

  if (n_collars > 0) {
    // Calculate the collar angle such that n_collars collars fit between the polar caps
    const a_fitting = Array.isArray(c_polar)
      ? c_polar.map((cPolar) => (Math.PI - 2 * cPolar) / n_collars)
      : (Math.PI - 2 * c_polar) / n_collars;

    // Calculate the ideal region area
    const ideal_region_area: number | number[] = areaOfIdealRegion(dim, N);

    // Calculate the ideal number of regions in each collar
    for (let collar_n = 1; collar_n <= n_collars; collar_n++) {
      if (
        typeof ideal_region_area === "number" &&
        typeof c_polar === "number" &&
        typeof a_fitting === "number"
      ) {
        const ideal_collar_area = areaOfCollar(
          dim,
          c_polar + (collar_n - 1) * a_fitting,
          c_polar + collar_n * a_fitting
        ) as number;
        r_regions[collar_n] = ideal_collar_area / ideal_region_area;
      } else if (
        Array.isArray(a_fitting) &&
        Array.isArray(ideal_region_area) &&
        Array.isArray(c_polar)
      ) {
        if (
          !(
            c_polar.length === a_fitting.length &&
            a_fitting.length === ideal_region_area.length
          )
        ) {
          throw new Error("Vectors must be of the same length");
        }

        const ideal_collar_area = areaOfCollar(
          dim,
          a_fitting.map(
            (aFitting, index) => c_polar[index] + (collar_n - 1) * aFitting
          ),
          a_fitting.map(
            (aFitting, index) => c_polar[index] + collar_n * aFitting
          )
        ) as number[];

        r_regions[collar_n] = leastSquares(
          ideal_region_area,
          ideal_collar_area
        )[0];
      } else {
        throw new Error("Invalid input types for area calculations.");
      }
    }
  }

  r_regions[1 + n_collars] = 1;
  return r_regions;
}

// You need to implement the functions areaOfIdealRegion and areaOfCollar to complete the translation.
// console.log(idealRegionList(3, 6, 0.1, 6)); // [ 1, 0.24292656703999332, 1.0261158693545769, 1.7296868681159125, 1.7296868681159123, 1.026115869354577, 0.24292656703999344, 0, 1 ]
// console.log(idealRegionList(3, [6, 7], [0.1, 0.1], 6));
