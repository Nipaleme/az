import { test, expect, describe } from "bun:test";
import { numCollars } from "./numCollars";
import { idealRegionList } from "./idealRegionList";
import { roundToNaturals } from "./roundToNatural";
import { capColats } from "./capColats";
import { circleOffset } from "./circleOffset";

describe("numCollars", () => {
  test("scalar1", () => {
    expect(numCollars(6, 0.1, 0.05)).toEqual(59);
  });
  test("scalar2", () => {
    expect(numCollars(32, 0.4, 0.6)).toEqual(4);
  });

  test("array", () => {
    const N_values = [3, 4, 5, 6];
    const c_polar_values = [0.1, 0.2, 0.3, 0.4];
    const a_ideal_values = [0.01, 0.02, 0.03, 0.04];
    expect(numCollars(N_values, c_polar_values, a_ideal_values)).toEqual([
      294, 137, 85, 59,
    ]);
  });
});

describe("idealRegionList", () => {
  test("scalar1", () => {
    const expectedResult = [
      1, 0.24292656703999332, 1.0261158693545769, 1.7296868681159125,
      1.7296868681159123, 1.026115869354577, 0.24292656703999344, 1,
    ];
    expect(idealRegionList(3, 6, 0.1, 6)).toEqual(expectedResult);
  });

  test("scalar2", () => {
    expect(idealRegionList(3, 6, 0.9844843564592648, 1)).toEqual([
      1, 3.9999999999999996, 1,
    ]);
  });

  test("array", () => {
    const expectedResult = [
      1, 0.26007432471340464, 1.0985475777796059, 1.851782411747624,
      1.8517824117476238, 1.0985475777796059, 0.26007432471340475, 1,
    ];
    expect(idealRegionList(3, [6, 7], [0.1, 0.1], 6)).toEqual(expectedResult);
  });
});

describe("roundToNaturals", () => {
  test("array", () => {
    expect(roundToNaturals([1.2, 2.8, 3.5, 2.3])).toEqual([1, 3, 4, 2]);
  });
});

describe("capColats", () => {
  test("array", () => {
    const expectedResult = [
      0.5, 1.2453924332741537, 1.729194052414661, 3.141592653589793,
    ];
    expect(capColats(3, 10, 0.5, [1, 2, 3, 4])).toEqual(expectedResult);
  });
});

describe("circleOffset", () => {
  test("scalar", () => {
    expect(circleOffset(4, 1, false)).toEqual(0.5);
  });
  test("scalar", () => {
    expect(circleOffset(1, 6, true)).toEqual(0.6666666666666666);
  });
});
