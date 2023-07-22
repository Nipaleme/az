inlets = 2

var myval=0;
var pitchMap;


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
	//post("received message " + a + "\n");
	pitchMap = this.patcher.parentpatcher.getnamed(String(a[0]));
	if (pitchMap !== null) {
		//outlet(0,"test",pitchMap);
		// post(pitchMap.getvalueof() + "\n");
		// post(pitchMap.maxclass + "\n");
		// post(pitchMap.patcher.filepath + "\n");
		const args = a.slice(1);
		if (args[0] === '*') return;
		var currArgValue = pitchMap.getvalueof();
		if (currArgValue !== args) {
			if (pitchMap.maxclass === 'textedit' || pitchMap.maxclass === 'message') {
				pitchMap.message("set",args);
				pitchMap.message("bang");
			} else if (pitchMap.maxclass === 'number' && typeof args[0] === 'number') {
				if (Number(currArgValue) !== Number(args[0])) {
					pitchMap.message(args[0]);
				}
			} else {
				pitchMap.message(args);
			}
		}
		
	} else {
		// error("did not found object with scriptname:", a[0], "\n");
		// post("did not found object with scriptname:", a[0], "\n");
	}
	// https://docs.cycling74.com/max8/vignettes/jsmaxobjlistener?q=this.patcher.getnamed
	// https://docs.cycling74.com/max8/vignettes/jsmaxobj
	// https://docs.cycling74.com/max8/vignettes/javascript_usage_topic
	//post("received message " + pitchMap + "\n");
	myval = a;
	//bang();
}