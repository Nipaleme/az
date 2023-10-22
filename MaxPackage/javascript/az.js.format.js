

var myval=0;

var source = "";
var destination = "";
if (jsarguments.length>=1)
source = jsarguments[1];
if (jsarguments.length>=2 && jsarguments[2] !== undefined)
destination = jsarguments[2];

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
	// a = a.filter(function (val, index) { return index % 2 == 0});
	// post("received message " + a + "\n");
    // a.reduce((prev, curr) => {
    //     if (typeof curr === 'string' && curr === "") return prev;
    //     prev.push(curr);
    //     return prev;
    // }, []);
    myval = [];
	for(i=0, j= a.length; i<j; i += 1) {
		if (!(typeof a[i] === 'string' && a[i] === "")) {
			myval.push(a[i]);
		} 
	}
	myval = a;
	bang();
}