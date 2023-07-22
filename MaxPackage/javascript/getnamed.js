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
	pitchMap = this.patcher.getnamed(String(a[0]));
	if (pitchMap !== null) {
		//outlet(0,"test",pitchMap);
		post(pitchMap.getvalueof() + "\n");
		post(pitchMap.maxclass + "\n");
		if (pitchMap.maxclass === 'textedit') {
			pitchMap.message("set",a[1]);
			pitchMap.message("bang");
		} else {
			pitchMap.message(a[1]);
		}
		post(pitchMap.patcher.filepath + "\n");
		//post(JSON.stringify(pitchMap)+  "\n");
		
	} else {
		post("did not found", a[0], "\n");
	}
	// https://docs.cycling74.com/max8/vignettes/jsmaxobjlistener?q=this.patcher.getnamed
	// https://docs.cycling74.com/max8/vignettes/jsmaxobj
	// https://docs.cycling74.com/max8/vignettes/javascript_usage_topic
	//post("received message " + pitchMap + "\n");
	myval = a;
	//bang();
}