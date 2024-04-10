

import betainc from '@stdlib/math-base-special-betainc'

function areaOfCap(dim: number, sCap: number | number[]): number | number[] {
  const pi = Math.PI;

  if (typeof sCap === "number") {
    sCap = [sCap]; // Convert to array for uniform handling
  }

  let area = sCap.map((s) => {
    switch (dim) {
      case 1:
        return 2 * s;
      case 2:
        return 4 * pi * Math.sin(s / 2) ** 2;
      case 3:
        if (s < pi / 6 || s > (pi * 5) / 6) {
          // Near the poles
          return (
            areaOfSphere(dim) * betainc(Math.sin(s / 2) ** 2, dim / 2, dim / 2)
          );
        } else {
          // In the tropics
          return (2 * s - Math.sin(2 * s)) * pi;
        }
      default:
        // For dim > 3
        return (
          areaOfSphere(dim) * betainc(Math.sin(s / 2) ** 2, dim / 2, dim / 2)
        );
    }
  });

  if (typeof sCap === "number") {
    return area[0]; // Return a single number if input was a single number
  }

  return area; // Return an array if input was an array
}

// Example usage:
console.log(areaOfCap(2, Math.PI / 2));
console.log(
  areaOfCap(3, [0, Math.PI / 4, Math.PI / 2, (Math.PI * 3) / 4, Math.PI])
);
