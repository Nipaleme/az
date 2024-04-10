import { test, expect, describe } from "bun:test";
import { eqCaps } from "./eqCaps";
import { eqPointSetPolar } from "./eqPointSetPolar";

describe("eqCaps", () => {
  test("2D", () => {
    const expectedResult = [
      [
        0.6435011087932844, 1.5707963267948968, 2.4980915447965093,
        3.141592653589793,
      ],
      [1, 4, 4, 1],
    ] as [number[], number[]];
    expect(eqCaps(2, 10)).toEqual(expectedResult);
  });

  test("3D", () => {
    const expectedResult = [
      [0.9844843564592648, 2.157108297130528, 3.141592653589793],
      [1, 4, 1],
    ] as [number[], number[]];
    expect(eqCaps(3, 6)).toEqual(expectedResult);
  });
});

describe("eqPointSetPolar", () => {
  test("1D", () => {
    const expectedResult = [
      [
        0.5235987755982988, 1.5707963267948966, 2.6179938779914944,
        3.665191429188092, 4.71238898038469, 5.759586531581287,
      ],
    ];
    expect(eqPointSetPolar(1, 6)).toEqual(expectedResult);
  });

  test("2D, N1", () => {
    const expectedResult = [[0], [0]];
    expect(eqPointSetPolar(2, 1)).toEqual(expectedResult);
  });

  test("2D, N2", () => {
    const expectedResult = [
      [0, 0],
      [0, 3.141592653589793],
    ];
    expect(eqPointSetPolar(2, 2)).toEqual(expectedResult);
  });

  test("2D, N5", () => {
    const expectedResult = [
      [0, 1.0471975511965976, 3.141592653589793, 5.235987755982989, 0],
      [
        0, 1.5707963267948968, 1.5707963267948968, 1.5707963267948968,
        3.141592653589793,
      ],
    ];
    expect(eqPointSetPolar(2, 5)).toEqual(expectedResult);
  });

  test("3D, N2", () => {
    const expectedResult = [
      [0, 0],
      [0, 0],
      [0, 3.141592653589793],
    ];
    expect(eqPointSetPolar(3, 2)).toEqual(expectedResult);
  });

  test("3D, N3", () => {
    const expectedResult = [
      [0, 0, 0],
      [0, 0, 0],
      [0, 1.5707963267948966, 3.141592653589793],
    ];
    expect(eqPointSetPolar(3, 3)).toEqual(expectedResult);
  });

  test("3D, N4", () => {
    const expectedResult = [
      [0, 0, 0, 0],
      [0, 0, 3.141592653589793, 0],
      [0, 1.5707963267948966, 1.5707963267948966, 3.141592653589793],
    ];
    expect(eqPointSetPolar(3, 4)).toEqual(expectedResult);
  });

  test("3D, N5", () => {
    const expectedResult = [
      [0, 0, 0, 0, 0],
      [0, 0, 1.5707963267948968, 3.141592653589793, 0],
      [
        0, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966,
        3.141592653589793,
      ],
    ];
    expect(eqPointSetPolar(3, 5)).toEqual(expectedResult);
  });

  test("3D, N6", () => {
    const expectedResult = [
      [0, 0, 1.5707963267948966, 4.71238898038469, 0, 0],
      [0, 0, 1.5707963267948966, 1.5707963267948966, 3.141592653589793, 0],
      [
        0, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966,
        1.5707963267948966, 3.141592653589793,
      ],
    ];
    expect(eqPointSetPolar(3, 6)).toEqual(expectedResult);
  });
});
