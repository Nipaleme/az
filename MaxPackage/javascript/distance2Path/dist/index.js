"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (g && (g = 0, op[0] && (_ = 0)), _) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __spreadArray = (this && this.__spreadArray) || function (to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
};
Object.defineProperty(exports, "__esModule", { value: true });
var oscReceiver_1 = require("./osc/oscReceiver");
var oscSender_1 = require("./osc/oscSender");
var kdTree = require("kd-tree-javascript");
var points = [
    { x: 2.3, y: 46, z: 0 },
    { x: 6.8, y: 40.8, z: 0 },
    { x: 6.8, y: 36.8, z: 0 },
    { x: 6.3, y: 32, z: 0 },
    { x: 10.7, y: 26.9, z: 0 },
    { x: 10.7, y: 22.8, z: 0 },
    { x: 10.7, y: 18.8, z: 0 },
    { x: 6.3, y: 13.7, z: 0 },
    { x: 13.7, y: 6.25, z: 0 },
    { x: 18.8, y: 10.7, z: 0 },
    { x: 22.8, y: 10.7, z: 0 },
    { x: 26.8, y: 10.7, z: 0 },
    { x: 33.7, y: 4, z: 0 },
    { x: 33.7, y: 0, z: 0 },
    { x: 33.7, y: -4, z: 0 },
    { x: 26.8, y: -10.7, z: 0 },
    { x: 22.8, y: -10.7, z: 0 },
    { x: 18.8, y: -10.7, z: 0 },
    { x: 13.7, y: -6.25, z: 0 },
    { x: 6.3, y: -13.7, z: 0 },
    { x: 10.7, y: -18.8, z: 0 },
    { x: 10.7, y: -22.8, z: 0 },
    { x: 10.7, y: -26.9, z: 0 },
    { x: 6.3, y: -32, z: 0 },
    { x: 6.8, y: -36.8, z: 0 },
    { x: 6.8, y: -41, z: 0 },
    { x: 2.3, y: -43.2, z: 0 },
    { x: -2.3, y: -43.2, z: 0 },
    { x: -6.8, y: -41, z: 0 },
    { x: -6.8, y: -36.8, z: 0 },
    { x: -6.3, y: -32, z: 0 },
    { x: -10.7, y: -26.9, z: 0 },
    { x: -10.7, y: -22.8, z: 0 },
    { x: -10.7, y: -18.8, z: 0 },
    { x: -6.3, y: -13.7, z: 0 },
    { x: -13.7, y: -6.25, z: 0 },
    { x: -18.8, y: -10.7, z: 0 },
    { x: -22.8, y: -10.7, z: 0 },
    { x: -26.8, y: -10.7, z: 0 },
    { x: -33.7, y: -4, z: 0 },
    { x: -33.7, y: -0, z: 0 },
    { x: -33.7, y: 4, z: 0 },
    { x: -26.8, y: 10.7, z: 0 },
    { x: -22.8, y: 10.7, z: 0 },
    { x: -18.8, y: 10.7, z: 0 },
    { x: -13.7, y: 6.25, z: 0 },
    { x: -6.3, y: 13.7, z: 0 },
    { x: -10.7, y: 18.8, z: 0 },
    { x: -10.7, y: 22.8, z: 0 },
    { x: -10.7, y: 26.9, z: 0 },
    { x: -6.3, y: 32, z: 0 },
    { x: -6.8, y: 36.8, z: 0 },
    { x: -6.8, y: 40.8, z: 0 },
    { x: -2.3, y: 46, z: 0 },
    // { x: 4.01, y: 9.92, z: 37 },
    // { x: 9.85, y: 4.18, z: 37 },
    // { x: 9.88, y: -4.11, z: 37 },
    // { x: 3.92, y: -9.96, z: 37 },
    // { x: -3.92, y: -9.96, z: 37 },
    // { x: -9.88, y: -4.11, z: 37 },
    // { x: -9.85, y: 4.18, z: 37 },
    // { x: -4.01, y: 9.92, z: 37 },
];
function distanceFun(point1, point2) {
    var dx = point1.x - point2.x;
    var dy = point1.y - point2.y;
    var dz = point1.z - point2.z;
    return Math.sqrt(dx * dx + dy * dy + dz * dz);
}
function isPointOnSegment(point, point1, point2, tolerance) {
    if (tolerance === void 0) { tolerance = 1e-6; }
    // Check if the point is collinear with the line passing through point1 and point2
    var collinear = Math.abs((point.x - point1.x) * (point2.y - point1.y) -
        (point.y - point1.y) * (point2.x - point1.x)) < tolerance &&
        Math.abs((point.x - point1.x) * (point2.z - point1.z) -
            (point.z - point1.z) * (point2.x - point1.x)) < tolerance &&
        Math.abs((point.y - point1.y) * (point2.z - point1.z) -
            (point.z - point1.z) * (point2.y - point1.y)) < tolerance;
    if (!collinear) {
        return false; // Point is not on the line passing through point1 and point2
    }
    // Check if the point's coordinates fall within the range of the coordinates of point1 and point2
    var minX = Math.min(point1.x, point2.x) - tolerance;
    var maxX = Math.max(point1.x, point2.x) + tolerance;
    var minY = Math.min(point1.y, point2.y) - tolerance;
    var maxY = Math.max(point1.y, point2.y) + tolerance;
    var minZ = Math.min(point1.z, point2.z) - tolerance;
    var maxZ = Math.max(point1.z, point2.z) + tolerance;
    return (point.x >= minX &&
        point.x <= maxX &&
        point.y >= minY &&
        point.y <= maxY &&
        point.z >= minZ &&
        point.z <= maxZ);
}
function distance2Line(vectorPoint, cornerA, cornerB) {
    // Calculate the direction vector of the line
    var lineDirection = {
        x: cornerB.point.x - cornerA.point.x,
        y: cornerB.point.y - cornerA.point.y,
        z: cornerB.point.z - cornerA.point.z,
    };
    // Calculate the vector from linePoint1 to the point
    var pointToLinePoint1 = {
        x: vectorPoint.x - cornerA.point.x,
        y: vectorPoint.y - cornerA.point.y,
        z: vectorPoint.z - cornerA.point.z,
    };
    // Calculate the projection scalar
    var dotProduct = pointToLinePoint1.x * lineDirection.x +
        pointToLinePoint1.y * lineDirection.y +
        pointToLinePoint1.z * lineDirection.z;
    var lineDirectionLengthSquared = lineDirection.x * lineDirection.x +
        lineDirection.y * lineDirection.y +
        lineDirection.z * lineDirection.z;
    var projectionScalar = dotProduct / lineDirectionLengthSquared;
    // Calculate the projection vector
    var projectionVector = {
        x: cornerA.point.x + lineDirection.x * projectionScalar,
        y: cornerA.point.y + lineDirection.y * projectionScalar,
        z: cornerA.point.z + lineDirection.z * projectionScalar,
    };
    var isOnSegment = isPointOnSegment(projectionVector, cornerA.point, cornerB.point);
    if (isOnSegment === false) {
        var distA = cornerA.dist !== undefined
            ? cornerA.dist
            : distanceFun(cornerA.point, vectorPoint);
        var distB = cornerB.dist !== undefined
            ? cornerB.dist
            : distanceFun(cornerB.point, vectorPoint);
        return Math.min(distA, distB);
    }
    // Calculate the distance between the point and the projection
    var distance = Math.sqrt(Math.pow((vectorPoint.x - projectionVector.x), 2) +
        Math.pow((vectorPoint.y - projectionVector.y), 2) +
        Math.pow((vectorPoint.z - projectionVector.z), 2));
    return distance;
}
var listenPort = 1234;
var HoloPort = 4003;
var tree = new kdTree.kdTree(__spreadArray([], points, true), distanceFun, ["x", "y", "z"]);
var k = 2;
var dist2Path = function () { return __awaiter(void 0, void 0, void 0, function () {
    var receiveUdpSocket, sendUdpSocket_1, receive, e_1;
    return __generator(this, function (_a) {
        switch (_a.label) {
            case 0:
                _a.trys.push([0, 3, , 4]);
                receiveUdpSocket = (0, oscReceiver_1.default)();
                sendUdpSocket_1 = (0, oscSender_1.default)();
                receive = function (message) {
                    var address = message.address, args = message.args;
                    if (address[address.length - 1] === "xyz" && args.length === 3) {
                        var target_1 = { x: args[0], y: args[1], z: args[2] };
                        var nearestPoints = tree.nearest(target_1, k);
                        var nearestWithIndex = nearestPoints.map(function (_a) {
                            var point = _a[0], dist = _a[1];
                            var index = points.findIndex(function (_a) {
                                var x = _a.x, y = _a.y, z = _a.z;
                                return x === point.x && y === point.y && z === point.z;
                            });
                            return { point: point, dist: dist, index: index };
                        });
                        var result_1 = {};
                        nearestWithIndex.forEach(function (corner) {
                            if (corner.index === -1)
                                return;
                            var nextIndex = corner.index === points.length - 1 ? 0 : corner.index + 1;
                            var previousIndex = corner.index === 0 ? points.length - 1 : corner.index - 1;
                            var prevCorner = {
                                point: points[previousIndex],
                                dist: undefined,
                            };
                            var currCorner = {
                                point: points[corner.index],
                                dist: corner.dist,
                            };
                            var nextCorner = {
                                point: points[nextIndex],
                                dist: undefined,
                            };
                            if (!result_1.hasOwnProperty("".concat(previousIndex + 1, "-").concat(corner.index + 1))) {
                                var distWithPrevious = distance2Line(target_1, prevCorner, currCorner);
                                result_1["".concat(previousIndex + 1, "-").concat(corner.index + 1)] =
                                    distWithPrevious;
                            }
                            if (!result_1.hasOwnProperty("".concat(corner.index + 1, "-").concat(nextIndex + 1))) {
                                var distWithNext = distance2Line(target_1, currCorner, nextCorner);
                                result_1["".concat(corner.index + 1, "-").concat(nextIndex + 1)] = distWithNext;
                            }
                        });
                        var finalDist = Object.entries(result_1).sort(function (_a, _b) {
                            var keyA = _a[0], a = _a[1];
                            var keyB = _b[0], b = _b[1];
                            return a - b;
                        })[0][1];
                        console.log(result_1, finalDist);
                        var directG = -8.69 * Math.log(finalDist) - 0.5;
                        sendUdpSocket_1.send({
                            address: ["track", "1", "direct", "gain"],
                            args: [Math.min(directG, 0)],
                        });
                        var earlyG = -8.51 * Math.log(finalDist) - 8.51;
                        sendUdpSocket_1.send({
                            address: ["track", "1", "early", "gain"],
                            args: [Math.min(earlyG, -8.5)],
                        });
                        var reverbS = -0.13 * finalDist - 18;
                        sendUdpSocket_1.send({
                            address: ["track", "1", "reverb", "send"],
                            args: [Math.min(reverbS, -18)],
                        });
                    }
                    else if (address[address.length - 1] === "aed") {
                    }
                };
                return [4 /*yield*/, receiveUdpSocket.listen(listenPort, "127.0.0.1")];
            case 1:
                _a.sent();
                receiveUdpSocket.events.on("message", receive);
                sendUdpSocket_1.setIP("127.0.0.1");
                sendUdpSocket_1.setPort(HoloPort);
                return [4 /*yield*/, sendUdpSocket_1.setActive(true)];
            case 2:
                _a.sent();
                return [3 /*break*/, 4];
            case 3:
                e_1 = _a.sent();
                console.error(e_1);
                return [3 /*break*/, 4];
            case 4: return [2 /*return*/];
        }
    });
}); };
dist2Path().catch(console.error);
