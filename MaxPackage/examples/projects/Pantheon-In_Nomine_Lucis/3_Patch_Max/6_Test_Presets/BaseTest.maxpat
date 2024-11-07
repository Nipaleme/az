{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 106.0, 454.0, 326.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 208.666666666666657, 233.0, 54.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "recall $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.0, 202.0, 52.0, 22.0 ],
					"text" : "store $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.0, 288.0, 100.0, 22.0 ],
					"text" : "s presetTest"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "bpatcher_test.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 413.0, 363.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 256.0, 8.0, 193.0, 295.0 ],
					"varname" : "bpatcher_test",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 37.0, 132.0, 147.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 37.0, 132.0, 147.0 ],
					"size" : 8,
					"varname" : "multiSlider"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 359.0, 97.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 200.0, 97.0, 23.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 321.0, 63.0, 196.0, 23.0 ],
					"text" : "pattrstorage presetTop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 390.0, 286.0, 23.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 4, 44, 358, 172 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 583, 69, 1034, 197 ]
					}
,
					"text" : "pattrstorage presetTop @savemode 1",
					"varname" : "presetTop"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 20,
					"id" : "obj-5",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 198.0, 8.0, 51.0, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 198.0, 8.0, 33.0, 172.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-4", "flonum", "float", 0.0, 12, "obj-7", "multislider", "list", 0.24285714328289, 0.129251703619957, 0.170068025588989, 0.142857149243355, -0.319727897644043, -0.170068025588989, -0.006802720949054, -0.238095238804817 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-4", "flonum", "float", 2.599999904632568, 12, "obj-7", "multislider", "list", 0.24285714328289, 0.278911560773849, 0.374149650335312, 0.428571432828903, 0.292517006397247, -0.034013606607914, -0.006802720949054, -0.238095238804817 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-4", "flonum", "float", 2.599999904632568, 12, "obj-7", "multislider", "list", 0.24285714328289, 0.278911560773849, -0.38775509595871, -0.333333343267441, -0.238095238804817, -0.170068025588989, -0.061224490404129, -0.238095238804817 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-4", "flonum", "float", 0.0, 12, "obj-7", "multislider", "list", -0.210884347558022, -0.265306115150452, -0.251700669527054, -0.197278916835785, -0.170068025588989, -0.251700669527054, 0.129251703619957, 0.034013606607914 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-4",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 20.0, 8.0, 58.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 8.0, 58.0, 22.0 ],
					"varname" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 566.0, 63.0, 100.0, 22.0 ],
					"restore" : 					{
						"float" : [ 0.0 ],
						"multiSlider" : [ 0.24285714328289, 0.129251703619957, 0.170068025588989, 0.142857149243355, -0.319727897644043, -0.170068025588989, -0.006802720949054, -0.238095238804817 ]
					}
,
					"text" : "autopattr",
					"varname" : "u364000630"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bpatcher_test.maxpat",
				"bootpath" : "~/Amadeus Dropbox/Adrien Zanni/#Projets These/#PANTHEON/2022/PANTHEON/BackUpPatchs_Adrien/3_Patch_Max/6_Test_Presets/lib",
				"patcherrelativepath" : "./lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "presetTest.json",
				"bootpath" : "~/Amadeus Dropbox/Adrien Zanni/#Projets These/#PANTHEON/2022/PANTHEON/BackUpPatchs_Adrien/3_Patch_Max/6_Test_Presets",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
