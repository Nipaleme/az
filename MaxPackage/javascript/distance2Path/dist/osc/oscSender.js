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
exports.stringArrayToOscAddress = void 0;
var dgram_1 = require("dgram");
var osc_1 = require("osc/dist/osc");
var stringArrayToOscAddress = function (address) {
    return "/".concat(address.join("/"));
};
exports.stringArrayToOscAddress = stringArrayToOscAddress;
var oscSenderFactory = function () {
    var onError = console.error;
    var ip = "";
    var port = 0;
    var active = false;
    var ready = false;
    var udpSocket = (0, dgram_1.createSocket)({
        type: "udp4",
    });
    var onSocketError = function (e) {
        if (e.code === "ECONNREFUSED")
            return;
        onError(e);
        onError(new Error("".concat(port, " ").concat(ip)));
    };
    udpSocket.on("error", onSocketError);
    var isReady = function () {
        return ready && active;
    };
    var connect = function (newIP, newPort) {
        return new Promise(function (resolve) {
            if (ready) {
                udpSocket.disconnect();
            }
            udpSocket.connect(newPort, newIP, function () {
                ready = true;
                console.log("connect udp send to", newIP, newPort);
                resolve();
            });
        });
    };
    var disconnect = function () {
        if (isReady()) {
            udpSocket.disconnect();
            ready = false;
        }
    };
    var setActive = function (newActive) { return __awaiter(void 0, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (!(newActive !== active)) return [3 /*break*/, 3];
                    active = newActive;
                    if (!active) return [3 /*break*/, 2];
                    return [4 /*yield*/, connect(ip, port).catch(onError)];
                case 1:
                    _a.sent();
                    return [3 /*break*/, 3];
                case 2:
                    disconnect();
                    _a.label = 3;
                case 3: return [2 /*return*/];
            }
        });
    }); };
    var getActive = function () { return active; };
    var setIP = function (newIP) {
        if (ip !== newIP && active) {
            connect(newIP, port).catch(onError);
        }
        ip = newIP;
    };
    var setPort = function (newPort) {
        if (port !== newPort && active) {
            connect(ip, newPort).catch(onError);
        }
        port = newPort;
    };
    var send = function (message) {
        if (active && isReady()) {
            try {
                var address = message.address, args = message.args;
                var oscPacket = (0, osc_1.writePacket)({
                    address: (0, exports.stringArrayToOscAddress)(address),
                    args: args,
                });
                udpSocket.send(oscPacket);
            }
            catch (e) {
                onError(e);
            }
        }
    };
    var dispose = function () {
        udpSocket.removeListener("error", onSocketError);
        return new Promise(function (resolve) {
            if (isReady()) {
                active = false;
                udpSocket.close(function () {
                    ready = false;
                    resolve();
                });
            }
            else {
                resolve();
            }
        });
    };
    return { setIP: setIP, setPort: setPort, dispose: dispose, send: send, setActive: setActive, disconnect: disconnect, getActive: getActive };
};
exports.default = oscSenderFactory;
