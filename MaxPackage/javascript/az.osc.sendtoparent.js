var debugVal = 0;

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

function log() {
	if (Number(debugVal) === 1) {
		post(arrayfromargs(messagename, arguments));
	}
}

function errorLog() {
	if (Number(debugVal) === 1) {
		error(arrayfromargs(messagename, arguments));
	}
}

function anything()
{
	const a = arrayfromargs(messagename, arguments);
	const address = a[0];
	const args = a.slice(1);
	if (String(address)[0] !== '/') {
		error(address, "is not a valid OSC address, need to start with /", "\"");
		return;
	}
	if (args[0] === '*') return;
	if (address === '/debug') {
		debug(args); // activate logs
		return;
	}

	const maxobj = this.patcher.parentpatcher.getnamed(String(a[0]));
	if (maxobj !== null) {
		const currArgValue = maxobj.getvalueof();
		if (currArgValue !== args) {
			if (maxobj.maxclass === 'textedit' || maxobj.maxclass === 'message') {
				maxobj.message("set",args);
				maxobj.message("bang");
			} else if (maxobj.maxclass === 'number' && typeof args[0] === 'number') {
				if (Number(currArgValue) !== Number(args[0])) {
					maxobj.message(args[0]);
				}
			} else {
				maxobj.message(args);
			}
		}
		
	} else {
		errorLog("did not found object with scriptname:", a[0], "\n");
	}
	// https://docs.cycling74.com/max8/vignettes/jsmaxobjlistener?q=this.patcher.getnamed
	// https://docs.cycling74.com/max8/vignettes/jsmaxobj
	// https://docs.cycling74.com/max8/vignettes/javascript_usage_topic
}