var separator = ",";

function tab(){
  separator = "\t";
}

function comma(){
  separator = ",";
}

function read(filepath) {
  const file = new File(filepath, 'read', 'TEXT');
  if (!file.isopen) {
    error('Could not open file: ' + filepath + '\n');
    return;
  }
  post(JSON.stringify(file));
  const eof = file.eof;
  var lines = [];
  while(file.position < eof) {
    lines.push(file.readline(16384));
  }
  var cells = [];
  for(var i = 0, j = lines.length; i < j; i += 1){
    cells[i] = lines[i].split(separator);
  }
  for(var k = 0, l = lines.length; k < l; k += 1){
    for(var m = 0, n = cells[k].length ; m < n; m += 1) {
      if (!isNaN(cells[k][m])) {
        cells[k][m] = Number(cells[k][m]);
      }
      var outArray = [k].concat(cells[k]);
      outlet(0, outArray);
    }
  }
}
