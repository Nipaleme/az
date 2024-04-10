import { idealCollarAngle } from "../utilities/idealCollarAngle";
import { capColats } from "./private/capColats";
import { idealRegionList } from "./private/idealRegionList";
import { numCollars } from "./private/numCollars";
import { polarColat } from "./private/polarColat";
import { roundToNaturals } from "./private/roundToNatural";

/**
 * Partition a sphere into nested spherical caps.
 * @param {number} dim - The number of dimensions.
 * @param {number} N - The number of regions to partition the sphere into.
 * @returns {[number[], number[]]} An array containing two elements:
 *   - The first element is an array of increasing colatitudes of caps.
 *   - The second element is an array of the integer number of regions in each corresponding zone.
 */
export function eqCaps(dim: number, N: number): [number[], number[]] {
  // Check number of arguments
  if (arguments.length !== 2) {
    throw new Error("Usage: eq_caps(dim, N)");
  }

  if (dim === 1) {
    //  We have a circle. Return the angles of N equal sectors.
    const sector = new Array(N).fill(1) as number[];
    //  Make dim==1 consistent with dim>1 by
    //  returning the longitude of a sector enclosing the
    //  cumulative sum of arc lengths given by summing n_regions.
    const s_cap = sector.map((val, index) => ((index + 1) * 2 * Math.PI) / N);
    const n_regions = sector;
    return [s_cap, n_regions];
  }

  // Check if there is only one region
  if (N === 1) {
    return [[Math.PI], [1]];
  }

  // Determine the colatitude of the North polar spherical cap
  const c_polar = polarColat(dim, N);

  // Determine the ideal angle for spherical collars
  const idealAngle = idealCollarAngle(dim, N) as number;

  // Determine the number of collars between the polar caps
  const n_collars = numCollars(N, c_polar, idealAngle) as number;

  // Determine the ideal real number of regions in each collar, plus the polar caps
  const r_regions = idealRegionList(dim, N, c_polar, n_collars);

  // Determine the natural number of regions in each collar and the polar caps
  const n_regions = roundToNaturals(r_regions);

  // Determine an increasing list of colatitudes of spherical caps
  const s_cap = capColats(dim, N, c_polar, n_regions);

  return [s_cap, n_regions];
}

//Example Usage :
// console.log(eqCaps(2,10));
// console.log(eqCaps(3, 6));
