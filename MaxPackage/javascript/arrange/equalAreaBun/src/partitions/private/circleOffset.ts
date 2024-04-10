/**
 * Calculate the greatest common divisor (GCD) of two numbers.
 *
 * @param {number} a - The first number.
 * @param {number} b - The second number.
 * @returns {number} The GCD of a and b.
 */
export function gcd(a: number, b: number): number {
  // Implement the greatest common divisor (GCD) algorithm here
  // For example, using Euclid's algorithm:
  while (b !== 0) {
    const t = b;
    b = a % b;
    a = t;
  }
  return a;
}

/**
 * Try to maximize minimum distance of center points for S^2 collars.
 * Given n_top and n_bot, calculate an offset.
 * The values n_top and n_bot represent the numbers of
 * equally spaced points on two overlapping circles.
 * The offset is given in multiples of whole rotations, and
 * consists of three parts:
 *  1) Half the difference between a twist of one sector on each of bottom and top.
 * This brings the centre points into alignment.
 *  2) A rotation which will maximize the minimum angle between
 * points on the two circles.
 *  3) An optional extra twist by a whole number of sectors on the second circle.
 * The extra twist is added so that the location of
 * the minimum angle between circles will
 * progressively twist around the sphere with each collar.
 *
 * @param {number} nTop - The number of equally spaced points on the top circle.
 * @param {number} nBot - The number of equally spaced points on the bottom circle.
 * @param {boolean} [extraTwist] - An optional flag to apply an extra twist.
 * @returns {number} The calculated offset.
 */

export function circleOffset(
  nTop: number,
  nBot: number,
  extraTwist?: boolean
): number {
  let offset: number;
  if (extraTwist === undefined) {
    extraTwist = false;
  }
  offset = (1 / nBot - 1 / nTop) / 2 + gcd(nTop, nBot) / (2 * nTop * nBot);
  if (extraTwist) {
    const twist = 6;
    offset = offset + twist / nBot;
  }
  return offset;
}

// Example usage:
// console.log(circleOffset(4, 1, false));
// console.log(circleOffset(1, 6, true));
