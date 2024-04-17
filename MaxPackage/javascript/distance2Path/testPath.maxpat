{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 201.0, 100.0, 640.0, 480.0 ],
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
		"toolbarvisible" : 1,
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
					"id" : "obj-49",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 764.0, 427.0, 100.0, 49.0 ],
					"presentation_linecount" : 3,
					"text" : "spat5.osc.replace @initwith \"/vertex /anchor\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"linecount" : 45,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 788.0, -288.0, 145.0, 612.0 ],
					"presentation_linecount" : 45,
					"text" : "/vertex/number 44, /vertex/1/xy 2.3 46, /vertex/2/xy -2.3 46, /vertex/3/xy -6.8 40.8, /vertex/4/xy -6.8 36.8, /vertex/5/xy -6.3 32, /vertex/6/xy -10.7 26.9, /vertex/7/xy -10.7 18.8, /vertex/8/xy -6.3 13.7, /vertex/9/xy -13.7 6.25, /vertex/10/xy -18.8 10.7, /vertex/11/xy -26.8 10.7, /vertex/12/xy -33.7 4, /vertex/13/xy -33.7 -4, /vertex/14/xy -26.8 -10.7, /vertex/15/xy -18.8 -10.7, /vertex/16/xy -13.7 -6.25, /vertex/17/xy -6.3 -13.7, /vertex/18/xy -10.7 -18.8, /vertex/19/xy -10.7 -26.9, /vertex/20/xy -6.3 -32, /vertex/21/xy -6.8 -36.8, /vertex/22/xy -6.8 -41, /vertex/23/xy -2.3 -43.2, /vertex/24/xy 2.3 -43.2, /vertex/25/xy 6.8 -41, /vertex/26/xy 6.8 -36.8, /vertex/27/xy 6.3 -32, /vertex/28/xy 10.7 -26.9, /vertex/29/xy 10.7 -18.8, /vertex/30/xy 6.3 -13.7, /vertex/31/xy 13.7 -6.25, /vertex/32/xy 18.8 -10.7, /vertex/33/xy 26.8 -10.7, /vertex/34/xy 33.7 -4, /vertex/35/xy 33.7 4, /vertex/36/xy 26.8 10.7, /vertex/37/xy 18.8 10.7, /vertex/38/xy 13.7 6.25, /vertex/39/xy 6.3 13.7, /vertex/40/xy 10.7 18.8, /vertex/41/xy 10.7 26.9, /vertex/42/xy 6.3 32, /vertex/43/xy 6.8 36.8, /vertex/44/xy 6.8 40.8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-62",
					"linecount" : 5,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 758.5, 512.0, 111.5, 70.0 ],
					"presentation_linecount" : 5,
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.viewer @initwith \"/path/number 3, /source/number 1, /listener/editable 1\"",
					"varname" : "spat5.viewer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 821.0, 385.0, 136.0, 21.0 ],
					"text" : "spat5.osc.prepend /path/1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 12,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 13.0, 142.0, 169.0 ],
					"text" : "/vertex/1/xy -33.7 -4, /vertex/2/xy -6.8 -41, /vertex/3/xy -2.3 -43.2, /vertex/4/xy 2.3 -43.2, /vertex/5/xy 6.8 -41, /vertex/6/xy 33.7 -4, /vertex/7/xy 33.7 4, /vertex/8/xy 6.8 40.8, /vertex/9/xy 2.3 46, /vertex/10/xy -2.3 46, /vertex/11/xy -6.8 40.8, /vertex/12/xy -33.7 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 261.0, 308.0, 320.0, 22.0 ],
					"text" : "spat5.osc.routepass /track/*/azim /track/*/elev /track/*/dist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 261.0, 340.5, 100.0, 49.0 ],
					"text" : "spat5.osc.replace @initwith \"/track /source\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 261.0, 262.0, 100.0, 22.0 ],
					"text" : "udpreceive 1235"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 444.0, 291.0, 158.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 4003"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 489.0, 192.0, 143.0, 22.0 ],
					"text" : "spat5.osc.prepend /bus/1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 192.0, 50.0, 49.0 ],
					"text" : "/source/1/xyz 0 46 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 65.0, 118.0, 100.0, 49.0 ],
					"text" : "spat5.osc.split @initwith \"/stride 3\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 7,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, -3.0, 575.0, 102.0 ],
					"text" : "/speaker/xyz 2.3 46 0 6.8 40.8 0 6.8 36.8 0 6.3 32 0 10.7 26.9 0 10.7 22.8 0 10.7 18.8 0 6.3 13.7 0 13.7 6.25 0 18.8 10.7 0 22.8 10.7 0 26.8 10.7 0 33.7 4 0 33.7 0 0 33.7 -4 0 26.8 -10.7 0 22.8 -10.7 0 18.8 -10.7 0 13.7 -6.25 0 6.3 -13.7 0 10.7 -18.8 0 10.7 -22.8 0 10.7 -26.9 0 6.3 -32 0 6.8 -36.8 0 6.8 -41 0 2.3 -43.2 0 -2.3 -43.2 0 -6.8 -41 0 -6.8 -36.8 0 -6.3 -32 0 -10.7 -26.9 0 -10.7 -22.8 0 -10.7 -18.8 0 -6.3 -13.7 0 -13.7 -6.25 0 -18.8 -10.7 0 -22.8 -10.7 0 -26.8 -10.7 0 -33.7 -4 0 -33.7 0 0 -33.7 4 0 -26.8 10.7 0 -22.8 10.7 0 -18.8 10.7 0 -13.7 6.25 0 -6.3 13.7 0 -10.7 18.8 0 -10.7 22.8 0 -10.7 26.9 0 -6.3 32 0 -6.8 36.8 0 -6.8 40.8 0 -2.3 46 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 65.0, 255.0, 100.0, 22.0 ],
					"text" : "spat5.converter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 65.0, 192.0, 233.0, 49.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.viewer @initwith \"/source/number 31, /speaker/number 54, /vertex/number 12\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 357.0, 158.0, 22.0 ],
					"text" : "udpsend 127.0.0.1 1234"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-15", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 1,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "spat5.converter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.replace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.routepass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.split.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.viewer.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
