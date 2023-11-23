{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 4,
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
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-20",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 555.0, 391.0, 100.0, 100.200400801603195 ],
					"pic" : "az-Icon.png",
					"presentation" : 1,
					"presentation_rect" : [ 815.0, 585.0, 100.0, 100.200400801603195 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 0,
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
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 29.0, 30.0, 30.0 ],
					"varname" : "osc"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "audio",
					"comment" : "",
					"hint" : "audio",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 86.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-242",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
					"patching_rect" : [ 200.066983103752136, 75.0, 145.0, 22.0 ],
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
					"id" : "obj-349",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.066983103752136, 189.742266654968148, 100.0, 22.0 ],
					"style" : "redness",
					"text" : "mc.unpack~ 1",
					"varname" : "mc.unpack"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.route/source/1",
					"hint" : "spat5.osc.route/source/1",
					"id" : "obj-350",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 200.066983103752136, 165.742266654968148, 143.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.route /source/1",
					"varname" : "spat5.osc.route/source/1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.osc.routepass/source/1",
					"hint" : "spat5.osc.routepass/source/1",
					"id" : "obj-351",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 200.066983103752136, 200.742266654968148, 193.0, 22.0 ],
					"style" : "redness",
					"text" : "spat5.osc.routepass /delays /gains",
					"varname" : "spat5.osc.routepass/source/1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.tapeout/source/1",
					"hint" : "spat5.tapeout/source/1",
					"id" : "obj-352",
					"linecount" : 5,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 200.066983103752136, 255.742266654968148, 102.0, 76.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.tapout~ @channels 2 @mc 1 @initwith \"/interpolation/mode allpass\"",
					"varname" : "spat5.tapeout/source/1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "spat5.diagmatrix/source/1",
					"hint" : "spat5.diagmatrix/source/1",
					"id" : "obj-353",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 200.066983103752136, 336.742266654968148, 219.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "redness",
					"text" : "spat5.diagmatrix~ @channels 2 @mc 1",
					"varname" : "spat5.diagmatrix/source/1"
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
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-349", 0 ],
					"source" : [ "obj-242", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-352", 0 ],
					"source" : [ "obj-349", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-351", 0 ],
					"source" : [ "obj-350", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-352", 0 ],
					"source" : [ "obj-351", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-353", 0 ],
					"source" : [ "obj-351", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-353", 0 ],
					"source" : [ "obj-352", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-353", 0 ]
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
					"destination" : [ "obj-350", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "az-Icon.png",
				"bootpath" : "~/Documents/Max 8/Packages/az/media/images",
				"patcherrelativepath" : "../media/images",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "az.stereo.ab.creation.js",
				"bootpath" : "~/Documents/Max 8/Packages/az/javascript/threejs",
				"patcherrelativepath" : "../javascript/threejs",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.diagmatrix~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.routepass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.tapout~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
