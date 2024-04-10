import { eqPointSetPolar } from "./partitions/eqPointSetPolar";

/**
 * Center points of regions of an EQ partition in spherical polar coordinates.
 * @param N - The number of speakers.
 * @returns An array of size (dim by N), containing the center points of each region in spherical polar coordinates.
 * 
 * @see {@link eqPointSetPolar} for how eqPointSetPolar are calculated.
 * @public
 */

export function equalArea(N: number){
    return eqPointSetPolar(3, N);
}