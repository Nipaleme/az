
var myval=0;
var posX = 200;
//if (jsarguments.length>1 && jsarguments[1] !== undefined)
//	posX = jsarguments[1];
	
function numberScript() 
{
	outlet(0,"script","newdefault",myval, posX, 80, "number", "@format", 6, "@style", "redness", "@hint", myval, "@annotation", myval); 
}
function booleanScript() 
{
	outlet(0,"script","newdefault",myval, posX, 80, "button","@style", "redness", "@hint", myval, "@annotation", myval); 
}
function stringScript() 
{
	outlet(0,"script","newdefault",myval, posX, 80, "unpack", "s"); 
}
function listScript(myArrayArgs) 
{
	outlet(0,"script","newdefault",myval, posX, 80, "unpack", myArrayArgs); 
}
function bang()
{
	outlet(0,"myvalue","is",myval);
}

function msg_int(v)
{
	// post("received int " + v + "\n");
	posX = v;
	//bang();
}

function msg_float(v)
{
	// post("received float " + v + "\n");
	myval = v;
	numberScript();
	//bang();
}

function list()
{
	var a = arrayfromargs(arguments);
	// post("received list " + a + "\n");
	myval = a;
	bang();
}

function anything()
{
	var a = arrayfromargs(messagename, arguments);
	
	const address = a[0];
	myval = address;
	const args = a.slice(1);
	
	// post("received osc address " + address + " and arguments "+ args +"\n");
	
	if (args.length === 1) {
		if (typeof args[0] === "number") {
			numberScript();
		} else if(typeof args[0] === "boolean") {
			booleanScript();
		} else {
			stringScript();
		}
	} else {
		var argsArrayType = [];
		for (i=0, j=args.length ; i<j ; i += 1) {
			if (typeof args[i] === "number") {
				argsArrayType.push("f");
			} else if(typeof args[i] === "boolean") {
				argsArrayType.push("b");
			} else {
				argsArrayType.push("s");
			}
		}
		listScript(argsArrayType);
	}
}