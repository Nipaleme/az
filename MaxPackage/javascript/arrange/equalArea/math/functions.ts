// Gamma function approximation
// Lanczos Coefficients: The array p contains specific coefficients used in the Lanczos approximation. The set of coefficients here is one of the commonly used sets, but different coefficients can be used to tune the approximation's accuracy and performance.
// Reflection Formula: For arguments less than 0.5, the gamma function utilizes the reflection formula to relate Γ(z) to Γ(1-z). This increases the function's accuracy for inputs in the range (0, 0.5).
// Calculation: The core of the approximation involves summing over the Lanczos coefficients p adjusted by the input z, followed by scaling the sum according to the formula. This involves powers and exponentials to achieve the final approximation.

export function gamma(z: number): number {
  const p = [
    676.5203681218851, -1259.1392167224028, 771.32342877765313,
    -176.61502916214059, 12.507343278686905, -0.13857109526572012,
    9.9843695780195716e-6, 1.5056327351493116e-7,
  ];

  const g = 7;
  if (z < 0.5) {
    return Math.PI / (Math.sin(Math.PI * z) * gamma(1 - z));
  }

  z -= 1;
  let x = 0.99999999999980993;
  for (let i = 0; i < p.length; i++) {
    x += p[i] / (z + i + 1);
  }

  const t = z + g + 0.5;
  return Math.sqrt(2 * Math.PI) * Math.pow(t, z + 0.5) * Math.exp(-t) * x;
}