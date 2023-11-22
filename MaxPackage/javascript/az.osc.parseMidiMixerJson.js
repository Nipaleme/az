const path = require('path');
const Max = require('max-api');
const fs = require('fs');

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
	const file = fs.readFileSync(filepath, {encoding: 'utf-8'});
	Max.post(file);
	const jsonFile = JSON.parse(file);
	Max.post(jsonFile.length);
	var array = [];
	for(var i =0, j=jsonFile.length ; i<j ; i+= 1) {
		if (jsonFile[i].oscAddress !== undefined) {
			if (Number(jsonFile[i].channel) !== 0) {
				const newAddress = jsonFile[i].oscAddress;
				const splittedAddress = newAddress.split('/').slice(1, 3);
				const oscPrefix = "/" + splittedAddress.join('/');
				array.push(oscPrefix);
			}
		} else {
			array.push('/empty');
		}
	}
	Max.outlet(array);
});