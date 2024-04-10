/**
 * Convert Cartesian coordinates to spherical coordinates.
 * @param {number} x - The x-coordinate.
 * @param {number} y - The y-coordinate.
 * @param {number} z - The z-coordinate.
 * @returns {number[]} An array containing the spherical coordinates [radius, inclination, azimuth].
 */

export function cart2sph(x: number, y: number, z: number): number[] {
  const azimuth = Math.atan2(y, x);
  const elevation = Math.atan2(z, Math.sqrt(x ** 2 + y ** 2));
  const radius = Math.sqrt(x ** 2 + y ** 2 + z ** 2);

  return [azimuth, elevation, radius];
}

// console.log(cart2sph(1, 1, 1));
