import gamma from "@stdlib/math/base/special/gamma";
/**
 * Calculate the area of a sphere of a given dimension.
 * @param {number | number[]} dim - The dimension of the sphere, can be a positive integer or an array of positive integers.
 * @returns {number | number[]} The area of the sphere. If dim is an array, returns an array of areas corresponding to each dimension.
 * @remarks
 * The area of S^dim is defined via the Lebesgue measure on S^dim inherited from its embedding in R^(dim+1).
 * @see [Mue98] p39
 */


export const areaOfSphere = (dim: number | number[]) => {
  const pi = Math.PI;

  if (Array.isArray(dim)) {
    return dim.map((d) => {
      const power = (d + 1) / 2;
      return (2 * Math.pow(pi, power)) / gamma(power);
    });
  } else {
    const power = (dim + 1) / 2;
    return (2 * Math.pow(pi, power)) / gamma(power);
  }
};

// Usage example:
// const areaSingle = areaOfSphere(3);
// console.log(areaSingle); // For a single value  19.7392

// const areaArray = areaOfSphere([1, 2, 3, 4, 5, 6, 7]);
// console.log(areaArray); // For an array of values [ 6.2832   12.5664   19.7392   26.3189   31.0063   33.0734   32.4697]
