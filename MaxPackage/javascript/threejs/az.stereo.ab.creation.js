var myval = 0;

if (jsarguments.length > 1) myval = jsarguments[1];

var sourceNumber = 1;
var micNumber = 2;

function routeScript(posX, scriptname, index) {
  return [scriptname, posX, 200, "spat5.osc.route", "/source/" + String(index)];
}

function routepassScript(posX, scriptname) {
  return [scriptname, posX, 235, "spat5.osc.routepass", "/delays", "/gains"];
}

function tapeoutScript(posX, scriptname, channel) {
  return [
    scriptname,
    posX,
    290,
    "spat5.tapout~",
    "@channels",
    channel,
    "@mc",
    1,
    "@initwith",
    "/interpolation/mode allpass",
  ];
}

function diagmatrixScript(posX, scriptname, channel) {
  return [
    scriptname,
    posX,
    371,
    "spat5.diagmatrix~",
    "@channels",
    channel,
    "@mc",
    1,
  ];
}

function unpackScript(channel) {
  return [30, 224, "mc.unpack~", channel];
}

function createDSP(sourceNumber, micNumber) {
  // create common unpack
  const unpackAddress = "mc.unpack";

  var unpackObj = null;
  unpackObj = this.patcher.getnamed(unpackAddress);
  if (unpackObj !== null) {
    this.patcher.remove(unpackObj);
  }
  vbox = this.patcher.newdefault(unpackScript(sourceNumber));
  vbox.sendbox("varname", unpackAddress);
  vbox.sendbox("style", "redness");
  vbox.sendbox("hint", unpackAddress);
  vbox.sendbox("annotation", unpackAddress);

  unpackObj = this.patcher.getnamed(unpackAddress);
  const audioInObj = this.patcher.getnamed("audio_in");
  this.patcher.connect(audioInObj, 0, unpackObj, 0);

  //create sources objects
  for (i = 0, j = sourceNumber; i < j; i += 1) {
    const sourceArray = [
      routeScript(
        200 + 200 * i,
        "spat5.osc.route/source/" + String(i + 1),
        i + 1
      ),
      routepassScript(
        200 + 200 * i,
        "spat5.osc.routepass/source/" + String(i + 1)
      ),
      tapeoutScript(
        200 + 200 * i,
        "spat5.tapeout/source/" + String(i + 1),
        micNumber
      ),
      diagmatrixScript(
        200 + 200 * i,
        "spat5.diagmatrix/source/" + String(i + 1),
        micNumber
      ),
    ];

    var previousobj = null;
    for (m = 0, n = sourceArray.length; m < n; m += 1) {
      var maxobj = null;

      const currArray = sourceArray[m];
      const address = currArray.splice(0, 1);
      maxobj = this.patcher.getnamed(address);
      if (maxobj !== null) {
        this.patcher.remove(maxobj);
      }
      vbox = this.patcher.newdefault(currArray);
      vbox.sendbox("varname", address);
      vbox.sendbox("style", "redness");
      vbox.sendbox("hint", address);
      vbox.sendbox("annotation", address);

      maxobj = this.patcher.getnamed(address);
      //connect
      if (m === 0) {
        const jsObj = this.patcher.getnamed("az_stereo_ab_creation_js");
        this.patcher.connect(jsObj, 0, maxobj, 0);
      } else {
        this.patcher.connect(previousobj, 0, maxobj, 0);
        if (m === 2) {
          this.patcher.connect(unpackObj, i, maxobj, 0);
        }
        if (m === 3) {
          const routepassObj = this.patcher.getnamed(
            "spat5.osc.routepass/source/" + String(i + 1)
          );
          this.patcher.connect(routepassObj, 1, maxobj, 0);
          const gain = this.patcher.getnamed("mc.live.gain~");
          this.patcher.connect(maxobj, 0, gain, 0);
        }
      }
      previousobj = maxobj;
    }
  }
  for (k = sourceNumber, l = 100; k < l; k += 1) {
    const toDeleteArray = [
      "spat5.osc.route/source/" + String(k + 1),
      "spat5.osc.routepass/source/" + String(k + 1),
      "spat5.tapeout/source/" + String(k + 1),
      "spat5.diagmatrix/source/" + String(k + 1),
    ];
    for (o = 0, p = toDeleteArray.length; o < p; o += 1) {
      var maxobj = null;
      maxobj = this.patcher.getnamed(toDeleteArray[o]);
      if (maxobj !== null) {
        this.patcher.remove(maxobj);
      }
    }
  }
}

function anything() {
  const a = arrayfromargs(messagename, arguments);
  if (a[0] === "/source/number") {
    post("received message " + a + "\n");
    if (a[1] !== micNumber) {
      sourceNumber = a[1];
      createDSP(a[1], micNumber);
    }
  } else if (a[0] === "/microphone/number") {
    post("received message " + a + "\n");
    if (a[1] !== micNumber) {
      micNumber = a[1];
      createDSP(sourceNumber, a[1]);
    }
  } else {
    outlet(0, a);
  }
}
