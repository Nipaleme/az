/**
 * Transposes a given matrix, swapping its rows with columns.
 *
 * @param {number[][]} matrix - The input matrix to be transposed.
 * @returns {number[][]} The transposed matrix with rows and columns swapped.
 * @throws {TypeError} If the input matrix is not a  2D array or if it is empty.
 */

import { multiply, inv } from "mathjs";

export function transposeMatrix(matrix: number[][]): number[][] {
  if (
    !Array.isArray(matrix) ||
    matrix.length === 0 ||
    !Array.isArray(matrix[0])
  ) {
    throw new TypeError("Input matrix must be a non-empty  2D array.");
  }

  const rows = matrix.length;
  const cols = matrix[0].length;
  const transposed: number[][] = Array.from({ length: cols }, () =>
    Array(rows)
  );

  for (let i = 0; i < rows; i++) {
    for (let j = 0; j < cols; j++) {
      transposed[j][i] = matrix[i][j];
    }
  }
  return transposed;
}

/**
 * Type guard to check if the input is an array of numbers.
 *
 * @param {any} input - The input to check.
 * @returns {boolean} True if the input is an array of numbers, false otherwise.
 */
function isNumberArray(input: any): input is number[] {
  return (
    Array.isArray(input) &&
    input.every((element) => typeof element === "number")
  );
}

/**
 * Compute the cross product of two vectors.
 *
 * @param {number[] | number[][]} A - The first vector or an array of vectors.
 * @param {number[] | number[][]} B - The second vector or an array of vectors.
 * @returns {number[] | number[][]} The cross product of A and B, or an array of cross products if both A and B are arrays of vectors.
 */

export function crossProduct(
  A: number[] | number[][],
  B: number[] | number[][]
): number[] | number[][] {
  if (
    Array.isArray(A[0]) &&
    Array.isArray(B[0]) &&
    A[0].length === B[0].length
  ) {
    const transposedA = transposeMatrix(A as number[][]);
    const transposedB = transposeMatrix(B as number[][]);
    return transposeMatrix(
      transposedA.map((vector, index) =>
        crossProduct(vector, transposedB[index])
      ) as number[][]
    );
  } else if (isNumberArray(A) && isNumberArray(B)) {
    // Both A and B are number[], so we perform the cross product for the single pair of vectors
    if (A.length !== 3 || B.length !== 3) {
      throw new Error("Vectors must be   3-dimensional.");
    }
    return [
      A[1] * B[2] - A[2] * B[1],
      A[2] * B[0] - A[0] * B[2],
      A[0] * B[1] - A[1] * B[0],
    ];
  } else {
    throw new Error("Input parameters must be either number[] or number[][].");
  }
}

/**
 * Calculates the Euclidean norm (L2 norm) of a vector.
 *
 * @param {number[]} vector - The vector for which to calculate the norm.
 * @returns {number} The Euclidean norm of the vector.
 */
// function euclideanNorm(vector: number[]): number {
//   return Math.sqrt(vector.reduce((sum, value) => sum + value * value, 0));
// }

export function norm(vector: number[], p: number = 2): number {
  if (p === 2) {
    // Euclidean norm (L2 norm)
    return Math.sqrt(vector.reduce((sum, value) => sum + value * value, 0));
  } else {
    // General norm (Lp norm)
    return Math.pow(
      vector.reduce((sum, value) => sum + Math.pow(Math.abs(value), p), 0),
      1 / p
    );
  }
}

// const v = [1, -2, 3];
// console.log(norm(v)); //3.7417

// const W = [-2, 3, -1];
// console.log(norm(W, 1)); // 6

// const a = [0, 3];
// const b = [-2, 1];
// const c = a.map((a, i) => a - b[i]);
// console.log(norm(c)); // 2.8284

// const matrix = [
//   [2, 0, 1],
//   [-1, 1, 0],
//   [-3, 3, 0],
// ];
// console.log(norm(matrix));

/**
 * Calculates the least-squares solution of the system of equations xA = B.
 *
 * @param {number[]} A - The array representing the coefficients of the system of equations.
 * @param {number[]} B - The array representing the right-hand side of the equations.
 * @returns {number[]} The solution vector x for the system of equations xA = B.
 */
export function leastSquares(A: number[], B: number[]): number[] {
  // Convert A into a matrix with a single column
  const A_matrix = A.map((value) => [value]);

  // Convert B into a matrix with a single column
  const B_matrix = B.map((value) => [value]);

  // Transpose A to get A'
  const A_transpose = A_matrix[0].map((_, colIndex) =>
    A_matrix.map((row) => row[colIndex])
  );

  // Calculate the pseudo-inverse of A: (A'A)^-1 * A'
  const pseudoInverse = multiply(
    inv(multiply(A_transpose, A_matrix)),
    A_transpose
  );

  // Calculate the least-squares solution: x = (A'A)^-1 * A' * B
  const X = multiply(pseudoInverse, B_matrix);

  // Extract the first row of X to get the solution vector
  return X[0];
}

// const X = leastSquares( [3.2899, 2.8199],[0.7992, 0.799]);
// console.log(X);


/**
 * Searches the interval from <tt>lowerLimit</tt> to <tt>upperLimit</tt>
 * for a root (i.e., zero) of the function <tt>func</tt> with respect to 
 * its first argument using Brent's method root-finding algorithm.
 *
 * Translated from zeroin.c in http://www.netlib.org/c/brent.shar.
 *
 * Copyright (c) 2012 Borgar Thorsteinsson <borgar@borgar.net>
 * MIT License, http://www.opensource.org/licenses/mit-license.php
 * 
 * @param {function} func function for which the root is sought.
 * @param {number} lowerLimit the lower point of the interval to be searched.
 * @param {number} upperLimit the upper point of the interval to be searched.
 * @param {number} errorTol the desired accuracy (convergence tolerance).
 * @param {number} maxIter the maximum number of iterations.
 * @returns an estimate for the root within accuracy.
 * 
 */
export function uniroot ( func: (arg0: number) => number, lowerLimit: number, upperLimit: number, errorTol?: number, maxIter?: number ) {
  var a = lowerLimit
    , b = upperLimit
    , c = a
    , fa = func(a)
    , fb = func(b)
    , fc = fa
    , s = 0
    , fs = 0
    , tol_act   // Actual tolerance
    , new_step  // Step at this iteration
    , prev_step // Distance from the last but one to the last approximation
    , p         // Interpolation step is calculated in the form p/q; division is delayed until the last moment
    , q
    ;

  errorTol = errorTol || 0;
  maxIter  = maxIter  || 1000;

  while ( maxIter-- > 0 ) {
  
    prev_step = b - a;
   
    if ( Math.abs(fc) < Math.abs(fb) ) {
      // Swap data for b to be the best approximation
      a = b, b = c, c = a;
      fa = fb, fb = fc, fc = fa;
    }

    tol_act = 1e-15 * Math.abs(b) + errorTol / 2;
    new_step = ( c - b ) / 2;

    if ( Math.abs(new_step) <= tol_act || fb === 0 ) {
      return b; // Acceptable approx. is found
    }

    // Decide if the interpolation can be tried
    if ( Math.abs(prev_step) >= tol_act && Math.abs(fa) > Math.abs(fb) ) {
      // If prev_step was large enough and was in true direction, Interpolatiom may be tried
      var t1, cb, t2;
      cb = c - b;
      if ( a === c ) { // If we have only two distinct points linear interpolation can only be applied
        t1 = fb / fa;
        p = cb * t1;
        q = 1.0 - t1;
      }
      else { // Quadric inverse interpolation
        q = fa / fc, t1 = fb / fc, t2 = fb / fa;
        p = t2 * (cb * q * (q - t1) - (b - a) * (t1 - 1));
        q = (q - 1) * (t1 - 1) * (t2 - 1);
      }

      if ( p > 0 ) {
        q = -q;  // p was calculated with the opposite sign; make p positive
      }
      else {
        p = -p;  // and assign possible minus to q
      }

      if ( p < ( 0.75 * cb * q - Math.abs( tol_act * q ) / 2 ) &&
           p < Math.abs( prev_step * q / 2 ) ) { 
        // If (b + p / q) falls in [b,c] and isn't too large it is accepted
        new_step = p / q;
      }
 
      // If p/q is too large then the bissection procedure can reduce [b,c] range to more extent
    }

    if ( Math.abs( new_step ) < tol_act ) { // Adjust the step to be not less than tolerance
      new_step = ( new_step > 0 ) ? tol_act : -tol_act;
    }

    a = b, fa = fb;     // Save the previous approx.
    b += new_step, fb = func(b);  // Do step to a new approxim.

    if ( (fb > 0 && fc > 0) || (fb < 0 && fc < 0) ) {
      c = a, fc = fa; // Adjust c for it to have a sign opposite to that of b
    }
  }

}