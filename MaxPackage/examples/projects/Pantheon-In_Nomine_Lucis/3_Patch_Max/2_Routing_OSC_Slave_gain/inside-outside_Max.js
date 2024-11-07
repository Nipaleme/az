//PANTHEON

var nvert = 54;
var vert_G = [
    {x: 2.300000, y: 46.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 6.800000, y: 40.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 6.800000, y: 36.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 6.300000, y: 32.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 10.700000, y: 26.900000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 10.700000, y: 22.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 10.700000, y: 18.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 6.300000, y: 13.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0}, //8
    {x: 13.700000, y: 6.250000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0}, //9
    {x: 18.800000, y: 10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 22.800000, y: 10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 26.800000, y: 10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 33.700000, y: 4.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 33.700000, y: 0.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 33.700000, y: -4.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 26.800000, y: -10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 22.800000, y: -10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 18.800000, y: -10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 13.700000, y: -6.250000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0}, //19
    {x: 6.300000, y: -13.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0}, //20
    {x: 10.700000, y: -18.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 10.700000, y: -22.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 10.700000, y: -26.900000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 6.300000, y: -32.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 6.800000, y: -36.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 6.800000, y: -41.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 2.300000, y: -43.200000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -2.300000, y: -43.200000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -6.800000, y: -41.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -6.800000, y: -36.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -6.300000, y: -32.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -10.700000, y: -26.900000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -10.700000, y: -22.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -10.700000, y: -18.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -6.300000, y: -13.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0}, //35
    {x: -13.700000, y: -6.250000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0}, //36
    {x: -18.800000, y: -10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -22.800000, y: -10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -26.800000, y: -10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -33.700000, y: -4.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -33.700000, y: -0.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -33.700000, y: 4.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -26.800000, y: 10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -22.800000, y: 10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -18.800000, y: 10.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -13.700000, y: 6.250000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0}, //46
    {x: -6.300000, y: 13.700000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0}, //47
    {x: -10.700000, y: 18.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -10.700000, y: 22.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -10.700000, y: 26.900000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -6.300000, y: 32.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -6.800000, y: 36.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -6.800000, y: 40.800000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: -2.300000, y: 46.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
    {x: 2.300000, y: 46.000000, z: 0.000000, c1x: 0, c1y: 0, c1z: 0, c2x: 0, c2y: 0, c2z: 0},
];

var myval=0;

if (jsarguments.length>1)
	myval = jsarguments[1];

function bang()
{
	//outlet(0,"myvalue","is",myval);
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
    var input = arrayfromargs(arguments);
    var IDDEST = {Index: input[0]}
    var test_G = {x: input[1], y: input[2]};
    var show = pointIsInPoly(test_G, vert_G);
    if(show == true){
        var Bypass_slave = 1;
    } 
    else if(show == false){
        var Bypass_slave = 0;
    }
    //post("received list " + input + "\n");
    //outlet(0,"IDDEST","is",IDDEST.Index);
    //outlet(0,"Test_G","is",test_G.x, test_G.y);
    //outlet(0,"Test_G","is", JSON.stringify(test_G));
    //outlet(0,"Toggle","is",Bypass_slave);
    outlet(0,IDDEST.Index,Bypass_slave);
	bang();
}


function anything()
{
	var a = arrayfromargs(messagename, arguments);
	post("received message " + a + "\n");
	myval = a;
	bang();
}


function pointIsInPoly(p, polygon) {
    var isInside = false;
    var minX = polygon[0].x, maxX = polygon[0].x;
    var minY = polygon[0].y, maxY = polygon[0].y;
    for (var n = 1; n < polygon.length; n++) {
        var q = polygon[n];
        minX = Math.min(q.x, minX);
        maxX = Math.max(q.x, maxX);
        minY = Math.min(q.y, minY);
        maxY = Math.max(q.y, maxY);
    }

    if (p.x < minX || p.x > maxX || p.y < minY || p.y > maxY) {
        return false;   
    }

    var i = 0, j = polygon.length - 1;
    for (i, j; i < polygon.length; j = i++) {
        if ( (polygon[i].y > p.y) != (polygon[j].y > p.y) &&
                p.x < (polygon[j].x - polygon[i].x) * (p.y - polygon[i].y) / (polygon[j].y - polygon[i].y) + polygon[i].x ) {
            isInside = !isInside;
        }
    }

    return isInside;
}