const path = require("path");
const Max = require("max-api");
const fs = require("fs");

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);

// Use the 'addHandler' function to register a function for a particular message
Max.addHandler("bang", () => {
  Max.post("Who you think you bangin'?");
});

// Use the 'outlet' function to send messages out of node.script's outlet
Max.addHandler("echo", (msg) => {
  Max.outlet(msg);
});

Max.addHandler("read", (filepath) => {
  const file = fs.readFileSync(filepath, { encoding: "utf-8" });
  const array = file
    .split("\n")
    .filter((line) => line.includes("newacronym"))
    .map((line) => {
        const args = line.replace('\\newacronym', '').replaceAll('}','').split('{').slice(1);

        return `\\DeclareAcronym{${args[0]}}{short=\textsc{${args[0]}},long=${args[2]}}`;
    });
  Max.post(array);
  // const jsonFile = JSON.parse(file);
  // Max.post(jsonFile.length);
  // var array = [];
  // for(var i =0, j=jsonFile.length ; i<j ; i+= 1) {
  // 	const newAddress = jsonFile[i].oscAddress;
  // 	if (newAddress !== undefined) {
  // 		const splittedAddress = newAddress.split('/').slice(1, 3);
  // 		const oscPrefix = "/" + splittedAddress.join('/');
  // 		array.push(oscPrefix);
  // 	} else {
  // 		array.push('/empty');
  // 	}
  // }
  Max.outlet(array);
});
