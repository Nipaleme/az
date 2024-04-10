// import * as numeric from 'numeric';
// import { crossProduct } from './functions';
// import { Vector } from '@stdlib/types/ndarray';
// import { Matrix } from '@stdlib/types/ndarray';

// function fatcurve(c: number[][], r: number): [number[][], number[][], number[][]] {
//     const dim = c.length;
//     const n = c[0].length;
//     const m = 8;
//     const h = numeric.linspace(0, 1, m + 1);
//     const phi = h.map(hi => hi * 2 * Math.PI);
//     let X = numeric.rep([n, m + 1], 0);
//     let Y = numeric.clone(X);
//     let Z = numeric.clone(Y);
//     let circ = numeric.rep([2, m + 1], 0);

//     for (let k = 0; k < n - 1; k++) {
//         const u = numeric.sub(c.map(row => row[k + 1]), c.map(row => row[k]));
//         const M = numeric.null2(u) as Matrix;
//         if (M.length !== 2) {
//             console.error(`size(M,2) == ${M.length}`);
//             console.table(M);
//             console.table(c);
//             return;
//         }
//         const v = M[0] as V;
//         const w = numeric.div(crossProduct(u, v), numeric.norm2(numeric.cross(u, v)));
//         if (k > 0) {
//             let minindex = 0;
//             let mindist = 2;
//             for (let j = 0; j < m; j++) {
//                 const dist = numeric.norm2(numeric.sub(v, circ.map(row => row[j])));
//                 if (dist < mindist) {
//                     mindist = dist;
//                     minindex = j;
//                 }
//             }
//             const offs = phi[minindex];
//             circ = numeric.add(
//                 numeric.mul(v, phi.map(p => Math.cos(p - offs))),
//                 numeric.mul(w, phi.map(p => Math.sin(p - offs)))
//             );
//         } else {
//             circ = numeric.add(
//                 numeric.mul(v, phi.map(p => Math.cos(p))),
//                 numeric.mul(w, phi.map(p => Math.sin(p)))
//             );
//         }
//         const XYZ = numeric.add(
//             c.map(row => row[k]),
//             numeric.mul(r, circ)
//         );
//         X[k] = XYZ[0];
//         Y[k] = XYZ[1];
//         Z[k] = XYZ[2];
//     }
//     const XYZ = numeric.add(
//         c.map(row => row[n - 1]),
//         numeric.mul(r, circ)
//     );
//     X[n - 1] = XYZ[0];
//     Y[n - 1] = XYZ[1];
//     Z[n - 1] = XYZ[2];

//     return [X, Y, Z];
// }

