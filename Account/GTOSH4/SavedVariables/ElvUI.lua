
ElvDB = {
	["sle"] = {
		["TimePlayed"] = {
			["Kil'jaeden"] = {
				["Toshmonk"] = {
					["Class"] = "MONK",
					["Level"] = 120,
					["TotalTime"] = 1714036,
					["LevelTime"] = 1200042,
				},
			},
		},
	},
	["SLE_DB_Ver"] = "3.63",
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Toshpriest - Area 52"] = {
					"Default", -- [1]
					"Default", -- [2]
					"DefaultDPS", -- [3]
					["enabled"] = true,
				},
				["Toshdk - Kil'jaeden"] = {
					["enabled"] = false,
				},
				["Toshpal - Kil'jaeden"] = {
					"Default", -- [1]
					"DefaultDPS", -- [2]
					"DefaultDPS", -- [3]
					["enabled"] = true,
				},
				["Toshpal - Area 52"] = {
					"Default", -- [1]
					"Default", -- [2]
					"DefaultDPS", -- [3]
					["enabled"] = true,
				},
			},
		},
	},
	["class"] = {
		["Area 52"] = {
			["Toshpriest"] = "PRIEST",
			["Toshpal"] = "PALADIN",
			["Toshaman"] = "SHAMAN",
		},
		["Blood Furnace"] = {
			["Toshtrial"] = "MAGE",
		},
		["Illidan"] = {
			["Toshpriest"] = "PRIEST",
			["Toshpala"] = "PALADIN",
		},
		["Eldre'Thalas"] = {
			["Toshlongboy"] = "PRIEST",
		},
		["The Forgotten Coast"] = {
			["Toshtrial"] = "PRIEST",
		},
		["Greymane"] = {
			["Toshmoney"] = "PRIEST",
		},
		["Frostwolf"] = {
			["Zallie"] = "PRIEST",
			["Daggny"] = "MONK",
			["Sumex"] = "DEATHKNIGHT",
			["Tosh"] = "ROGUE",
			["Koutetsu"] = "SHAMAN",
		},
		["Kil'jaeden"] = {
			["Yorman"] = "DRUID",
			["Toshdk"] = "DEATHKNIGHT",
			["Toshaman"] = "SHAMAN",
			["Toshmonk"] = "MONK",
			["Tosku"] = "DEMONHUNTER",
			["Toshpal"] = "PALADIN",
			["Toshwar"] = "WARRIOR",
		},
		["Quel'dorei"] = {
			["Toshmoney"] = "WARLOCK",
		},
	},
	["profiles"] = {
		["Toshdk - Kil'jaeden"] = {
			["currentTutorial"] = 2,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1445",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Daggny - Frostwolf"] = {
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1445",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Toshmoney - Quel'dorei"] = {
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["unitframe"] = {
				["units"] = {
					["raid"] = {
						["numGroups"] = 6,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
		},
		["Toshmoney - Greymane"] = {
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
		},
		["Zallie - Frostwolf"] = {
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["movers"] = {
			},
		},
		["Toshpriest - Illidan"] = {
			["currentTutorial"] = 1,
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["movers"] = {
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["bordercolor"] = {
					["b"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["r"] = 0.30588235294118,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["font"] = "Expressway",
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
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
			},
			["bags"] = {
				["countFontSize"] = 9,
				["itemLevelFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["panelColor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["tabFontSize"] = 11,
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["fadeTabsNoBackdrop"] = false,
				["panelColorConverted"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelBackdrop"] = "HIDEBOTH",
			},
			["unitframe"] = {
				["fontSize"] = 9,
				["fontOutline"] = "THICKOUTLINE",
				["statusbar"] = "ElvUI Blank",
				["font"] = "Expressway",
				["smoothbars"] = true,
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
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
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
						["name"] = {
							["position"] = "LEFT",
						},
						["width"] = 140,
						["height"] = 28,
						["health"] = {
							["yOffset"] = -6,
						},
						["visibility"] = "[nogroup] hide;show",
						["groupsPerRowCol"] = 5,
					},
					["player"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["perrow"] = 7,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["castbar"] = {
							["iconSize"] = 54,
							["height"] = 35,
							["iconAttached"] = false,
							["width"] = 478,
						},
						["height"] = 80,
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
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
							["enable"] = true,
							["height"] = 17,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["threatStyle"] = "NONE",
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
							["anchorPoint"] = "BOTTOM",
							["numrows"] = 4,
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["healPrediction"] = {
							["enable"] = true,
						},
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["height"] = 59,
						["verticalSpacing"] = 0,
						["width"] = 110,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["width"] = 122,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["font"] = "Expressway",
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["BottomMiniPanel"] = "Time",
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
			["v11NamePlateReset"] = true,
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["font"] = "Expressway",
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
			},
		},
		["Toshpriest - Area 52"] = {
			["currentTutorial"] = 2,
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["DefaultDPS"] = {
			["databars"] = {
				["honor"] = {
					["enable"] = false,
				},
				["experience"] = {
					["height"] = 20,
					["orientation"] = "HORIZONTAL",
					["width"] = 800,
				},
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["font"] = "Friz Quadrata TT",
					["height"] = 10,
					["width"] = 180,
				},
			},
			["currentTutorial"] = 3,
			["general"] = {
				["fontSize"] = 11,
				["itemLevel"] = {
					["displayInspectInfo"] = false,
					["enchantFont"] = "Expressway",
					["displayCharacterInfo"] = false,
					["itemLevelFont"] = "Expressway",
				},
				["backdropcolor"] = {
					["r"] = 0.101960784313725,
					["g"] = 0.101960784313725,
					["b"] = 0.101960784313725,
				},
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Friz Quadrata TT",
					["size"] = 180,
				},
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
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 11,
				["panelWidth"] = 500,
				["timeStampFormat"] = "%H:%M ",
				["keywords"] = "",
				["separateSizes"] = true,
				["font"] = "Friz Quadrata TT",
				["panelHeightRight"] = 175,
				["panelColorConverted"] = true,
				["tabFont"] = "Friz Quadrata TT",
				["panelHeight"] = 200,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelWidthRight"] = 610,
				["tapFontSize"] = 11,
				["panelBackdrop"] = "LEFT",
			},
			["layoutSet"] = "healer",
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-198",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,675,34",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,496",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,220,-4",
				["BuffsMover"] = "TOP,ElvUIParent,TOP,284,-4",
				["BossButton"] = "TOP,ElvUIParent,TOP,-356,-616",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,-422,-114",
				["ZoneAbility"] = "TOP,ElvUIParent,TOP,-249,-617",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-1039,471",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1060,-4",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,337,469",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,393,431",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-186",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,675,0",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,741,-66",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,-185",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,742,-4",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-359",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,742,-35",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,18,-4",
				["VehicleLeaveButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-152,-152",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,452,202",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,549",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-235",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-77",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,39,884",
				["ElvUF_TargetCastbarMover"] = "TOP,ElvUIParent,TOP,482,-529",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-197,-4",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,0",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,35,-425",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,476,4",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-553,305",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-335,473",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-275",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,284,-150",
				["ElvUF_PlayerCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,912,-262",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 11,
				["healthBar"] = {
					["font"] = "Friz Quadrata TT",
				},
				["headerFontSize"] = 11,
				["font"] = "Friz Quadrata TT",
				["smallTextFontSize"] = 11,
			},
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
				["datatexts"] = {
					["rightchat"] = {
						["width"] = 600,
					},
				},
				["quests"] = {
					["visibility"] = {
						["enable"] = true,
					},
				},
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
					["power"] = {
						["MANA"] = {
							["r"] = 0.309803921568627,
							["g"] = 0.450980392156863,
							["b"] = 0.631372549019608,
						},
					},
				},
				["smartRaidFilter"] = false,
				["statusbar"] = "Smooth v2",
				["fontOutline"] = "OUTLINE",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Friz Quadrata TT",
						},
						["numGroups"] = 6,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["sizeOverride"] = 22,
							["clickThrough"] = true,
							["enable"] = true,
							["yOffset"] = -6,
							["xOffset"] = 50,
							["perrow"] = 1,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["boss"] = {
						["spacing"] = 20,
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 28,
							["yOffset"] = -15,
							["perrow"] = 16,
						},
						["health"] = {
							["position"] = "BOTTOMLEFT",
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:current-percent]",
							["yOffset"] = 2,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 16,
						},
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 28,
							["yOffset"] = 15,
							["fontSize"] = 12,
							["perrow"] = 16,
						},
						["name"] = {
							["xOffset"] = 6,
							["position"] = "TOPLEFT",
							["yOffset"] = -2,
						},
						["width"] = 220,
					},
					["raid40"] = {
						["height"] = 30,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["growthDirection"] = "LEFT_UP",
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 26,
							["timeToHold"] = 1,
						},
					},
					["target"] = {
						["debuffs"] = {
							["numrows"] = 2,
							["sizeOverride"] = 28,
							["yOffset"] = 1,
							["attachTo"] = "FRAME",
							["perrow"] = 4,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[power:current]",
							["height"] = 12,
						},
						["width"] = 240,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["iconXOffset"] = 0,
							["iconSize"] = 18,
							["overlayOnFrame"] = "Power",
							["iconAttachedTo"] = "Castbar",
							["timeToHold"] = 1,
							["width"] = 240,
						},
						["height"] = 40,
						["buffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 28,
							["yOffset"] = 1,
							["numrows"] = 2,
							["perrow"] = 4,
						},
						["name"] = {
							["xOffset"] = 6,
							["position"] = "LEFT",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["arena"] = {
						["enable"] = false,
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
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "LEFT_UP",
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["clickThrough"] = true,
							["enable"] = true,
							["yOffset"] = -6,
							["xOffset"] = 50,
							["perrow"] = 1,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["verticalSpacing"] = 9,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["power"] = {
							["enable"] = false,
							["text_format"] = "[powercolor][mouseover][power:current]",
							["height"] = 3,
						},
						["width"] = 240,
						["aurabar"] = {
							["enable"] = false,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][mouseover][health:current-percent]",
						},
						["castbar"] = {
							["enable"] = false,
							["insideInfoPanel"] = false,
							["height"] = 28,
							["width"] = 406,
						},
						["height"] = 35,
						["buffs"] = {
							["attachTo"] = "FRAME",
						},
						["classbar"] = {
							["height"] = 3,
							["enable"] = false,
						},
						["pvp"] = {
							["text_format"] = "",
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["minimapBottom"] = true,
				["goldFormat"] = "CONDENSED",
				["time24"] = true,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["middle"] = "BfA Missions",
						["right"] = "Currencies",
					},
					["BottomMiniPanel"] = "Time",
					["LeftChatDataPanel"] = {
						["right"] = "BugSack",
						["left"] = "Accountant_Classic",
						["middle"] = "SavedInstances",
					},
				},
				["font"] = "Friz Quadrata TT",
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
				["fontSize"] = 12,
				["chargeCooldown"] = true,
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 42,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
				["hideCooldownBling"] = true,
				["hotkeyTextPosition"] = "TOPLEFT",
				["font"] = "Expressway",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["hotkeyTextYOffset"] = 0,
				["stanceBar"] = {
					["enabled"] = false,
				},
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["bar4"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["point"] = "BOTTOMLEFT",
					["backdrop"] = false,
				},
			},
			["nameplates"] = {
				["statusbar"] = "ElvUI Blank",
				["font"] = "Friz Quadrata TT",
			},
			["bags"] = {
				["countFontSize"] = 11,
				["countFont"] = "Friz Quadrata TT",
				["itemLevelFont"] = "Friz Quadrata TT",
				["itemLevelFontSize"] = 11,
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Expressway",
					["fontSize"] = 14,
				},
			},
			["auras"] = {
				["font"] = "Friz Quadrata TT",
				["buffs"] = {
					["sortDir"] = "+",
					["growthDirection"] = "RIGHT_DOWN",
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["fontOutline"] = "OUTLINE",
			},
		},
		["Toshpal - Area 52"] = {
			["currentTutorial"] = 1,
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["movers"] = {
			},
		},
		["Toshpala - Illidan"] = {
			["currentTutorial"] = 2,
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
		},
		["Toshaman - Area 52"] = {
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["movers"] = {
			},
		},
		["Default"] = {
			["databars"] = {
				["honor"] = {
					["enable"] = false,
				},
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["font"] = "Friz Quadrata TT",
					["height"] = 10,
					["width"] = 180,
				},
			},
			["currentTutorial"] = 3,
			["sle"] = {
				["skins"] = {
					["merchant"] = {
						["list"] = {
							["subFont"] = "Friz Quadrata TT",
							["nameFont"] = "Friz Quadrata TT",
						},
					},
					["talkinghead"] = {
						["hide"] = true,
					},
				},
				["raidmarkers"] = {
					["enable"] = false,
				},
				["datatexts"] = {
					["rightchat"] = {
						["width"] = 600,
					},
				},
				["quests"] = {
					["visibility"] = {
						["enable"] = true,
					},
				},
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 11,
				["panelBackdrop"] = "LEFT",
				["tabFont"] = "Friz Quadrata TT",
				["keywords"] = "",
				["separateSizes"] = true,
				["panelColorConverted"] = true,
				["panelHeightRight"] = 175,
				["font"] = "Friz Quadrata TT",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeight"] = 200,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 610,
				["tapFontSize"] = 11,
				["panelWidth"] = 500,
			},
			["layoutSet"] = "healer",
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-198",
				["ElvUF_PlayerCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,912,-262",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,496",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOP,ElvUIParent,TOP,-205,-4",
				["BuffsMover"] = "TOP,ElvUIParent,TOP,284,-4",
				["BossButton"] = "TOP,ElvUIParent,TOP,-386,-692",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,-422,-114",
				["ZoneAbility"] = "TOP,ElvUIParent,TOP,-303,-692",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,986,-377",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,681,84",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1060,-4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,470,527",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,680,38",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,774,-4",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-186",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,680,4",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,774,-66",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,-185",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,681,104",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-386,342",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,774,-35",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,18,-4",
				["VehicleLeaveButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-186,-148",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-385,324",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,39,884",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-235",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-77",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,536,-710",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,502,4",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-197,-4",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,35,-425",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,470,503",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,470,107",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,451,202",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-275",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,284,-150",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-981,531",
			},
			["tooltip"] = {
				["textFontSize"] = 11,
				["fontSize"] = 11,
				["healthBar"] = {
					["font"] = "Friz Quadrata TT",
				},
				["smallTextFontSize"] = 11,
				["font"] = "Friz Quadrata TT",
				["headerFontSize"] = 11,
			},
			["general"] = {
				["fontSize"] = 11,
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
					["enchantFont"] = "Expressway",
					["displayCharacterInfo"] = false,
					["displayInspectInfo"] = false,
				},
				["backdropcolor"] = {
					["r"] = 0.101960784313725,
					["g"] = 0.101960784313725,
					["b"] = 0.101960784313725,
				},
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["size"] = 180,
					["locationFont"] = "Friz Quadrata TT",
				},
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
			},
			["unitframe"] = {
				["fontSize"] = 11,
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
					["power"] = {
						["MANA"] = {
							["r"] = 0.309803921568627,
							["g"] = 0.450980392156863,
							["b"] = 0.631372549019608,
						},
					},
				},
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "ElvUI Blank",
				["smartRaidFilter"] = false,
				["font"] = "Friz Quadrata TT",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
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
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["growthDirection"] = "LEFT_UP",
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["clickThrough"] = true,
							["enable"] = true,
							["perrow"] = 1,
							["xOffset"] = 50,
							["yOffset"] = -6,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["width"] = 80,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["enable"] = false,
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["attachTo"] = "FRAME",
							["numrows"] = 2,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[power:current]",
							["height"] = 12,
						},
						["customTexts"] = {
							["NameLarger"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
								["yOffset"] = 0,
								["font"] = "Friz Quadrata TT",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
						},
						["width"] = 220,
						["name"] = {
							["xOffset"] = 6,
							["text_format"] = "",
							["position"] = "LEFT",
						},
						["castbar"] = {
							["iconXOffset"] = 0,
							["iconAttachedTo"] = "Castbar",
							["iconSize"] = 18,
							["timeToHold"] = 1,
							["width"] = 220,
						},
						["height"] = 40,
						["buffs"] = {
							["numrows"] = 2,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
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
						["width"] = 240,
						["pvp"] = {
							["text_format"] = "",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][mouseover][health:current-percent]",
						},
						["power"] = {
							["text_format"] = "[powercolor][mouseover][power:current]",
							["height"] = 15,
						},
						["height"] = 16,
						["buffs"] = {
							["attachTo"] = "FRAME",
						},
						["classbar"] = {
							["height"] = 6,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 30,
						["rdebuffs"] = {
							["font"] = "Friz Quadrata TT",
						},
						["enable"] = false,
						["growthDirection"] = "LEFT_UP",
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 26,
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
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Friz Quadrata TT",
						},
						["numGroups"] = 6,
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["clickThrough"] = true,
							["enable"] = true,
							["perrow"] = 1,
							["xOffset"] = 50,
							["yOffset"] = -6,
						},
						["verticalSpacing"] = 9,
					},
					["boss"] = {
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 28,
							["perrow"] = 16,
							["yOffset"] = -15,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 16,
						},
						["customTexts"] = {
							["NameLarger"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 4,
								["text_format"] = "[namecolor][name:medium]",
								["yOffset"] = 0,
								["font"] = "Friz Quadrata TT",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
						},
						["width"] = 220,
						["name"] = {
							["xOffset"] = 6,
							["yOffset"] = -2,
							["text_format"] = "",
							["position"] = "TOPLEFT",
						},
						["spacing"] = 20,
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["fontSize"] = 12,
							["perrow"] = 16,
							["sizeOverride"] = 28,
							["yOffset"] = 15,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "RIGHT",
							["xOffset"] = -2,
							["bgUseBarTexture"] = false,
							["text_format"] = "[healthcolor][health:current-percent]",
							["yOffset"] = -2,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["minimapBottom"] = true,
				["goldFormat"] = "CONDENSED",
				["time24"] = true,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["middle"] = "BfA Missions",
						["right"] = "Currencies",
					},
					["BottomMiniPanel"] = "Time",
					["LeftChatDataPanel"] = {
						["right"] = "BugSack",
						["left"] = "Accountant_Classic",
						["middle"] = "SavedInstances",
					},
				},
				["font"] = "Friz Quadrata TT",
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
				["fontSize"] = 12,
				["bar4"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["point"] = "BOTTOMLEFT",
					["backdrop"] = false,
				},
				["microbar"] = {
					["buttonsPerRow"] = 12,
				},
				["hideCooldownBling"] = true,
				["bar5"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 42,
				},
				["font"] = "Expressway",
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["hotkeyTextYOffset"] = 0,
				["stanceBar"] = {
					["enabled"] = false,
				},
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["chargeCooldown"] = true,
			},
			["nameplates"] = {
				["font"] = "Friz Quadrata TT",
				["statusbar"] = "ElvUI Blank",
			},
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
					["sortDir"] = "+",
					["growthDirection"] = "RIGHT_DOWN",
				},
				["font"] = "Friz Quadrata TT",
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["fontOutline"] = "OUTLINE",
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Expressway",
					["fontSize"] = 14,
				},
			},
			["bags"] = {
				["countFontSize"] = 11,
				["countFont"] = "Friz Quadrata TT",
				["itemLevelFont"] = "Friz Quadrata TT",
				["itemLevelFontSize"] = 11,
			},
		},
		["Koutetsu - Frostwolf"] = {
			["currentTutorial"] = 2,
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["unitframe"] = {
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focus"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["v11NamePlateReset"] = true,
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1445",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Toshlongboy - Eldre'Thalas"] = {
			["currentTutorial"] = 2,
			["hideTutorial"] = true,
			["movers"] = {
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["v11NamePlateReset"] = true,
		},
		["Tosh - Frostwolf"] = {
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
		},
		["Sumex - Frostwolf"] = {
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
			["movers"] = {
			},
		},
		["Toshwar - Kil'jaeden"] = {
			["currentTutorial"] = 1,
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
				},
			},
			["v11NamePlateReset"] = true,
			["movers"] = {
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
	},
	["profileKeys"] = {
		["Toshdk - Kil'jaeden"] = "DefaultDPS",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "DefaultDPS",
		["Toshpriest - Area 52"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Toshmoney - Greymane"] = "Toshmoney - Greymane",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
		["Toshpal - Kil'jaeden"] = "Default",
		["Toshpriest - Illidan"] = "Toshpriest - Illidan",
		["Toshpala - Illidan"] = "Toshpala - Illidan",
		["Toshaman - Kil'jaeden"] = "Default",
		["Toshmoney - Quel'dorei"] = "Toshmoney - Quel'dorei",
		["Toshpal - Area 52"] = "Default",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Toshaman - Area 52"] = "Toshaman - Area 52",
		["Tosh - Frostwolf"] = "Tosh - Frostwolf",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshlongboy - Eldre'Thalas"] = "Toshlongboy - Eldre'Thalas",
		["Toshtrial - Blood Furnace"] = "Default",
		["Sumex - Frostwolf"] = "Sumex - Frostwolf",
		["Toshwar - Kil'jaeden"] = "DefaultDPS",
	},
	["gold"] = {
		["Area 52"] = {
			["Toshpriest"] = 10000,
			["Toshpal"] = 2993111350,
			["Toshaman"] = 0,
		},
		["Blood Furnace"] = {
			["Toshtrial"] = 78000,
		},
		["Illidan"] = {
			["Toshpriest"] = 0,
			["Toshpala"] = 10000,
		},
		["Eldre'Thalas"] = {
			["Toshlongboy"] = 28500010000,
		},
		["The Forgotten Coast"] = {
			["Toshtrial"] = 78000,
		},
		["Greymane"] = {
			["Toshmoney"] = 9900,
		},
		["Frostwolf"] = {
			["Zallie"] = 12158607,
			["Daggny"] = 46394474,
			["Sumex"] = 12828366,
			["Tosh"] = 14489391,
			["Koutetsu"] = 17444885,
		},
		["Kil'jaeden"] = {
			["Toshdk"] = 102000,
			["Yorman"] = 1537117866,
			["Toshaman"] = 100000,
			["Tosku"] = 962375231,
			["Toshmonk"] = 1023673258,
			["Tosh"] = 1187660718,
			["Toshpal"] = 2033179838,
			["Toshwar"] = 10000,
		},
		["Quel'dorei"] = {
			["Toshmoney"] = 10000,
		},
	},
	["global"] = {
		["sle"] = {
			["advanced"] = {
				["gameMenu"] = {
					["enable"] = false,
				},
				["general"] = true,
				["confirmed"] = true,
			},
		},
		["uiScale"] = "0.5333",
		["unitframe"] = {
			["ChannelTicks"] = {
				["Penance"] = 3,
				[47540] = 3,
			},
		},
		["general"] = {
			["AceGUI"] = {
				["height"] = 530,
				["top"] = 1193.55,
				["left"] = 923.06,
				["width"] = 830,
			},
			["mapAlphaWhenMoving"] = 0.6,
			["minUiScale"] = 0.2,
			["UIScale"] = 0.53,
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["SLErrorDisabledAddOns"] = {
	},
	["faction"] = {
		["Frostwolf"] = {
			["Zallie"] = "Horde",
			["Daggny"] = "Horde",
			["Sumex"] = "Horde",
			["Koutetsu"] = "Horde",
			["Tosh"] = "Horde",
		},
		["Illidan"] = {
			["Toshpriest"] = "Horde",
			["Toshpala"] = "Horde",
		},
		["Eldre'Thalas"] = {
			["Toshlongboy"] = "Horde",
		},
		["Greymane"] = {
			["Toshmoney"] = "Alliance",
		},
		["Area 52"] = {
			["Toshpriest"] = "Horde",
			["Toshpal"] = "Horde",
			["Toshaman"] = "Horde",
		},
		["Kil'jaeden"] = {
			["Toshwar"] = "Horde",
		},
		["Quel'dorei"] = {
			["Toshmoney"] = "Horde",
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Toshdk - Kil'jaeden"] = "Toshdk - Kil'jaeden",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "Tosku - Kil'jaeden",
		["Toshpriest - Area 52"] = "Toshpriest - Area 52",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Toshmoney - Greymane"] = "Toshmoney - Greymane",
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
		["Toshpal - Kil'jaeden"] = "Toshpal - Kil'jaeden",
		["Toshpriest - Illidan"] = "Toshpriest - Illidan",
		["Toshmoney - Quel'dorei"] = "Toshmoney - Quel'dorei",
		["Toshaman - Kil'jaeden"] = "Toshaman - Kil'jaeden",
		["Toshpala - Illidan"] = "Toshpala - Illidan",
		["Toshlongboy - Eldre'Thalas"] = "Toshlongboy - Eldre'Thalas",
		["Toshpal - Area 52"] = "Toshpal - Area 52",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Tosh - Frostwolf"] = "Tosh - Frostwolf",
		["Toshaman - Area 52"] = "Toshaman - Area 52",
		["Toshtrial - The Forgotten Coast"] = "Toshtrial - The Forgotten Coast",
		["Toshtrial - Blood Furnace"] = "Toshtrial - Blood Furnace",
		["Sumex - Frostwolf"] = "Sumex - Frostwolf",
		["Toshwar - Kil'jaeden"] = "Toshwar - Kil'jaeden",
	},
	["profiles"] = {
		["Toshdk - Kil'jaeden"] = {
			["general"] = {
				["dmgfont"] = "Friz Quadrata TT",
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["skins"] = {
				["cleanBossButton"] = true,
				["blizzard"] = {
					["character"] = false,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "11.27",
		},
		["Daggny - Frostwolf"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["install_complete"] = "BETA",
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
				["install_complete"] = "3.53",
			},
			["install_complete"] = "11.10",
		},
		["Toshpriest - Area 52"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Area 52"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = 11.372,
		},
		["Yorman - Kil'jaeden"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["install_complete"] = "3.5",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["general"] = {
				["dmgfont"] = "Friz Quadrata TT",
				["namefont"] = "Friz Quadrata TT",
			},
			["install_complete"] = "10.87",
		},
		["Toshmoney - Greymane"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Greymane"] = {
					},
				},
				["install_complete"] = "BETA",
			},
		},
		["Toshmonk - Kil'jaeden"] = {
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
			["general"] = {
				["voiceOverlay"] = true,
				["namefont"] = "Friz Quadrata TT",
				["dmgfont"] = "Friz Quadrata TT",
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
		["Zallie - Frostwolf"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["nameplates"] = {
				["enable"] = false,
			},
		},
		["Toshpal - Kil'jaeden"] = {
			["general"] = {
				["glossTex"] = "ElvUI Blank",
				["normTex"] = "ElvUI Blank",
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["install_complete"] = "3.5",
				["skins"] = {
					["merchant"] = {
						["enable"] = true,
						["style"] = "List",
					},
				},
				["chat"] = {
					["chatHistory"] = {
						["size"] = 500,
					},
				},
			},
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "10.87",
		},
		["Toshpriest - Illidan"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Illidan"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = 11.372,
		},
		["Toshmoney - Quel'dorei"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Quel'dorei"] = {
					},
				},
				["install_complete"] = "BETA",
			},
		},
		["Toshaman - Kil'jaeden"] = {
			["general"] = {
				["chatBubbles"] = "backdrop_noborder",
			},
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
				["install_complete"] = "3.5",
			},
			["install_complete"] = "10.87",
		},
		["Toshpala - Illidan"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Illidan"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = 11.41,
		},
		["Toshlongboy - Eldre'Thalas"] = {
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Eldre'Thalas"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = 11.41,
		},
		["Toshpal - Area 52"] = {
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["sle"] = {
				["characterGoldsSorting"] = {
					["Area 52"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = 11.41,
		},
		["Tosh - Kil'jaeden"] = {
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
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
				["dmgfont"] = "Friz Quadrata TT",
			},
			["install_complete"] = "10.85",
		},
		["Koutetsu - Frostwolf"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = "11.16",
		},
		["Tosh - Frostwolf"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["install_complete"] = "BETA",
			},
		},
		["Toshaman - Area 52"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Area 52"] = {
					},
				},
				["install_complete"] = "BETA",
			},
		},
		["Toshtrial - The Forgotten Coast"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["The Forgotten Coast"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
			["install_complete"] = "11.10",
		},
		["Toshtrial - Blood Furnace"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Blood Furnace"] = {
					},
				},
				["install_complete"] = "3.53",
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
			["install_complete"] = "11.10",
		},
		["Sumex - Frostwolf"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["install_complete"] = "BETA",
			},
		},
		["Toshwar - Kil'jaeden"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["install_complete"] = 11.371,
		},
	},
}
