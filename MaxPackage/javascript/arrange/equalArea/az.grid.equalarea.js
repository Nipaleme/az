const path = require("path");
const Max = require("max-api");
const fs = require("fs");
const THREE = require("three");

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

const getAreaOfSphere = (dimension) => {
  const power = (dim+1)/2;
  const area =  (Math.pow(2*Math.PI,power)./gamma(power));
}

const getPolarCap = (nbOfSpeakers) => {
  const sphericalArea = (2*Math.PI*(d+1)/2)/(*(d+1)/2)  //equation [2.8] - page 7  https://ftp.gwdg.de/pub/EMIS/journals/ETNA/vol.25.2006/pp309-327.dir/pp309-327.pdf 
  const requiredAreaOfRegionR = sphericalArea / nbOfSpeakers
};
const getIdealCollarAngle = (nbOfSpeakers) => {};

const equalArea = (nbOfSpeakers) => {
  // I - Divide the sphere into zones, each the same area as an integer number of region
  const colatitudePolarCaps = getPolarCap(nbOfSpeakers); // 1. Determine the colatitudes of polar caps
  const collarAngle = getIdealCollarAngle(nbOfSpeakers); // 2. Determine an ideal collar angle,

  const idealCollarNumber = getIdealCollarNumber(); // 3. Determine an ideal number of collars
  const collarNumber = getActualCollarNumber(); //4. Determine the actual number of collars,

  const listIdealRegionNumber = getIdealRegionNumber(); // 5. Create a list of the ideal number of regions in each collar,
  const actualRegionNumber = getActualRegionNumber(); //6. Create a list of the actual number of regions in each collar

  const colatitudeEachZones = getCollatitudeEachZones(); // 7. Create a list of colatitudes of each zone


  // II - Partition each spherical collar into regions of equal area (dimension 2)
};

const handlers = {
  [Max.MESSAGE_TYPES.BANG]: () => {
    Max.post("got a bang");
  },
  [Max.MESSAGE_TYPES.ALL]: (handled, ...message) => {
    Max.outlet("toto");
  },
};

Max.addHandlers(handlers);
