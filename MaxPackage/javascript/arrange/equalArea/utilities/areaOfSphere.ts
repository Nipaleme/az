// AREA_OF_SPHERE Area of sphere of given dimension
//
//  The argument dim must be a positive integer or an array of positive integers.
//  The result AREA will be an array of the same size as dim.
//
// Notes
//  The area of S^dim is defined via the Lebesgue measure on S^dim inherited from
//  its embedding in R^(dim+1).
//
//  Ref: [Mue98] p39.

import { gamma } from "../math/functions";

const areaOfSphere = (dim: number | number[]) => {
  const pi = Math.PI;

  const dimArray = Array.isArray(dim) ? dim : [dim];

  return dimArray.map((d) => {
    const power = (d + 1) / 2;
    return (2 * Math.pow(pi, power)) / gamma(power);
  });
};

export default areaOfSphere;

// Usage example:
const areaSingle = areaOfSphere(3);
console.log(areaSingle); // For a single value  [19.7392]

const areaArray = areaOfSphere([1, 2, 3, 4, 5, 6, 7]);
console.log(areaArray); // For an array of values [ 6.2832   12.5664   19.7392   26.3189   31.0063   33.0734   32.4697]
