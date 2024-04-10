import { cart2sph } from "./cart2sph";

export function normalizeAngle(angle: number) {
  // Normalize the angle to fall within the range [0, 2π)
  return ((angle % (2 * Math.PI)) + 2 * Math.PI) % (2 * Math.PI);
}

/**
 * Convert from Cartesian to spherical coordinates on sphere S^2.
 * @param {number[][]} x - The Cartesian coordinates array of size (3 by N), where N is any positive integer.
 * @returns {number[][]} The spherical polar coordinates array [phi, theta], where phi is in [0, 2*pi) and theta is in [0, pi].
 */

export function cart2polar2(x: number[][]): number[][] {
  const phiTheta: number[][] = [];

  for (let i = 0; i < x[0].length; i++) {
    const [phi, theta] = cart2sph(x[0][i], x[1][i], x[2][i]);
    phiTheta.push([normalizeAngle(phi), Math.PI / 2 - theta]);
  }

  return phiTheta;
}

// Example usage:
// const xyz = [
//   [0, 0, -0, 0],
//   [0, 1, -1, 0],
//   [1, 0, 0, -1],
// ];
// console.log(cart2polar2(xyz));
