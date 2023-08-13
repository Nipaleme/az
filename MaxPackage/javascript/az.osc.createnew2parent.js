
var vbox;
var a = new Array();
var initValues = {};
var debugVal = 0;
var arrayListener = new Array();
var dictRef = null;
var thus = this.patcher;
var needCreate = false;
var uuid = "";

function log() {
	if (Number(debugVal) === 1) {
		post(arrayfromargs(messagename, arguments));
	}
}
function valuechanged(data) {
	log('value changed \n');
	if (data.attrname) {
		log("attrname: " + data.attrname + "\n");
	}
	if (dictRef === null) {
		dictRef = new Dict(uuid+"-dictpack");
	}
	if (data.maxobject === null) return;
	const currValue = dictRef.get(String(data.maxobject.getattr('varname')));
	if (currValue === data.value) return;
	log('prev value : ', currValue, "\n");
	if (data.maxobject.maxclass === 'textedit') {
		log('textedit \n');
		const array= data.value.split(' ');
		dictRef.replace(String(data.maxobject.getattr('varname')), array.join('_'));
	} else {
		dictRef.replace(String(data.maxobject.getattr('varname')), data.value);
	}
	log(String(data.maxobject.getattr('varname')), data.value, "\n");
	outlet(0, 'bang');
	// outlet(0, data.maxobject.getattr('varname'), data.value,"\n");
}

function debug(bool) {
	if (Number(bool) === 0 || Number(bool) === 1) {
		debugVal = bool;
		if (bool == 1) {
			post('debug logs activated \n');
		} else {
			post('debug logs desactivated \n');
		}
	}
}


function errorLog() {
	if (Number(debugVal) === 1) {
		error(arrayfromargs(messagename, arguments));
	}
}

function numberScript(scriptname) 
{
	return [0, 200, "number", "@format", 6, "@style", "redness", "@hint", scriptname, "@annotation", scriptname, "@varname", scriptname]; 
}

function messageScript(scriptname) 
{
	return [0, 200, "message", "@style", "redness", "@hint", scriptname, "@annotation", scriptname, "@varname", scriptname]; 
}

function bang() {
	arrayListener = new Array();
	
	for (i= 0, j=a.length ; i<j ; i+=1) {
		const currArray = a[i];
		currArray[0] = 80 + i*80; //posX
		const address = currArray[currArray.length-1];
		var maxobj = null;
		
		// create or update object linked to scriptname
		maxobj = this.patcher.parentpatcher.getnamed(address);
		if (maxobj !== null) {
			log(address, 'already exist', "\n");
			// l = new MaxobjListener(maxobj, "", valuechanged);
			for (k=0, l = currArray.length;k<l;k+=1) {
				if(String(currArray[k])[0] === '@') {
					const newAttrKey = currArray[k].slice(1);
					const currValue = maxobj.getattr(newAttrKey);
					if (currValue !== currArray[k+1]) {
						maxobj.setattr(newAttrKey,currArray[k+1] );
						log(newAttrKey,'curr value:', currValue,'requested value',currArray[k+1], '\n');
					}
				}
			}
		} else {
			if (needCreate) {
				log('create new', currArray, "\n");
				vbox = this.patcher.parentpatcher.newdefault(currArray);
			}
		}

		
		
		// send init values to created objects
		maxobj = this.patcher.parentpatcher.getnamed(address);
		if (maxobj !== null) {
			log("add", maxobj.getattr('varname'), "to listener", "\n");
			arrayListener.push(new MaxobjListener(maxobj, "", valuechanged));
			const currArgValue = maxobj.getvalueof();
			const argsReq = initValues[address];
			if (currArgValue != argsReq) {
				log('send', address, argsReq, 'previous: ', currArgValue, "\n");
				if (maxobj.maxclass === 'textedit' || maxobj.maxclass === 'message' || maxobj.maxclass === 'comment') {
					maxobj.message("set",argsReq);
					maxobj.message("bang");
				} else if (maxobj.maxclass === 'number' && typeof argsReq[0] === 'number') {
					if (Number(currArgValue) !== Number(argsReq[0])) {
						maxobj.message(argsReq[0]);
					}
				} else {
					maxobj.message(argsReq);
				}
			}
		}
	}
	
	// init to default values
	 a = new Array(); 
	 init = {};
	 needCreate = false;
}

function anything()
{
	const arrayAll = arrayfromargs(messagename, arguments);
	const address = arrayAll[0];
	const args = arrayAll.slice(1);

	if (address[0] !== '/') {
		error('address', address, 'is not a valid OSC address, need to begin with /', "\n");
		return;
	}
	if (a === null) {
		a = new Array(); // init to default array
	}
	if (address === '/debug') {
		debug(args); // activate logs
		return;
	}
	if (address === '/create') {
		needCreate = true;
		bang();
		return;
	}
	if (address === '/uuid') {
		uuid = args[0];
		return;
	}
	
	if (args.length === 1 && typeof args[0] === 'number') {
		a.push(numberScript(address));
	} else {
		a.push(messageScript(address));
	}
	initValues[address] = args;
}

