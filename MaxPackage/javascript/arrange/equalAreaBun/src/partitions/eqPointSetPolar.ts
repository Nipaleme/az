import { eqCaps } from "./eqCaps";
import { circleOffset } from "./private/circleOffset";

/**
 * Center points of regions of an EQ partition in spherical polar coordinates.
 * @param {number} dim - The number of dimensions.
 * @param {number} N - The number of regions.
 * @param {Object} options - Additional options (e.g., 'offset': 'extra' for experimental extra offsets).
 * @returns {number [] | number[][]} An array of size (dim by N), containing the center points of each region in spherical polar coordinates.
 * @see {@link eqCaps} for calculations of capsule angles.
 */
export function eqPointSetPolar(
  dim: number,
  N: number
  //   options: { offset?: string } = {}
): number[][] {
  if (N === 1) {
    // Single region covers the whole sphere
    // console.log("N 1");
    return new Array(dim).fill([0]);
  }

  const [a_cap, n_regions] = eqCaps(dim, N);

  if (dim === 1) {
    // We have a circle and a_cap is an increasing list of angles of sectors,
    // with a_cap(k) being the cumulative arc length 2*pi/k.
    // The points are placed half way along each sector.
    // console.log("DIM 1");
    return [a_cap.map((val) => val - Math.PI / N)];
    //
  }

  const n_collars = n_regions.length - 2;
  //   console.log("n_collars", n_collars);
  const use_cache = dim >= 2;
  //   console.log("use_cache", use_cache);
  const cache_size = use_cache ? Math.floor(n_collars / 2) : 0;
  //   console.log("cache_size", cache_size);
  const cache: number[][][] = new Array(cache_size).fill([]);
  //   console.log("cache", cache);

  let points_s: number[][] = new Array(dim).fill(new Array(N).fill(0));
  points_s = points_s.map((row) => {
    return row.map((value) => {
      return value;
    });
  });
  //   console.log("points_s", points_s);
  let point_n = 1; // 2 ?
  let offset = 0;
  for (let collar_n = 0; collar_n < n_collars; collar_n++) {
    // console.log("============LOOOOOOOOOOP===========");
    const a_top = a_cap[collar_n];
    // console.log("a_top", a_top);
    const a_bot = a_cap[collar_n + 1];
    // console.log("a_bot", a_bot);
    const n_in_collar = n_regions[collar_n + 1];
    // console.log("n_in_collar", n_in_collar);

    let points_1: number[][];

    if (use_cache) {
      const twin_collar_n = n_collars - collar_n;
      //   console.log("twin_collar_n", twin_collar_n);
      if (
        twin_collar_n <= cache_size &&
        cache[twin_collar_n - 1].length === n_in_collar
      ) {
        points_1 = cache[twin_collar_n - 1];
        // console.log("if points_1", points_1);
      } else {
        points_1 = eqPointSetPolar(dim - 1, n_in_collar);
        // console.log("else points_1", points_1);
        cache[collar_n] = points_1;

        // console.log("cache[collar_n]", cache[collar_n]);
        // console.log("cache", cache);
      }
    } else {
      points_1 = eqPointSetPolar(dim - 1, n_in_collar);
      //   console.log("points_1", points_1);
    }

    const a_point = (a_top + a_bot) / 2;
    // console.log("a_point", a_point);

    // console.log("points_1", points_1);
    const point_1_n = new Array(points_1[0].length)
      .fill(0)
      .map((val, index) => index);

    // console.log("point_1_n", point_1_n);

    if (dim === 2) {
      // The (dim-1)-sphere is a circle

      //   console.log("points_s before mod", points_s);
      //   console.log(points_1);

      for (let rowIndex = 0; rowIndex < dim - 1; rowIndex += 1) {
        for (let columnIndex = 1; columnIndex < N - 1; columnIndex += 1) {
          //   console.log(rowIndex, columnIndex);
          points_s[rowIndex][columnIndex] =
            (points_1[rowIndex][columnIndex - 1] + 2 * Math.PI * offset) %
            (2 * Math.PI);
        }
      }

      //   console.log("points_s after mod", points_s);
      // Given the number of sectors in the current collar and
      // in the next collar, calculate the next offset.
      // Accumulate the offset, and force it to be a number between  0 and  1.
      offset += circleOffset(n_in_collar, n_regions[2 + collar_n], false);
      //   console.log("offset", offset);
      offset -= Math.floor(offset);
      //   console.log("offset", offset);
    } else {
      //   console.log("ELSE ?");
      //   console.log("points_s", points_s);
      for (let rowIndex = 0; rowIndex < dim - 1; rowIndex += 1) {
        const columnIndexes = point_1_n.map((val) => val + point_n - 1);
        columnIndexes.forEach((columnIndex) => {
          points_s[rowIndex][columnIndex + 1] = points_1[rowIndex][columnIndex];
        });
      }
      //   console.log("points_s", points_s);
    }

    // console.log("before CHANGE");
    // console.log("points_s", points_s);
    for (let columnIndex = 1; columnIndex < N - 1; columnIndex += 1) {
      // console.log(dim - 1, columnIndex);
      points_s[dim - 1][columnIndex] = a_point;
    }

    // console.log("after CHANGE");
    // console.log("points_s", points_s);

    // for (let point_1_n = 0; point_1_n < points_1.length; point_1_n++) {
    //   points_s.push([...points_1[point_1_n], a_point]);
    // }

    point_n += N - 2;

    // console.log("============END LOOOOOOOOOOP===========");
  }
  //   console.log("After loop");
  //   console.log(points_s);

  //   console.log("point_n", point_n);
  points_s = points_s.map((row) =>
    row.map((currColumValue, index) => {
      if (index !== point_n) return currColumValue;
      return 0;
    })
  );
  //   console.log("-------");
  //   console.log(points_s);
  //   console.log(dim - 1);
  points_s[dim - 1][point_n] = Math.PI;
  //   console.log("-------");
  //   console.log(points_s);
  //   console.log("RETURN ?");

  return points_s;
}

// Example usage:

// console.log(eqPointSetPolar(1, 6));
// ans =
//     0.5236    1.5708    2.6180    3.6652    4.7124    5.7596

// console.log(eqPointSetPolar(2, 1));
//  [
//   [ 0 ], [ 0 ]
// ]

// console.log(eqPointSetPolar(2, 2));
// ans =
//          0         0
//          0    3.1416

// console.log(eqPointSetPolar(2, 5));
// ans =
// 0    1.0472    3.1416    5.2360         0
// 0    1.5708    1.5708    1.5708    3.1416

// console.log(eqPointSetPolar(3, 2));
//ans =
// 0         0
// 0         0
// 0    3.1416

// console.log(eqPointSetPolar(3, 3));
// ans =
//          0         0         0
//          0         0         0
//          0    1.5708    3.1416

// console.log(eqPointSetPolar(3, 4));
// ans =
//          0         0         0         0
//          0         0    3.1416         0
//          0    1.5708    1.5708    3.1416

// console.log(eqPointSetPolar(3, 5));
// ans =
//          0         0         0         0         0
//          0         0    1.5708    3.1416         0
//          0    1.5708    1.5708    1.5708    3.1416

// console.log(eqPointSetPolar(3, 6));
// ans =
//          0         0    1.5708    4.7124         0         0
//          0         0    1.5708    1.5708    3.1416         0
//          0    1.5708    1.5708    1.5708    1.5708    3.1416

// console.log(eqPointSetPolar(3, 10));
