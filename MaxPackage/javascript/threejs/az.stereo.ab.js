const path = require("path");
const Max = require("max-api");
const THREE = require("three");

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

const spacing = 0.17;
const directivity = 0.5;
const angle = 110;

let normalizeGain = false;
let normalizeDelay = false;

const createMicArray = (number) => {
  if (number < 1) {
    Max.post(
      "number of speaker must be superior or equal to 1, will use 1",
      "WARN"
    );
    return [new THREE.Vector3(0, 0, 0)];
  }
  if (number === 1) return [new THREE.Vector3(0, 0, 0)];
  const leftMin = -spacing / 2;
  const interval = spacing / (number - 1);
  return new Array(number)
    .fill(0)
    .map((_, index) => new THREE.Vector3(leftMin + index * interval, 0, 0));
};

const createSourceArray = (number) => {
  if (number < 1) {
    Max.post(
      "number of speaker must be superior or equal to 1, will use 1",
      "WARN"
    );
    return [new THREE.Vector3(0, 1, 0)];
  }
  if (number === 1) return [new THREE.Vector3(0, 1, 0)];

  const interval = 1;
  const leftMin = -(number - 1) / 2;
  return new Array(number)
    .fill(0)
    .map((_, index) => new THREE.Vector3(leftMin + index * interval, 1, 0));
};

const createDirectivityArray = (number) =>
  new Array(number < 1 ? 1 : number).fill(directivity);

const createDirectionArray = (number) => {
  if (number < 1) {
    Max.post(
      "number of speaker must be superior or equal to 1, will use 1",
      "WARN"
    );
    return [
      new THREE.Vector3(0, 1, 0).applyAxisAngle(new THREE.Vector3(0, 0, 1), 0),
    ];
  }
  if (number === 1)
    return [
      new THREE.Vector3(0, 1, 0).applyAxisAngle(new THREE.Vector3(0, 0, 1), 0),
    ];
  const leftMin = angle / 2;
  const interval = angle / (number - 1);
  return new Array(number)
    .fill(0)
    .map((_, index) =>
      new THREE.Vector3(0, 1, 0).applyAxisAngle(
        new THREE.Vector3(0, 0, 1),
        ((leftMin - index * interval) * Math.PI) / 180
      )
    );
};

let micPosArray = createMicArray(2);

let directivityArray = createDirectivityArray(2);

let directionArray = createDirectionArray(2);

let sourcePosArray = createSourceArray(3);

const normalizeGains = (gains) => {
  const linearSUM = gains.reduce((prev, curr) => prev + curr, 0);
  return gains.map((gain) => gain / linearSUM);
};

const calcGainsDelays = (x, y, z, normalizeG, normalizeD, oscPrefix) => {
  const pos = new THREE.Vector3(x, y, z);

  let { gains, delays } = micPosArray.reduce(
    (prev, curr, currIndex) => {
      const currPos = curr.clone();
      const dist = currPos.distanceTo(pos);
      const directivity = directivityArray[currIndex];
      const a = directivity;
      const direction = directionArray[currIndex].clone();

      const theta = direction.angleTo(pos.clone().sub(currPos));
      const r = a + (1 - a) * Math.cos(theta);
      const gain = r / dist;

      prev.gains.push(Math.min(gain, 3));
      prev.delays.push((dist / 343.2) * 1000);
      return prev;
    },
    {
      delays: oscPrefix === undefined ? ["/delays"] : [`${oscPrefix}/delays`],
      gains: oscPrefix === undefined ? ["/gains"] : [`${oscPrefix}/gains`],
    }
  );
  if (normalizeG === true) {
    const gainAddress = gains.splice(0, 1);
    let newGains = normalizeGains(gains);
    newGains.splice(0, 0, gainAddress[0]);
    gains = newGains;
  }
  if (normalizeD === true) {
    const delayAddress = delays.splice(0, 1);
    const minDelay = Math.min(...delays);
    let newDelays = delays.map((delay) => delay - minDelay);
    newDelays.splice(0, 0, delayAddress[0]);
    delays = newDelays;
  }

  return [gains, delays];
};

const calcMicDirection = (qx, qy, qz, qw, pos) => {
  const quaternion = new THREE.Quaternion(qx, qy, qz, qw).normalize();
  const euler = new THREE.Euler().setFromQuaternion(quaternion, "ZYX");
  const aedPosition = new THREE.Spherical().setFromVector3(
    new THREE.Vector3(pos.x, pos.z, pos.y)
  );
  aedPosition.phi = Math.PI / 2 - aedPosition.phi;
  const newSpherical = new THREE.Spherical(
    1,
    aedPosition.theta + euler.z,
    aedPosition.phi + euler.x
  );
  const xyz = new THREE.Vector3().setFromSpherical(newSpherical);
  return new THREE.Vector3(-xyz.z, -xyz.y, -xyz.x);
};

const bang = () => {
  sourcePosArray.forEach((pos, index) => {
    const [gains, delays] = calcGainsDelays(
      pos.x,
      pos.y,
      pos.z,
      normalizeGain,
      normalizeDelay,
      `/source/${index + 1}`
    );

    Max.outlet(gains);
    Max.outlet(delays);
  });
};

const dump = () => {
  Max.outlet(["/dump", "/source/number", sourcePosArray.length]);
  Max.outlet(["/dump", "/microphone/number", micPosArray.length]);
  sourcePosArray.forEach((pos, index) => {
    Max.outlet(["/dump", `/source/${index + 1}/xyz`, pos.x, pos.y, pos.z]);
  });
  micPosArray.forEach((pos, index) => {
    Max.outlet(["/dump", `/microphone/${index + 1}/xyz`, pos.x, pos.y, pos.z]);
  });
  directionArray.forEach((pos, index) => {
    Max.outlet([
      "/dump",
      `/microphone/${index + 1}/direction/xyz`,
      pos.x,
      pos.y,
      pos.z,
    ]);
  });
  Max.outlet(["/dump", "/microphone/*/orientation/visible", 1]);
};

const parseBoolean = (value, address) => {
  if (value === 1) {
    return true;
  } else if (value === 0) {
    return false;
  } else if (value === "true") {
    return true;
  } else if (value === "false") {
    return false;
  } else if (typeof value === "boolean") {
    return value;
  } else {
    Max.post(`wrong argmument for command ${address}, received : ${value}`);
    return undefined;
  }
};

const handlers = {
  [Max.MESSAGE_TYPES.BANG]: () => {
    bang();
  },
  [Max.MESSAGE_TYPES.ALL]: (handled, ...message) => {
    const [address, ...args] = message;
    if (address === "bang") return;
    const splittedAddress = address.split("/").slice(1);
    const oscPrefix = `/${splittedAddress[0]}/${splittedAddress[1]}`;

    if (
      splittedAddress[0] === "microphone" &&
      splittedAddress[2] === "xyz" &&
      args.length === 3
    ) {
      const index = Number(splittedAddress[1]);
      if (micPosArray[index - 1] === undefined) {
        Max.warn(`index not recognized in command : ${address}`);
        return;
      }
      micPosArray[index - 1] = new THREE.Vector3(args[0], args[1], args[2]);
      bang();

      Max.post("pos", micPosArray);
    } else if (
      splittedAddress[0] === "microphone" &&
      splittedAddress[2] === "orientation" &&
      args.length === 4
    ) {
      const index = Number(splittedAddress[1]);
      const pos = micPosArray[index - 1].clone();
      const direction = directionArray[index - 1];
      if (pos === undefined || direction === undefined) {
        Max.warn(`index not recognized in command : ${address}`);
        return;
      }
      const newDirectionXYZ = calcMicDirection(
        args[0],
        args[1],
        args[2],
        args[3],
        pos
      );
      directionArray[index - 1] = newDirectionXYZ;
      bang();

      Max.post("direction", directionArray);
    } else if (
      splittedAddress[0] === "microphone" &&
      splittedAddress[2] === "cardioicity" &&
      args.length === 1
    ) {
      const index = Number(splittedAddress[1]);
      if (directivityArray[index - 1] === undefined) {
        Max.warn(`index not recognized in command : ${address}`);
        return;
      }
      directivityArray[index - 1] = args[0];
      bang();

      Max.post("cardioicity", directivityArray);
    } else if (
      splittedAddress[0] === "source" &&
      splittedAddress[2] === "xyz" &&
      args.length === 3
    ) {
      const index = Number(splittedAddress[1]);
      if (sourcePosArray[index - 1] === undefined) {
        Max.warn(`index not recognized in command : ${address}`);
        return;
      }
      sourcePosArray[index - 1] = new THREE.Vector3(args[0], args[1], args[2]);
      const [gains, delays] = calcGainsDelays(
        args[0],
        args[1],
        args[2],
        normalizeGain,
        normalizeDelay,
        oscPrefix
      );

      Max.outlet(gains);
      Max.outlet(delays);
    } else if (
      splittedAddress[0] === "gains" &&
      splittedAddress[1] === "normalization" &&
      args.length === 1 &&
      (typeof args[0] === "boolean" ||
        typeof args[0] === "number" ||
        typeof args[0] === "string")
    ) {
      const value = parseBoolean(args[0], address);
      if (value !== undefined) {
        normalizeGain = value;
      }
      bang();
    } else if (
      splittedAddress[0] === "delays" &&
      splittedAddress[1] === "normalization" &&
      args.length === 1 &&
      (typeof args[0] === "boolean" ||
        typeof args[0] === "number" ||
        typeof args[0] === "string")
    ) {
      const value = parseBoolean(args[0], address);
      if (value !== undefined) {
        normalizeDelay = value;
      }
      bang();
    } else if (
      splittedAddress[0] === "source" &&
      splittedAddress[1] === "number" &&
      args.length === 1 &&
      typeof args[0] === "number" &&
      args[0] !== sourcePosArray.length
    ) {
      sourcePosArray = createSourceArray(args[0]);
      Max.outlet(address, args[0]);
      bang();
      dump();
    } else if (
      splittedAddress[0] === "microphone" &&
      splittedAddress[1] === "number" &&
      args.length === 1 &&
      typeof args[0] === "number" &&
      args[0] !== micPosArray.length
    ) {
      micPosArray = createMicArray(args[0]);
      directivityArray = createDirectivityArray(args[0]);
      directionArray = createDirectionArray(args[0]);
      Max.outlet(address, args[0]);

      bang();
      dump();
    } else {
      Max.post(`unrecognized osc command : ${address}`, args);
    }
  },
};

Max.addHandlers(handlers);
