// import { crossProduct, norm } from "./functions";

// function fatcurve(c: number[][], r: number): number[][][] {
//   const dim = c[0].length;
//   const n = c.length;
//   const m = 8;
//   const h = Array.from({ length: m + 1 }, (_, i) => i / m);
//   const phi = h.map((x) => x * 2 * Math.PI);
//   const X: number[][] = Array(n).fill(Array(m + 1).fill(0));
//   const Y: number[][] = Array(n).fill(Array(m + 1).fill(0));
//   const Z: number[][] = Array(n).fill(Array(m + 1).fill(0));

//   // MATLAB's null function is not directly available in JavaScript.
//   // We need to implement a pseudo-inverse function or use a library like math.js.
//   // For simplicity, let's assume we have a function called pseudoInverse.

//   for (let k = 0; k < n - 1; k++) {
//     const u = c[k + 1].map((val, idx) => val - c[k][idx]);
//     const M = pseudoInverse(u) as number[][];
//     if (M[0].length !== 2) {
//       console.error("size(M,2) ==", M[0].length);
//       console.error(M);
//       console.error(c);
//       return [X, Y, Z];
//     }
//     const v = M[0];
//     const w = crossProduct(u, v) as number[];
//     const wNorm = w.map((val) => val / norm(w));
//     let circ: number[][];
//     if (k > 0) {
//       let mindist = Infinity;
//       let minIndex = 0;

//       for (let j = 0; j < m; j++) {
//         let dist = norm(v.map((val, idx) => val - circ[idx][j]));
//         if (dist < mindist) {
//           mindist = dist;
//           minIndex = j;
//         }
//       }

//       const offs = phi[minIndex];
//       //   circ = v.map((val, idx) =>
//       //     phi.map(
//       //       (phi) =>
//       //         val * Math.cos(phi - offs) + wNorm[idx] * Math.sin(phi - offs)
//       //     )
//       //   );
//       //init circ
//       circ = new Array(circ.length)
//         .fill(null)
//         .map(() => new Array(circ[0].length).fill(0));

//       // Perform element-wise multiplication and addition
//       for (let i = 0; i < v.length; i++) {
//         for (let j = 0; j < phi.length; j++) {
//           circ[i][j] =
//             v[i] * Math.cos(phi[j] - offs) + w[i] * Math.sin(phi[j] - offs);
//         }
//       }
//     } else {
//       circ = v
//         .map((val) => val * Math.cos(phi))
//         .map((val, idx) => val + wNorm[idx] * Math.sin(phi));
//     }
//     const XYZ = c[k].map(
//       (val, idx) => val * Math.ones(phi.length) + r * circ[idx]
//     );
//     X[k] = XYZ.slice(0, 1);
//     Y[k] = XYZ.slice(1, 2);
//     Z[k] = XYZ.slice(2, 3);
//   }
//   const XYZ = c[n].map(
//     (val, idx) => val * Math.ones(phi.length) + r * circ[idx]
//   );
//   X[n] = XYZ.slice(0, 1);
//   Y[n] = XYZ.slice(1, 2);
//   Z[n] = XYZ.slice(2, 3);

//   return [X, Y, Z];
// }
