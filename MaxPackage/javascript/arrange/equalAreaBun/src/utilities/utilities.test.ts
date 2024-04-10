import { test, expect, describe } from "bun:test";
import { areaOfSphere } from "./areaOfSphere";
import { areaOfCap } from "./areaOfCap";
import { areaOfCollar } from "./areaOfCollar";
import { areaOfIdealRegion } from "./areaOfIdealRegion";
import { cart2sph } from "./cart2sph";
import { cart2polar2 } from "./cart2polar2";
import { euc2sphDist } from "./euc2sphDist";
import { euclideanDist } from "./euclidianDist";
import { crossProduct, leastSquares } from "./functions";
import { idealCollarAngle } from "./idealCollarAngle";
import { sRadiusOfCap } from "./sRadiusOfCap";

describe("areaOfSphere", () => {
  test("singleArea", () => {
    expect(areaOfSphere(3)).toEqual(19.739208802178716);
  });

  test("areaArray", () => {
    const expectedResult = [
      6.283185307179586, 12.566370614359174, 19.739208802178716,
      26.318945069571622, 31.006276680299816, 33.07336179231981,
      32.46969701133414,
    ];
    expect(areaOfSphere([1, 2, 3, 4, 5, 6, 7])).toEqual(expectedResult);
  });
});

describe("areaOfCap", () => {
  test("singleArea", () => {
    expect(areaOfCap(2, Math.PI / 2)).toEqual(6.2831853071795845);
  });

  test("areaArray", () => {
    const expectedResult = [
      0, 1.7932095469548859, 9.869604401089358, 17.94599925522383,
      19.739208802178716,
    ];
    expect(
      areaOfCap(3, [0, Math.PI / 4, Math.PI / 2, (Math.PI * 3) / 4, Math.PI])
    ).toEqual(expectedResult);
  });
});

describe("areaOfCollar", () => {
  test("scalar", () => {
    expect(areaOfCollar(2, 6, 3)).toEqual(12.253234146329946);
  });
  test("areaArray", () => {
    const expectedResult = [
      2.88836579751364, 6.009547198688216, 3.6055786198356863,
    ];
    expect(areaOfCollar(2, [0, 1, 2], [1, 2, 3])).toEqual(expectedResult);
  });
});

describe("areaOfidealRegion", () => {
  test("areaArray", () => {
    const expectedResult = [
      19.739208802178716, 9.869604401089358, 6.579736267392906,
      4.934802200544679, 3.947841760435743, 3.289868133696453,
    ];
    expect(areaOfIdealRegion(3, [1, 2, 3, 4, 5, 6])).toEqual(expectedResult);
  });
});

describe("cart2sph", () => {
  test("cartOneVector", () => {
    expect(cart2sph(1, 1, 1)).toEqual([
      0.7853981633974483, 0.6154797086703873, 1.7320508075688772,
    ]);
  });
});

describe("cart2polar2", () => {
  test("cartMultipleVectors", () => {
    const xyz = [
      [0, 0, -0, 0],
      [0, 1, -1, 0],
      [1, 0, 0, -1],
    ];
    const expectedResult = [
      [0, 0],
      [1.5707963267948966, 1.5707963267948966],
      [4.71238898038469, 1.5707963267948966],
      [0, 3.141592653589793],
    ];
    expect(cart2polar2(xyz)).toEqual(expectedResult);
  });
});

describe("euc2sphDist", () => {
  test("maxScalar", () => {
    expect(euc2sphDist(2)).toEqual(3.141592653589793);
  });
  test("mixScalar", () => {
    expect(euc2sphDist(-2)).toEqual(-3.141592653589793);
  });
  test("array", () => {
    const expectedResult = [
      0, 0.5053605102841573, 1.0471975511965976, 1.696124157962962,
      3.141592653589793,
    ];
    expect(euc2sphDist([0, 0.5, 1, 1.5, 2])).toEqual(expectedResult);
  });
});

describe("euclidianDist", () => {
  test("array", () => {
    const x = [
      [0, 0, 0, 0],
      [0, 1, -1, 0],
      [1, 0, 0, -1],
    ];
    const y = [
      [0, 0, 0, 0],
      [-0.5, 0.866, -0.866, 0.5],
      [0.866, 0.5, -0.5, -0.866],
    ];
    const expectedResult = [
      0.5176446657698697, 0.5176446657698697, 0.5176446657698697,
      0.5176446657698697,
    ];
    expect(euclideanDist(x, y)).toEqual(expectedResult);
  });
});

describe("crossProduct", () => {
  test("simple Array", () => {
    const A = [4, -2, 1];
    const B = [1, -1, 3];
    const expectedResult = [-5, -11, -2];
    expect(crossProduct(A, B)).toEqual(expectedResult);
  });
  test("simple Array 2", () => {
    const A = [13, 14, 2];
    const B = [4, 11, 23];
    const expectedResult = [300, -291, 87];
    expect(crossProduct(A, B)).toEqual(expectedResult);
  });
  test("Matrix", () => {
    const A = [
      [13, 14, 5, 15, 15],
      [14, 10, 9, 3, 8],
      [2, 2, 15, 15, 13],
    ];
    const B = [
      [4, 20, 1, 17, 10],
      [11, 24, 22, 19, 17],
      [23, 17, 24, 19, 5],
    ];
    const expectedResult = [
      [300, 122, -114, -228, -181],
      [-291, -198, -105, -30, 55],
      [87, 136, 101, 234, 175],
    ];
    expect(crossProduct(A, B)).toEqual(expectedResult);
  });
});

describe("idealCollarAngle", () => {
  test("scalar", () => {
    expect(idealCollarAngle(2, 10)).toEqual(1.1209982432795857);
  });
  test("vector", () => {
    const expectedResult = [
      2.70256769006349, 2.1450293971110255, 1.8738557776012728,
      1.7025109607383773, 1.5804711728933232, 1.4872803163004744,
    ];
    expect(idealCollarAngle(3, [1, 2, 3, 4, 5, 6])).toEqual(expectedResult);
  });
});

describe("leastSquares", () => {
  test("vector", () => {
    expect(leastSquares([3.2899, 2.8199], [0.7992, 0.799])).toEqual([
      0.2600434558039104,
    ]);
  });
});

describe("radiusOfCap", () => {
  test("2Dscalar", () => {
    const area = areaOfSphere(2) as number;
    expect(sRadiusOfCap(2, area / 2)).toEqual(1.5707963267948968);
  });

  test("3Dvector", () => {
    const area = areaOfSphere(2) as number;
    const expectedResult = [
      0, 1.154940520740522, 1.5707959765673334, 1.9866512957914768,
      3.1287839470879257,
    ];
    expect(sRadiusOfCap(3, [0, 4.9348, 9.8696, 14.8044, 19.7392])).toEqual(
      expectedResult
    );
  });
});
