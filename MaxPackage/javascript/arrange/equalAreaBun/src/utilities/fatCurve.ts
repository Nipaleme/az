// import { crossProduct, norm } from "./functions";

// /**
//  * Compute the null space (kernel) of a matrix.
//  *
//  * @param {number[][]} matrix - The input matrix.
//  * @returns {number[][]} An array containing the basis vectors of the null space.
//  */
// function nullSpace(matrix: number[][]): number[][] {
//   const [U, S, Vt] = svd(matrix);
//   return Vt.filter((_, index) => S[index] === 0);
// }

// /**
//  * Create a parameterized cylindrical surface at radius r from curve c.
//  *
//  * @param {number[][]} c - The curve in R^3 as an array of column vectors.
//  * @param {number} r - The radius of the cylindrical surface.
//  * @returns {[number[][], number[][], number[][]]} The coordinates X, Y, and Z of the cylindrical surface.
//  */
// function fatcurve(
//   c: number[][],
//   r: number
// ): [number[][], number[][], number[][]] {
//   const dim = c.length;
//   const n = c[0].length;
//   const m = 8;
//   const h = Array.from({ length: m + 1 }, (_, i) => i / m);
//   const phi = h.map((val) => val * 2 * Math.PI);
//   let circ: number[][];
//   const X: number[][] = [];
//   const Y: number[][] = [];
//   const Z: number[][] = [];

//   for (let k = 0; k < n; k++) {
//     const u = [
//       c[0][k + 1] - c[0][k],
//       c[1][k + 1] - c[1][k],
//       c[2][k + 1] - c[2][k],
//     ];
//     const M = nullSpace(u);
//     if (M[0].length !== 2) {
//       // console.log(`size(M,2) == ${M[0].length}`);
//       // console.log(M);
//       // console.log(c);
//       return [[], [], []];
//     }
//     const v = M[0];
//     let w = crossProduct(u, v) as number[];
//     w = w.map((val) => val / norm(w));
//     if (k > 0) {
//       let minindex = 0;
//       let mindist = 2;
//       for (let j = 0; j < m; j++) {
//         const dist = norm(v.map((val, idx) => val - circ[j][idx]));
//         if (dist < mindist) {
//           mindist = dist;
//           minindex = j;
//         }
//       }
//       const offs = phi[minindex];
//       circ = v.map(
//         (val, idx) =>
//           val * Math.cos(phi[idx] - offs) + w[idx] * Math.sin(phi[idx] - offs)
//       );
//     } else {
//       circ = v.map(
//         (val, idx) => val * Math.cos(phi[idx]) + w[idx] * Math.sin(phi[idx])
//       );
//     }
//     const XYZ = c.map(
//       (coords, idx) => coords[k] + r * circ.map((circCoord) => circCoord[idx])
//     );
//     X.push(XYZ.map((coord) => coord[0]));
//     Y.push(XYZ.map((coord) => coord[1]));
//     Z.push(XYZ.map((coord) => coord[2]));
//   }

//   return [X, Y, Z];
// }

// // Example usage:
// // const c = [
// //   [0, 0, 1],
// //   [0, 1, 0],
// //   [0, 0, 0],
// // ];
// // const r = 1;
// // const [X, Y, Z] = fatcurve(c, r);
// // console.log(X);
// // console.log(Y);
// // console.log(Z);
