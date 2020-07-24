
Grid2DB = {
	["namespaces"] = {
		["Grid2RaidDebuffs"] = {
			["profiles"] = {
				["Default"] = {
					["defaultEJ_difficulty"] = 16,
					["lastSelectedModule"] = "Battle for Azeroth",
					["enabledModules"] = {
						["Battle for Azeroth"] = true,
					},
					["lastSelectedInstance"] = 1012,
				},
			},
		},
		["Grid2Layout"] = {
			["profiles"] = {
				["Toshpriest - Area 52"] = {
					["extraThemes"] = {
					},
					["minimapIcon"] = {
						["minimapPos"] = 200.3421142621487,
						["hide"] = true,
					},
					["PosY"] = -544.5324292350015,
					["PosX"] = 791.7332635533821,
				},
				["Default"] = {
					["BorderB"] = 0.5019607843137255,
					["BackgroundR"] = 0.1019607843137255,
					["FrameLock"] = true,
					["BorderA"] = 0,
					["BorderR"] = 0.5019607843137255,
					["PosX"] = 0.001748046835928108,
					["anchor"] = "TOP",
					["BackgroundG"] = 0.1019607843137255,
					["minimapIcon"] = {
						["hide"] = true,
					},
					["PosY"] = -555.6141867998049,
					["Spacing"] = 2,
					["BackgroundA"] = 1,
					["BorderG"] = 0.5019607843137255,
					["BackgroundB"] = 0.1019607843137255,
					["extraThemes"] = {
						{
							["BackgroundTexture"] = "Blizzard ChatFrame Background",
							["BorderB"] = 0.5019607843137255,
							["layouts"] = {
								["party"] = "By Group",
								["arena"] = "By Group",
								["solo"] = "By Group",
								["raid"] = "By Group",
							},
							["BackgroundB"] = 0.1019607843137255,
							["ScaleSize"] = 1,
							["FrameLock"] = true,
							["BorderA"] = 0,
							["BorderR"] = 0.5019607843137255,
							["BorderTexture"] = "Blizzard Tooltip",
							["anchor"] = "TOP",
							["BackgroundG"] = 0.1019607843137255,
							["groupAnchor"] = "TOPLEFT",
							["PosY"] = -555.616374299756,
							["Spacing"] = 2,
							["clamp"] = true,
							["BackgroundA"] = 1,
							["Padding"] = 0,
							["BorderG"] = 0.5019607843137255,
							["FrameDisplay"] = "Always",
							["horizontal"] = false,
							["BackgroundR"] = 0.1019607843137255,
							["PosX"] = 0.0005517578001672518,
						}, -- [1]
					},
				},
				["Toshaman - Area 52"] = {
					["PosY"] = -525.3331523203888,
					["PosX"] = 893.0663862884103,
				},
			},
		},
		["Grid2AoeHeals"] = {
		},
		["Grid2Options"] = {
		},
		["Grid2Frame"] = {
			["profiles"] = {
				["Toshpriest - Area 52"] = {
					["extraThemes"] = {
					},
				},
				["Default"] = {
					["extraThemes"] = {
						{
							["frameColor"] = {
								["a"] = 1,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
							["fontSize"] = 11,
							["frameBorder"] = 2,
							["iconSize"] = 14,
							["mouseoverTexture"] = "Blizzard Tooltip",
							["fontFlags"] = "OUTLINE",
							["frameHeight"] = 48,
							["shadowDisabled"] = true,
							["barTexture"] = "Smooth v2",
							["frameBorderTexture"] = "Grid2 Flat",
							["frameWidths"] = {
							},
							["frameBorderDistance"] = 1,
							["mouseoverColor"] = {
								["a"] = 0.800000011920929,
								["r"] = 1,
								["g"] = 1,
								["b"] = 1,
							},
							["mouseoverHighlight"] = false,
							["frameContentColor"] = {
								["a"] = 1,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
							["orientation"] = "HORIZONTAL",
							["frameHeights"] = {
							},
							["frameWidth"] = 160,
							["frameTexture"] = "Smooth v2",
						}, -- [1]
					},
					["mouseoverTexture"] = "Blizzard Tooltip",
					["fontFlags"] = "OUTLINE",
					["shadowDisabled"] = true,
					["barTexture"] = "Smooth v2",
					["mouseoverColor"] = {
						["a"] = 0.800000011920929,
					},
					["menuDisabled"] = true,
					["orientation"] = "HORIZONTAL",
					["frameWidth"] = 76,
					["frameTexture"] = "Smooth v2",
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Default",
		["Toshaman - Area 52"] = "Default",
	},
	["profiles"] = {
		["Toshpriest - Area 52"] = {
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 10,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "Gradient",
				},
				["side-bottom"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statuses"] = {
				["buff-SpiritOfRedemption"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["blinkThreshold"] = 3,
					["spellName"] = 27827,
				},
				["buff-PowerWordShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0,
					},
					["spellName"] = 17,
				},
				["debuff-WeakenedSoul"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.9,
						["g"] = 0.2,
						["r"] = 0,
					},
					["spellName"] = 6788,
				},
				["buff-Renew-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 139,
				},
				["buff-PrayerOfMending-mine"] = {
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["color2"] = {
						["a"] = 0.4,
						["b"] = 0.4,
						["g"] = 1,
						["r"] = 1,
					},
					["color3"] = {
						["a"] = 1,
						["b"] = 0.6,
						["g"] = 0.6,
						["r"] = 1,
					},
					["colorCount"] = 5,
					["color4"] = {
						["a"] = 1,
						["b"] = 0.8,
						["g"] = 0.8,
						["r"] = 1,
					},
					["color5"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["spellName"] = 33076,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Renew-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["icon-right"] = {
					["buff-PrayerOfMending-mine"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["corner-top-right"] = {
					["buff-PowerWordShield"] = 99,
					["debuff-WeakenedSoul"] = 89,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["border"] = {
					["debuff-Disease"] = 90,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["target"] = 50,
					["debuff-Magic"] = 80,
					["debuff-Curse"] = 60,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
			["themes"] = {
				["indicators"] = {
					[0] = {
					},
				},
			},
		},
		["Default"] = {
			["indicators"] = {
				["icon-right2"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["text-center"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["textlength"] = 6,
					["fontSize"] = 11,
				},
				["text-center-color"] = {
					["type"] = "text-color",
				},
				["icon-left"] = {
					["fontOffsetX"] = 0,
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -1,
					},
					["level"] = 6,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["icon-right1"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["icons-bottomleft"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["type"] = "icons",
					["level"] = 8,
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["background"] = {
					["type"] = "background",
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 24,
				},
				["icons-center-long"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 29,
					},
					["type"] = "icons",
					["level"] = 8,
					["iconSize"] = 20,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["shields"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["type"] = "bar",
					["level"] = 3,
				},
				["bar-main-color"] = {
					["type"] = "multibar-color",
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["icon-right3"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["icons-topleft-large"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "icons",
					["level"] = 8,
					["iconSize"] = 18,
				},
				["icons-bottomleft-large"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["type"] = "icons",
					["level"] = 8,
					["iconSize"] = 18,
				},
				["heals"] = {
					["type"] = "bar",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["health"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["type"] = "bar",
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["shields-color"] = {
					["type"] = "bar-color",
				},
				["icons-topleft"] = {
					["maxIcons"] = 4,
					["type"] = "icons",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["level"] = 8,
					["maxIconsPerRow"] = 5,
					["iconSize"] = 13,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["icon-top"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 6,
					["fontSize"] = 8,
					["size"] = 16,
				},
				["bar-main"] = {
					{
						["color"] = {
							["a"] = 1,
							["b"] = 0.6823529411764706,
							["g"] = 0.8823529411764706,
							["r"] = 0.7098039215686275,
						},
					}, -- [1]
					{
						["color"] = {
							["a"] = 1,
							["r"] = 0.6039215686274509,
							["g"] = 0.807843137254902,
							["b"] = 0.8745098039215686,
						},
					}, -- [2]
					{
						["color"] = {
							["a"] = 1,
							["r"] = 0.9764705882352941,
							["g"] = 0.5490196078431373,
							["b"] = 0.7137254901960784,
						},
						["reverse"] = true,
					}, -- [3]
					{
						["color"] = {
							["a"] = 1,
							["r"] = 1,
							["g"] = 0.9803921568627451,
							["b"] = 0.5058823529411764,
						},
					}, -- [4]
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["type"] = "multibar",
					["level"] = 1,
					["textureColor"] = {
						["a"] = 1,
					},
				},
			},
			["statuses"] = {
				["debuffs-Dispellable"] = {
					["aurasBak"] = {
					},
					["type"] = "debuffs",
					["filterDispelDebuffs"] = true,
					["debuffTypeColorize"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
				},
				["buff-GlimmerofLight-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Glimmer of Light",
				},
				["debuff-WeakenedSoul"] = {
					["type"] = "debuff",
					["spellName"] = 6788,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.2,
						["b"] = 0.9,
					},
				},
				["buff-PrayerofMending-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 41635,
				},
				["buff-Atonement-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = "Atonement",
				},
				["debuff-MYTHIC+>GrievousWound"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = 240559,
				},
				["buff-BeaconofFaith-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 156910,
				},
				["debuff-MYTHIC+>Burst"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = 243237,
				},
				["buff-Renew-mine"] = {
					["spellName"] = 139,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["color-FallbackHPColour"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.4,
						["r"] = 0.4,
					},
					["type"] = "color",
				},
				["debuff-GrandDelusions"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["useSpellId"] = true,
					["type"] = "debuff",
					["spellName"] = 315184,
				},
				["buff-BeaconofLight-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 53563,
				},
				["raid-debuffs2"] = {
					["type"] = "raid-debuffs",
					["debuffs"] = {
						[1036] = {
							264477, -- [1]
						},
						[1030] = {
							269670, -- [1]
						},
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.5,
						["r"] = 1,
					},
				},
				["raid-debuffs"] = {
					["debuffs"] = {
						[0] = {
							260989, -- [1]
							261509, -- [2]
							275175, -- [3]
							274932, -- [4]
							274904, -- [5]
							271244, -- [6]
							274895, -- [7]
							274891, -- [8]
							274839, -- [9]
							261605, -- [10]
							261552, -- [11]
						},
						[1021] = {
							263905, -- [1]
							265352, -- [2]
							266036, -- [3]
							264105, -- [4]
							264390, -- [5]
							265346, -- [6]
							264050, -- [7]
							265761, -- [8]
							264153, -- [9]
							265407, -- [10]
							271178, -- [11]
							263943, -- [12]
							264520, -- [13]
							265881, -- [14]
							264378, -- [15]
							264407, -- [16]
							265880, -- [17]
							265882, -- [18]
							266035, -- [19]
							263891, -- [20]
							264556, -- [21]
							278456, -- [22]
							268203, -- [23]
							261439, -- [24]
							261438, -- [25]
							261440, -- [26]
							260551, -- [27]
							268231, -- [28]
							260741, -- [29]
							260926, -- [30]
							260703, -- [31]
						},
						[1022] = {
							269301, -- [1]
							260685, -- [2]
							260333, -- [3]
							260455, -- [4]
							259714, -- [5]
							259718, -- [6]
							273226, -- [7]
							265533, -- [8]
							265019, -- [9]
							265377, -- [10]
							265568, -- [11]
							266107, -- [12]
							266265, -- [13]
							272180, -- [14]
							265468, -- [15]
							272609, -- [16]
							265511, -- [17]
							278961, -- [18]
							273599, -- [19]
						},
						[1176] = {
							284663, -- [1]
							282135, -- [2]
							285878, -- [3]
							282592, -- [4]
							286060, -- [5]
							282444, -- [6]
							286811, -- [7]
							282209, -- [8]
							287626, -- [9]
							287490, -- [10]
							287365, -- [11]
							285212, -- [12]
							285253, -- [13]
							287199, -- [14]
							288218, -- [15]
							289220, -- [16]
							288038, -- [17]
							287565, -- [18]
							286988, -- [19]
							282037, -- [20]
							288151, -- [21]
							285632, -- [22]
							287167, -- [23]
							283411, -- [24]
							286480, -- [25]
							287757, -- [26]
							282182, -- [27]
							284168, -- [28]
							284214, -- [29]
							287891, -- [30]
							289023, -- [31]
							285195, -- [32]
							285044, -- [33]
							284831, -- [34]
							284781, -- [35]
							285213, -- [36]
							288449, -- [37]
							284662, -- [38]
							285349, -- [39]
							285000, -- [40]
							284405, -- [41]
							285350, -- [42]
							285075, -- [43]
							285382, -- [44]
							285875, -- [45]
							283069, -- [46]
							286373, -- [47]
							282215, -- [48]
							282471, -- [49]
							285659, -- [50]
							286434, -- [51]
							285671, -- [52]
							282010, -- [53]
							283572, -- [54]
							283651, -- [55]
							283579, -- [56]
							283063, -- [57]
							283507, -- [58]
							286501, -- [59]
							287072, -- [60]
							284470, -- [61]
						},
						[1177] = {
							285345, -- [1]
							285652, -- [2]
							284733, -- [3]
							285367, -- [4]
							282540, -- [5]
							282432, -- [6]
							282384, -- [7]
							283524, -- [8]
							282517, -- [9]
							282562, -- [10]
							282738, -- [11]
							293300, -- [12]
							293488, -- [13]
						},
						[1178] = {
							301712, -- [1]
							294195, -- [2]
							285443, -- [3]
							294860, -- [4]
							285460, -- [5]
							291939, -- [6]
							294929, -- [7]
							298669, -- [8]
							298718, -- [9]
							295445, -- [10]
							302274, -- [11]
						},
						[1179] = {
							292127, -- [1]
							292307, -- [2]
							292167, -- [3]
							301494, -- [4]
							298595, -- [5]
							292138, -- [6]
							292133, -- [7]
							296693, -- [8]
							297333, -- [9]
							296725, -- [10]
							296752, -- [11]
							296737, -- [12]
							296566, -- [13]
							297586, -- [14]
							299914, -- [15]
							296851, -- [16]
							300545, -- [17]
							298306, -- [18]
							295779, -- [19]
							298156, -- [20]
							298306, -- [21]
							303825, -- [22]
							303657, -- [23]
							300492, -- [24]
							297907, -- [25]
							292971, -- [26]
							292963, -- [27]
							293509, -- [28]
							298192, -- [29]
							300882, -- [30]
							295421, -- [31]
							295348, -- [32]
							294715, -- [33]
							294711, -- [34]
							300705, -- [35]
							300701, -- [36]
							294847, -- [37]
							300961, -- [38]
							300962, -- [39]
						},
						[1180] = {
							313461, -- [1]
							313129, -- [2]
							313460, -- [3]
							308059, -- [4]
							307950, -- [5]
							307806, -- [6]
							306301, -- [7]
							308885, -- [8]
							317112, -- [9]
							309980, -- [10]
							306163, -- [11]
							314347, -- [12]
							307013, -- [13]
							307314, -- [14]
							307359, -- [15]
							310323, -- [16]
							275269, -- [17]
							311159, -- [18]
							306819, -- [19]
							306273, -- [20]
							306279, -- [21]
							309777, -- [22]
							313227, -- [23]
							310019, -- [24]
							313077, -- [25]
							315252, -- [26]
							316065, -- [27]
							310552, -- [28]
							310358, -- [29]
							307008, -- [30]
							306973, -- [31]
							306984, -- [32]
							307358, -- [33]
							307945, -- [34]
							306929, -- [35]
							307260, -- [36]
							313198, -- [37]
							312406, -- [38]
						},
						[1030] = {
							263958, -- [1]
							263927, -- [2]
							263371, -- [3]
							266923, -- [4]
						},
						[1012] = {
							260811, -- [1]
							260829, -- [2]
							260838, -- [3]
							270277, -- [4]
							280604, -- [5]
							280605, -- [6]
							263637, -- [7]
							269298, -- [8]
							263202, -- [9]
							268704, -- [10]
							268846, -- [11]
							263074, -- [12]
							262270, -- [13]
							262794, -- [14]
							262811, -- [15]
							268797, -- [16]
							269429, -- [17]
							262377, -- [18]
							262348, -- [19]
							269092, -- [20]
							262515, -- [21]
							262513, -- [22]
							257582, -- [23]
							258627, -- [24]
							257544, -- [25]
							275907, -- [26]
							256137, -- [27]
							257333, -- [28]
							262347, -- [29]
							270882, -- [30]
							258971, -- [31]
							259940, -- [32]
							259853, -- [33]
						},
						[968] = {
							277072, -- [1]
							265914, -- [2]
							250096, -- [3]
							259145, -- [4]
							255434, -- [5]
							255371, -- [6]
							257407, -- [7]
							255421, -- [8]
							253562, -- [9]
							254959, -- [10]
							255567, -- [11]
							252692, -- [12]
							252687, -- [13]
							255041, -- [14]
							255814, -- [15]
							255835, -- [16]
							255836, -- [17]
						},
						[1001] = {
							256553, -- [1]
							256363, -- [2]
							281591, -- [3]
							257460, -- [4]
							257314, -- [5]
							258874, -- [6]
							274384, -- [7]
						},
						[1041] = {
							268932, -- [1]
							268586, -- [2]
							267626, -- [3]
							267702, -- [4]
							267764, -- [5]
							267639, -- [6]
							267273, -- [7]
							266238, -- [8]
							266231, -- [9]
							267257, -- [10]
							265773, -- [11]
							265914, -- [12]
						},
						[1002] = {
							257791, -- [1]
							257777, -- [2]
							257793, -- [3]
							260067, -- [4]
							256198, -- [5]
							256038, -- [6]
							256044, -- [7]
							256200, -- [8]
							256105, -- [9]
							256201, -- [10]
							257028, -- [11]
							259711, -- [12]
							257092, -- [13]
							260016, -- [14]
							258864, -- [15]
							258313, -- [16]
							258079, -- [17]
							258075, -- [18]
							258058, -- [19]
							265889, -- [20]
							258128, -- [21]
							225080, -- [22]
						},
						[1036] = {
							268896, -- [1]
							269104, -- [2]
							269131, -- [3]
							264560, -- [4]
							268214, -- [5]
						},
						[1023] = {
							257459, -- [1]
							274991, -- [2]
						},
						[1031] = {
							272336, -- [1]
							272536, -- [2]
							274693, -- [3]
							272407, -- [4]
							272146, -- [5]
							274019, -- [6]
							274113, -- [7]
							274761, -- [8]
							279013, -- [9]
							271222, -- [10]
							270290, -- [11]
							275270, -- [12]
							275189, -- [13]
							275205, -- [14]
							265360, -- [15]
							265662, -- [16]
							265237, -- [17]
							265264, -- [18]
							265646, -- [19]
							264210, -- [20]
							270589, -- [21]
							270620, -- [22]
							263334, -- [23]
							263372, -- [24]
							263436, -- [25]
							272506, -- [26]
							267409, -- [27]
							267430, -- [28]
							263235, -- [29]
							270287, -- [30]
							263321, -- [31]
							267659, -- [32]
							267700, -- [33]
							267813, -- [34]
							269691, -- [35]
							277007, -- [36]
							279575, -- [37]
							273365, -- [38]
							274358, -- [39]
							273434, -- [40]
							274195, -- [41]
							274271, -- [42]
							272018, -- [43]
							276020, -- [44]
							276299, -- [45]
							262313, -- [46]
							262314, -- [47]
							262292, -- [48]
							267821, -- [49]
							267787, -- [50]
							268095, -- [51]
							268198, -- [52]
							268253, -- [53]
							268277, -- [54]
							265129, -- [55]
							265178, -- [56]
							265212, -- [57]
							265127, -- [58]
							265206, -- [59]
						},
					},
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 61295,
				},
				["debuff-EyeofCorruption"] = {
					["type"] = "debuff",
					["enableStacks"] = 8,
					["useSpellId"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = 315161,
				},
				["dungeon-role"] = {
					["color2"] = {
						["a"] = 1,
						["r"] = 0.3882352941176471,
						["g"] = 0.4980392156862745,
						["b"] = 0.3882352941176471,
					},
					["color3"] = {
						["a"] = 1,
						["r"] = 0.3725490196078432,
						["g"] = 0.3725490196078432,
						["b"] = 0.5058823529411764,
					},
					["color1"] = {
						["a"] = 1,
						["r"] = 0.6431372549019607,
						["g"] = 0.6431372549019607,
						["b"] = 0.6431372549019607,
					},
				},
				["debuff-MYTHIC+>NecroticWound"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
					["spellName"] = 209858,
				},
				["buffs-DefensiveCooldowns"] = {
					["type"] = "buffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["auras"] = {
						6940, -- [1]
						31850, -- [2]
						498, -- [3]
						86657, -- [4]
						86659, -- [5]
						204018, -- [6]
						2565, -- [7]
						871, -- [8]
						12975, -- [9]
						61336, -- [10]
						22812, -- [11]
						22842, -- [12]
						55233, -- [13]
						49028, -- [14]
						48792, -- [15]
						48707, -- [16]
						33206, -- [17]
						47788, -- [18]
						115203, -- [19]
						122278, -- [20]
						187827, -- [21]
					},
				},
			},
			["versions"] = {
				["Grid2"] = 8,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["text-center"] = {
					["name"] = 50,
				},
				["text-center-color"] = {
					["classcolor"] = 50,
				},
				["icon-left"] = {
					["raid-icon-target"] = 50,
				},
				["border"] = {
					["debuff-Disease"] = 90,
					["debuff-Poison"] = 70,
					["target"] = 50,
					["debuff-Magic"] = 80,
					["debuff-Curse"] = 60,
				},
				["icon-right1"] = {
					["buff-Atonement-mine"] = 50,
					["buff-GlimmerofLight-mine"] = 52,
					["buff-PrayerofMending-mine"] = 51,
					["buff-Riptide-mine"] = 53,
				},
				["icons-bottomleft"] = {
					["debuffs-Dispellable"] = 50,
					["debuff-EyeofCorruption"] = 51,
					["debuff-GrandDelusions"] = 52,
				},
				["text-down-color"] = {
				},
				["icon-center"] = {
					["summon"] = 155,
					["resurrection"] = 158,
					["death"] = 155,
					["ready-check"] = 150,
					["raid-debuffs"] = 157,
					["phased"] = 156,
				},
				["icons-center-long"] = {
					["resurrection"] = 54,
					["debuff-MYTHIC+>GrievousWound"] = 58,
					["debuff-MYTHIC+>Burst"] = 57,
					["phased"] = 55,
					["debuff-MYTHIC+>NecroticWound"] = 56,
					["death"] = 51,
					["ready-check"] = 52,
					["raid-debuffs"] = 50,
					["summon"] = 53,
				},
				["health-color"] = {
				},
				["bar-main-color"] = {
					["dungeon-role"] = 51,
					["color-FallbackHPColour"] = 50,
				},
				["heals-color"] = {
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["icons-topleft-large"] = {
					["buff-BeaconofLight-mine"] = 51,
					["buff-BeaconofFaith-mine"] = 50,
					["buffs-DefensiveCooldowns"] = 52,
				},
				["icon-top"] = {
					["raid-icon-target"] = 50,
				},
				["icons-topleft"] = {
					["buff-BeaconofLight-mine"] = 51,
					["buff-BeaconofFaith-mine"] = 50,
					["buffs-DefensiveCooldowns"] = 52,
				},
				["health"] = {
				},
				["heals"] = {
				},
				["text-up-color"] = {
				},
				["icons-bottomleft-large"] = {
					["debuffs-Dispellable"] = 50,
					["debuff-EyeofCorruption"] = 51,
					["debuff-GrandDelusions"] = 52,
				},
				["bar-main"] = {
					["heal-absorbs"] = 4,
					["shields"] = 5,
					["heals-incoming"] = 2,
					["health-current"] = 1,
					["my-heals-incoming"] = 3,
				},
			},
			["themes"] = {
				["enabled"] = {
					["party"] = 1,
					["solo"] = 1,
					["raid"] = 0,
					["arena"] = 1,
					["default"] = 1,
				},
				["indicators"] = {
					{
						["icon-center"] = true,
						["icon-left"] = true,
						["icons-topleft"] = true,
						["icons-bottomleft"] = true,
					}, -- [1]
					[0] = {
						["icons-center-long"] = true,
						["icon-top"] = true,
						["icons-bottomleft-large"] = true,
						["icons-topleft-large"] = true,
					},
				},
				["names"] = {
					"Party Healing", -- [1]
					[0] = "Raid Healing",
				},
			},
		},
		["Toshaman - Area 52"] = {
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["side-top"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 10,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "Gradient",
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
			},
			["statuses"] = {
				["buff-EarthShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.8,
						["r"] = 0.8,
					},
					["spellName"] = 974,
				},
				["buff-Riptide-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.6,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 61295,
				},
				["buff-EarthShield-mine"] = {
					["color2"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.9,
						["r"] = 0.9,
					},
					["colorCount"] = 2,
					["mine"] = true,
					["spellName"] = 974,
				},
				["buff-Earthliving"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.5,
						["g"] = 1,
						["r"] = 0.8,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 51945,
				},
			},
			["versions"] = {
				["Grid2"] = 6,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Riptide-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["corner-top-right"] = {
					["buff-EarthShield-mine"] = 99,
					["buff-EarthShield"] = 89,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["side-top"] = {
					["buff-Earthliving"] = 89,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["border"] = {
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["debuff-Curse"] = 90,
					["debuff-Magic"] = 80,
					["target"] = 50,
				},
				["corner-bottom-left"] = {
					["threat"] = 99,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["vehicle"] = 70,
					["death"] = 95,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 155,
					["death"] = 155,
				},
			},
			["themes"] = {
				["indicators"] = {
					[0] = {
					},
				},
			},
		},
	},
}
