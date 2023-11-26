{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 408.0, 273.0, 731.0, 555.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-585",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 109.0, 20.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-583",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 118.0, 62.0, 50.0, 35.0 ],
					"text" : "/dsp/usurp $1"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-20",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 592.0, 415.0, 100.0, 100.200400801603195 ],
					"pic" : "az-Icon.png",
					"presentation" : 1,
					"presentation_rect" : [ 815.0, 585.0, 100.0, 100.200400801603195 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.066983103752136, 454.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "osc",
					"comment" : "",
					"hint" : "osc",
					"id" : "obj-2",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 8.0, 30.0, 30.0 ],
					"varname" : "osc"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "audio",
					"comment" : "",
					"hint" : "audio",
					"id" : "obj-1",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 30.0, 86.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 30.0, 153.369072222709519, 29.0, 22.0 ],
					"style" : "redness",
					"text" : "thru",
					"varname" : "audio_in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 53.0, 145.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "az.stereo.ab.creation.js",
						"parameter_enable" : 0
					}
,
					"text" : "js az.stereo.ab.creation.js",
					"varname" : "az_stereo_ab_creation_js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 200.066983103752136, 398.68041110038746, 29.0, 22.0 ],
					"text" : "thru",
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "mc.unpack",
					"hint" : "mc.unpack",
					"id" : "obj-1663",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 60,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 30.0, 224.0, 100.0, 22.0 ],
					"style" : "redness",
					"text" : "mc.unpack~ 60",
					"varname" : "mc.unpack"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.route/all",
					"hint" : "spat5.osc.route/all",
					"id" : "obj-1664",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 61,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 200.0, 133.0, 15300.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.route /source/1 /source/2 /source/3 /source/4 /source/5 /source/6 /source/7 /source/8 /source/9 /source/10 /source/11 /source/12 /source/13 /source/14 /source/15 /source/16 /source/17 /source/18 /source/19 /source/20 /source/21 /source/22 /source/23 /source/24 /source/25 /source/26 /source/27 /source/28 /source/29 /source/30 /source/31 /source/32 /source/33 /source/34 /source/35 /source/36 /source/37 /source/38 /source/39 /source/40 /source/41 /source/42 /source/43 /source/44 /source/45 /source/46 /source/47 /source/48 /source/49 /source/50 /source/51 /source/52 /source/53 /source/54 /source/55 /source/56 /source/57 /source/58 /source/59 /source/60",
					"varname" : "spat5.osc.route/all"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/1",
					"hint" : "spat5.osc.routepass/source/1",
					"id" : "obj-1665",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/1",
					"hint" : "spat5.tapeout/source/1",
					"id" : "obj-1666",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/1",
					"hint" : "spat5.diagmatrix/source/1",
					"id" : "obj-1667",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/2",
					"hint" : "spat5.osc.routepass/source/2",
					"id" : "obj-1668",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/2"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/2",
					"hint" : "spat5.tapeout/source/2",
					"id" : "obj-1669",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/2"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/2",
					"hint" : "spat5.diagmatrix/source/2",
					"id" : "obj-1670",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/2"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/3",
					"hint" : "spat5.osc.routepass/source/3",
					"id" : "obj-1671",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/3"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/3",
					"hint" : "spat5.tapeout/source/3",
					"id" : "obj-1672",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/3"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/3",
					"hint" : "spat5.diagmatrix/source/3",
					"id" : "obj-1673",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/3"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/4",
					"hint" : "spat5.osc.routepass/source/4",
					"id" : "obj-1674",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/4"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/4",
					"hint" : "spat5.tapeout/source/4",
					"id" : "obj-1675",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/4"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/4",
					"hint" : "spat5.diagmatrix/source/4",
					"id" : "obj-1676",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/4"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/5",
					"hint" : "spat5.osc.routepass/source/5",
					"id" : "obj-1677",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/5"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/5",
					"hint" : "spat5.tapeout/source/5",
					"id" : "obj-1678",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/5"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/5",
					"hint" : "spat5.diagmatrix/source/5",
					"id" : "obj-1679",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/5"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/6",
					"hint" : "spat5.osc.routepass/source/6",
					"id" : "obj-1680",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/6"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/6",
					"hint" : "spat5.tapeout/source/6",
					"id" : "obj-1681",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/6"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/6",
					"hint" : "spat5.diagmatrix/source/6",
					"id" : "obj-1682",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/6"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/7",
					"hint" : "spat5.osc.routepass/source/7",
					"id" : "obj-1683",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/7"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/7",
					"hint" : "spat5.tapeout/source/7",
					"id" : "obj-1684",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/7"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/7",
					"hint" : "spat5.diagmatrix/source/7",
					"id" : "obj-1685",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/7"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/8",
					"hint" : "spat5.osc.routepass/source/8",
					"id" : "obj-1686",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/8"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/8",
					"hint" : "spat5.tapeout/source/8",
					"id" : "obj-1687",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/8"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/8",
					"hint" : "spat5.diagmatrix/source/8",
					"id" : "obj-1688",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 1950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/8"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/9",
					"hint" : "spat5.osc.routepass/source/9",
					"id" : "obj-1689",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/9"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/9",
					"hint" : "spat5.tapeout/source/9",
					"id" : "obj-1690",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/9"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/9",
					"hint" : "spat5.diagmatrix/source/9",
					"id" : "obj-1691",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/9"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/10",
					"hint" : "spat5.osc.routepass/source/10",
					"id" : "obj-1692",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/10"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/10",
					"hint" : "spat5.tapeout/source/10",
					"id" : "obj-1693",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/10"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/10",
					"hint" : "spat5.diagmatrix/source/10",
					"id" : "obj-1694",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/10"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/11",
					"hint" : "spat5.osc.routepass/source/11",
					"id" : "obj-1695",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/11"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/11",
					"hint" : "spat5.tapeout/source/11",
					"id" : "obj-1696",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/11"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/11",
					"hint" : "spat5.diagmatrix/source/11",
					"id" : "obj-1697",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/11"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/12",
					"hint" : "spat5.osc.routepass/source/12",
					"id" : "obj-1698",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 2950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/12"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/12",
					"hint" : "spat5.tapeout/source/12",
					"id" : "obj-1699",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/12"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/12",
					"hint" : "spat5.diagmatrix/source/12",
					"id" : "obj-1700",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 2950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/12"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/13",
					"hint" : "spat5.osc.routepass/source/13",
					"id" : "obj-1701",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/13"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/13",
					"hint" : "spat5.tapeout/source/13",
					"id" : "obj-1702",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 3200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/13"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/13",
					"hint" : "spat5.diagmatrix/source/13",
					"id" : "obj-1703",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 3200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/13"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/14",
					"hint" : "spat5.osc.routepass/source/14",
					"id" : "obj-1704",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/14"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/14",
					"hint" : "spat5.tapeout/source/14",
					"id" : "obj-1705",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 3450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/14"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/14",
					"hint" : "spat5.diagmatrix/source/14",
					"id" : "obj-1706",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 3450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/14"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/15",
					"hint" : "spat5.osc.routepass/source/15",
					"id" : "obj-1707",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/15"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/15",
					"hint" : "spat5.tapeout/source/15",
					"id" : "obj-1708",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 3700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/15"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/15",
					"hint" : "spat5.diagmatrix/source/15",
					"id" : "obj-1709",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 3700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/15"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/16",
					"hint" : "spat5.osc.routepass/source/16",
					"id" : "obj-1710",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 3950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/16"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/16",
					"hint" : "spat5.tapeout/source/16",
					"id" : "obj-1711",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 3950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/16"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/16",
					"hint" : "spat5.diagmatrix/source/16",
					"id" : "obj-1712",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 3950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/16"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/17",
					"hint" : "spat5.osc.routepass/source/17",
					"id" : "obj-1713",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/17"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/17",
					"hint" : "spat5.tapeout/source/17",
					"id" : "obj-1714",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 4200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/17"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/17",
					"hint" : "spat5.diagmatrix/source/17",
					"id" : "obj-1715",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 4200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/17"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/18",
					"hint" : "spat5.osc.routepass/source/18",
					"id" : "obj-1716",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/18"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/18",
					"hint" : "spat5.tapeout/source/18",
					"id" : "obj-1717",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 4450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/18"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/18",
					"hint" : "spat5.diagmatrix/source/18",
					"id" : "obj-1718",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 4450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/18"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/19",
					"hint" : "spat5.osc.routepass/source/19",
					"id" : "obj-1719",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/19"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/19",
					"hint" : "spat5.tapeout/source/19",
					"id" : "obj-1720",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 4700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/19"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/19",
					"hint" : "spat5.diagmatrix/source/19",
					"id" : "obj-1721",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 4700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/19"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/20",
					"hint" : "spat5.osc.routepass/source/20",
					"id" : "obj-1722",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/20"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/20",
					"hint" : "spat5.tapeout/source/20",
					"id" : "obj-1723",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 4950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/20"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/20",
					"hint" : "spat5.diagmatrix/source/20",
					"id" : "obj-1724",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 4950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/20"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/21",
					"hint" : "spat5.osc.routepass/source/21",
					"id" : "obj-1725",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/21"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/21",
					"hint" : "spat5.tapeout/source/21",
					"id" : "obj-1726",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 5200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/21"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/21",
					"hint" : "spat5.diagmatrix/source/21",
					"id" : "obj-1727",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 5200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/21"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/22",
					"hint" : "spat5.osc.routepass/source/22",
					"id" : "obj-1728",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/22"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/22",
					"hint" : "spat5.tapeout/source/22",
					"id" : "obj-1729",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 5450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/22"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/22",
					"hint" : "spat5.diagmatrix/source/22",
					"id" : "obj-1730",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 5450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/22"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/23",
					"hint" : "spat5.osc.routepass/source/23",
					"id" : "obj-1731",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/23"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/23",
					"hint" : "spat5.tapeout/source/23",
					"id" : "obj-1732",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 5700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/23"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/23",
					"hint" : "spat5.diagmatrix/source/23",
					"id" : "obj-1733",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 5700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/23"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/24",
					"hint" : "spat5.osc.routepass/source/24",
					"id" : "obj-1734",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 5950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/24"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/24",
					"hint" : "spat5.tapeout/source/24",
					"id" : "obj-1735",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 5950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/24"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/24",
					"hint" : "spat5.diagmatrix/source/24",
					"id" : "obj-1736",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 5950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/24"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/25",
					"hint" : "spat5.osc.routepass/source/25",
					"id" : "obj-1737",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/25"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/25",
					"hint" : "spat5.tapeout/source/25",
					"id" : "obj-1738",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 6200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/25"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/25",
					"hint" : "spat5.diagmatrix/source/25",
					"id" : "obj-1739",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 6200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/25"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/26",
					"hint" : "spat5.osc.routepass/source/26",
					"id" : "obj-1740",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/26"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/26",
					"hint" : "spat5.tapeout/source/26",
					"id" : "obj-1741",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 6450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/26"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/26",
					"hint" : "spat5.diagmatrix/source/26",
					"id" : "obj-1742",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 6450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/26"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/27",
					"hint" : "spat5.osc.routepass/source/27",
					"id" : "obj-1743",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/27"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/27",
					"hint" : "spat5.tapeout/source/27",
					"id" : "obj-1744",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 6700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/27"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/27",
					"hint" : "spat5.diagmatrix/source/27",
					"id" : "obj-1745",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 6700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/27"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/28",
					"hint" : "spat5.osc.routepass/source/28",
					"id" : "obj-1746",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 6950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/28"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/28",
					"hint" : "spat5.tapeout/source/28",
					"id" : "obj-1747",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 6950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/28"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/28",
					"hint" : "spat5.diagmatrix/source/28",
					"id" : "obj-1748",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 6950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/28"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/29",
					"hint" : "spat5.osc.routepass/source/29",
					"id" : "obj-1749",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 7200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/29"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/29",
					"hint" : "spat5.tapeout/source/29",
					"id" : "obj-1750",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 7200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/29"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/29",
					"hint" : "spat5.diagmatrix/source/29",
					"id" : "obj-1751",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 7200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/29"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/30",
					"hint" : "spat5.osc.routepass/source/30",
					"id" : "obj-1752",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 7450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/30"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/30",
					"hint" : "spat5.tapeout/source/30",
					"id" : "obj-1753",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 7450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/30"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/30",
					"hint" : "spat5.diagmatrix/source/30",
					"id" : "obj-1754",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 7450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/30"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/31",
					"hint" : "spat5.osc.routepass/source/31",
					"id" : "obj-1755",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 7700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/31"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/31",
					"hint" : "spat5.tapeout/source/31",
					"id" : "obj-1756",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 7700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/31"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/31",
					"hint" : "spat5.diagmatrix/source/31",
					"id" : "obj-1757",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 7700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/31"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/32",
					"hint" : "spat5.osc.routepass/source/32",
					"id" : "obj-1758",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 7950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/32"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/32",
					"hint" : "spat5.tapeout/source/32",
					"id" : "obj-1759",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 7950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/32"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/32",
					"hint" : "spat5.diagmatrix/source/32",
					"id" : "obj-1760",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 7950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/32"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/33",
					"hint" : "spat5.osc.routepass/source/33",
					"id" : "obj-1761",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 8200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/33"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/33",
					"hint" : "spat5.tapeout/source/33",
					"id" : "obj-1762",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 8200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/33"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/33",
					"hint" : "spat5.diagmatrix/source/33",
					"id" : "obj-1763",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 8200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/33"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/34",
					"hint" : "spat5.osc.routepass/source/34",
					"id" : "obj-1764",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 8450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/34"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/34",
					"hint" : "spat5.tapeout/source/34",
					"id" : "obj-1765",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 8450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/34"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/34",
					"hint" : "spat5.diagmatrix/source/34",
					"id" : "obj-1766",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 8450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/34"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/35",
					"hint" : "spat5.osc.routepass/source/35",
					"id" : "obj-1767",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 8700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/35"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/35",
					"hint" : "spat5.tapeout/source/35",
					"id" : "obj-1768",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 8700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/35"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/35",
					"hint" : "spat5.diagmatrix/source/35",
					"id" : "obj-1769",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 8700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/35"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/36",
					"hint" : "spat5.osc.routepass/source/36",
					"id" : "obj-1770",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 8950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/36"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/36",
					"hint" : "spat5.tapeout/source/36",
					"id" : "obj-1771",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 8950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/36"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/36",
					"hint" : "spat5.diagmatrix/source/36",
					"id" : "obj-1772",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 8950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/36"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/37",
					"hint" : "spat5.osc.routepass/source/37",
					"id" : "obj-1773",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 9200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/37"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/37",
					"hint" : "spat5.tapeout/source/37",
					"id" : "obj-1774",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 9200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/37"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/37",
					"hint" : "spat5.diagmatrix/source/37",
					"id" : "obj-1775",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 9200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/37"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/38",
					"hint" : "spat5.osc.routepass/source/38",
					"id" : "obj-1776",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 9450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/38"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/38",
					"hint" : "spat5.tapeout/source/38",
					"id" : "obj-1777",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 9450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/38"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/38",
					"hint" : "spat5.diagmatrix/source/38",
					"id" : "obj-1778",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 9450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/38"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/39",
					"hint" : "spat5.osc.routepass/source/39",
					"id" : "obj-1779",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 9700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/39"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/39",
					"hint" : "spat5.tapeout/source/39",
					"id" : "obj-1780",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 9700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/39"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/39",
					"hint" : "spat5.diagmatrix/source/39",
					"id" : "obj-1781",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 9700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/39"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/40",
					"hint" : "spat5.osc.routepass/source/40",
					"id" : "obj-1782",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 9950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/40"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/40",
					"hint" : "spat5.tapeout/source/40",
					"id" : "obj-1783",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 9950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/40"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/40",
					"hint" : "spat5.diagmatrix/source/40",
					"id" : "obj-1784",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 9950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/40"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/41",
					"hint" : "spat5.osc.routepass/source/41",
					"id" : "obj-1785",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 10200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/41"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/41",
					"hint" : "spat5.tapeout/source/41",
					"id" : "obj-1786",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 10200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/41"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/41",
					"hint" : "spat5.diagmatrix/source/41",
					"id" : "obj-1787",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 10200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/41"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/42",
					"hint" : "spat5.osc.routepass/source/42",
					"id" : "obj-1788",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 10450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/42"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/42",
					"hint" : "spat5.tapeout/source/42",
					"id" : "obj-1789",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 10450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/42"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/42",
					"hint" : "spat5.diagmatrix/source/42",
					"id" : "obj-1790",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 10450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/42"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/43",
					"hint" : "spat5.osc.routepass/source/43",
					"id" : "obj-1791",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 10700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/43"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/43",
					"hint" : "spat5.tapeout/source/43",
					"id" : "obj-1792",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 10700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/43"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/43",
					"hint" : "spat5.diagmatrix/source/43",
					"id" : "obj-1793",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 10700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/43"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/44",
					"hint" : "spat5.osc.routepass/source/44",
					"id" : "obj-1794",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 10950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/44"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/44",
					"hint" : "spat5.tapeout/source/44",
					"id" : "obj-1795",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 10950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/44"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/44",
					"hint" : "spat5.diagmatrix/source/44",
					"id" : "obj-1796",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 10950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/44"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/45",
					"hint" : "spat5.osc.routepass/source/45",
					"id" : "obj-1797",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 11200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/45"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/45",
					"hint" : "spat5.tapeout/source/45",
					"id" : "obj-1798",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 11200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/45"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/45",
					"hint" : "spat5.diagmatrix/source/45",
					"id" : "obj-1799",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 11200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/45"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/46",
					"hint" : "spat5.osc.routepass/source/46",
					"id" : "obj-1800",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 11450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/46"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/46",
					"hint" : "spat5.tapeout/source/46",
					"id" : "obj-1801",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 11450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/46"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/46",
					"hint" : "spat5.diagmatrix/source/46",
					"id" : "obj-1802",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 11450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/46"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/47",
					"hint" : "spat5.osc.routepass/source/47",
					"id" : "obj-1803",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 11700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/47"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/47",
					"hint" : "spat5.tapeout/source/47",
					"id" : "obj-1804",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 11700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/47"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/47",
					"hint" : "spat5.diagmatrix/source/47",
					"id" : "obj-1805",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 11700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/47"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/48",
					"hint" : "spat5.osc.routepass/source/48",
					"id" : "obj-1806",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 11950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/48"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/48",
					"hint" : "spat5.tapeout/source/48",
					"id" : "obj-1807",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 11950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/48"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/48",
					"hint" : "spat5.diagmatrix/source/48",
					"id" : "obj-1808",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 11950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/48"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/49",
					"hint" : "spat5.osc.routepass/source/49",
					"id" : "obj-1809",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 12200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/49"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/49",
					"hint" : "spat5.tapeout/source/49",
					"id" : "obj-1810",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 12200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/49"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/49",
					"hint" : "spat5.diagmatrix/source/49",
					"id" : "obj-1811",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 12200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/49"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/50",
					"hint" : "spat5.osc.routepass/source/50",
					"id" : "obj-1812",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 12450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/50"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/50",
					"hint" : "spat5.tapeout/source/50",
					"id" : "obj-1813",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 12450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/50"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/50",
					"hint" : "spat5.diagmatrix/source/50",
					"id" : "obj-1814",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 12450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/50"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/51",
					"hint" : "spat5.osc.routepass/source/51",
					"id" : "obj-1815",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 12700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/51"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/51",
					"hint" : "spat5.tapeout/source/51",
					"id" : "obj-1816",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 12700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/51"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/51",
					"hint" : "spat5.diagmatrix/source/51",
					"id" : "obj-1817",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 12700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/51"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/52",
					"hint" : "spat5.osc.routepass/source/52",
					"id" : "obj-1818",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 12950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/52"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/52",
					"hint" : "spat5.tapeout/source/52",
					"id" : "obj-1819",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 12950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/52"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/52",
					"hint" : "spat5.diagmatrix/source/52",
					"id" : "obj-1820",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 12950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/52"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/53",
					"hint" : "spat5.osc.routepass/source/53",
					"id" : "obj-1821",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 13200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/53"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/53",
					"hint" : "spat5.tapeout/source/53",
					"id" : "obj-1822",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 13200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/53"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/53",
					"hint" : "spat5.diagmatrix/source/53",
					"id" : "obj-1823",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 13200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/53"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/54",
					"hint" : "spat5.osc.routepass/source/54",
					"id" : "obj-1824",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 13450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/54"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/54",
					"hint" : "spat5.tapeout/source/54",
					"id" : "obj-1825",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 13450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/54"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/54",
					"hint" : "spat5.diagmatrix/source/54",
					"id" : "obj-1826",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 13450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/54"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/55",
					"hint" : "spat5.osc.routepass/source/55",
					"id" : "obj-1827",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 13700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/55"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/55",
					"hint" : "spat5.tapeout/source/55",
					"id" : "obj-1828",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 13700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/55"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/55",
					"hint" : "spat5.diagmatrix/source/55",
					"id" : "obj-1829",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 13700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/55"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/56",
					"hint" : "spat5.osc.routepass/source/56",
					"id" : "obj-1830",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 13950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/56"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/56",
					"hint" : "spat5.tapeout/source/56",
					"id" : "obj-1831",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 13950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/56"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/56",
					"hint" : "spat5.diagmatrix/source/56",
					"id" : "obj-1832",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 13950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/56"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/57",
					"hint" : "spat5.osc.routepass/source/57",
					"id" : "obj-1833",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 14200.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/57"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/57",
					"hint" : "spat5.tapeout/source/57",
					"id" : "obj-1834",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 14200.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/57"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/57",
					"hint" : "spat5.diagmatrix/source/57",
					"id" : "obj-1835",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 14200.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/57"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/58",
					"hint" : "spat5.osc.routepass/source/58",
					"id" : "obj-1836",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 14450.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/58"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/58",
					"hint" : "spat5.tapeout/source/58",
					"id" : "obj-1837",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 14450.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/58"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/58",
					"hint" : "spat5.diagmatrix/source/58",
					"id" : "obj-1838",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 14450.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/58"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/59",
					"hint" : "spat5.osc.routepass/source/59",
					"id" : "obj-1839",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 14700.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/59"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/59",
					"hint" : "spat5.tapeout/source/59",
					"id" : "obj-1840",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 14700.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/59"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/59",
					"hint" : "spat5.diagmatrix/source/59",
					"id" : "obj-1841",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 14700.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/59"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/60",
					"hint" : "spat5.osc.routepass/source/60",
					"id" : "obj-1842",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 14950.0, 235.0, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/60"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/60",
					"hint" : "spat5.tapeout/source/60",
					"id" : "obj-1843",
					"linecount" : 6,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 14950.0, 290.0, 100.0, 89.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 6 @mc 1 @initwith \"/interpolation/mode allpass, /dsp/usurp 1\"",
					"varname" : "spat5.tapeout/source/60"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/60",
					"hint" : "spat5.diagmatrix/source/60",
					"id" : "obj-1844",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 14950.0, 371.0, 100.0, 62.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 6 @mc 1 @initwith \"/dsp/usurp 1\"",
					"varname" : "spat5.diagmatrix/source/60"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-242", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1666", 0 ],
					"source" : [ "obj-1663", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1669", 0 ],
					"source" : [ "obj-1663", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1672", 0 ],
					"source" : [ "obj-1663", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1675", 0 ],
					"source" : [ "obj-1663", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1678", 0 ],
					"source" : [ "obj-1663", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1681", 0 ],
					"source" : [ "obj-1663", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1684", 0 ],
					"source" : [ "obj-1663", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1687", 0 ],
					"source" : [ "obj-1663", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1690", 0 ],
					"source" : [ "obj-1663", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1693", 0 ],
					"source" : [ "obj-1663", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1696", 0 ],
					"source" : [ "obj-1663", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1699", 0 ],
					"source" : [ "obj-1663", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1702", 0 ],
					"source" : [ "obj-1663", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1705", 0 ],
					"source" : [ "obj-1663", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1708", 0 ],
					"source" : [ "obj-1663", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1711", 0 ],
					"source" : [ "obj-1663", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1714", 0 ],
					"source" : [ "obj-1663", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1717", 0 ],
					"source" : [ "obj-1663", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1720", 0 ],
					"source" : [ "obj-1663", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1723", 0 ],
					"source" : [ "obj-1663", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1726", 0 ],
					"source" : [ "obj-1663", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1729", 0 ],
					"source" : [ "obj-1663", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1732", 0 ],
					"source" : [ "obj-1663", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1735", 0 ],
					"source" : [ "obj-1663", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1738", 0 ],
					"source" : [ "obj-1663", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1741", 0 ],
					"source" : [ "obj-1663", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1744", 0 ],
					"source" : [ "obj-1663", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1747", 0 ],
					"source" : [ "obj-1663", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1750", 0 ],
					"source" : [ "obj-1663", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1753", 0 ],
					"source" : [ "obj-1663", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1756", 0 ],
					"source" : [ "obj-1663", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1759", 0 ],
					"source" : [ "obj-1663", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1762", 0 ],
					"source" : [ "obj-1663", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1765", 0 ],
					"source" : [ "obj-1663", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1768", 0 ],
					"source" : [ "obj-1663", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1771", 0 ],
					"source" : [ "obj-1663", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1774", 0 ],
					"source" : [ "obj-1663", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1777", 0 ],
					"source" : [ "obj-1663", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1780", 0 ],
					"source" : [ "obj-1663", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1783", 0 ],
					"source" : [ "obj-1663", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1786", 0 ],
					"source" : [ "obj-1663", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1789", 0 ],
					"source" : [ "obj-1663", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1792", 0 ],
					"source" : [ "obj-1663", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1795", 0 ],
					"source" : [ "obj-1663", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1798", 0 ],
					"source" : [ "obj-1663", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1801", 0 ],
					"source" : [ "obj-1663", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1804", 0 ],
					"source" : [ "obj-1663", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1807", 0 ],
					"source" : [ "obj-1663", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1810", 0 ],
					"source" : [ "obj-1663", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1813", 0 ],
					"source" : [ "obj-1663", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1816", 0 ],
					"source" : [ "obj-1663", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1819", 0 ],
					"source" : [ "obj-1663", 51 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1822", 0 ],
					"source" : [ "obj-1663", 52 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1825", 0 ],
					"source" : [ "obj-1663", 53 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1828", 0 ],
					"source" : [ "obj-1663", 54 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1831", 0 ],
					"source" : [ "obj-1663", 55 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1834", 0 ],
					"source" : [ "obj-1663", 56 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1837", 0 ],
					"source" : [ "obj-1663", 57 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1840", 0 ],
					"source" : [ "obj-1663", 58 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1843", 0 ],
					"source" : [ "obj-1663", 59 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1665", 0 ],
					"source" : [ "obj-1664", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1668", 0 ],
					"source" : [ "obj-1664", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1671", 0 ],
					"source" : [ "obj-1664", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1674", 0 ],
					"source" : [ "obj-1664", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1677", 0 ],
					"source" : [ "obj-1664", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1680", 0 ],
					"source" : [ "obj-1664", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1683", 0 ],
					"source" : [ "obj-1664", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1686", 0 ],
					"source" : [ "obj-1664", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1689", 0 ],
					"source" : [ "obj-1664", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1692", 0 ],
					"source" : [ "obj-1664", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1695", 0 ],
					"source" : [ "obj-1664", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1698", 0 ],
					"source" : [ "obj-1664", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1701", 0 ],
					"source" : [ "obj-1664", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1704", 0 ],
					"source" : [ "obj-1664", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1707", 0 ],
					"source" : [ "obj-1664", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1710", 0 ],
					"source" : [ "obj-1664", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1713", 0 ],
					"source" : [ "obj-1664", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1716", 0 ],
					"source" : [ "obj-1664", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1719", 0 ],
					"source" : [ "obj-1664", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1722", 0 ],
					"source" : [ "obj-1664", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1725", 0 ],
					"source" : [ "obj-1664", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1728", 0 ],
					"source" : [ "obj-1664", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1731", 0 ],
					"source" : [ "obj-1664", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1734", 0 ],
					"source" : [ "obj-1664", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1737", 0 ],
					"source" : [ "obj-1664", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1740", 0 ],
					"source" : [ "obj-1664", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1743", 0 ],
					"source" : [ "obj-1664", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1746", 0 ],
					"source" : [ "obj-1664", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1749", 0 ],
					"source" : [ "obj-1664", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1752", 0 ],
					"source" : [ "obj-1664", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1755", 0 ],
					"source" : [ "obj-1664", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1758", 0 ],
					"source" : [ "obj-1664", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1761", 0 ],
					"source" : [ "obj-1664", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1764", 0 ],
					"source" : [ "obj-1664", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1767", 0 ],
					"source" : [ "obj-1664", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1770", 0 ],
					"source" : [ "obj-1664", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1773", 0 ],
					"source" : [ "obj-1664", 36 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1776", 0 ],
					"source" : [ "obj-1664", 37 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1779", 0 ],
					"source" : [ "obj-1664", 38 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1782", 0 ],
					"source" : [ "obj-1664", 39 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1785", 0 ],
					"source" : [ "obj-1664", 40 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1788", 0 ],
					"source" : [ "obj-1664", 41 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1791", 0 ],
					"source" : [ "obj-1664", 42 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1794", 0 ],
					"source" : [ "obj-1664", 43 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1797", 0 ],
					"source" : [ "obj-1664", 44 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1800", 0 ],
					"source" : [ "obj-1664", 45 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1803", 0 ],
					"source" : [ "obj-1664", 46 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1806", 0 ],
					"source" : [ "obj-1664", 47 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1809", 0 ],
					"source" : [ "obj-1664", 48 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1812", 0 ],
					"source" : [ "obj-1664", 49 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1815", 0 ],
					"source" : [ "obj-1664", 50 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1818", 0 ],
					"source" : [ "obj-1664", 51 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1821", 0 ],
					"source" : [ "obj-1664", 52 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1824", 0 ],
					"source" : [ "obj-1664", 53 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1827", 0 ],
					"source" : [ "obj-1664", 54 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1830", 0 ],
					"source" : [ "obj-1664", 55 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1833", 0 ],
					"source" : [ "obj-1664", 56 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1836", 0 ],
					"source" : [ "obj-1664", 57 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1839", 0 ],
					"source" : [ "obj-1664", 58 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1842", 0 ],
					"source" : [ "obj-1664", 59 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1666", 0 ],
					"source" : [ "obj-1665", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1667", 0 ],
					"source" : [ "obj-1665", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1667", 0 ],
					"source" : [ "obj-1666", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1667", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1669", 0 ],
					"source" : [ "obj-1668", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1670", 0 ],
					"source" : [ "obj-1668", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1670", 0 ],
					"source" : [ "obj-1669", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1670", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1672", 0 ],
					"source" : [ "obj-1671", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1673", 0 ],
					"source" : [ "obj-1671", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1673", 0 ],
					"source" : [ "obj-1672", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1673", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1675", 0 ],
					"source" : [ "obj-1674", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1676", 0 ],
					"source" : [ "obj-1674", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1676", 0 ],
					"source" : [ "obj-1675", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1676", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1678", 0 ],
					"source" : [ "obj-1677", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1679", 0 ],
					"source" : [ "obj-1677", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1679", 0 ],
					"source" : [ "obj-1678", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1679", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1681", 0 ],
					"source" : [ "obj-1680", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1682", 0 ],
					"source" : [ "obj-1680", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1682", 0 ],
					"source" : [ "obj-1681", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1682", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1684", 0 ],
					"source" : [ "obj-1683", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1685", 0 ],
					"source" : [ "obj-1683", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1685", 0 ],
					"source" : [ "obj-1684", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1685", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1687", 0 ],
					"source" : [ "obj-1686", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1688", 0 ],
					"source" : [ "obj-1686", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1688", 0 ],
					"source" : [ "obj-1687", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1688", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1690", 0 ],
					"source" : [ "obj-1689", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1691", 0 ],
					"source" : [ "obj-1689", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1691", 0 ],
					"source" : [ "obj-1690", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1691", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1693", 0 ],
					"source" : [ "obj-1692", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1694", 0 ],
					"source" : [ "obj-1692", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1694", 0 ],
					"source" : [ "obj-1693", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1694", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1696", 0 ],
					"source" : [ "obj-1695", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1697", 0 ],
					"source" : [ "obj-1695", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1697", 0 ],
					"source" : [ "obj-1696", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1697", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1699", 0 ],
					"source" : [ "obj-1698", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1700", 0 ],
					"source" : [ "obj-1698", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1700", 0 ],
					"source" : [ "obj-1699", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1700", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1702", 0 ],
					"source" : [ "obj-1701", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1703", 0 ],
					"source" : [ "obj-1701", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1703", 0 ],
					"source" : [ "obj-1702", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1703", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1705", 0 ],
					"source" : [ "obj-1704", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1706", 0 ],
					"source" : [ "obj-1704", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1706", 0 ],
					"source" : [ "obj-1705", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1706", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1708", 0 ],
					"source" : [ "obj-1707", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1709", 0 ],
					"source" : [ "obj-1707", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1709", 0 ],
					"source" : [ "obj-1708", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1709", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1711", 0 ],
					"source" : [ "obj-1710", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1712", 0 ],
					"source" : [ "obj-1710", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1712", 0 ],
					"source" : [ "obj-1711", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1712", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1714", 0 ],
					"source" : [ "obj-1713", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1715", 0 ],
					"source" : [ "obj-1713", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1715", 0 ],
					"source" : [ "obj-1714", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1715", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1717", 0 ],
					"source" : [ "obj-1716", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1718", 0 ],
					"source" : [ "obj-1716", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1718", 0 ],
					"source" : [ "obj-1717", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1718", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1720", 0 ],
					"source" : [ "obj-1719", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1721", 0 ],
					"source" : [ "obj-1719", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1721", 0 ],
					"source" : [ "obj-1720", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1721", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1723", 0 ],
					"source" : [ "obj-1722", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1724", 0 ],
					"source" : [ "obj-1722", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1724", 0 ],
					"source" : [ "obj-1723", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1724", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1726", 0 ],
					"source" : [ "obj-1725", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1727", 0 ],
					"source" : [ "obj-1725", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1727", 0 ],
					"source" : [ "obj-1726", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1727", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1729", 0 ],
					"source" : [ "obj-1728", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1730", 0 ],
					"source" : [ "obj-1728", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1730", 0 ],
					"source" : [ "obj-1729", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1730", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1732", 0 ],
					"source" : [ "obj-1731", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1733", 0 ],
					"source" : [ "obj-1731", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1733", 0 ],
					"source" : [ "obj-1732", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1733", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1735", 0 ],
					"source" : [ "obj-1734", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1736", 0 ],
					"source" : [ "obj-1734", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1736", 0 ],
					"source" : [ "obj-1735", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1736", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1738", 0 ],
					"source" : [ "obj-1737", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1739", 0 ],
					"source" : [ "obj-1737", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1739", 0 ],
					"source" : [ "obj-1738", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1739", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1741", 0 ],
					"source" : [ "obj-1740", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1742", 0 ],
					"source" : [ "obj-1740", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1742", 0 ],
					"source" : [ "obj-1741", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1742", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1744", 0 ],
					"source" : [ "obj-1743", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1745", 0 ],
					"source" : [ "obj-1743", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1745", 0 ],
					"source" : [ "obj-1744", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1745", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1747", 0 ],
					"source" : [ "obj-1746", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1748", 0 ],
					"source" : [ "obj-1746", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1748", 0 ],
					"source" : [ "obj-1747", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1748", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1750", 0 ],
					"source" : [ "obj-1749", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1751", 0 ],
					"source" : [ "obj-1749", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1751", 0 ],
					"source" : [ "obj-1750", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1751", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1753", 0 ],
					"source" : [ "obj-1752", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1754", 0 ],
					"source" : [ "obj-1752", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1754", 0 ],
					"source" : [ "obj-1753", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1754", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1756", 0 ],
					"source" : [ "obj-1755", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1757", 0 ],
					"source" : [ "obj-1755", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1757", 0 ],
					"source" : [ "obj-1756", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1757", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1759", 0 ],
					"source" : [ "obj-1758", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1760", 0 ],
					"source" : [ "obj-1758", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1760", 0 ],
					"source" : [ "obj-1759", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1760", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1762", 0 ],
					"source" : [ "obj-1761", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1763", 0 ],
					"source" : [ "obj-1761", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1763", 0 ],
					"source" : [ "obj-1762", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1763", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1765", 0 ],
					"source" : [ "obj-1764", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1766", 0 ],
					"source" : [ "obj-1764", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1766", 0 ],
					"source" : [ "obj-1765", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1766", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1768", 0 ],
					"source" : [ "obj-1767", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1769", 0 ],
					"source" : [ "obj-1767", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1769", 0 ],
					"source" : [ "obj-1768", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1769", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1771", 0 ],
					"source" : [ "obj-1770", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1772", 0 ],
					"source" : [ "obj-1770", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1772", 0 ],
					"source" : [ "obj-1771", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1772", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1774", 0 ],
					"source" : [ "obj-1773", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1775", 0 ],
					"source" : [ "obj-1773", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1775", 0 ],
					"source" : [ "obj-1774", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1775", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1777", 0 ],
					"source" : [ "obj-1776", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1778", 0 ],
					"source" : [ "obj-1776", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1778", 0 ],
					"source" : [ "obj-1777", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1778", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1780", 0 ],
					"source" : [ "obj-1779", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1781", 0 ],
					"source" : [ "obj-1779", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1781", 0 ],
					"source" : [ "obj-1780", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1781", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1783", 0 ],
					"source" : [ "obj-1782", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1784", 0 ],
					"source" : [ "obj-1782", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1784", 0 ],
					"source" : [ "obj-1783", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1784", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1786", 0 ],
					"source" : [ "obj-1785", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1787", 0 ],
					"source" : [ "obj-1785", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1787", 0 ],
					"source" : [ "obj-1786", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1787", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1789", 0 ],
					"source" : [ "obj-1788", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1790", 0 ],
					"source" : [ "obj-1788", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1790", 0 ],
					"source" : [ "obj-1789", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1790", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1792", 0 ],
					"source" : [ "obj-1791", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1793", 0 ],
					"source" : [ "obj-1791", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1793", 0 ],
					"source" : [ "obj-1792", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1793", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1795", 0 ],
					"source" : [ "obj-1794", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1796", 0 ],
					"source" : [ "obj-1794", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1796", 0 ],
					"source" : [ "obj-1795", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1796", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1798", 0 ],
					"source" : [ "obj-1797", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1799", 0 ],
					"source" : [ "obj-1797", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1799", 0 ],
					"source" : [ "obj-1798", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1799", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1801", 0 ],
					"source" : [ "obj-1800", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1802", 0 ],
					"source" : [ "obj-1800", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1802", 0 ],
					"source" : [ "obj-1801", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1802", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1804", 0 ],
					"source" : [ "obj-1803", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1805", 0 ],
					"source" : [ "obj-1803", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1805", 0 ],
					"source" : [ "obj-1804", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1805", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1807", 0 ],
					"source" : [ "obj-1806", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1808", 0 ],
					"source" : [ "obj-1806", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1808", 0 ],
					"source" : [ "obj-1807", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1808", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1810", 0 ],
					"source" : [ "obj-1809", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1811", 0 ],
					"source" : [ "obj-1809", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1811", 0 ],
					"source" : [ "obj-1810", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1811", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1813", 0 ],
					"source" : [ "obj-1812", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1814", 0 ],
					"source" : [ "obj-1812", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1814", 0 ],
					"source" : [ "obj-1813", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1814", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1816", 0 ],
					"source" : [ "obj-1815", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1817", 0 ],
					"source" : [ "obj-1815", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1817", 0 ],
					"source" : [ "obj-1816", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1817", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1819", 0 ],
					"source" : [ "obj-1818", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1820", 0 ],
					"source" : [ "obj-1818", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1820", 0 ],
					"source" : [ "obj-1819", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1820", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1822", 0 ],
					"source" : [ "obj-1821", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1823", 0 ],
					"source" : [ "obj-1821", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1823", 0 ],
					"source" : [ "obj-1822", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1823", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1825", 0 ],
					"source" : [ "obj-1824", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1826", 0 ],
					"source" : [ "obj-1824", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1826", 0 ],
					"source" : [ "obj-1825", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1826", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1828", 0 ],
					"source" : [ "obj-1827", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1829", 0 ],
					"source" : [ "obj-1827", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1829", 0 ],
					"source" : [ "obj-1828", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1829", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1831", 0 ],
					"source" : [ "obj-1830", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1832", 0 ],
					"source" : [ "obj-1830", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1832", 0 ],
					"source" : [ "obj-1831", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1832", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1834", 0 ],
					"source" : [ "obj-1833", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1835", 0 ],
					"source" : [ "obj-1833", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1835", 0 ],
					"source" : [ "obj-1834", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1835", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1837", 0 ],
					"source" : [ "obj-1836", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1838", 0 ],
					"source" : [ "obj-1836", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1838", 0 ],
					"source" : [ "obj-1837", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1838", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1840", 0 ],
					"source" : [ "obj-1839", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1841", 0 ],
					"source" : [ "obj-1839", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1841", 0 ],
					"source" : [ "obj-1840", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1841", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1843", 0 ],
					"source" : [ "obj-1842", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1844", 0 ],
					"source" : [ "obj-1842", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1844", 0 ],
					"source" : [ "obj-1843", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-1844", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1663", 0 ],
					"source" : [ "obj-242", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-583", 0 ],
					"source" : [ "obj-585", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1664", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
 ]
	}

}
