{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 124.0, 933.0, 959.0 ],
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
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 505.0, 100.0, 640.0, 480.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"linecount" : 28,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 371.0, 384.0 ],
									"text" : "/vertex/number 62, /vertex/1/xyz 2.3 46 0, /vertex/2/xyz 6.8 40.8 0, /vertex/3/xyz 6.8 36.8 0, /vertex/4/xyz 6.3 32 0, /vertex/5/xyz 10.7 26.9 0, /vertex/6/xyz 10.7 22.8 0, /vertex/7/xyz 10.7 18.8 0, /vertex/8/xyz 6.3 13.7 0, /vertex/9/xyz 13.7 6.25 0, /vertex/10/xyz 18.8 10.7 0, /vertex/11/xyz 22.8 10.7 0, /vertex/12/xyz 26.8 10.7 0, /vertex/13/xyz 33.7 4 0, /vertex/14/xyz 33.7 0 0, /vertex/15/xyz 33.7 -4 0, /vertex/16/xyz 26.8 -10.7 0, /vertex/17/xyz 22.8 -10.7 0, /vertex/18/xyz 18.8 -10.7 0, /vertex/19/xyz 13.7 -6.25 0, /vertex/20/xyz 6.3 -13.7 0, /vertex/21/xyz 10.7 -18.8 0, /vertex/22/xyz 10.7 -22.8 0, /vertex/23/xyz 10.7 -26.9 0, /vertex/24/xyz 6.3 -32 0, /vertex/25/xyz 6.8 -36.8 0, /vertex/26/xyz 6.8 -41 0, /vertex/27/xyz 2.3 -43.2 0, /vertex/28/xyz -2.3 -43.2 0, /vertex/29/xyz -6.8 -41 0, /vertex/30/xyz -6.8 -36.8 0, /vertex/31/xyz -6.3 -32 0, /vertex/32/xyz -10.7 -26.9 0, /vertex/33/xyz -10.7 -22.8 0, /vertex/34/xyz -10.7 -18.8 0, /vertex/35/xyz -6.3 -13.7 0, /vertex/36/xyz -13.7 -6.25 0, /vertex/37/xyz -18.8 -10.7 0, /vertex/38/xyz -22.8 -10.7 0, /vertex/39/xyz -26.8 -10.7 0, /vertex/40/xyz -33.7 -4 0, /vertex/41/xyz -33.7 0 0, /vertex/42/xyz -33.7 4 0, /vertex/43/xyz -26.8 10.7 0, /vertex/44/xyz -22.8 10.7 0, /vertex/45/xyz -18.8 10.7 0, /vertex/46/xyz -13.7 6.25 0, /vertex/47/xyz -6.3 13.7 0, /vertex/48/xyz -10.7 18.8 0, /vertex/49/xyz -10.7 22.8 0, /vertex/50/xyz -10.7 26.9 0, /vertex/51/xyz -6.3 32 0, /vertex/52/xyz -6.8 36.8 0, /vertex/53/xyz -6.8 40.8 0, /vertex/54/xyz -2.3 46 0, /vertex/55/xyz 4.01 9.92 37, /vertex/56/xyz 9.85 4.18 37, /vertex/57/xyz 9.88 -4.11 37, /vertex/58/xyz 3.92 -9.96 37, /vertex/59/xyz -3.92 -9.96 37, /vertex/60/xyz -9.88 -4.11 37, /vertex/61/xyz -9.85 4.18 37, /vertex/62/xyz -4.01 9.92 37"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 517.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 463.0, 446.0, 69.0, 22.0 ],
					"presentation_linecount" : 3,
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p cppAlpha"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 470.0, 406.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 119.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-36",
									"linecount" : 26,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 371.0, 357.0 ],
									"text" : "/vertex/number 58, /vertex/1/xyz 33.7 4 0, /vertex/2/xyz 26.8 10.7 0, /vertex/3/xyz 22.8 10.7 0, /vertex/4/xyz 18.8 10.7 0, /vertex/5/xyz 13.7 6.25 0, /vertex/6/xyz 9.8494 4.1808 37, /vertex/7/xyz 4.0083 9.9209 37, /vertex/8/xyz 6.3 13.7 0, /vertex/9/xyz 10.7 18.8 0, /vertex/10/xyz 10.7 22.8 0, /vertex/11/xyz 10.7 26.9 0, /vertex/12/xyz 6.3 32 0, /vertex/13/xyz 6.8 36.8 0, /vertex/14/xyz 6.8 40.8 0, /vertex/15/xyz 2.3 46 0, /vertex/16/xyz -2.3 46 0, /vertex/17/xyz -6.8 40.8 0, /vertex/18/xyz -6.8 36.8 0, /vertex/19/xyz -6.3 32 0, /vertex/20/xyz -10.7 26.9 0, /vertex/21/xyz -10.7 22.8 0, /vertex/22/xyz -10.7 18.8 0, /vertex/23/xyz -6.3 13.7 0, /vertex/24/xyz -4.0083 9.9209 37, /vertex/25/xyz -9.8494 4.1808 37, /vertex/26/xyz -13.7 6.25 0, /vertex/27/xyz -18.8 10.7 0, /vertex/28/xyz -26.8 10.7 0, /vertex/29/xyz -33.7 4 0, /vertex/30/xyz -33.7 -4 0, /vertex/31/xyz -26.8 -10.7 0, /vertex/32/xyz -18.8 -10.7 0, /vertex/33/xyz -13.7 -6.25 0, /vertex/34/xyz -9.8783 -4.112 37, /vertex/35/xyz -3.9216 -9.9555 37, /vertex/36/xyz -6.3 -13.7 0, /vertex/37/xyz -10.7 -18.8 0, /vertex/38/xyz -10.7 -22.8 0, /vertex/39/xyz -10.7 -26.9 0, /vertex/40/xyz -6.3 -32 0, /vertex/41/xyz -6.8 -36.8 0, /vertex/42/xyz -6.8 -41 0, /vertex/43/xyz -2.3 -43.2 0, /vertex/44/xyz 2.3 -43.2 0, /vertex/45/xyz 6.8 -41 0, /vertex/46/xyz 6.8 -36.8 0, /vertex/47/xyz 6.3 -32 0, /vertex/48/xyz 10.7 -26.9 0, /vertex/49/xyz 10.7 -18.8 0, /vertex/50/xyz 6.3 -13.7 0, /vertex/51/xyz 3.9216 -9.9555 37, /vertex/52/xyz 9.8783 -4.112 37, /vertex/53/xyz 13.7 -6.25 0, /vertex/54/xyz 18.8 -10.7 0, /vertex/55/xyz 22.8 -10.7 0, /vertex/56/xyz 26.8 -10.7 0, /vertex/57/xyz 33.7 -4 0, /vertex/58/xyz 33.7 4 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 517.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 362.0, 468.0, 38.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p test"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 369.0, 428.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 764.0, 349.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-21",
									"linecount" : 11,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 640.0, 156.0 ],
									"text" : "/vertex/number 63, /vertex/1/xy 0 1, /vertex/2/xy 1 2, /vertex/3/xy 2 4, /vertex/4/xy 5 3, /vertex/5/xy 4 5, /vertex/6/xy 5 6, /vertex/7/xy 7 5, /vertex/8/xy 6 9, /vertex/9/xy 10 8, /vertex/10/xy 9 10, /vertex/11/xy 10 11, /vertex/12/xy 13 10, /vertex/13/xy 11 12, /vertex/14/xy 12 13, /vertex/15/xy 8 18, /vertex/16/xy 13 14, /vertex/17/xy 16 13, /vertex/18/xy 14 15, /vertex/19/xy 15 16, /vertex/20/xy 16 17, /vertex/21/xy 18 16, /vertex/22/xy 17 20, /vertex/23/xy 21 19, /vertex/24/xy 20 21, /vertex/25/xy 21 22, /vertex/26/xy 23 21, /vertex/27/xy 22 24, /vertex/28/xy 24 25, /vertex/29/xy 25 26, /vertex/30/xy 53 0, /vertex/31/xy 3 50, /vertex/32/xy 46 7, /vertex/33/xy 19 34, /vertex/34/xy 30 23, /vertex/35/xy 26 27, /vertex/36/xy 27 28, /vertex/37/xy 28 29, /vertex/38/xy 29 31, /vertex/39/xy 32 30, /vertex/40/xy 31 32, /vertex/41/xy 32 33, /vertex/42/xy 34 32, /vertex/43/xy 33 36, /vertex/44/xy 37 35, /vertex/45/xy 36 37, /vertex/46/xy 37 38, /vertex/47/xy 40 37, /vertex/48/xy 38 39, /vertex/49/xy 35 45, /vertex/50/xy 39 41, /vertex/51/xy 43 40, /vertex/52/xy 41 42, /vertex/53/xy 42 43, /vertex/54/xy 43 44, /vertex/55/xy 45 43, /vertex/56/xy 44 47, /vertex/57/xy 48 46, /vertex/58/xy 47 48, /vertex/59/xy 48 49, /vertex/60/xy 50 48, /vertex/61/xy 49 51, /vertex/62/xy 51 52, /vertex/63/xy 52 53"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-31",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-32",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 316.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 709.0, 167.0, 48.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p alpha"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-45",
									"linecount" : 48,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 147.0, 652.0 ],
									"text" : "/vertex/number 47, /vertex/1/xy -6.8 -41, /vertex/2/xy -6.8 -36.8, /vertex/3/xy -6.3 -32, /vertex/4/xy -10.7 -26.9, /vertex/5/xy -10.7 -22.8, /vertex/6/xy -10.7 -18.8, /vertex/7/xy -18.8 -10.7, /vertex/8/xy -22.8 -10.7, /vertex/9/xy -26.8 -10.7, /vertex/10/xy -33.7 -4, /vertex/11/xy -33.7 0, /vertex/12/xy -33.7 4, /vertex/13/xy -26.8 10.7, /vertex/14/xy -22.8 10.7, /vertex/15/xy -18.8 10.7, /vertex/16/xy -10.7 18.8, /vertex/17/xy -10.7 22.8, /vertex/18/xy -10.7 26.9, /vertex/19/xy -6.3 32, /vertex/20/xy -6.8 36.8, /vertex/21/xy -6.8 40.8, /vertex/22/xy -2.3 46, /vertex/23/xy 2.3 46, /vertex/24/xy 6.8 40.8, /vertex/25/xy 6.8 36.8, /vertex/26/xy 6.3 32, /vertex/27/xy 10.7 26.9, /vertex/28/xy 10.7 22.8, /vertex/29/xy 10.7 18.8, /vertex/30/xy 18.8 10.7, /vertex/31/xy 22.8 10.7, /vertex/32/xy 26.8 10.7, /vertex/33/xy 33.7 4, /vertex/34/xy 33.7 0, /vertex/35/xy 33.7 -4, /vertex/36/xy 26.8 -10.7, /vertex/37/xy 22.8 -10.7, /vertex/38/xy 18.8 -10.7, /vertex/39/xy 10.7 -18.8, /vertex/40/xy 10.7 -22.8, /vertex/41/xy 10.7 -26.9, /vertex/42/xy 6.3 -32, /vertex/43/xy 6.8 -36.8, /vertex/44/xy 6.8 -41, /vertex/45/xy 2.3 -43.2, /vertex/46/xy -2.3 -43.2, /vertex/47/xy -6.8 -41"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-29",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 812.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 774.0, 131.5, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p concav"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 774.0, 62.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 709.0, 136.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 637.0, 229.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 119.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 86.0, 31.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 38,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 195.0, 518.0 ],
									"text" : "/vertex/number 44, /vertex/1/xy -18.8 10.7, /vertex/2/xy -13.7 6.25, /vertex/3/xy -6.3 13.7, /vertex/4/xy -10.7 18.8, /vertex/5/xy -10.7 26.9, /vertex/6/xy -6.3 32, /vertex/7/xy -6.8 36.8, /vertex/8/xy -6.8 40.8, /vertex/9/xy -2.3 46, /vertex/10/xy 2.3 46, /vertex/11/xy 6.8 40.8, /vertex/12/xy 6.8 36.8, /vertex/13/xy 6.3 32, /vertex/14/xy 10.7 26.9, /vertex/15/xy 10.7 18.8, /vertex/16/xy 6.3 13.7, /vertex/17/xy 13.7 6.25, /vertex/18/xy 18.8 10.7, /vertex/19/xy 26.8 10.7, /vertex/20/xy 33.7 4, /vertex/21/xy 33.7 -4, /vertex/22/xy 26.8 -10.7, /vertex/23/xy 18.8 -10.7, /vertex/24/xy 13.7 -6.25, /vertex/25/xy 6.3 -13.7, /vertex/26/xy 10.7 -18.8, /vertex/27/xy 10.7 -26.9, /vertex/28/xy 6.3 -32, /vertex/29/xy 6.8 -36.8, /vertex/30/xy 6.8 -41, /vertex/31/xy 2.3 -43.2, /vertex/32/xy -2.3 -43.2, /vertex/33/xy -6.8 -41, /vertex/34/xy -6.8 -36.8, /vertex/35/xy -6.3 -32, /vertex/36/xy -10.7 -26.9, /vertex/37/xy -10.7 -18.8, /vertex/38/xy -6.3 -13.7, /vertex/39/xy -13.7 -6.25, /vertex/40/xy -18.8 -10.7, /vertex/41/xy -26.8 -10.7, /vertex/42/xy -33.7 -4, /vertex/43/xy -33.7 4, /vertex/44/xy -26.8 10.7"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 678.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 637.0, 262.0, 59.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p contour"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 937.0, 292.0, 100.0, 22.0 ],
					"text" : "spat5.osc.split"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"linecount" : 25,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1021.0, -67.0, 249.0, 344.0 ],
					"text" : "speaker/xyz -14.297914 17.1 0. -13.578505 16.888254 0. -12.87 16.67 0. -12.152647 16.447361 0. -11.436519 16.224319 0. -10.719787 16.025124 0. -9.989264 15.832025 0. -9.26182 15.667122 0. -8.529149 15.520879 0. -7.794607 15.377311 0. -7.060101 15.244506 0. -6.321141 15.111173 0. -5.585004 14.993589 0. -4.843909 14.8815 0. -4.102017 14.781376 0. -3.359251 14.690825 0. -2.615191 14.607751 0. -1.869117 14.55044 0. -1.121326 14.506727 0. -0.374248 14.485166 0. 0.374248 14.485166 0. 1.121326 14.506727 0. 1.869117 14.55044 0. 2.615191 14.607751 0. 3.359251 14.690825 0. 4.102017 14.781376 0. 4.843909 14.8815 0. 5.585004 14.993589 0. 6.321141 15.111173 0. 7.060101 15.244506 0. 7.794607 15.377311 0. 8.529149 15.520879 0. 9.26182 15.667122 0. 9.989264 15.832025 0. 10.719787 16.025124 0. 11.436519 16.224319 0. 12.152647 16.447361 0. 12.87 16.67 0. 13.578505 16.888254 0. 14.297914 17.1 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 927.0, 178.0, 100.0, 22.0 ],
					"text" : "spat5.converter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"linecount" : 14,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 927.0, -57.0, 241.0, 196.0 ],
					"text" : "/bus/1/speakers/aed -39.9 0 22.29 -38.8 0 21.67 -37.67 0 21.06 -36.46 0 20.45 -35.18 0 19.85 -33.78 0 19.28 -32.25 0 18.72 -30.59 0 18.2 -28.79 0 17.71 -26.88 0 17.24 -24.85 0 16.8 -22.7 0 16.38 -20.43 0 16 -18.03 0 15.65 -15.51 0 15.34 -12.88 0 15.07 -10.15 0 14.84 -7.32 0 14.67 -4.42 0 14.55 -1.48 0 14.49 1.48 0 14.49 4.42 0 14.55 7.32 0 14.67 10.15 0 14.84 12.88 0 15.07 15.51 0 15.34 18.03 0 15.65 20.43 0 16 22.7 0 16.38 24.85 0 16.8 26.88 0 17.24 28.79 0 17.71 30.59 0 18.2 32.25 0 18.72 33.78 0 19.28 35.18 0 19.85 36.46 0 20.45 37.67 0 21.06 38.8 0 21.67 39.9 0 22.29"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 764.0, 427.0, 100.0, 49.0 ],
					"text" : "spat5.osc.replace @initwith \"/vertex /anchor\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-62",
					"linecount" : 4,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 758.5, 512.0, 111.5, 58.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.viewer @initwith \"/path/number 3,  /listener/editable 1\"",
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
					"patching_rect" : [ 378.0, 192.0, 53.0, 49.0 ],
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
					"patching_rect" : [ 65.0, 118.0, 101.0, 49.0 ],
					"text" : "spat5.osc.split @initwith \"/stride 3\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 6,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, -3.0, 582.0, 89.0 ],
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
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-27", 0 ]
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
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-43", 0 ]
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
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-8", 0 ]
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
