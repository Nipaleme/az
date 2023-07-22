
/*
	super simple max scripting with javascript example
	this shows the use of the newdefault method for creating objects in patchers
	so that you can create objects without needing to specify special patcher format 
	arguments for UI objects or font information and pixel width for text objects.
*/

// global varables and code
var vbox;
var posX = 0;
var a = new Array();
var initValues = {};

function numberScript(scriptname) 
{
	return [posX, 200, "number", "@format", 6, "@style", "redness", "@hint", scriptname, "@annotation", scriptname, "@varname", scriptname]; 
}

function messageScript(scriptname) 
{
	return [posX, 200, "message", "@style", "redness", "@hint", scriptname, "@annotation", scriptname, "@varname", scriptname]; 
}

function msg_int(v)
{
	posX = v;
}

function bang() {
	
	var i=0;
	var j=0;
	for (i= 0, j=a.length ; i<j ; i+=1) {
		var currArray = a[i];
		currArray[0] = 80 + i*80;
		var alreadyExist = null;
		var address = currArray[currArray.length-1];

		// create or update object linked to scriptname
		alreadyExist = this.patcher.parentpatcher.getnamed(address);
		if (alreadyExist !== null) {
			// post(address, 'already exist', "\n");
			for (k=0, l = currArray.length;k<l;k+=1) {
				if(String(currArray[k])[0] === '@') {
					var newAttrKey = currArray[k].slice(1);
					var currValue = alreadyExist.getattr(newAttrKey);
					if (currValue !== currArray[k+1]) {
						alreadyExist.setattr(newAttrKey,currArray[k+1] );
						// post(newAttrKey,'curr value:', currValue,'requested value',currArray[k+1], '\n');
					}
				}
			}
		} else {
			// post('create new', currArray, "\n");
			vbox = this.patcher.parentpatcher.newdefault(currArray);
		}


		// send init values to created objects
		alreadyExist = this.patcher.parentpatcher.getnamed(address);
		var currArgValue = alreadyExist.getvalueof();
		var argsReq = initValues[address];
		if (currArgValue != argsReq) {
			// post('send', address, argsReq, 'previous: ', currArgValue, "\n");
			if (alreadyExist.maxclass === 'textedit' || alreadyExist.maxclass === 'message') {
				alreadyExist.message("set",argsReq);
				alreadyExist.message("bang");
			} else if (alreadyExist.maxclass === 'number' && typeof argsReq[0] === 'number') {
				if (Number(currArgValue) !== Number(argsReq[0])) {
					alreadyExist.message(argsReq[0]);
				}
			} else {
				alreadyExist.message(argsReq);
			}
		}
	}
	
	// init to default values
	 a = new Array(); 
	 init = {};
}

function anything()
{
	
	var arrayAll = arrayfromargs(messagename, arguments);
	var address = arrayAll[0];
	var args = arrayAll.slice(1);

	if (address[0] !== '/') {
		error('address', address, 'is not a valid OSC address, need to begin with /', "\n");
		return;
	}

	if (a === null) {
		a = new Array(); // init to default array
	}
	
	if (args.length === 1 && typeof args[0] === 'number') {
		a.push(numberScript(address));
	} else {
		a.push(messageScript(address));
	}
	initValues[address] = args;
}

function location(x,y)
{
	vx = x;
	vy = y;
	if (vbox) {
		var width,height;
		var r = new Array();
		
		width  = vbox.rect[2] - vbox.rect[0];
		height = vbox.rect[3] - vbox.rect[1];
		r[0] = x;
		r[1] = y;
		r[2] = x+width;
		r[3] = y+height;
		
		vbox.rect = r;
	}
}

function sizebox(width,height)
{
	if (vbox) {
		var r = new Array();
		
		r[0] = vbox.rect[0];
		r[1] = vbox.rect[1];
		r[2] = vbox.rect[0]+width;
		r[3] = vbox.rect[1]+height;
		
		vbox.rect = r;
	}
}

function hidebox(hidden)
{
	if (vbox) {
		vbox.hidden = hidden;
	}
}

function sendtobox()
{
	var i;
	var a = new Array();
	
	// send any message the box understands to the box
	if (vbox) {
		if (vbox.understands(arguments[0])) {	
			for (i=0;i<(arguments.length-1);i++)
				a[i] = arguments[i+1];
			vbox[arguments[0]](a);
		} else if (vbox.understands("sendbox")) {
			for (i = 0; i < arguments.length; i++)
				a[i] = arguments[i];
			vbox["sendbox"](a);
		} else {
			post("doesn't understand " + arguments[0] + "\n");
		}
	}
}
