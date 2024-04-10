import { areaOfIdealRegion } from "../../utilities/areaOfIdealRegion";
import { sRadiusOfCap } from "../../utilities/sRadiusOfCap";

/**
 * Colatitudes of spherical caps enclosing cumulative sum of regions.
 * @param {number} dim - The dimension.
 * @param {number} N - The total number of regions.
 * @param {number} c_polar - The colatitude of the polar caps.
 * @param {number[]} n_regions - The cumulative sum of regions.
 * @returns {number[]} An increasing list of colatitudes of spherical caps enclosing the cumulative sum of regions.
 */
export function capColats(
  dim: number,
  N: number,
  c_polar: number,
  n_regions: number[]
): number[] {
  const c_caps: number[] = new Array(n_regions.length).fill(0);
  c_caps[0] = c_polar;

  const ideal_region_area = areaOfIdealRegion(dim, N) as number;
  const n_collars = n_regions.length - 2;
  let subtotal_n_regions = 1;

  for (let collar_n = 0; collar_n < n_collars; collar_n++) {
    subtotal_n_regions += n_regions[collar_n + 1];
    c_caps[collar_n + 1] = sRadiusOfCap(
      dim,
      subtotal_n_regions * ideal_region_area
    ) as number;
    // console.log(sRadiusOfCap(dim, subtotal_n_regions * ideal_region_area));
  }

  c_caps[n_collars + 1] = Math.PI;

  return c_caps;
}

// Example usage:
// const dim = 3;
// const N = 10;
// const c_polar = 0.5;
// const n_regions = [1, 2, 3, 4]; // Example n_regions array
// const c_caps = capColats(dim, N, c_polar, n_regions);
// console.log(c_caps);
