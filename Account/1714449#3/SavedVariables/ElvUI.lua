
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
			["Toshmonk"] = "MONK",
			["Tosku"] = "DEMONHUNTER",
			["Toshpal"] = "PALADIN",
			["Toshaman"] = "SHAMAN",
		},
		["Frostwolf"] = {
			["Zallie"] = "PRIEST",
			["Koutetsu"] = "SHAMAN",
			["Daggny"] = "MONK",
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
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
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
					["boss"] = {
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
					["player"] = {
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
				["honor"] = {
					["enable"] = false,
				},
				["azerite"] = {
					["height"] = 10,
					["font"] = "Friz Quadrata TT",
					["orientation"] = "HORIZONTAL",
					["width"] = 180,
				},
			},
			["currentTutorial"] = 3,
			["general"] = {
				["fontSize"] = 11,
				["itemLevel"] = {
					["displayCharacterInfo"] = false,
					["displayInspectInfo"] = false,
					["itemLevelFont"] = "Expressway",
					["enchantFont"] = "Expressway",
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
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 11,
				["tabFont"] = "Friz Quadrata TT",
				["separateSizes"] = true,
				["keywords"] = "",
				["editBoxPosition"] = "ABOVE_CHAT",
				["panelHeightRight"] = 175,
				["font"] = "Friz Quadrata TT",
				["panelColorConverted"] = true,
				["panelHeight"] = 200,
				["timeStampFormat"] = "%H:%M ",
				["panelWidthRight"] = 610,
				["tapFontSize"] = 11,
				["panelBackdrop"] = "LEFT",
			},
			["layoutSet"] = "healer",
			["movers"] = {
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-198",
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,651,93",
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
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,167,428",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["ElvUF_TargetTargetMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-804,-505",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,652,133",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,458,-66",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,-185",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-186",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,458,-4",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-480,-668",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,458,-35",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,18,-4",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
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
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-553,305",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-177,429",
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
				["smallTextFontSize"] = 11,
				["font"] = "Friz Quadrata TT",
				["headerFontSize"] = 11,
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
				["fontOutline"] = "OUTLINE",
				["statusbar"] = "ElvUI Blank",
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
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["castbar"] = {
							["enable"] = false,
							["height"] = 28,
							["width"] = 406,
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
							["enable"] = false,
							["text_format"] = "[powercolor][mouseover][power:current]",
							["height"] = 3,
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
						["width"] = 220,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["iconXOffset"] = 0,
							["overlayOnFrame"] = "Power",
							["iconSize"] = 18,
							["iconAttachedTo"] = "Castbar",
							["timeToHold"] = 1,
							["width"] = 220,
						},
						["height"] = 40,
						["buffs"] = {
							["numrows"] = 2,
						},
						["name"] = {
							["xOffset"] = 6,
							["position"] = "LEFT",
						},
						["aurabar"] = {
							["enable"] = false,
						},
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
						["name"] = {
							["xOffset"] = 6,
							["yOffset"] = -2,
							["position"] = "TOPLEFT",
						},
						["spacing"] = 20,
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["sizeOverride"] = 28,
							["fontSize"] = 12,
							["perrow"] = 16,
							["yOffset"] = 15,
						},
						["health"] = {
							["yOffset"] = 2,
							["text_format"] = "[healthcolor][health:current-percent]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOMLEFT",
						},
						["width"] = 220,
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
						["growthDirection"] = "LEFT_UP",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["clickThrough"] = true,
							["enable"] = true,
							["xOffset"] = 50,
							["perrow"] = 1,
							["yOffset"] = -6,
						},
						["verticalSpacing"] = 9,
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
							["xOffset"] = 50,
							["perrow"] = 1,
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
					["pet"] = {
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
				["font"] = "Expressway",
				["bar5"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
				["fontSize"] = 12,
				["hideCooldownBling"] = true,
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
			["auras"] = {
				["buffs"] = {
					["sortDir"] = "+",
					["durationFontSize"] = 11,
					["countFontSize"] = 11,
					["growthDirection"] = "RIGHT_DOWN",
				},
				["font"] = "Friz Quadrata TT",
				["debuffs"] = {
					["countFontSize"] = 11,
					["durationFontSize"] = 11,
				},
				["fontOutline"] = "OUTLINE",
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
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
				},
			},
			["currentTutorial"] = 3,
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
				},
				["skins"] = {
					["talkinghead"] = {
						["hide"] = true,
					},
					["merchant"] = {
						["list"] = {
							["nameFont"] = "Friz Quadrata TT",
							["subFont"] = "Friz Quadrata TT",
						},
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
			["v11NamePlateReset"] = true,
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M ",
				["separateSizes"] = true,
				["panelHeightRight"] = 175,
				["font"] = "Friz Quadrata TT",
				["tapFontSize"] = 11,
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
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,781,49",
				["ElvUF_Raid40Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["ElvAB_4"] = "TOPLEFT,ElvUIParent,TOPLEFT,262,-4",
				["AzeriteBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-186",
				["ElvAB_1"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,652,133",
				["ElvAB_2"] = "TOPLEFT,ElvUIParent,TOPLEFT,262,-66",
				["BelowMinimapContainerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,517,-185",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,473,324",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-369,300",
				["ElvAB_3"] = "TOPLEFT,ElvUIParent,TOPLEFT,262,-35",
				["ElvAB_5"] = "TOPLEFT,ElvUIParent,TOPLEFT,18,-4",
				["VehicleLeaveButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-186,-152",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-375,324",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,39,884",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-52,-235",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-182,-77",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,536,-710",
				["ElvUF_TargetCastbarMover"] = "TOP,ElvUIParent,TOP,482,-529",
				["RaidUtility_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-197,-4",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,416,0",
				["TooltipMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-530,-4",
				["ArenaHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,35,-425",
				["BossHeaderMover"] = "BOTTOM,ElvUIParent,BOTTOM,470,107",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,414,181",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-332,303",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,986,449",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-275",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,284,-150",
				["ElvUF_TargetTargetMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-804,-505",
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
					["displayCharacterInfo"] = false,
					["enchantFont"] = "Expressway",
					["itemLevelFont"] = "Expressway",
				},
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["font"] = "Friz Quadrata TT",
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
					["pet"] = {
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
						["castbar"] = {
							["iconXOffset"] = 0,
							["iconSize"] = 18,
							["width"] = 220,
							["iconAttachedTo"] = "Castbar",
							["timeToHold"] = 1,
						},
						["width"] = 220,
						["health"] = {
							["frequentUpdates"] = true,
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
				},
				["statusbar"] = "ElvUI Blank",
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
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 42,
				},
				["chargeCooldown"] = true,
				["hideCooldownBling"] = true,
				["bar5"] = {
					["enabled"] = false,
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
				},
				["fontSize"] = 12,
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
				["font"] = "Friz Quadrata TT",
				["statusbar"] = "ElvUI Blank",
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
			["bags"] = {
				["itemLevelFont"] = "Friz Quadrata TT",
				["countFontSize"] = 11,
				["itemLevelFontSize"] = 11,
				["countFont"] = "Friz Quadrata TT",
			},
		},
	},
	["gold"] = {
		["Blood Furnace"] = {
			["Toshtrial"] = 78000,
		},
		["Kil'jaeden"] = {
			["Yorman"] = 1537117866,
			["Toshdk"] = 102000,
			["Tosku"] = 962375231,
			["Toshmonk"] = 1023673258,
			["Tosh"] = 1187660718,
			["Toshpal"] = 2033179838,
			["Toshaman"] = 100000,
		},
		["Frostwolf"] = {
			["Zallie"] = 12158607,
			["Koutetsu"] = 17444885,
			["Daggny"] = 46394474,
		},
		["The Forgotten Coast"] = {
			["Toshtrial"] = 78000,
		},
	},
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Default",
		["Toshtrial - Blood Furnace"] = "Default",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Toshdk - Kil'jaeden"] = "DefaultDPS",
		["Toshaman - Kil'jaeden"] = "DefaultDPS",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
	},
	["global"] = {
		["general"] = {
			["AceGUI"] = {
				["height"] = 598.99,
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
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["SLErrorDisabledAddOns"] = {
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Toshpal - Kil'jaeden",
		["Toshtrial - Blood Furnace"] = "Toshtrial - Blood Furnace",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "Tosku - Kil'jaeden",
		["Toshdk - Kil'jaeden"] = "Toshdk - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Toshtrial - The Forgotten Coast"] = "Toshtrial - The Forgotten Coast",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
		["Toshaman - Kil'jaeden"] = "Toshaman - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
	},
	["profiles"] = {
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
		["Yorman - Kil'jaeden"] = {
			["general"] = {
				["namefont"] = "Friz Quadrata TT",
				["dmgfont"] = "Friz Quadrata TT",
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
		["Toshmonk - Kil'jaeden"] = {
			["general"] = {
				["dmgfont"] = "Friz Quadrata TT",
				["namefont"] = "Friz Quadrata TT",
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
		["Tosh - Kil'jaeden"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Kil'jaeden"] = {
					},
				},
				["pvpreadydialogreset"] = true,
				["install_complete"] = "3.5",
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
			["general"] = {
				["minimap"] = {
					["hideClassHallReport"] = true,
				},
				["dmgfont"] = "Friz Quadrata TT",
			},
			["nameplates"] = {
				["enable"] = false,
			},
			["install_complete"] = "10.85",
		},
	},
}
