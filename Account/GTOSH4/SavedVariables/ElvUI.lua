
ElvDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Default",
		["Yuumi - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
	},
	["gold"] = {
		["Kil'jaeden"] = {
			["Tosh"] = 1187660718,
			["Yuumi"] = 1023673258,
			["Zaemme"] = 1279183481,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["Kil'jaeden"] = {
			["Zaemme"] = "PALADIN",
		},
	},
	["global"] = {
		["general"] = {
			["minUiScale"] = 0.2,
		},
		["uiScale"] = "0.5333",
		["unitframe"] = {
			["ChannelTicks"] = {
				["Penance"] = 3,
			},
		},
		["userInformedNewChanges1"] = true,
	},
	["profiles"] = {
		["Zaemme - Kil'jaeden"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["currentTutorial"] = 2,
			["hideTutorial"] = true,
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Yuumi - Kil'jaeden"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Friz Quadrata TT",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["r"] = 0.09,
					["g"] = 0.513,
					["b"] = 0.819,
				},
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Friz Quadrata TT",
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,450",
				["ElvUF_PlayerCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,726,-293",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,497",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,312,4",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-312,4",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_FocusMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-921,-383",
				["ElvUF_TargetMover"] = "TOP,ElvUIParent,TOP,415,-428",
				["ElvUF_PetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,669,-413",
				["ElvUF_PlayerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,842,-534",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-383,357",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,450",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvUF_TargetTargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,262,-328",
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "Friz Quadrata TT",
				["itemLevelFont"] = "Friz Quadrata TT",
				["itemLevelFontSize"] = 12,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["font"] = "Friz Quadrata TT",
				["tabFont"] = "Friz Quadrata TT",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["fontSize"] = 12,
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["font"] = "Friz Quadrata TT",
			},
			["unitframe"] = {
				["font"] = "Friz Quadrata TT",
				["colors"] = {
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
				},
				["units"] = {
					["target"] = {
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["iconAttachedTo"] = "Castbar",
							["iconSize"] = 18,
							["timeToHold"] = 1,
							["iconXOffset"] = 0,
						},
					},
					["tank"] = {
						["enable"] = false,
					},
					["raid40"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["enable"] = false,
						["height"] = 30,
						["healPrediction"] = {
							["enable"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "LEFT_UP",
					},
					["focus"] = {
						["castbar"] = {
							["timeToHold"] = 1,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["healPrediction"] = {
							["enable"] = true,
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["sizeOverride"] = 22,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["perrow"] = 1,
							["enable"] = true,
							["yOffset"] = -6,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Friz Quadrata TT",
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["castbar"] = {
							["enable"] = false,
							["width"] = 406,
							["height"] = 28,
							["insideInfoPanel"] = false,
						},
						["enable"] = false,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["xOffset"] = -4,
							["sizeOverride"] = 16,
							["anchorPoint"] = "TOPRIGHT",
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = {
							["enable"] = true,
						},
						["growthDirection"] = "LEFT_UP",
						["width"] = 80,
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["perrow"] = 1,
							["enable"] = true,
							["yOffset"] = -6,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
				},
			},
			["datatexts"] = {
				["panels"] = {
					["LeftChatDataPanel"] = {
						["right"] = "BugSack",
						["left"] = "",
						["middle"] = "SavedInstances",
					},
				},
				["font"] = "Friz Quadrata TT",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["font"] = "Friz Quadrata TT",
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["layoutSet"] = "healer",
			["sle"] = {
				["skins"] = {
					["talkinghead"] = {
						["hide"] = true,
					},
					["merchant"] = {
						["list"] = {
							["subFont"] = "Friz Quadrata TT",
							["nameFont"] = "Friz Quadrata TT",
						},
					},
				},
				["raidmarkers"] = {
					["enable"] = false,
				},
			},
			["nameplates"] = {
				["font"] = "Friz Quadrata TT",
			},
			["tooltip"] = {
				["font"] = "Friz Quadrata TT",
				["healthBar"] = {
					["font"] = "Friz Quadrata TT",
				},
				["fontSize"] = 12,
			},
		},
		["Default"] = {
			["databars"] = {
				["honor"] = {
					["enable"] = false,
				},
				["azerite"] = {
					["width"] = 180,
					["font"] = "Friz Quadrata TT",
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Friz Quadrata TT",
					["size"] = 180,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["r"] = 0.09,
					["g"] = 0.513,
					["b"] = 0.819,
				},
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["font"] = "Friz Quadrata TT",
				["totems"] = {
					["enable"] = false,
				},
			},
			["bags"] = {
				["itemLevelFont"] = "Friz Quadrata TT",
				["countFontSize"] = 12,
				["itemLevelFontSize"] = 12,
				["countFont"] = "Friz Quadrata TT",
			},
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["font"] = "Friz Quadrata TT",
				["fontOutline"] = "OUTLINE",
				["buffs"] = {
					["countFontSize"] = 12,
					["growthDirection"] = "RIGHT_DOWN",
					["sortDir"] = "+",
					["durationFontSize"] = 12,
				},
			},
			["layoutSet"] = "healer",
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-198",
				["ElvUF_PlayerCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,726,-293",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,497",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["BuffsMover"] = "TOP,ElvUIParent,TOP,284,-4",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,-365,-334",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-198,-82",
				["ElvUF_TargetMover"] = "TOP,ElvUIParent,TOP,482,-507",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,450",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,38",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_TargetTargetMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-804,-505",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-205",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,312,4",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-312,4",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,424,228",
				["ElvUF_TargetCastbarMover"] = "TOP,ElvUIParent,TOP,482,-529",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-235",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-77",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,471,-4",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-197,-4",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,35,-425",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-353,499",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,486,260",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,562,16",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,450",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-275",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,-391,-450",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,646",
			},
			["tooltip"] = {
				["healthBar"] = {
					["font"] = "Friz Quadrata TT",
				},
				["font"] = "Friz Quadrata TT",
				["fontSize"] = 12,
			},
			["unitframe"] = {
				["font"] = "Friz Quadrata TT",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["arena"] = {
						["enable"] = false,
					},
					["assist"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["width"] = 200,
						["power"] = {
							["text_format"] = "[powercolor][mouseover][power:current]",
							["height"] = 15,
						},
						["health"] = {
							["text_format"] = "[healthcolor][mouseover][health:current-percent]",
						},
						["castbar"] = {
							["enable"] = false,
							["insideInfoPanel"] = false,
							["width"] = 406,
							["height"] = 28,
						},
						["height"] = 16,
						["buffs"] = {
							["attachTo"] = "FRAME",
						},
						["pvp"] = {
							["text_format"] = "",
						},
					},
					["raid40"] = {
						["healPrediction"] = {
							["enable"] = true,
						},
						["height"] = 30,
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["castbar"] = {
							["timeToHold"] = 1,
						},
					},
					["target"] = {
						["debuffs"] = {
							["attachTo"] = "FRAME",
							["anchorPoint"] = "BOTTOMRIGHT",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["text_format"] = "[power:current]",
							["height"] = 12,
							["attachTextTo"] = "Power",
						},
						["width"] = 220,
						["name"] = {
							["position"] = "LEFT",
							["xOffset"] = 6,
						},
						["castbar"] = {
							["iconAttachedTo"] = "Castbar",
							["width"] = 220,
							["iconXOffset"] = 0,
							["iconSize"] = 18,
							["timeToHold"] = 1,
						},
						["height"] = 40,
						["buffs"] = {
							["maxDuration"] = 300,
						},
					},
					["raid"] = {
						["debuffs"] = {
							["enable"] = true,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["horizontalSpacing"] = 9,
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["buffs"] = {
							["enable"] = true,
							["sizeOverride"] = 22,
							["perrow"] = 1,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["yOffset"] = -6,
						},
					},
					["party"] = {
						["debuffs"] = {
							["xOffset"] = -4,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["name"] = {
							["position"] = "TOP",
							["text_format"] = "[namecolor][name:short]",
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["horizontalSpacing"] = 9,
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["text_format"] = "",
						},
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
							["text_format"] = "[healthcolor][health:deficit]",
						},
						["buffs"] = {
							["enable"] = true,
							["sizeOverride"] = 22,
							["perrow"] = 1,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["yOffset"] = -6,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 28,
							["perrow"] = 4,
							["attachTo"] = "BUFFS",
							["yOffset"] = 0,
						},
						["name"] = {
							["position"] = "LEFT",
							["xOffset"] = 6,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 16,
						},
						["width"] = 220,
						["health"] = {
							["position"] = "RIGHT",
						},
						["height"] = 50,
						["buffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 28,
							["fontSize"] = 12,
							["yOffset"] = 0,
							["anchorPoint"] = "RIGHT",
							["perrow"] = 4,
						},
					},
				},
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["datatexts"] = {
				["fontSize"] = 10,
				["goldFormat"] = "CONDENSED",
				["time24"] = true,
				["panels"] = {
					["LeftMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "BfA Missions",
						["middle"] = "AstralKeys",
					},
					["LeftChatDataPanel"] = {
						["right"] = "BugSack",
						["left"] = "Accountant_Classic",
						["middle"] = "SavedInstances",
					},
					["RightMiniPanel"] = "Time",
				},
				["font"] = "Friz Quadrata TT",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
				},
				["font"] = "Friz Quadrata TT",
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttons"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["nameplates"] = {
				["font"] = "Friz Quadrata TT",
			},
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
				},
				["skins"] = {
					["merchant"] = {
						["list"] = {
							["nameFont"] = "Friz Quadrata TT",
							["subFont"] = "Friz Quadrata TT",
						},
					},
					["talkinghead"] = {
						["hide"] = true,
					},
				},
				["legacy"] = {
					["warwampaign"] = {
						["autoOrder"] = {
							["enable"] = true,
						},
					},
				},
				["quests"] = {
					["visibility"] = {
						["enable"] = true,
					},
				},
			},
			["chat"] = {
				["tabFont"] = "Friz Quadrata TT",
				["font"] = "Friz Quadrata TT",
				["tapFontSize"] = 12,
				["fontSize"] = 12,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["keywords"] = "",
				["timeStampFormat"] = "%H:%M ",
			},
		},
		["Tosh - Kil'jaeden"] = {
			["currentTutorial"] = 2,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["fontSize"] = 11,
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["bags"] = {
				["itemLevelFontSize"] = 9,
				["countFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["font"] = "Expressway",
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
			},
			["unitframe"] = {
				["statusbar"] = "ElvUI Blank",
				["fontOutline"] = "THICKOUTLINE",
				["smoothbars"] = true,
				["font"] = "Expressway",
				["fontSize"] = 9,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["pet"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 14,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 122,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["numrows"] = 4,
							["anchorPoint"] = "BOTTOM",
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["healPrediction"] = true,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["width"] = 110,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["castbar"] = {
							["iconAttached"] = false,
							["iconSize"] = 54,
							["height"] = 35,
							["width"] = 478,
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["height"] = 17,
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["width"] = 189,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["width"] = 140,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["assist"] = {
						["enable"] = false,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["leftChatPanel"] = false,
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["font"] = "Expressway",
				["panels"] = {
					["BottomMiniPanel"] = "Time",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftMiniPanel"] = "",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["fontSize"] = 9,
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["fadeTabsNoBackdrop"] = false,
				["font"] = "Expressway",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
			["nameplates"] = {
				["filters"] = {
				},
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Zaemme - Kil'jaeden",
		["Yuumi - Kil'jaeden"] = "Yuumi - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
	},
	["profiles"] = {
		["Zaemme - Kil'jaeden"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["install_complete"] = "3.5",
			},
			["actionbar"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["install_complete"] = "10.87",
		},
		["Yuumi - Kil'jaeden"] = {
			["general"] = {
				["voiceOverlay"] = true,
				["namefont"] = "Friz Quadrata TT",
				["dmgfont"] = "Friz Quadrata TT",
			},
			["sle"] = {
				["module"] = {
					["screensaver"] = true,
				},
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["skins"] = {
					["merchant"] = {
						["enable"] = true,
						["style"] = "List",
					},
				},
				["install_complete"] = "3.5",
			},
			["actionbar"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "default",
			["install_complete"] = "10.85",
		},
		["Tosh - Kil'jaeden"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["install_complete"] = "3.5",
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["actionbar"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
				["dmgfont"] = "Friz Quadrata TT",
			},
			["install_complete"] = "10.85",
		},
	},
}
