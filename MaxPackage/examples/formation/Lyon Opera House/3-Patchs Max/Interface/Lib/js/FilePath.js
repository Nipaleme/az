
var myval=0;

if (jsarguments.length>1)
	myval = jsarguments[1];

function bang()
{
	post("bang");
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
	if (a[0] === "run(setpos 3 -1.55704 -2.61581 0)"){

	var b = a[0].replace('.txt"', '');
    post("received list " + b + "\n");
    outlet(0, b);
}
  //if (arguments.startsWith("file saved")){
  //  var a = arrayfromargs(arguments).splice(0, 2);
  //  post("received list " + a + "\n");
  //  outlet(0, 'test');
  //  myval = a;
  //  bang()
  //}
}

function anything()
{
    var a = messagename.replace('.txt"', '').replace('"', '');
    post("received list " + a + "\n");
    outlet(0, a);
}