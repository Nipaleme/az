

var myval=0;

var store = {};

if (jsarguments.length>1)
	myval = jsarguments[1];

function getNested (obj, args) 
{
	var prev = obj;
	for(var i = 0; i < args.length; i += 1 ) {
		if (prev[args[i]]) {
			prev = prev[args[i]]
		}
	}
	return prev;
}

function setNested (obj, args, value) 
{
	var prev = obj;
	for(var i = 0; i < args.length; i += 1 ) {
		if (!prev[args[i]]) {
			prev[args[i]] = {};
		}
		if (i == args.length - 1 ) {
			prev[args[i]] = value
		}
		prev = prev[args[i]];
	}
}

function bang()
{
	outlet(0,myval);
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
	// post("received message " + a + "\n");
	const address = a[1].split('/').slice(1);
	const args = a.slice(2);
	if (a[0] === 'get') {
		myval = getNested(store, address );
		if (typeof myval === 'object') {	
		outlet(0,myval);
		} else {
			outlet(0,a[1],myval);
		}
		// post("get " + address + " " + myval +"\n");
		// bang();
	}
	if (a[0] === 'set') {
		setNested(store, address, args );
		// post("set " + address + " " + myval +"\n");
	}
}