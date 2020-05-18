
ElvDB = {
	["sle"] = {
		["TimePlayed"] = {
			["Kil'jaeden"] = {
				["Toshmonk"] = {
					["LevelTime"] = 1200042,
					["Class"] = "MONK",
					["TotalTime"] = 1714036,
					["Level"] = 120,
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
				["Toshaman - Kil'jaeden"] = {
					"DefaultDPS", -- [1]
					"DefaultDPS", -- [2]
					"Default", -- [3]
					["enabled"] = true,
				},
				["Toshpal - Area 52"] = {
					"Default", -- [1]
					"DefaultDPS", -- [2]
					"DefaultDPS", -- [3]
					["enabled"] = true,
				},
			},
		},
	},
	["class"] = {
		["Frostwolf"] = {
			["Zallie"] = "PRIEST",
			["Koutetsu"] = "SHAMAN",
			["Daggny"] = "MONK",
		},
		["The Forgotten Coast"] = {
			["Toshtrial"] = "PRIEST",
		},
		["Kil'jaeden"] = {
			["Yorman"] = "DRUID",
			["Toshaman"] = "SHAMAN",
			["Toshmonk"] = "MONK",
			["Tosku"] = "DEMONHUNTER",
			["Toshpal"] = "PALADIN",
			["Toshdk"] = "DEATHKNIGHT",
		},
		["Area 52"] = {
			["Toshpal"] = "PALADIN",
			["Toshweaver"] = "MONK",
		},
		["Blood Furnace"] = {
			["Toshtrial"] = "MAGE",
		},
		["Dreadmaul"] = {
			["Toshaman"] = "SHAMAN",
		},
	},
	["profiles"] = {
		["Toshweaver - Area 52"] = {
			["v11NamePlateReset"] = true,
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
		},
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
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["bordercolor"] = {
					["r"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["b"] = 0.30588235294118,
				},
				["font"] = "Expressway",
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
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
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
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
					["r"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["b"] = 0.058823529411765,
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
				["smoothbars"] = true,
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
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
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
						["width"] = 110,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
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
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
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
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
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
						["groupsPerRowCol"] = 5,
						["height"] = 28,
						["health"] = {
							["yOffset"] = -6,
						},
						["visibility"] = "[nogroup] hide;show",
						["width"] = 140,
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
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["buffs"] = {
					["countFontSize"] = 11,
					["maxWraps"] = 2,
					["durationFontSize"] = 11,
				},
				["font"] = "Expressway",
			},
			["v11NamePlateReset"] = true,
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
					["boss"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["player"] = {
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
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,433",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1445",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,428",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["v11NamePlateReset"] = true,
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
		},
		["DefaultDPS"] = {
			["databars"] = {
				["azerite"] = {
					["orientation"] = "HORIZONTAL",
					["font"] = "Friz Quadrata TT",
					["height"] = 10,
					["width"] = 180,
				},
				["experience"] = {
					["height"] = 20,
					["orientation"] = "HORIZONTAL",
					["width"] = 800,
				},
				["honor"] = {
					["enable"] = false,
				},
			},
			["currentTutorial"] = 3,
			["general"] = {
				["fontSize"] = 11,
				["itemLevel"] = {
					["itemLevelFont"] = "Expressway",
					["enchantFont"] = "Expressway",
					["displayCharacterInfo"] = false,
					["displayInspectInfo"] = false,
				},
				["backdropcolor"] = {
					["b"] = 0.101960784313725,
					["g"] = 0.101960784313725,
					["r"] = 0.101960784313725,
				},
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["size"] = 180,
					["locationFont"] = "Friz Quadrata TT",
				},
				["font"] = "Friz Quadrata TT",
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["b"] = 0.819,
					["g"] = 0.513,
					["r"] = 0.09,
				},
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
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
			["layoutSet"] = "healer",
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-198",
				["ElvUF_PlayerCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,912,-262",
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
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,675,34",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,742,-4",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-186",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,675,0",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,741,-66",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,-185",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-335,473",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-359",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,742,-35",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,18,-4",
				["VehicleLeaveButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-152,-152",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-553,305",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,39,884",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-235",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-77",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,549",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,500,0",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-197,-4",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,35,-425",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_TargetCastbarMover"] = "TOP,ElvUIParent,TOP,482,-529",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,476,4",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,452,202",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-275",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,284,-150",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,393,431",
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
			["chat"] = {
				["fontSize"] = 11,
				["panelBackdrop"] = "LEFT",
				["tabFont"] = "Friz Quadrata TT",
				["keywords"] = "",
				["separateSizes"] = true,
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeightRight"] = 175,
				["font"] = "Friz Quadrata TT",
				["panelColorConverted"] = true,
				["panelHeight"] = 200,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 610,
				["tapFontSize"] = 11,
				["panelWidth"] = 500,
			},
			["unitframe"] = {
				["font"] = "Friz Quadrata TT",
				["colors"] = {
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["power"] = {
						["MANA"] = {
							["b"] = 0.631372549019608,
							["g"] = 0.450980392156863,
							["r"] = 0.309803921568627,
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
					["boss"] = {
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 16,
						},
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 28,
							["perrow"] = 16,
							["yOffset"] = -15,
						},
						["health"] = {
							["yOffset"] = 2,
							["text_format"] = "[healthcolor][health:current-percent]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOMLEFT",
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
						["name"] = {
							["xOffset"] = 6,
							["yOffset"] = -2,
							["position"] = "TOPLEFT",
						},
						["width"] = 220,
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
							["numrows"] = 2,
							["sizeOverride"] = 28,
							["perrow"] = 4,
							["attachTo"] = "FRAME",
							["yOffset"] = 1,
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
							["overlayOnFrame"] = "Power",
							["iconSize"] = 18,
							["iconAttachedTo"] = "Castbar",
							["timeToHold"] = 1,
							["width"] = 240,
						},
						["height"] = 40,
						["buffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 28,
							["perrow"] = 4,
							["numrows"] = 2,
							["yOffset"] = 1,
						},
						["name"] = {
							["xOffset"] = 6,
							["position"] = "LEFT",
						},
						["aurabar"] = {
							["enable"] = false,
						},
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
						["pvp"] = {
							["text_format"] = "",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][mouseover][health:current-percent]",
						},
						["castbar"] = {
							["enable"] = false,
							["width"] = 406,
							["height"] = 28,
							["insideInfoPanel"] = false,
						},
						["height"] = 35,
						["buffs"] = {
							["attachTo"] = "FRAME",
						},
						["classbar"] = {
							["enable"] = false,
							["height"] = 3,
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
						["roleIcon"] = {
							["enable"] = false,
						},
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
						["height"] = 30,
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Friz Quadrata TT",
						},
						["numGroups"] = 4,
						["growthDirection"] = "LEFT_UP",
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
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
			["movers"] = {
			},
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Default"] = {
			["databars"] = {
				["azerite"] = {
					["width"] = 180,
					["font"] = "Friz Quadrata TT",
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
				},
				["honor"] = {
					["enable"] = false,
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
				["tabFont"] = "Friz Quadrata TT",
				["separateSizes"] = true,
				["panelHeightRight"] = 175,
				["font"] = "Friz Quadrata TT",
				["tapFontSize"] = 11,
				["fontSize"] = 11,
				["editBoxPosition"] = "ABOVE_CHAT",
				["timeStampFormat"] = "%H:%M ",
				["panelColorConverted"] = true,
				["panelHeight"] = 200,
				["panelWidthRight"] = 610,
				["panelBackdrop"] = "LEFT",
				["keywords"] = "",
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
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,472,682",
				["VehicleSeatMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-1060,-4",
				["ElvUF_TargetMover"] = "TOP,ElvUIParent,TOP,482,-507",
				["ElvUF_TargetTargetMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-804,-505",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-369,300",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,652,133",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,262,-66",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,-185",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,262,-4",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-186",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,262,-35",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,18,-4",
				["VehicleLeaveButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-186,-152",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,414,181",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,536,-710",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-235",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-77",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,39,884",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,35,-425",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-197,-4",
				["ElvUF_TargetCastbarMover"] = "TOP,ElvUIParent,TOP,482,-529",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,416,0",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,470,107",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,473,324",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-375,324",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-275",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,284,-150",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,781,49",
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
			["bags"] = {
				["itemLevelFont"] = "Friz Quadrata TT",
				["countFontSize"] = 11,
				["itemLevelFontSize"] = 11,
				["countFont"] = "Friz Quadrata TT",
			},
			["unitframe"] = {
				["smartRaidFilter"] = false,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
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
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "BOTTOMLEFT",
							["text_format"] = "[healthcolor][health:current-percent]",
							["yOffset"] = 2,
						},
						["width"] = 220,
						["name"] = {
							["position"] = "TOPLEFT",
							["xOffset"] = 6,
							["yOffset"] = -2,
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
						["verticalSpacing"] = 9,
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
						["numGroups"] = 4,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["verticalSpacing"] = 9,
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["numrows"] = 2,
							["attachTo"] = "FRAME",
						},
						["name"] = {
							["position"] = "LEFT",
							["xOffset"] = 6,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[power:current]",
							["height"] = 12,
						},
						["width"] = 220,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["iconAttachedTo"] = "Castbar",
							["iconSize"] = 18,
							["width"] = 220,
							["iconXOffset"] = 0,
							["timeToHold"] = 1,
						},
						["height"] = 40,
						["buffs"] = {
							["numrows"] = 2,
						},
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 6,
							["attachTo"] = "BUFFS",
						},
						["classbar"] = {
							["height"] = 6,
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
							["text_format"] = "[powercolor][mouseover][power:current]",
							["height"] = 15,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][mouseover][health:current-percent]",
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
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["enable"] = false,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
				["statusbar"] = "ElvUI Blank",
				["colors"] = {
					["power"] = {
						["MANA"] = {
							["b"] = 0.631372549019608,
							["g"] = 0.450980392156863,
							["r"] = 0.309803921568627,
						},
					},
					["castColor"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["health"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
					["auraBarBuff"] = {
						["b"] = 0.1,
						["g"] = 0.1,
						["r"] = 0.1,
					},
				},
				["fontOutline"] = "OUTLINE",
				["font"] = "Friz Quadrata TT",
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
					["BottomMiniPanel"] = "Time",
					["RightMiniPanel"] = "",
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
			["auras"] = {
				["fontOutline"] = "OUTLINE",
				["font"] = "Friz Quadrata TT",
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["buffs"] = {
					["countFontSize"] = 11,
					["growthDirection"] = "RIGHT_DOWN",
					["sortDir"] = "+",
					["durationFontSize"] = 11,
				},
			},
			["cooldown"] = {
				["fonts"] = {
					["enable"] = true,
					["font"] = "Expressway",
					["fontSize"] = 14,
				},
			},
			["general"] = {
				["backdropfadecolor"] = {
					["b"] = 0.054,
					["g"] = 0.054,
					["r"] = 0.054,
				},
				["valuecolor"] = {
					["b"] = 0.819,
					["g"] = 0.513,
					["r"] = 0.09,
				},
				["fontSize"] = 11,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Friz Quadrata TT",
					["size"] = 180,
				},
				["bottomPanel"] = false,
				["backdropcolor"] = {
					["b"] = 0.101960784313725,
					["g"] = 0.101960784313725,
					["r"] = 0.101960784313725,
				},
				["itemLevel"] = {
					["displayInspectInfo"] = false,
					["displayCharacterInfo"] = false,
					["enchantFont"] = "Expressway",
					["itemLevelFont"] = "Expressway",
				},
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["font"] = "Friz Quadrata TT",
			},
		},
		["Koutetsu - Frostwolf"] = {
			["currentTutorial"] = 1,
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
					["boss"] = {
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
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["chat"] = {
				["panelColorConverted"] = true,
			},
		},
		["Toshaman - Dreadmaul"] = {
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
	},
	["faction"] = {
		["Area 52"] = {
			["Toshpal"] = "Horde",
			["Toshweaver"] = "Horde",
		},
		["Dreadmaul"] = {
			["Toshaman"] = "Horde",
		},
	},
	["gold"] = {
		["Frostwolf"] = {
			["Zallie"] = 12158607,
			["Koutetsu"] = 17444885,
			["Daggny"] = 46394474,
		},
		["The Forgotten Coast"] = {
			["Toshtrial"] = 78000,
		},
		["Kil'jaeden"] = {
			["Yorman"] = 1537117866,
			["Toshaman"] = 100000,
			["Tosku"] = 962375231,
			["Toshmonk"] = 1023673258,
			["Tosh"] = 1187660718,
			["Toshpal"] = 2033179838,
			["Toshdk"] = 102000,
		},
		["Area 52"] = {
			["Toshpal"] = 10000,
			["Toshweaver"] = 100000,
		},
		["Blood Furnace"] = {
			["Toshtrial"] = 78000,
		},
		["Dreadmaul"] = {
			["Toshaman"] = 89955,
		},
	},
	["SLErrorDisabledAddOns"] = {
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["global"] = {
		["general"] = {
			["AceGUI"] = {
				["height"] = 693.59,
				["top"] = 1193.55,
				["left"] = 923.06,
				["width"] = 877.48,
			},
			["mapAlphaWhenMoving"] = 0.6,
			["UIScale"] = 0.53,
			["minUiScale"] = 0.2,
		},
		["uiScale"] = "0.5333",
		["unitframe"] = {
			["ChannelTicks"] = {
				["Penance"] = 3,
				[47540] = 3,
			},
		},
	},
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Default",
		["Toshtrial - Blood Furnace"] = "Default",
		["Toshaman - Dreadmaul"] = "Toshaman - Dreadmaul",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "Default",
		["Toshpal - Area 52"] = "DefaultDPS",
		["Yorman - Kil'jaeden"] = "Default",
		["Toshdk - Kil'jaeden"] = "DefaultDPS",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Toshaman - Kil'jaeden"] = "Default",
		["Toshweaver - Area 52"] = "Toshweaver - Area 52",
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Toshpal - Kil'jaeden",
		["Toshtrial - Blood Furnace"] = "Toshtrial - Blood Furnace",
		["Toshaman - Dreadmaul"] = "Toshaman - Dreadmaul",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Toshdk - Kil'jaeden"] = "Toshdk - Kil'jaeden",
		["Toshpal - Area 52"] = "Toshpal - Area 52",
		["Tosku - Kil'jaeden"] = "Tosku - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Toshtrial - The Forgotten Coast"] = "Toshtrial - The Forgotten Coast",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
		["Toshaman - Kil'jaeden"] = "Toshaman - Kil'jaeden",
		["Toshweaver - Area 52"] = "Toshweaver - Area 52",
	},
	["profiles"] = {
		["Toshpal - Kil'jaeden"] = {
			["general"] = {
				["normTex"] = "ElvUI Blank",
				["glossTex"] = "ElvUI Blank",
			},
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
		["Toshaman - Dreadmaul"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Dreadmaul"] = {
					},
				},
				["install_complete"] = "BETA",
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
			["install_complete"] = 11.372,
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
		["Tosh - Kil'jaeden"] = {
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
				["dmgfont"] = "Friz Quadrata TT",
			},
			["bags"] = {
				["enable"] = false,
			},
			["nameplates"] = {
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
			["skins"] = {
				["cleanBossButton"] = true,
				["blizzard"] = {
					["character"] = false,
				},
			},
			["install_complete"] = "10.85",
		},
		["Yorman - Kil'jaeden"] = {
			["general"] = {
				["dmgfont"] = "Friz Quadrata TT",
				["namefont"] = "Friz Quadrata TT",
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
		["Koutetsu - Frostwolf"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
			["install_complete"] = "11.16",
		},
		["Toshmonk - Kil'jaeden"] = {
			["general"] = {
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
				["characterGoldsSorting"] = {
					["Frostwolf"] = {
					},
				},
				["pvpreadydialogreset"] = true,
			},
			["nameplates"] = {
				["enable"] = false,
			},
		},
		["Toshaman - Kil'jaeden"] = {
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
				["chatBubbles"] = "backdrop_noborder",
			},
			["install_complete"] = "10.87",
		},
		["Toshweaver - Area 52"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Area 52"] = {
					},
				},
				["install_complete"] = "BETA",
			},
		},
	},
}
