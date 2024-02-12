const { Xcorr } = require("./xcorr.js");
const assert = require("assert").strict;
const fs = require("fs");
const wav = require("node-wav");
const Max = require("max-api");

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

const calculateDelay = () => {
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
  Max.post(leftCalc, RightCalc);
  console.log(leftCalc, RightCalc);
};

calculateDelay();
