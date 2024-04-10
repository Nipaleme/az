/**
 * Euclidean distance between two sets of points in Cartesian coordinates.
 * @param {number[][]} x - The Cartesian coordinates of the first set of points. Each column represents a point.
 * @param {number[][]} y - The Cartesian coordinates of the second set of points. Each column represents a point.
 * @returns {number[]} The Euclidean distances between the corresponding points in x and y.
 */

export function euclideanDist(x: number[][], y: number[][]): number[] {
  if (x.length !== y.length || x[0].length !== y[0].length) {
    throw new Error("Input arrays must have the same dimensions.");
  }

  let distances = [];
  for (let i = 0; i < x[0].length; i += 1) {
    let sum = 0;
    for (let j = 0; j < x.length; j++) {
      sum += (x[j][i] - y[j][i]) ** 2;
    }
    distances.push(Math.sqrt(sum));
  }
  return distances;
}

// Example usage:
// const x = [
//   [0, 0, 0, 0],
//   [0, 1, -1, 0],
//   [1, 0, 0, -1],
// ];
// const y = [
//   [0, 0, 0, 0],
//   [-0.5, 0.866, -0.866, 0.5],
//   [0.866, 0.5, -0.5, -0.866],
// ];
// console.log(euclideanDist(x, y)); // Output: [0.5176446657698697,0.5176446657698697,0.5176446657698697,0.5176446657698697]
