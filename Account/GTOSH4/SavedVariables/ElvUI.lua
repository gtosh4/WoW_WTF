
ElvDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Default2",
		["Toshtrial - Blood Furnace"] = "Toshtrial - Blood Furnace",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default2",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Tosh - Kil'jaeden"] = "Default2",
		["Toshtrial - The Forgotten Coast"] = "Toshtrial - The Forgotten Coast",
		["Toshtrial - Ursin"] = "Toshtrial - Ursin",
		["Yuumi - Kil'jaeden"] = "Default2",
		["Zallie - Frostwolf"] = "Default2",
	},
	["gold"] = {
		["Blood Furnace"] = {
			["Toshtrial"] = 78000,
		},
		["The Forgotten Coast"] = {
			["Toshtrial"] = 78000,
		},
		["Ursin"] = {
			["Toshtrial"] = 78000,
		},
		["Kil'jaeden"] = {
			["Tosku"] = 1911922613,
			["Zaemme"] = 5991179670,
			["Tosh"] = 993118120,
			["Yuumi"] = 278874347,
			["Yorman"] = 1410885448,
		},
		["Frostwolf"] = {
			["Zallie"] = 12158607,
			["Koutetsu"] = 17444885,
			["Daggny"] = 46394474,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["Boss"] = {
					["actions"] = {
						["frameLevel"] = 0,
						["color"] = {
							["borderColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["nameColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["health"] = false,
							["power"] = false,
							["healthColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
							["name"] = false,
							["border"] = false,
							["powerColor"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["nameOnly"] = false,
						["alpha"] = -1,
						["flash"] = {
							["speed"] = 4,
							["enable"] = false,
							["color"] = {
								["a"] = 1,
								["b"] = 1,
								["g"] = 1,
								["r"] = 1,
							},
						},
						["hide"] = false,
						["texture"] = {
							["enable"] = false,
							["texture"] = "ElvUI Norm",
						},
					},
					["triggers"] = {
						["debuffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["instanceType"] = {
							["party"] = false,
							["scenario"] = false,
							["pvp"] = false,
							["raid"] = false,
							["arena"] = false,
							["none"] = false,
						},
						["inCombatUnit"] = false,
						["class"] = {
						},
						["powerThreshold"] = false,
						["maxlevel"] = 0,
						["overHealthThreshold"] = 0,
						["nameplateType"] = {
							["healer"] = false,
							["neutral"] = false,
							["friendlyPlayer"] = false,
							["enemyPlayer"] = false,
							["friendlyNPC"] = false,
						},
						["underHealthThreshold"] = 0,
						["reactionType"] = {
							["enabled"] = false,
							["reputation"] = false,
							["friendly"] = false,
							["revered"] = false,
							["honored"] = false,
							["hostile"] = false,
							["unfriendly"] = false,
							["exalted"] = false,
							["neutral"] = false,
							["hated"] = false,
						},
						["buffs"] = {
							["minTimeLeft"] = 0,
							["mustHaveAll"] = false,
							["missing"] = false,
							["maxTimeLeft"] = 0,
							["names"] = {
							},
						},
						["inCombat"] = false,
						["healthThreshold"] = false,
						["names"] = {
						},
						["isTarget"] = false,
						["priority"] = 1,
						["outOfCombat"] = false,
						["targetMe"] = false,
						["classification"] = {
							["elite"] = false,
							["normal"] = false,
							["trivial"] = false,
							["minus"] = false,
							["worldboss"] = false,
							["rareelite"] = false,
							["rare"] = false,
						},
						["underPowerThreshold"] = 0,
						["talent"] = {
							["tier7enabled"] = false,
							["tier7"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier2enabled"] = false,
							["tier1"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["enabled"] = false,
							["type"] = "normal",
							["tier2"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier4enabled"] = false,
							["tier3"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier5enabled"] = false,
							["tier5"] = {
								["missing"] = false,
								["column"] = 0,
							},
							["tier1enabled"] = false,
							["requireAll"] = false,
							["tier6enabled"] = false,
							["tier3enabled"] = false,
							["tier6"] = {
								["missing"] = false,
								["column"] = 0,
							},
						},
						["minlevel"] = 0,
						["outOfCombatUnit"] = false,
						["powerUsePlayer"] = false,
						["healthUsePlayer"] = false,
						["questBoss"] = false,
						["overPowerThreshold"] = 0,
						["role"] = {
							["tank"] = false,
							["damager"] = false,
							["healer"] = false,
						},
						["cooldowns"] = {
							["mustHaveAll"] = false,
							["names"] = {
							},
						},
						["casting"] = {
							["spells"] = {
							},
							["interruptible"] = false,
						},
						["instanceDifficulty"] = {
							["dungeon"] = {
								["normal"] = false,
								["mythic+"] = false,
								["heroic"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
							["raid"] = {
								["normal"] = false,
								["legacy25normal"] = false,
								["heroic"] = false,
								["legacy10normal"] = false,
								["legacy10heroic"] = false,
								["legacy25heroic"] = false,
								["lfr"] = false,
								["timewalking"] = false,
								["mythic"] = false,
							},
						},
						["notTarget"] = false,
					},
				},
			},
		},
		["general"] = {
			["commandBarSetting"] = "DISABLED",
			["minUiScale"] = 0.2,
		},
		["uiScale"] = "0.5333",
		["userInformedNewChanges1"] = true,
		["datatexts"] = {
			["customCurrencies"] = {
				[1560] = {
					["SHOW_MAX"] = false,
					["DISPLAY_STYLE"] = "ICON",
					["DISPLAY_IN_MAIN_TOOLTIP"] = true,
					["ID"] = 1560,
					["ICON"] = "|T2032600:16:16:0:0:64:64:4:60:4:60|t",
					["USE_TOOLTIP"] = true,
					["NAME"] = "War Resources",
				},
			},
		},
		["unitframe"] = {
			["aurafilters"] = {
				["RaidDebuffs"] = {
					["spells"] = {
						[274195] = {
							["enable"] = false,
						},
					},
				},
			},
			["buffwatch"] = {
				["PALADIN"] = {
					[53563] = {
						["sizeOverride"] = 10,
						["color"] = {
							["r"] = 1,
							["g"] = 1,
							["b"] = 1,
						},
					},
					[1022] = {
						["sizeOverride"] = 10,
					},
					[6940] = {
						["sizeOverride"] = 10,
					},
					[156910] = {
						["sizeOverride"] = 10,
					},
					[223306] = {
						["sizeOverride"] = 10,
						["point"] = "LEFT",
					},
					[200025] = {
						["sizeOverride"] = 10,
					},
					["TankCDs"] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["filter"] = "TankCDs",
						["color"] = {
							["r"] = 1,
							["g"] = 0,
							["b"] = 0,
						},
						["style"] = "coloredIcon",
						["xOffset"] = 0,
						["yOffset"] = 0,
					},
					[1044] = {
						["sizeOverride"] = 10,
					},
				},
				["PRIEST"] = {
					[139] = {
						["sizeOverride"] = 10,
						["point"] = "TOPRIGHT",
						["xOffset"] = -10,
					},
					[193065] = {
						["enabled"] = false,
					},
					[214206] = {
						["sizeOverride"] = 10,
					},
					[17] = {
						["point"] = "TOPRIGHT",
						["xOffset"] = -10,
						["sizeOverride"] = 10,
					},
					[33206] = {
						["enabled"] = false,
					},
					[194384] = {
						["sizeOverride"] = 10,
					},
					[47788] = {
						["enabled"] = false,
					},
					[41635] = {
						["sizeOverride"] = 10,
						["point"] = "TOPRIGHT",
					},
					[6788] = {
						["sizeOverride"] = 10,
						["point"] = "TOPRIGHT",
						["xOffset"] = -10,
					},
				},
				["DRUID"] = {
					[207386] = {
						["enabled"] = false,
						["style"] = "texturedIcon",
					},
					[155777] = {
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["color"] = {
							["b"] = 0.705882352941177,
							["g"] = 0.8,
							["r"] = 0.4,
						},
						["yOffset"] = -13,
						["style"] = "texturedIcon",
						["xOffset"] = -13,
					},
					[200389] = {
						["enabled"] = false,
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["xOffset"] = -13,
						["yOffset"] = -13,
						["style"] = "texturedIcon",
					},
					[774] = {
						["sizeOverride"] = 12,
						["style"] = "texturedIcon",
					},
					[102351] = {
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["xOffset"] = -13,
						["yOffset"] = -13,
						["style"] = "texturedIcon",
						["color"] = {
							["b"] = 0.835294117647059,
							["g"] = 0.835294117647059,
							["r"] = 0.71764705882353,
						},
					},
					[102352] = {
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["xOffset"] = -13,
						["yOffset"] = -13,
						["style"] = "texturedIcon",
						["color"] = {
							["b"] = 0.835294117647059,
							["g"] = 0.835294117647059,
							["r"] = 0.71764705882353,
						},
					},
					[8936] = {
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["color"] = {
							["b"] = 0.164705882352941,
							["g"] = 0.647058823529412,
							["r"] = 0.164705882352941,
						},
						["yOffset"] = -13,
						["style"] = "texturedIcon",
					},
					[48438] = {
						["sizeOverride"] = 12,
						["style"] = "texturedIcon",
					},
					[33763] = {
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["color"] = {
							["b"] = 0.8,
							["g"] = 0.2,
							["r"] = 0.474509803921569,
						},
						["style"] = "texturedIcon",
						["xOffset"] = -13,
					},
				},
				["MONK"] = {
					[191840] = {
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["xOffset"] = -13,
						["style"] = "texturedIcon",
					},
					[116849] = {
						["enabled"] = false,
					},
					[119611] = {
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["style"] = "texturedIcon",
					},
					[278086] = {
						["enabled"] = true,
						["anyUnit"] = false,
						["point"] = "TOPRIGHT",
						["color"] = {
							["b"] = 0,
							["g"] = 0,
							["r"] = 1,
						},
						["id"] = 278086,
						["xOffset"] = 0,
						["style"] = "coloredIcon",
						["yOffset"] = 0,
					},
					[124682] = {
						["sizeOverride"] = 12,
						["point"] = "TOPRIGHT",
						["yOffset"] = -12,
						["style"] = "texturedIcon",
					},
				},
			},
			["ChannelTicks"] = {
				["Penance"] = 3,
			},
		},
	},
	["profiles"] = {
		["Zaemme - Kil'jaeden"] = {
			["databars"] = {
				["experience"] = {
					["orientation"] = "HORIZONTAL",
				},
				["honor"] = {
					["enable"] = false,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["autoAcceptInvite"] = true,
				["font"] = "UbuntuCondensed",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.96000000089407,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["b"] = 0.819,
					["g"] = 0.513,
					["r"] = 0.09,
				},
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["objectiveFrameHeight"] = 600,
				["minimap"] = {
					["locationFont"] = "UbuntuCondensed",
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,450",
				["RaidMarkerBarAnchor"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-943,-4",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,76",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,1640,646",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,479,35",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-648,-4",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,132",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,479,66",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,479,97",
				["ZoneAbility"] = "TOP,ElvUIParent,TOP,-110,-300",
				["BossButton"] = "TOP,ElvUIParent,TOP,110,-300",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,479,4",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-54,-204",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-258,-150",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,440,779",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,531,-413",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-669,329",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,889,24",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,558,273",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,479,131",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["DebuffsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-308,648",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,215,587",
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "UbuntuCondensed",
				["itemLevelFont"] = "UbuntuCondensed",
				["itemLevelFontSize"] = 12,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["font"] = "UbuntuCondensed",
				["fontOutline"] = "OUTLINE",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["customhealthbackdrop"] = true,
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.101960784313725,
						["g"] = 0.101960784313725,
						["r"] = 0.101960784313725,
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health_backdrop"] = {
						["b"] = 0.101960784313725,
						["g"] = 0.101960784313725,
						["r"] = 0.101960784313725,
					},
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "UbuntuCondensed",
				["statusbar"] = "Minimalist",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["raid40"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["enable"] = false,
						["height"] = 30,
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
						},
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
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
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
						},
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["yOffset"] = -6,
							["enable"] = true,
							["perrow"] = 1,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
					},
					["target"] = {
						["name"] = {
							["text_format"] = "[name:medium] [difficultycolor][smartlevel] [shortclassification]",
						},
						["castbar"] = {
							["width"] = 240,
						},
						["height"] = 40,
						["aurabar"] = {
							["enable"] = false,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["width"] = 240,
					},
					["raid"] = {
						["roleIcon"] = {
							["yOffset"] = 0,
							["position"] = "LEFT",
						},
						["debuffs"] = {
							["sizeOverride"] = 0,
						},
						["power"] = {
							["width"] = "spaced",
						},
						["rdebuffs"] = {
							["fontOutline"] = "OUTLINE",
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_DOWN",
						["healPrediction"] = true,
						["name"] = {
							["text_format"] = "[name:short]",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["groupBy"] = "ROLE",
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 0,
						},
						["visibility"] = "show",
						["width"] = 90,
					},
					["assist"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["castbar"] = {
							["height"] = 28,
							["insideInfoPanel"] = false,
							["width"] = 406,
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
				},
			},
			["datatexts"] = {
				["time24"] = true,
				["font"] = "UbuntuCondensed",
				["panels"] = {
					["LeftMiniPanel"] = "Time",
					["RightMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "Accountant_Classic",
						["left"] = "Durability",
						["middle"] = "BugSack",
					},
					["LeftChatDataPanel"] = {
						["middle"] = "KeystoneManager",
						["right"] = "SavedInstances",
					},
				},
				["goldFormat"] = "CONDENSED",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["mouseover"] = true,
					["buttons"] = 12,
				},
				["bar2"] = {
					["enabled"] = true,
					["mouseover"] = true,
				},
				["bar1"] = {
					["mouseover"] = true,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["mouseover"] = true,
					["buttons"] = 12,
				},
				["font"] = "UbuntuCondensed",
				["fontOutline"] = "OUTLINE",
				["stanceBar"] = {
					["enabled"] = false,
				},
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["layoutSet"] = "healer",
			["tooltip"] = {
				["fontSize"] = 12,
				["healthBar"] = {
					["font"] = "UbuntuCondensed",
				},
				["font"] = "UbuntuCondensed",
			},
			["nameplates"] = {
				["font"] = "UbuntuCondensed",
			},
			["chat"] = {
				["fontSize"] = 12,
				["tabFont"] = "UbuntuCondensed",
				["keywords"] = "",
				["font"] = "UbuntuCondensed",
				["panelHeight"] = 200,
				["timeStampFormat"] = "%H:%M ",
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 12,
				["panelWidth"] = 411,
			},
		},
		["Toshtrial - Blood Furnace"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["font"] = "Expressway",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["b"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["r"] = 0.30588235294118,
				},
				["fontSize"] = 11,
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
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
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
			},
			["bags"] = {
				["itemLevelFontSize"] = 9,
				["countFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["auras"] = {
				["font"] = "Expressway",
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
			},
			["unitframe"] = {
				["statusbar"] = "ElvUI Blank",
				["fontOutline"] = "THICKOUTLINE",
				["smoothbars"] = true,
				["fontSize"] = 9,
				["font"] = "Expressway",
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
							["position"] = "TOP",
							["yOffset"] = -2,
						},
						["height"] = 50,
						["width"] = 122,
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
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
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
						["groupsPerRowCol"] = 5,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["width"] = 140,
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
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["castbar"] = {
							["iconAttached"] = false,
							["iconSize"] = 54,
							["height"] = 35,
							["width"] = 478,
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
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["spacing"] = 26,
						["castbar"] = {
							["width"] = 246,
						},
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
						["width"] = 110,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["height"] = 59,
						["verticalSpacing"] = 0,
						["healPrediction"] = true,
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
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
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["panelTransparency"] = true,
				["goldFormat"] = "SHORT",
				["leftChatPanel"] = false,
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
			["nameplates"] = {
				["filters"] = {
				},
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["headerFontSize"] = 11,
				["fontSize"] = 11,
				["smallTextFontSize"] = 11,
			},
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
		},
		["Default2"] = {
			["databars"] = {
				["honor"] = {
					["enable"] = false,
				},
				["experience"] = {
					["font"] = "DejaVu Sans",
					["orientation"] = "HORIZONTAL",
				},
				["azerite"] = {
					["width"] = 420,
					["font"] = "DejaVu Sans",
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["enable"] = false,
				},
				["backdropfadecolor"] = {
					["a"] = 1,
					["b"] = 0.0588235294117647,
					["g"] = 0.0588235294117647,
					["r"] = 0.0588235294117647,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["loginmessage"] = false,
				["threat"] = {
					["enable"] = false,
				},
				["font"] = "Friz Quadrata TT",
				["altPowerBar"] = {
					["statusBar"] = "Minimalist",
					["font"] = "DejaVu Sans",
				},
				["fontSize"] = 10,
				["autoAcceptInvite"] = true,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Friz Quadrata TT",
					["size"] = 200,
				},
				["bottomPanel"] = false,
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["b"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["r"] = 0.30588235294118,
				},
			},
			["bags"] = {
				["itemLevelFont"] = "Friz Quadrata TT",
				["countFont"] = "Friz Quadrata TT",
			},
			["hideTutorial"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 10,
				},
				["font"] = "Friz Quadrata TT",
				["fontOutline"] = "OUTLINE",
				["buffs"] = {
					["countFontSize"] = 10,
					["maxWraps"] = 2,
				},
			},
			["layoutSet"] = "dpsMelee",
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-45",
				["RaidMarkerBarAnchor"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,783,4",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,12,456",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1493,451",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,20",
				["GMMover"] = "TOP,ElvUIParent,TOP,373,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-212,-4",
				["BossButton"] = "TOP,ElvUIParent,TOP,-302,-300",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,561,-378",
				["ZoneAbility"] = "TOP,ElvUIParent,TOP,-302,-234",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1493,385",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,-363,-450",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,624",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-914,409",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,369,411",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,698,195",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,421,106",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,421,76",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvAB_4"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,421,20",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-82,381",
				["AzeriteBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,2",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,421,48",
				["ElvAB_5"] = "TOP,ElvUIParent,TOP,-555,-328",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["TotemBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,665,-4",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1854,1200",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-239",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,424,171",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,16,-464",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,-457,325",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-319,435",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,369,421",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-670,-4",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1018,-378",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,574,471",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,716,-4",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,14",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-371",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-212,-102",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
			},
			["tooltip"] = {
				["fontSize"] = 10,
				["headerFontSize"] = 10,
				["healthBar"] = {
					["font"] = "Friz Quadrata TT",
				},
				["textFontSize"] = 10,
				["font"] = "Friz Quadrata TT",
				["smallTextFontSize"] = 10,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["statusbar"] = "Minimalist",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["numrows"] = 4,
							["yOffset"] = 2,
							["perrow"] = 5,
						},
						["power"] = {
							["text_format"] = "[power:deficit]",
							["height"] = 15,
							["attachTextTo"] = "Power",
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["parent"] = "UIPARENT",
							["additionalPowerText"] = false,
							["detachedWidth"] = 180,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["RestIcon"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["enable"] = false,
							["iconSize"] = 54,
							["icon"] = false,
							["iconAttached"] = false,
							["width"] = 478,
							["displayTarget"] = true,
							["height"] = 14,
						},
						["customTexts"] = {
							["power-pct"] = {
								["attachTextTo"] = "Power",
								["xOffset"] = 0,
								["text_format"] = "[power:percent]",
								["yOffset"] = 0,
								["font"] = "Friz Quadrata TT",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 12,
							},
						},
						["width"] = 180,
						["raidicon"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["health"] = {
							["text_format"] = "",
						},
						["height"] = 16,
						["buffs"] = {
							["numrows"] = 3,
							["enable"] = true,
							["yOffset"] = -2,
							["attachTo"] = "FRAME",
							["anchorPoint"] = "BOTTOMLEFT",
							["perrow"] = 6,
						},
						["CombatIcon"] = {
							["enable"] = false,
						},
						["pvp"] = {
							["text_format"] = "",
						},
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 0,
							["perrow"] = 10,
							["anchorPoint"] = "RIGHT",
							["yOffset"] = 10,
						},
						["health"] = {
							["xOffset"] = 0,
						},
						["buffs"] = {
							["sizeOverride"] = 0,
							["perrow"] = 6,
							["yOffset"] = 0,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["numrows"] = 3,
							["enable"] = false,
							["anchorPoint"] = "TOPLEFT",
							["perrow"] = 7,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["attachTextTo"] = "Health",
							["text_format"] = "[powercolor][power:current]",
							["height"] = 10,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 20,
						},
						["health"] = {
							["attachTextTo"] = "Health",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 40,
						["buffs"] = {
							["numrows"] = 3,
							["maxDuration"] = 0,
						},
					},
					["arena"] = {
						["enable"] = false,
						["spacing"] = 26,
						["castbar"] = {
							["width"] = 246,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["party"] = {
						["debuffs"] = {
							["numrows"] = 4,
							["perrow"] = 1,
							["anchorPoint"] = "BOTTOM",
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
							["text_format"] = "[namecolor][name:short]",
						},
						["height"] = 59,
						["verticalSpacing"] = 0,
						["horizontalSpacing"] = 3,
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "RIGHT_DOWN",
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["width"] = 110,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "RIGHT",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
					["raidpet"] = {
						["horizontalSpacing"] = 1,
						["numGroups"] = 1,
						["growthDirection"] = "RIGHT_DOWN",
						["enable"] = true,
						["groupSpacing"] = 1,
						["width"] = 90,
						["name"] = {
							["position"] = "CENTER",
						},
						["height"] = 50,
						["verticalSpacing"] = 0,
						["visibility"] = "[@raid6,exists][nogroup] hide;show",
					},
					["target"] = {
						["debuffs"] = {
							["numrows"] = 3,
							["attachTo"] = "FRAME",
							["anchorPoint"] = "TOPLEFT",
						},
						["orientation"] = "MIDDLE",
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["enable"] = false,
							["height"] = 30,
							["width"] = 200,
							["iconAttached"] = false,
							["iconSize"] = 32,
							["iconAttachedTo"] = "Castbar",
						},
						["width"] = 200,
						["health"] = {
							["text_format"] = "[healthcolor][health:current]",
						},
						["power"] = {
							["hideonnpc"] = true,
						},
						["height"] = 40,
						["buffs"] = {
							["numrows"] = 3,
							["anchorPoint"] = "BOTTOMLEFT",
						},
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 18,
							["enable"] = true,
							["yOffset"] = 18,
							["anchorPoint"] = "BOTTOMLEFT",
							["clickThrough"] = true,
							["xOffset"] = 2,
							["perrow"] = 4,
						},
						["groupSpacing"] = 1,
						["threatStyle"] = "BORDERS",
						["healPrediction"] = {
							["enable"] = true,
						},
						["height"] = 50,
						["verticalSpacing"] = 0,
						["visibility"] = "show",
						["raidicon"] = {
							["size"] = 16,
							["yOffset"] = 0,
						},
						["horizontalSpacing"] = 1,
						["rdebuffs"] = {
							["fontSize"] = 12,
							["enable"] = false,
							["font"] = "Friz Quadrata TT",
							["fontOutline"] = "OUTLINE",
						},
						["roleIcon"] = {
							["xOffset"] = -16,
							["damager"] = false,
							["attachTo"] = "Frame",
							["position"] = "TOP",
							["yOffset"] = 0,
							["size"] = 16,
						},
						["power"] = {
							["enable"] = false,
							["width"] = "inset",
							["height"] = 6,
						},
						["width"] = 90,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "",
							["yOffset"] = -6,
						},
						["numGroups"] = 8,
						["buffIndicator"] = {
							["fontSize"] = 12,
						},
						["buffs"] = {
							["sizeOverride"] = 18,
							["fontSize"] = 8,
							["enable"] = true,
							["perrow"] = 2,
							["anchorPoint"] = "TOPLEFT",
							["yOffset"] = -18,
						},
					},
					["focus"] = {
						["debuffs"] = {
							["numrows"] = 3,
							["anchorPoint"] = "TOPLEFT",
							["perrow"] = 7,
						},
						["disableTargetGlow"] = true,
						["aurabar"] = {
							["maxBars"] = 6,
						},
						["name"] = {
							["position"] = "LEFT",
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["iconAttached"] = false,
							["width"] = 200,
							["iconSize"] = 54,
						},
						["width"] = 200,
						["infoPanel"] = {
							["height"] = 20,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current]",
						},
						["power"] = {
							["text_format"] = "[powercolor][power:current]",
							["height"] = 10,
							["hideonnpc"] = true,
						},
						["height"] = 40,
						["buffs"] = {
							["numrows"] = 3,
							["maxDuration"] = 0,
							["enable"] = true,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["enable"] = true,
						},
						["enable"] = false,
						["threatStyle"] = "NONE",
						["width"] = 122,
						["infoPanel"] = {
							["height"] = 14,
							["enable"] = true,
						},
						["height"] = 50,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["width"] = 122,
						},
					},
				},
				["font"] = "Friz Quadrata TT",
				["colors"] = {
					["colorhealthbyvalue"] = false,
					["health_backdrop_dead"] = {
						["b"] = 0.137254901960784,
						["g"] = 0.137254901960784,
						["r"] = 0.458823529411765,
					},
					["useDeadBackdrop"] = true,
					["frameGlow"] = {
						["targetGlow"] = {
							["class"] = false,
						},
						["mouseoverGlow"] = {
							["texture"] = "Minimalist",
						},
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["datatexts"] = {
				["fontSize"] = 10,
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["time24"] = true,
				["panels"] = {
					["LeftMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["LeftChatDataPanel"] = {
						["right"] = "BugSack",
						["left"] = "Accountant_Classic",
						["middle"] = "SavedInstances",
					},
					["RightMiniPanel"] = "Time",
					["BottomMiniPanel"] = "Time",
				},
				["rightChatPanel"] = false,
				["font"] = "Friz Quadrata TT",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 12,
					["mouseover"] = true,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 28,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Friz Quadrata TT",
				["fontSize"] = 12,
				["bar2"] = {
					["enabled"] = true,
					["mouseover"] = true,
					["buttonsize"] = 28,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["point"] = "TOPLEFT",
					["buttonsPerRow"] = 3,
					["buttonsize"] = 30,
				},
				["bar1"] = {
					["mouseover"] = true,
					["buttonsize"] = 28,
				},
				["stanceBar"] = {
					["buttonspacing"] = 1,
					["inheritGlobalFade"] = true,
					["enabled"] = false,
					["buttonsize"] = 30,
				},
				["bar4"] = {
					["mouseover"] = true,
					["backdrop"] = false,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 28,
				},
			},
			["nameplates"] = {
				["font"] = "Friz Quadrata TT",
			},
			["sle"] = {
				["media"] = {
					["fonts"] = {
						["gossip"] = {
							["font"] = "Friz Quadrata TT",
						},
						["zone"] = {
							["font"] = "Friz Quadrata TT",
						},
						["subzone"] = {
							["font"] = "Friz Quadrata TT",
						},
						["pvp"] = {
							["font"] = "Friz Quadrata TT",
						},
						["objectiveHeader"] = {
							["font"] = "Friz Quadrata TT",
						},
						["mail"] = {
							["font"] = "Friz Quadrata TT",
						},
						["editbox"] = {
							["font"] = "Friz Quadrata TT",
						},
						["objective"] = {
							["font"] = "Friz Quadrata TT",
						},
						["questFontSuperHuge"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
				},
				["skins"] = {
					["merchant"] = {
						["list"] = {
							["nameSize"] = 12,
							["subSize"] = 10,
							["subFont"] = "DejaVu Sans",
							["nameFont"] = "DejaVu Sans",
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
				["Armory"] = {
					["Inspect"] = {
						["Gradation"] = {
							["ItemQuality"] = true,
						},
						["Guild"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["tabsText"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["LevelRace"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["guildMembers"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["pvpText"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["pvpRating"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["Level"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["pvpType"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["pvpRecord"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["Enchant"] = {
							["Font"] = "Friz Quadrata TT",
							["FontSize"] = 10,
						},
						["Spec"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["Backdrop"] = {
							["SelectedBG"] = "CLASS",
						},
						["Title"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["Name"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["guildName"] = {
							["Font"] = "Friz Quadrata TT",
						},
						["infoTabs"] = {
							["Font"] = "Friz Quadrata TT",
						},
					},
					["Character"] = {
						["Enchant"] = {
							["Font"] = "Friz Quadrata TT",
							["WarningIconOnly"] = true,
							["FontSize"] = 10,
						},
						["Backdrop"] = {
							["Overlay"] = false,
							["SelectedBG"] = "CLASS",
						},
						["Durability"] = {
							["Font"] = "Friz Quadrata TT",
							["FontSize"] = 10,
							["Display"] = "DamagedOnly",
						},
						["Gradation"] = {
							["ItemQuality"] = true,
						},
						["Level"] = {
							["Font"] = "Friz Quadrata TT",
						},
					},
				},
				["screensaver"] = {
					["subtitle"] = {
						["font"] = "DejaVu Sans",
					},
					["date"] = {
						["font"] = "DejaVu Sans",
					},
					["tips"] = {
						["font"] = "DejaVu Sans",
						["size"] = 8,
					},
					["player"] = {
						["font"] = "DejaVu Sans",
					},
					["title"] = {
						["font"] = "DejaVu Sans",
					},
				},
				["datatexts"] = {
					["leftchat"] = {
						["width"] = 405,
					},
				},
				["raidmarkers"] = {
					["enable"] = false,
				},
				["raidmanager"] = {
					["roles"] = true,
				},
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%H:%M ",
				["fontOutline"] = "OUTLINE",
				["chatHistory"] = false,
				["fadeUndockedTabs"] = false,
				["font"] = "Friz Quadrata TT",
				["tapFontSize"] = 10,
				["panelWidth"] = 420,
				["fontSize"] = 10,
				["tabFontSize"] = 10,
				["panelColorConverted"] = true,
				["panelHeight"] = 200,
				["tabFont"] = "Friz Quadrata TT",
				["panelColor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["fadeTabsNoBackdrop"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
			},
		},
		["Daggny - Frostwolf"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Tosku - Kil'jaeden"] = {
			["currentTutorial"] = 2,
			["hideTutorial"] = true,
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Koutetsu - Frostwolf"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Yorman - Kil'jaeden"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
			},
		},
		["Default"] = {
			["databars"] = {
				["experience"] = {
					["orientation"] = "HORIZONTAL",
				},
				["honor"] = {
					["enable"] = false,
				},
			},
			["currentTutorial"] = 1,
			["sle"] = {
				["databars"] = {
					["artifact"] = {
						["chatfilter"] = {
							["enable"] = true,
							["style"] = "STYLE2",
						},
					},
					["exp"] = {
						["chatfilter"] = {
							["enable"] = true,
							["style"] = "STYLE2",
						},
					},
					["rep"] = {
						["chatfilter"] = {
							["enable"] = true,
							["styleDec"] = "STYLE2",
							["style"] = "STYLE2",
						},
					},
					["honor"] = {
						["chatfilter"] = {
							["awardStyle"] = "STYLE2",
							["style"] = "STYLE2",
							["enable"] = true,
						},
					},
				},
				["raidmarkers"] = {
					["enable"] = false,
				},
				["media"] = {
					["fonts"] = {
						["zone"] = {
							["font"] = "UbuntuCondensed",
						},
					},
				},
				["tooltip"] = {
					["RaidProg"] = {
						["enable"] = true,
					},
				},
				["dt"] = {
					["durability"] = {
						["gradient"] = true,
					},
				},
				["minimap"] = {
					["instance"] = {
						["fontSize"] = 14,
						["font"] = "UbuntuCondensed",
					},
				},
				["raidmanager"] = {
					["roles"] = true,
				},
				["skins"] = {
					["objectiveTracker"] = {
						["classHeader"] = true,
						["underlineClass"] = true,
					},
					["merchant"] = {
						["list"] = {
							["subFont"] = "UbuntuCondensed",
							["nameFont"] = "UbuntuCondensed",
						},
					},
					["talkinghead"] = {
						["hide"] = true,
					},
				},
				["Armory"] = {
					["Character"] = {
						["Enchant"] = {
							["WarningIconOnly"] = true,
							["Font"] = "UbuntuCondensed",
						},
						["Durability"] = {
							["Display"] = "DamagedOnly",
							["Font"] = "UbuntuCondensed",
						},
						["Level"] = {
							["Font"] = "UbuntuCondensed",
						},
						["Gradation"] = {
							["ItemQuality"] = true,
						},
						["Artifact"] = {
							["Font"] = "UbuntuCondensed",
						},
					},
					["Inspect"] = {
						["Enchant"] = {
							["WarningIconOnly"] = true,
						},
						["Guild"] = {
							["Font"] = "UbuntuCondensed",
						},
						["tabsText"] = {
							["Font"] = "UbuntuCondensed",
						},
						["Spec"] = {
							["Font"] = "UbuntuCondensed",
						},
						["LevelRace"] = {
							["Font"] = "UbuntuCondensed",
						},
						["Title"] = {
							["Font"] = "UbuntuCondensed",
						},
						["pvpText"] = {
							["Font"] = "UbuntuCondensed",
						},
						["Name"] = {
							["Font"] = "UbuntuCondensed",
						},
						["infoTabs"] = {
							["Font"] = "UbuntuCondensed",
						},
						["pvpRating"] = {
							["Font"] = "UbuntuCondensed",
						},
						["Level"] = {
							["Font"] = "UbuntuCondensed",
						},
						["pvpType"] = {
							["Font"] = "UbuntuCondensed",
						},
						["pvpRecord"] = {
							["Font"] = "UbuntuCondensed",
						},
					},
				},
				["quests"] = {
					["visibility"] = {
						["dungeon"] = "COLLAPSED",
						["orderhall"] = "COLLAPSED",
						["combat"] = "FULL",
						["enable"] = true,
						["garrison"] = "COLLAPSED",
						["rested"] = "COLLAPSED",
					},
				},
				["screensaver"] = {
					["subtitle"] = {
						["font"] = "UbuntuCondensed",
					},
					["title"] = {
						["font"] = "UbuntuCondensed",
					},
					["date"] = {
						["font"] = "UbuntuCondensed",
					},
					["player"] = {
						["font"] = "UbuntuCondensed",
					},
					["tips"] = {
						["font"] = "UbuntuCondensed",
					},
				},
			},
			["movers"] = {
				["RaidMarkerBarAnchor"] = "TOP,ElvUIParent,TOP,-530,-4",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,140",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,1449,667",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["GMMover"] = "TOP,ElvUIParent,TOP,-572,-118",
				["BossButton"] = "TOP,ElvUIParent,TOP,110,-300",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,917,-278",
				["ZoneAbility"] = "TOP,ElvUIParent,TOP,-110,-300",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,986,324",
				["ElvUF_FocusMover"] = "TOP,ElvUIParent,TOP,-257,-524",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,641,-27",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,445,627",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,450",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,4",
				["ElvAB_2"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,38",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-648,-4",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,72",
				["ElvAB_5"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,413,106",
				["SquareMinimapBar"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-746,-580",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-54,-204",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-258,-150",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ArenaHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,447,269",
				["RaidUtility_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,941,0",
				["ElvAB_6"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1027,-4",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,823,4",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,447,269",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-278,132",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,622,194",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,562,779",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,76",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,-390,-620",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,525,667",
			},
			["bags"] = {
				["countFontSize"] = 12,
				["countFont"] = "UbuntuCondensed",
				["itemLevelFont"] = "UbuntuCondensed",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["itemLevelFontSize"] = 12,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 12,
				["tabFont"] = "UbuntuCondensed",
				["keywords"] = "",
				["editBoxPosition"] = "ABOVE_CHAT",
				["font"] = "UbuntuCondensed",
				["panelColor"] = {
					["a"] = 0.96000000089407,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["panelHeight"] = 200,
				["timeStampFormat"] = "%H:%M ",
				["panelColorConverted"] = true,
				["tapFontSize"] = 12,
				["panelWidth"] = 411,
			},
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["debuffs"] = {
					["countFontSize"] = 12,
					["durationFontSize"] = 12,
				},
				["font"] = "UbuntuCondensed",
				["fontOutline"] = "OUTLINE",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["customhealthbackdrop"] = true,
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["health"] = {
						["r"] = 0.101960784313725,
						["g"] = 0.101960784313725,
						["b"] = 0.101960784313725,
					},
					["health_backdrop"] = {
						["r"] = 0.101960784313725,
						["g"] = 0.101960784313725,
						["b"] = 0.101960784313725,
					},
					["castColor"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["debuffHighlight"] = {
						["Magic"] = {
							["a"] = 0.700000017881393,
						},
					},
					["colorhealthbyvalue"] = false,
					["healthclass"] = true,
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "UbuntuCondensed",
				["statusbar"] = "Minimalist",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["castbar"] = {
							["height"] = 28,
							["width"] = 406,
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
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["power"] = {
							["enable"] = false,
							["width"] = "spaced",
						},
						["height"] = 20,
						["width"] = 80,
					},
					["focus"] = {
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["power"] = {
							["width"] = "spaced",
						},
					},
					["arena"] = {
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["power"] = {
							["width"] = "spaced",
						},
						["enable"] = false,
						["height"] = 40,
						["width"] = 240,
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
							["enable"] = true,
							["perrow"] = 1,
							["xOffset"] = 50,
							["yOffset"] = -6,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["rdebuffs"] = {
							["font"] = "UbuntuCondensed",
						},
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
							["font"] = "UbuntuCondensed",
						},
						["growthDirection"] = "LEFT_UP",
					},
					["raidpet"] = {
						["enable"] = true,
						["groupBy"] = "GROUP",
						["visibility"] = "show",
						["growthDirection"] = "RIGHT_DOWN",
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "LEFT",
							["yOffset"] = 0,
						},
						["debuffs"] = {
							["sizeOverride"] = 0,
						},
						["power"] = {
							["width"] = "spaced",
						},
						["healPrediction"] = {
							["enable"] = true,
						},
						["numGroups"] = 8,
						["growthDirection"] = "LEFT_DOWN",
						["width"] = 90,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "",
						},
						["name"] = {
							["text_format"] = "[name:short]",
						},
						["groupBy"] = "ROLE",
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 0,
						},
						["visibility"] = "show",
						["rdebuffs"] = {
							["fontSize"] = 12,
							["fontOutline"] = "OUTLINE",
							["xOffset"] = 34,
							["duration"] = {
								["color"] = {
									["a"] = 0,
									["g"] = 0.901960784313726,
								},
								["position"] = "TOPLEFT",
							},
							["font"] = "UbuntuCondensed",
							["size"] = 18,
						},
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["castbar"] = {
							["width"] = 240,
						},
						["customTexts"] = {
							["Target"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 0,
								["text_format"] = "",
								["yOffset"] = 0,
								["font"] = "UbuntuCondensed",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 12,
							},
						},
						["width"] = 240,
						["name"] = {
							["xOffset"] = 10,
							["text_format"] = "[name:long] [difficultycolor][smartlevel] [shortclassification]",
							["position"] = "LEFT",
						},
						["power"] = {
							["text_format"] = "",
							["width"] = "spaced",
						},
						["height"] = 40,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["power"] = {
							["width"] = "spaced",
						},
						["height"] = 40,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
						},
						["name"] = {
							["text_format"] = "[name:medium]",
						},
						["width"] = 240,
					},
				},
			},
			["datatexts"] = {
				["font"] = "UbuntuCondensed",
				["time24"] = true,
				["panels"] = {
					["LeftMiniPanel"] = "Time",
					["RightMiniPanel"] = "System",
					["RightChatDataPanel"] = {
						["right"] = "Accountant_Classic",
						["left"] = "Durability",
						["middle"] = "BugSack",
					},
					["LeftChatDataPanel"] = {
						["middle"] = "War Resources",
						["right"] = "SavedInstances",
					},
				},
				["goldFormat"] = "CONDENSED",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttons"] = 4,
				},
				["bar2"] = {
					["enabled"] = true,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
				["font"] = "UbuntuCondensed",
				["fontOutline"] = "OUTLINE",
				["stanceBar"] = {
					["enabled"] = false,
				},
				["barPet"] = {
					["mouseover"] = true,
					["buttonsPerRow"] = 10,
					["point"] = "BOTTOMLEFT",
					["backdrop"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["layoutSet"] = "healer",
			["general"] = {
				["totems"] = {
					["enable"] = false,
				},
				["autoAcceptInvite"] = true,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["minimap"] = {
					["locationFont"] = "UbuntuCondensed",
				},
				["font"] = "UbuntuCondensed",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.96000000089407,
					["r"] = 0.0549019607843137,
					["g"] = 0.0549019607843137,
					["b"] = 0.0549019607843137,
				},
				["valuecolor"] = {
					["r"] = 0.09,
					["g"] = 0.513,
					["b"] = 0.819,
				},
				["objectiveFrameHeight"] = 600,
			},
			["nameplates"] = {
				["font"] = "UbuntuCondensed",
			},
			["tooltip"] = {
				["font"] = "UbuntuCondensed",
				["healthBar"] = {
					["font"] = "UbuntuCondensed",
				},
				["fontSize"] = 12,
			},
		},
		["Tosh - Kil'jaeden"] = {
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["currentTutorial"] = 2,
			["hideTutorial"] = true,
			["movers"] = {
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Toshtrial - The Forgotten Coast"] = {
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
		["Toshtrial - Ursin"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Yuumi - Kil'jaeden"] = {
			["currentTutorial"] = 2,
			["hideTutorial"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
			},
		},
		["Zallie - Frostwolf"] = {
			["currentTutorial"] = 1,
			["movers"] = {
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1436",
				["RightChatMover"] = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,0,19",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,0,19",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Zaemme - Kil'jaeden",
		["Toshtrial - Blood Furnace"] = "Toshtrial - Blood Furnace",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "Tosku - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
		["Toshtrial - The Forgotten Coast"] = "Toshtrial - The Forgotten Coast",
		["Toshtrial - Ursin"] = "Toshtrial - Ursin",
		["Yuumi - Kil'jaeden"] = "Yuumi - Kil'jaeden",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
	},
	["profiles"] = {
		["Zaemme - Kil'jaeden"] = {
			["general"] = {
				["normTex"] = "Minimalist",
				["glossTex"] = "Minimalist",
				["chatBubbles"] = "nobackdrop",
				["chatBubbleFontOutline"] = "OUTLINE",
				["chatBubbleFont"] = "DejaVu Sans",
				["namefont"] = "Friz Quadrata TT",
				["dmgfont"] = "Friz Quadrata TT",
			},
			["sle"] = {
				["module"] = {
					["screensaver"] = true,
				},
				["minimap"] = {
					["mapicons"] = {
						["skinmail"] = true,
						["skingarrison"] = true,
						["skindungeon"] = true,
						["enable"] = true,
					},
				},
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["skins"] = {
					["objectiveTracker"] = {
						["texture"] = "Minimalist",
					},
					["merchant"] = {
						["enable"] = true,
						["style"] = "List",
					},
				},
				["professions"] = {
					["deconButton"] = {
						["enable"] = false,
					},
				},
				["vehicle"] = {
					["enable"] = true,
				},
				["pvpreadydialogreset"] = true,
				["install_complete"] = "3.37",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["theme"] = "default",
			["install_complete"] = "10.73",
		},
		["Toshtrial - Blood Furnace"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Blood Furnace"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
		},
		["Daggny - Frostwolf"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
		},
		["Tosku - Kil'jaeden"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["install_complete"] = "3.37",
			},
			["install_complete"] = "10.73",
		},
		["Yorman - Kil'jaeden"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["skins"] = {
					["merchant"] = {
						["enable"] = true,
						["style"] = "List",
					},
				},
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["install_complete"] = "3.37",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["general"] = {
				["glossTex"] = "Minimalist",
				["normTex"] = "Minimalist",
				["namefont"] = "Friz Quadrata TT",
				["dmgfont"] = "Friz Quadrata TT",
			},
			["install_complete"] = "10.73",
		},
		["Koutetsu - Frostwolf"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
		},
		["Tosh - Kil'jaeden"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["install_complete"] = "3.482",
			},
			["install_complete"] = "10.82",
		},
		["Toshtrial - The Forgotten Coast"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["The Forgotten Coast"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
		},
		["Toshtrial - Ursin"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Ursin"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
		},
		["Yuumi - Kil'jaeden"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["skins"] = {
					["merchant"] = {
						["enable"] = true,
						["style"] = "List",
					},
				},
				["install_complete"] = "3.37",
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["general"] = {
				["normTex"] = "Minimalist",
				["chatBubbleFont"] = "UbuntuCondensed",
				["dmgfont"] = "Friz Quadrata TT",
				["namefont"] = "Friz Quadrata TT",
				["glossTex"] = "Minimalist",
			},
			["install_complete"] = "10.73",
		},
		["Zallie - Frostwolf"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
			["install_complete"] = "10.82",
		},
	},
}
