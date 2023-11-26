
// inlets and outlets
inlets = 1;
outlets = 1;

var myval = 0;

if (jsarguments.length > 1) myval = jsarguments[1];

var sourceNumber = 1;
var micNumber = 2;

function commonRouteScript(sourceNumber) {
  const listSources = [200, 133, "spat5.osc.route"];
  for (i = 0, j = sourceNumber; i < j; i += 1) {
    listSources.push("/source/" + String(i + 1));
  }
  return listSources;
}

// function routeScript(posX, scriptname, index) {
//   return [scriptname, posX, 200, "spat5.osc.route", "/source/" + String(index)];
// }

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

function createOneObj(newAddress, creationArray, customsize) {
  var newObj = null;
  newObj = this.patcher.getnamed(newAddress);
  if (newObj !== null) {
    this.patcher.remove(newObj);
  }
  vbox = this.patcher.newdefault(creationArray);
  vbox.sendbox("varname", newAddress);
  vbox.sendbox("style", "redness");
  vbox.sendbox("hint", newAddress);
  vbox.sendbox("annotation", newAddress);
  if (customsize !== undefined) {
    vbox.sendbox("size", [customsize,15]);
  }

  newObj = this.patcher.getnamed(newAddress);
  return newObj;
}

function createDSP(sourceNumber, micNumber) {
  // create common unpack
  const unpackObj = createOneObj("mc.unpack", unpackScript(sourceNumber));
  const audioInObj = this.patcher.getnamed("audio_in");
  this.patcher.connect(audioInObj, 0, unpackObj, 0);

  //create common route
  const commonRouteObj = createOneObj(
    "spat5.osc.route/all",
    commonRouteScript(sourceNumber),
    (sourceNumber)*255
  );
  const jsObj = this.patcher.getnamed("az_stereo_ab_creation_js");
  this.patcher.connect(jsObj, 0, commonRouteObj, 0);

  //create sources objects
  for (i = 0, j = sourceNumber; i < j; i += 1) {
    const sourceArray = [
      routepassScript(
        200 + 250 * i,
        "spat5.osc.routepass/source/" + String(i + 1)
      ),
      tapeoutScript(
        200 + 250 * i,
        "spat5.tapeout/source/" + String(i + 1),
        micNumber
      ),
      diagmatrixScript(
        200 + 250 * i,
        "spat5.diagmatrix/source/" + String(i + 1),
        micNumber
      ),
    ];

    var previousobj = null;
    for (m = 0, n = sourceArray.length; m < n; m += 1) {
      const currArray = sourceArray[m];
      const address = currArray.splice(0, 1);
      var maxobj = createOneObj(address, currArray);

      //connect
      if (m === 0) {
        this.patcher.connect(commonRouteObj, i, maxobj, 0);
      } else {
        this.patcher.connect(previousobj, 0, maxobj, 0);
        if (m === 1) {
          this.patcher.connect(unpackObj, i, maxobj, 0);
        }
        if (m === 2) {
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
    if (a[1] !== sourceNumber) {
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
