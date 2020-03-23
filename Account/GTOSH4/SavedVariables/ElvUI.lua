
ElvDB = {
	["sle"] = {
		["TimePlayed"] = {
			["Kil'jaeden"] = {
				["Toshmonk"] = {
					["Level"] = 120,
					["Class"] = "MONK",
					["LevelTime"] = 1200042,
					["TotalTime"] = 1714036,
				},
			},
		},
	},
	["SLE_DB_Ver"] = "3.63",
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Toshpal - Kil'jaeden"] = {
					"Default", -- [1]
					"DefaultDPS", -- [2]
					"DefaultDPS", -- [3]
					["enabled"] = true,
				},
				["Toshdk - Kil'jaeden"] = {
					["enabled"] = false,
				},
			},
		},
	},
	["class"] = {
		["Blood Furnace"] = {
			["Toshtrial"] = "MAGE",
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
		["Frostwolf"] = {
			["Zallie"] = "PRIEST",
			["Daggny"] = "MONK",
			["Sumex"] = "DEATHKNIGHT",
			["Tosh"] = "ROGUE",
			["Koutetsu"] = "SHAMAN",
		},
		["The Forgotten Coast"] = {
			["Toshtrial"] = "PRIEST",
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
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
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
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["height"] = 59,
						["verticalSpacing"] = 0,
						["width"] = 110,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
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
		["DefaultDPS"] = {
			["databars"] = {
				["honor"] = {
					["enable"] = false,
				},
				["experience"] = {
					["width"] = 800,
					["orientation"] = "HORIZONTAL",
					["height"] = 20,
				},
				["azerite"] = {
					["width"] = 180,
					["font"] = "Friz Quadrata TT",
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
				},
			},
			["currentTutorial"] = 3,
			["general"] = {
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
				["fontSize"] = 11,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Friz Quadrata TT",
					["size"] = 180,
				},
				["bottomPanel"] = false,
				["backdropcolor"] = {
					["r"] = 0.101960784313725,
					["g"] = 0.101960784313725,
					["b"] = 0.101960784313725,
				},
				["itemLevel"] = {
					["displayInspectInfo"] = false,
					["itemLevelFont"] = "Expressway",
					["enchantFont"] = "Expressway",
					["displayCharacterInfo"] = false,
				},
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["font"] = "Friz Quadrata TT",
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M ",
				["separateSizes"] = true,
				["panelHeightRight"] = 175,
				["font"] = "Friz Quadrata TT",
				["tapFontSize"] = 11,
				["panelWidth"] = 500,
				["fontSize"] = 11,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelColorConverted"] = true,
				["tabFont"] = "Friz Quadrata TT",
				["panelHeight"] = 200,
				["panelWidthRight"] = 610,
				["panelBackdrop"] = "LEFT",
				["keywords"] = "",
			},
			["layoutSet"] = "healer",
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-198",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,675,34",
				["ElvUF_RaidMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,496",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,220,-4",
				["BuffsMover"] = "TOP,ElvUIParent,TOP,284,-4",
				["BossButton"] = "TOP,ElvUIParent,TOP,-386,-692",
				["LootFrameMover"] = "TOP,ElvUIParent,TOP,-422,-114",
				["ZoneAbility"] = "TOP,ElvUIParent,TOP,-303,-692",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,472,682",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1060,-4",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,167,428",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,214,380",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-186",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,675,0",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,741,-66",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,-185",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,742,-4",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,452,202",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-359",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,742,-35",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,18,-4",
				["VehicleLeaveButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-152,-152",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,549",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-235",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-77",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,39,884",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,0",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-197,-4",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,35,-425",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_TargetCastbarMover"] = "TOP,ElvUIParent,TOP,482,-529",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,470,107",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-177,429",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-553,305",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-275",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,284,-150",
				["ElvUF_PlayerCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,912,-262",
			},
			["tooltip"] = {
				["fontSize"] = 11,
				["headerFontSize"] = 11,
				["healthBar"] = {
					["font"] = "Friz Quadrata TT",
				},
				["textFontSize"] = 11,
				["font"] = "Friz Quadrata TT",
				["smallTextFontSize"] = 11,
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
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["raid"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
							["enable"] = true,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
							["xOffset"] = -4,
						},
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["enable"] = true,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["perrow"] = 1,
							["xOffset"] = 50,
						},
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
						["verticalSpacing"] = 9,
					},
					["assist"] = {
						["enable"] = false,
					},
					["party"] = {
						["debuffs"] = {
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
							["anchorPoint"] = "TOPRIGHT",
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
							["sizeOverride"] = 22,
							["enable"] = true,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["perrow"] = 1,
							["xOffset"] = 50,
						},
					},
					["raid40"] = {
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
							["height"] = 26,
							["timeToHold"] = 1,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["debuffs"] = {
							["sizeOverride"] = 28,
							["yOffset"] = 1,
							["numrows"] = 2,
							["perrow"] = 4,
							["attachTo"] = "FRAME",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["iconXOffset"] = 0,
							["iconSize"] = 18,
							["width"] = 240,
							["overlayOnFrame"] = "Power",
							["iconAttachedTo"] = "Castbar",
							["timeToHold"] = 1,
						},
						["width"] = 240,
						["name"] = {
							["position"] = "LEFT",
							["xOffset"] = 6,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[power:current]",
							["height"] = 12,
						},
						["height"] = 40,
						["buffs"] = {
							["sizeOverride"] = 28,
							["yOffset"] = 1,
							["anchorPoint"] = "TOPLEFT",
							["numrows"] = 2,
							["perrow"] = 4,
						},
					},
					["arena"] = {
						["enable"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["classbar"] = {
							["height"] = 3,
							["enable"] = false,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["enable"] = false,
							["insideInfoPanel"] = false,
							["width"] = 406,
							["height"] = 28,
						},
						["width"] = 240,
						["power"] = {
							["enable"] = false,
							["text_format"] = "[powercolor][mouseover][power:current]",
							["height"] = 3,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][mouseover][health:current-percent]",
						},
						["height"] = 35,
						["buffs"] = {
							["attachTo"] = "FRAME",
						},
						["pvp"] = {
							["text_format"] = "",
						},
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 28,
							["yOffset"] = -15,
							["anchorPoint"] = "RIGHT",
							["perrow"] = 16,
						},
						["spacing"] = 20,
						["name"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 6,
							["yOffset"] = -2,
						},
						["width"] = 220,
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOMLEFT",
							["text_format"] = "[healthcolor][health:current-percent]",
							["yOffset"] = 2,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 16,
						},
						["height"] = 50,
						["buffs"] = {
							["sizeOverride"] = 28,
							["yOffset"] = 15,
							["anchorPoint"] = "RIGHT",
							["perrow"] = 16,
							["fontSize"] = 12,
						},
					},
				},
				["statusbar"] = "Smooth v2",
				["colors"] = {
					["power"] = {
						["MANA"] = {
							["r"] = 0.309803921568627,
							["g"] = 0.450980392156863,
							["b"] = 0.631372549019608,
						},
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
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
				},
				["fontOutline"] = "OUTLINE",
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["goldFormat"] = "CONDENSED",
				["time24"] = true,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "Currencies",
						["middle"] = "BfA Missions",
					},
					["LeftChatDataPanel"] = {
						["right"] = "BugSack",
						["left"] = "Accountant_Classic",
						["middle"] = "SavedInstances",
					},
					["RightMiniPanel"] = "",
					["BottomMiniPanel"] = "Time",
				},
				["minimapBottom"] = true,
				["font"] = "Friz Quadrata TT",
			},
			["actionbar"] = {
				["bar3"] = {
					["enabled"] = false,
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
				},
				["hotkeyTextPosition"] = "TOPLEFT",
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["font"] = "Expressway",
				["hotkeyTextYOffset"] = 0,
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["fontSize"] = 12,
				["chargeCooldown"] = true,
				["hideCooldownBling"] = true,
				["bar5"] = {
					["enabled"] = false,
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 42,
				},
				["stanceBar"] = {
					["enabled"] = false,
				},
				["bar4"] = {
					["enabled"] = false,
					["point"] = "BOTTOMLEFT",
					["buttonsPerRow"] = 12,
					["backdrop"] = false,
				},
			},
			["nameplates"] = {
				["statusbar"] = "ElvUI Blank",
				["font"] = "Friz Quadrata TT",
			},
			["bags"] = {
				["itemLevelFont"] = "Friz Quadrata TT",
				["countFontSize"] = 11,
				["itemLevelFontSize"] = 11,
				["countFont"] = "Friz Quadrata TT",
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Expressway",
					["fontSize"] = 14,
				},
			},
			["auras"] = {
				["fontOutline"] = "OUTLINE",
				["font"] = "Friz Quadrata TT",
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["buffs"] = {
					["growthDirection"] = "RIGHT_DOWN",
					["sortDir"] = "+",
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
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
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 11,
				["panelBackdrop"] = "LEFT",
				["timeStampFormat"] = "%H:%M ",
				["keywords"] = "",
				["separateSizes"] = true,
				["panelColorConverted"] = true,
				["panelHeightRight"] = 175,
				["font"] = "Friz Quadrata TT",
				["tabFont"] = "Friz Quadrata TT",
				["panelHeight"] = 200,
				["editBoxPosition"] = "ABOVE_CHAT",
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
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,909,-4",
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
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,427,-4",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-186",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,680,4",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,427,-66",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,-185",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-385,324",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-386,342",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,427,-35",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,18,-4",
				["VehicleLeaveButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-186,-148",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,681,104",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,39,884",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-235",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-77",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,536,-710",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,35,-425",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-197,-4",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,470,503",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,502,4",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,470,107",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,451,202",
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
					["displayCharacterInfo"] = false,
					["enchantFont"] = "Expressway",
					["itemLevelFont"] = "Expressway",
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
					["pet"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
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
					["arena"] = {
						["enable"] = false,
					},
					["assist"] = {
						["enable"] = false,
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
							["sizeOverride"] = 28,
							["perrow"] = 16,
							["fontSize"] = 12,
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
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["attachTo"] = "FRAME",
							["numrows"] = 2,
						},
						["castbar"] = {
							["iconXOffset"] = 0,
							["iconSize"] = 18,
							["iconAttachedTo"] = "Castbar",
							["timeToHold"] = 1,
							["width"] = 220,
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
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[power:current]",
							["height"] = 12,
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
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["width"] = 80,
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
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 42,
				},
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
				["fontSize"] = 12,
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
				["statusbar"] = "ElvUI Blank",
				["font"] = "Friz Quadrata TT",
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
		["Toshpal - Kil'jaeden"] = "DefaultDPS",
		["Toshtrial - Blood Furnace"] = "Default",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Toshdk - Kil'jaeden"] = "DefaultDPS",
		["Toshaman - Kil'jaeden"] = "Default",
		["Tosku - Kil'jaeden"] = "Default",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Frostwolf"] = "Tosh - Frostwolf",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
		["Sumex - Frostwolf"] = "Sumex - Frostwolf",
		["Toshwar - Kil'jaeden"] = "DefaultDPS",
	},
	["faction"] = {
		["Frostwolf"] = {
			["Zallie"] = "Horde",
			["Daggny"] = "Horde",
			["Sumex"] = "Horde",
			["Koutetsu"] = "Horde",
			["Tosh"] = "Horde",
		},
		["Kil'jaeden"] = {
			["Toshwar"] = "Horde",
		},
	},
	["global"] = {
		["general"] = {
			["AceGUI"] = {
				["height"] = 600,
				["top"] = 1193.55,
				["left"] = 923.06,
				["width"] = 800,
			},
			["mapAlphaWhenMoving"] = 0.6,
			["minUiScale"] = 0.2,
			["UIScale"] = 0.53,
		},
		["uiScale"] = "0.5333",
		["unitframe"] = {
			["ChannelTicks"] = {
				["Penance"] = 3,
				[47540] = 3,
			},
		},
		["sle"] = {
			["advanced"] = {
				["gameMenu"] = {
					["enable"] = false,
				},
				["general"] = true,
				["confirmed"] = true,
			},
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["SLErrorDisabledAddOns"] = {
	},
	["gold"] = {
		["Blood Furnace"] = {
			["Toshtrial"] = 78000,
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
		["Frostwolf"] = {
			["Zallie"] = 12158607,
			["Daggny"] = 46394474,
			["Sumex"] = 12828366,
			["Tosh"] = 14489391,
			["Koutetsu"] = 17444885,
		},
		["The Forgotten Coast"] = {
			["Toshtrial"] = 78000,
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Toshpal - Kil'jaeden",
		["Toshtrial - Blood Furnace"] = "Toshtrial - Blood Furnace",
		["Toshdk - Kil'jaeden"] = "Toshdk - Kil'jaeden",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Toshaman - Kil'jaeden"] = "Toshaman - Kil'jaeden",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Tosku - Kil'jaeden"] = "Tosku - Kil'jaeden",
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Tosh - Frostwolf"] = "Tosh - Frostwolf",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
		["Toshtrial - The Forgotten Coast"] = "Toshtrial - The Forgotten Coast",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
		["Sumex - Frostwolf"] = "Sumex - Frostwolf",
		["Toshwar - Kil'jaeden"] = "Toshwar - Kil'jaeden",
	},
	["profiles"] = {
		["Toshpal - Kil'jaeden"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["chat"] = {
					["chatHistory"] = {
						["size"] = 500,
					},
				},
				["skins"] = {
					["merchant"] = {
						["enable"] = true,
						["style"] = "List",
					},
				},
				["install_complete"] = "3.5",
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["general"] = {
				["normTex"] = "ElvUI Blank",
				["glossTex"] = "ElvUI Blank",
			},
			["skins"] = {
				["parchmentRemover"] = {
					["enable"] = true,
				},
			},
			["install_complete"] = "10.87",
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
		["Toshdk - Kil'jaeden"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["install_complete"] = "BETA",
			},
			["general"] = {
				["dmgfont"] = "Friz Quadrata TT",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["bags"] = {
				["enable"] = false,
			},
			["skins"] = {
				["cleanBossButton"] = true,
				["blizzard"] = {
					["character"] = false,
				},
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
		["Tosku - Kil'jaeden"] = {
			["sle"] = {
				["pvpreadydialogreset"] = true,
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
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
		["Tosh - Frostwolf"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["install_complete"] = "BETA",
			},
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
