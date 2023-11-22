const path = require('path');
const Max = require('max-api');
const fs = require('fs');
const THREE = require('three');

// This will be printed directly to the Max console
Max.post(`Loaded the ${path.basename(__filename)} script`);


// const circle = new Array(8).fill(0).map((_, index, array) => {
// 	const angle = index*2*Math.PI/array.length;
// 	return new THREE.Vector3(Math.cos(angle)*dist, Math.sin(angle)*dist, 0);
// });

const getCircle = (dist) => new Array(8).fill(0).map((_, index, array) => {
	const angle = index*2*Math.PI/array.length;
	return new THREE.Vector3(Math.cos(angle)*dist, Math.sin(angle)*dist, 0);
});

const earlyCircle = getCircle(1);
const clusterCircle = getCircle(7);

const translate = (arrayPos, center) => arrayPos.map((pos) => new THREE.Vector3().addVectors(pos, center));
const rotate = (arrayPos, center) => {
	const array = [...arrayPos];
	const aedPosition = new THREE.Spherical();
	aedPosition.setFromVector3( new THREE.Vector3(center.x, center.z, center.y));
	aedPosition.phi = Math.PI / 2 - aedPosition.phi;
	const euler = new THREE.Euler(0, 0, -aedPosition.theta);
	return array.map((pos) => new THREE.Vector3(pos.x, pos.y, pos.z).applyEuler(euler));
};
const handlers = {
	[Max.MESSAGE_TYPES.BANG]: () => {
	  Max.post("got a bang");
	},
	[Max.MESSAGE_TYPES.ALL]: (handled, ...message) => {
		const [address, ...args] = message;
		const splittedAddress = address.split('/').slice(1);
		const oscPrefix = `/${splittedAddress[0]}/${splittedAddress[1]}`;

		const center = new THREE.Vector3(args[0], args[1], args[2]);
		const rotated = rotate(earlyCircle, center);
		const moved = translate(rotated, center);

		const distCenter = center.distanceTo(new THREE.Vector3(0,0,0));
		//   const positions = moved.reduce((prev, curr) => {
		// 	prev.push(curr.x, curr.y, curr.z);
		// 	return prev;
		//   }, [`/${splittedAddress[0]}/${splittedAddress[1]}/bus/A/early/position`]);

		const {gains, delays} = moved.reduce((prev, curr) => {
			const distEarly = curr.distanceTo(new THREE.Vector3(0,0,0));
			const usedDist = Math.abs(distCenter-distEarly)+ Math.max(distCenter, distEarly);
			prev.delays.push(Math.abs(distCenter-distEarly)/343.2*1000);
			prev.gains.push(Math.min(1,1/usedDist));
			return prev;
		}, {
		delays: [`${oscPrefix}/bus/A/early/delays`], 
		gains: [`${oscPrefix}/bus/A/early/gains`]
		});

		const gainsToCompare = gains.slice(1);
		const maxGain = Math.max(...gainsToCompare);
		const normalizeG = 1-maxGain;
		const newG = gains.map((val, index) => {
			if (index == 0) return val;
			return Math.max(-1,val+normalizeG);
		});

		const maxAngle = moved.reduce(
			(prev, curr) => Math.max(prev, Math.abs(center.angleTo(curr))),
		0);
		const earlyWidth = [`${oscPrefix}/early/width`, Math.min(maxAngle*180/Math.PI*2, 180)]

		// Max.outlet(positions);
		Max.outlet(delays);
		Max.outlet(newG);
		Max.outlet(earlyWidth);

		const clusterDelays = clusterCircle.reduce((prev, curr) => {
			 
			const distClust2Center = curr.distanceTo(center);
			const distClust2Origin = curr.distanceTo(new THREE.Vector3(0,0,0));
			const usedDist = distClust2Center+distClust2Origin
			prev.push(usedDist/343.2*1000);
			return prev;
		}, [`/reverb/1/cluster/delays`]);

		Max.outlet(clusterDelays);
	}
  };

Max.addHandlers(handlers);
