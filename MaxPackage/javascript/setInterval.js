
function setInterval(task, timeout) {
	this.allowExecution = true;
          
	const tsk = new Task(function (){
		if(this.allowExecution){
            task();
        }
	}, this);

	tsk.interval = timeout;
	tsk.repeat(10);
}


function bang()
{
	setInterval(function(){
			//Your code here
			outlet(0,"bang");
	}, 2000);
}
