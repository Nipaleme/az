const { Xcorr } = require("./xcorr.js");
const assert = require("assert").strict;
const fs = require("fs");
const wav = require("node-wav");

// Function to convert Float32Array to 16-bit Buffer
function float32To16BitBuffer(float32Array) {
  const buffer = Buffer.alloc(float32Array.length * 2); // Each sample is 2 bytes (16 bits)

  for (let i = 0; i < float32Array.length; i++) {
    // Convert float32 to int16
    const int16Value = Math.max(-1, Math.min(1, float32Array[i])) * 0x7fff;

    // Write int16 value to the buffer
    buffer.writeInt16LE(int16Value, i * 2);
  }

  return buffer;
}

describe("Xcorr", () => {
  it("should return 1 when given identical signals", () => {
    const sig = Buffer.from([0, 1, 0, 0]);
    assert.deepEqual(Xcorr(sig, sig), {
      xcorr: new Float64Array([0.9999999999999999, 0]), // duh...
      xcorrMax: 0.9999999999999999, // duh...
      iMax: 0,
    });
  });

  it("should return the index of the max of the cross-correlation", () => {
    const sig1 = Buffer.from([0, 1, 0, 0, 0, 4, 0, 2]);
    const sig2 = Buffer.from([0, 2, 0, 1, 0, 0, 0, 4]);
    assert.deepEqual(Xcorr(sig1, sig2).iMax, -1);
    assert.deepEqual(Xcorr(sig2, sig1).iMax, 1);
  });

  it("should support correlated but differently scaled signals", () => {
    const sig1 = Buffer.from([0, 6, 0, 0, 0, 4, 0, 2]);
    const sig2 = Buffer.from([0, 1, 0, 3, 0, 0, 0, 2]); // half the values of sig1
    assert.deepEqual(Xcorr(sig1, sig2).xcorr[3], 1);
  });

  it("should support signals of arbitrary length", () => {
    const sig1 = Buffer.from([0, 6, 0, 0, 0, 4, 0, 2, 0, 16, 0, 2]);
    const sig2 = Buffer.from([0, 1, 0, 3, 0, 0, 0, 2, 0, 1, 0, 8]); // half the values of sig1
    assert.deepEqual(Xcorr(sig1, sig2).iMax, -1);
    assert.deepEqual(Xcorr(sig2, sig1).iMax, 1);
  });

  it("should read two .wav files and find best correlation", () => {
    const buffer1 = fs.readFileSync("LCS/16bits/L-unique-1000samples.wav");
    const result1 = wav.decode(buffer1);
    const float32Array = result1.channelData[0];
    const LBuff = float32To16BitBuffer(float32Array);

    const buffer3 = fs.readFileSync("LCS/16bits/R-unique-1000samples.wav");
    const result3 = wav.decode(buffer3);
    const float32Array3 = result3.channelData[0];
    const RBuff = float32To16BitBuffer(float32Array3);

    const buffer2 = fs.readFileSync("LCS/16bits/V1-unique-1000samples.wav");
    const result2 = wav.decode(buffer2);
    const float32Array2 = result2.channelData[0];
    const V1Buff = float32To16BitBuffer(float32Array2);
    const leftCalc = Xcorr(LBuff, V1Buff).iMax;
    const RightCalc = Xcorr(RBuff, V1Buff).iMax;
    console.log(leftCalc, RightCalc);
  });

  it("should read two .wav files and find best correlation", () => {
    const buffer1 = fs.readFileSync("LCS/16bits/L-triple.wav");
    const result1 = wav.decode(buffer1);
    const float32Array = result1.channelData[0];
    const LBuff = float32To16BitBuffer(float32Array);

    const buffer3 = fs.readFileSync("LCS/16bits/R-triple.wav");
    const result3 = wav.decode(buffer3);
    const float32Array3 = result3.channelData[0];
    const RBuff = float32To16BitBuffer(float32Array3);

    const buffer2 = fs.readFileSync("LCS/16bits/V1-triple.wav");
    const result2 = wav.decode(buffer2);
    const float32Array2 = result2.channelData[0];
    const V1Buff = float32To16BitBuffer(float32Array2);
    const leftCalc = Xcorr(LBuff, V1Buff).iMax;
    const RightCalc = Xcorr(RBuff, V1Buff).iMax;
    console.log(leftCalc, RightCalc);
  });
});
