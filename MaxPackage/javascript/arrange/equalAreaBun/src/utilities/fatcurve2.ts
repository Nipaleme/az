// import { crossProduct, norm } from "./functions";

// function fatcurve(c: number[][], r: number): [number[][], number[][], number[][]] {
//     const dim = c.length;
//     const n = c[0].length;
//     const m = 8;
//     const h: number[] = Array.from({ length: m + 1 }, (_, i) => i / m);
//     const phi: number[] = h.map((val) => val * 2 * Math.PI);
//     const X: number[][] = Array.from({ length: n }, () => Array.from({ length: m + 1 }, () => 0));
//     const Y: number[][] = X.map((row) => row.slice());
//     const Z: number[][] = X.map((row) => row.slice());
//     let circ: number[][];

//     for (let k = 0; k < n - 1; k++) {
//         const u: number[] = c.map((row, i) => c[i][k + 1] - row[k]);
//         const M: any = nullspace(u);
//         if (M.columns !== 2) {
//             // console.log(`size(M,2) == ${M.columns}`);
//             // console.log(M.toArray());
//             // console.log(c);
//             return [[], [], []];
//         }
//         const v: number[] = M.columnVector(0).toArray();
//         const w: number[] = crossProduct(u, v).map((val) => val / norm(w));
//         if (k > 0) {
//             let minindex = 0;
//             let mindist = 2;
//             for (let j = 0; j < m; j++) {
//                 const dist: number = norm(subtractVectors(v, circ[j]));
//                 if (dist < mindist) {
//                     mindist = dist;
//                     minindex = j;
//                 }
//             }
//             const offs: number = phi[minindex];
//             circ = v.map((val, i) => val * Math.cos(phi[i] - offs) + w[i] * Math.sin(phi[i] - offs));
//         } else {
//             circ = v.map((val, i) => val * Math.cos(phi[i]) + w[i] * Math.sin(phi[i]));
//         }
//         const XYZ: number[][] = c.map((row, i) => row[k] + r * circ.map((val) => val[i]));
//         X[k] = XYZ.map((row) => row[0]);
//         Y[k] = XYZ.map((row) => row[1]);
//         Z[k] = XYZ.map((row) => row[2]);
//     }
//     const XYZ: number[][] = c.map((row) => row[n - 1] + r * circ.map((val) => val[row.length - 1]));
//     X[n - 1] = XYZ.map((row) => row[0]);
//     Y[n - 1] = XYZ.map((row) => row[1]);
//     Z[n - 1] = XYZ.map((row) => row[2]);
//     return [X, Y, Z];
// }