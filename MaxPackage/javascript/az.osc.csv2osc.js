inlets = 2

var myval=0;
var columnsUUID = [];

if (jsarguments.length>1)
	myval = jsarguments[1];

function bang()
{
	outlet(0,"myvalue","is",myval);
}

function msg_int(v)
{
	post("received int " + v + "\n");
	myval = v;
	bang();
}

function msg_float(v)
{
	post("received float " + v + "\n");
	myval = v;
	bang();
}

function list()
{
	var a = arrayfromargs(arguments);
	post("received list " + a + "\n");
	myval = a;
	bang();
}


function anything()
{
	var a = arrayfromargs(messagename, arguments);
	if (a[0] === 'columns') {
		columnsUUID = a[1].split(';');
		post("new columns " + columnsUUID + "\n");
	} else if (a[0] === 'rows') {
		var index = -1;
		for(var k=0, l=columnsUUID.length ; k<l ; k += 1) {
			if(columnsUUID[k] === 'OSC Address') {
				index = k;
			}
		}
		if (index === -1) {
			error('no OSC Address column found in .csv \n');
			return;
		}
		const newArgs = a[1].split(';');
		if (newArgs.length !== columnsUUID.length) {
			error("row : " + newArgs + " doesn't have the same length as columns" + columnsUUID + "\n");
			return;
		}
		const oscPrefix = newArgs[index];
		if (oscPrefix === '' || oscPrefix[0] !== '/') {
			error('missing a valid oscPrefix for ' + newArgs + "\n");
			return;
		}
		for(var i=0, j=newArgs.length ; i<j ; i += 1) {
			const meta = columnsUUID[i].toLowerCase()
			if (i !== index && newArgs[i] !== "") {
				if (meta === 'name') {
					outlet(0,oscPrefix+"/"+meta,String(newArgs[i].replace(' ', '')));
				} else if (meta === 'color') {
					const array = newArgs[i].split(',');
					if (array.length !== 4) {
						error("color argument expected 4 values but received "+array.length + " : " + newArgs[i] + " \n");
						return;
					}
					outlet(0,oscPrefix+"/"+meta,array[0], array[1], array[2], array[3]);
				} else if (meta === 'io') {
					
				} else {
					outlet(0,oscPrefix+"/"+meta,String(newArgs[i]).replace(',', '.'));
				}
			}
		}
	} else {
		error(a + ' is not recognised \n');
	}
}