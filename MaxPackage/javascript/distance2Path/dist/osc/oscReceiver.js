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
Object.defineProperty(exports, "__esModule", { value: true });
exports.oscAddressToStringArray = void 0;
var osc_1 = require("osc/dist/osc");
var dgram_1 = require("dgram");
var tsee_1 = require("tsee");
var oscAddressToStringArray = function (address) {
    return address.split("/").slice(1);
};
exports.oscAddressToStringArray = oscAddressToStringArray;
var oscReceiverFactory = function () {
    var ready = false;
    var events = new tsee_1.EventEmitter();
    var udpSocket = (0, dgram_1.createSocket)({
        type: "udp4",
    });
    var onClose = function () {
        ready = false;
    };
    udpSocket.on("close", onClose);
    udpSocket.on("error", console.error);
    var onMessage = function (msg, remoteInfo) {
        try {
            var message = (0, osc_1.readPacket)(msg.buffer, {});
            if (message.packets !== undefined) {
                message.packets
                    .map(function (_a) {
                    var address = _a.address, args = _a.args;
                    return ({
                        address: (0, exports.oscAddressToStringArray)(address),
                        args: args,
                    });
                })
                    .filter(function (newMessage) { return newMessage.address[0] !== "group"; }) // block 'group' messages from Pano
                    .forEach(function (mess) { return events.emit("message", mess, remoteInfo.address); });
            }
            else {
                var address = message.address, args = message.args;
                events.emit("message", { address: (0, exports.oscAddressToStringArray)(address), args: args }, remoteInfo.address);
            }
        }
        catch (e) {
            if (e instanceof Error) {
                console.error(e);
            }
            else {
                console.error(new Error(String(e)));
            }
        }
    };
    udpSocket.on("message", onMessage);
    var dispose = function () {
        udpSocket.removeListener("close", onClose);
        udpSocket.removeListener("message", onMessage);
        return new Promise(function (resolve) {
            if (ready) {
                resolve();
                // NOTE : works better without closing udpsocket, so comment code below for now
                // udpSocket.close(() => {
                //   ready = false;
                //   resolve();
                // });
                // udpSocket = dgram.createSocket({
                //   type: 'udp4',
                // });
            }
            else {
                resolve();
            }
        });
    };
    var checkPortAvailability = function (port) {
        var testSocket = (0, dgram_1.createSocket)({
            type: "udp4",
        });
        return new Promise(function (resolve, reject) {
            testSocket.once("error", function (error) {
                if (error.code === "EADDRINUSE") {
                    resolve(false);
                    reject(new Error("Port ".concat(port, " is already in use")));
                }
                else {
                    resolve(false);
                    reject(error);
                }
                testSocket.close();
            });
            testSocket.once("listening", function () {
                testSocket.close();
                resolve(true);
            });
            testSocket.bind(port);
        });
    };
    var listen = function (localPort, localAddress) { return __awaiter(void 0, void 0, void 0, function () {
        var test;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, checkPortAvailability(localPort)];
                case 1:
                    test = _a.sent();
                    if (test === false) {
                        console.error(new Error("Port ".concat(localPort, " already in use")));
                    }
                    udpSocket = (0, dgram_1.createSocket)({
                        type: "udp4",
                    });
                    udpSocket.on("message", onMessage);
                    udpSocket.on("close", onClose);
                    if (localAddress !== undefined) {
                        return [2 /*return*/, new Promise(function (resolve) {
                                udpSocket.bind(localPort, localAddress, function () {
                                    ready = true;
                                    resolve();
                                });
                            })];
                    }
                    return [2 /*return*/, new Promise(function (resolve) {
                            udpSocket.bind(localPort, function () {
                                ready = true;
                                resolve();
                            });
                        })];
            }
        });
    }); };
    var disconnect = function () {
        udpSocket.close();
    };
    var isReady = function () {
        return ready;
    };
    return { dispose: dispose, isReady: isReady, listen: listen, disconnect: disconnect, events: events };
};
exports.default = oscReceiverFactory;
