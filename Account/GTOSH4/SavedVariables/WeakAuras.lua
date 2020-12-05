
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Bone Shield"] = {
			[195181] = 458717,
		},
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1595234684,
	["minimap"] = {
		["minimapPos"] = 208.9286600903307,
		["hide"] = true,
	},
	["lastUpgrade"] = 1605929280,
	["dbVersion"] = 40,
	["displays"] = {
		["nocircle_leaf_nofil"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 5, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["customName"] = "function()\n    return \nend",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unit"] = "player",
						["customName"] = "function()\n    return aura_env.order            \nend",
						["events"] = "TirnaScitheButtonOrder",
						["check"] = "event",
						["custom_hide"] = "timed",
						["custom"] = "function(_,button,order)\n    if button == 5 then \n        aura_env.order = order\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 30,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "zr1axMzgv7j",
			["xOffset"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [3]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")           \n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            local values = {1, 1, 1, 5}\n            C_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\n            local message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n    end)\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 5, b)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\Addons\\guess\\nocircle_leaf_nofill.tga",
			["cooldownEdge"] = false,
			["semver"] = "1.3.8",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "nocircle_leaf_nofil",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["encounter"] = true,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["HealerCC'ed"] = {
			["iconSource"] = -1,
			["xOffset"] = -106.908203125,
			["preferToUpdate"] = false,
			["yOffset"] = 190.8245239257813,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Kidney Shot", -- [1]
							"Cheap Shot", -- [2]
							"Garrote", -- [3]
							"Fear", -- [4]
							"Psychic Horror", -- [5]
							"Mind Bomb", -- [6]
							"Imprison", -- [7]
							"Intimidating Shout", -- [8]
							"Storm Bolt", -- [9]
							"Shockwave", -- [10]
							"Chaos Nova", -- [11]
							"Blind", -- [12]
							"Hex", -- [13]
							"Polymorph", -- [14]
							"Repentance", -- [15]
							"Hammer of Justice", -- [16]
							"Entangling Roots", -- [17]
							"Mighty Bash", -- [18]
							"Maim", -- [19]
							"Freezing Trap", -- [20]
							"Frost Nova", -- [21]
							"Mind Control", -- [22]
							"Sap", -- [23]
							"Seduction", -- [24]
							"Mortal Coil", -- [25]
							"Leg Sweep", -- [26]
							"Fel Eruption", -- [27]
							"Asphyxiate", -- [28]
							"Capacitor Totem", -- [29]
							"Cyclone", -- [30]
							"Dragon's Breath", -- [31]
							"Silence", -- [32]
							"Gouge", -- [33]
							"Psychic Scream", -- [34]
							"Axe Toss", -- [35]
							"Silence", -- [36]
						},
						["useGroupRole"] = true,
						["subeventPrefix"] = "SPELL",
						["ignoreSelf"] = true,
						["match_count"] = "1",
						["debuffType"] = "HARMFUL",
						["showClones"] = true,
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["buffShowOn"] = "showOnActive",
						["unit"] = "group",
						["spellIds"] = {
						},
						["match_countOperator"] = "<=",
						["group_role"] = {
							["HEALER"] = true,
						},
						["useName"] = true,
						["use_specific_unit"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = true,
					["glowScale"] = 1,
					["glowThickness"] = 4,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["use_size"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["pvp"] = true,
						["arena"] = true,
					},
				},
			},
			["zoom"] = 0,
			["desaturate"] = false,
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/XNg03PyZj/1",
			["uid"] = "KQEcXCBrkmH",
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "HealerCC'ed",
			["width"] = 80,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.0",
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["nocircle_noleaf_nofill"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 7, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["customName"] = "function()\n    return \nend",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unit"] = "player",
						["customName"] = "function()\n    return aura_env.order            \nend",
						["events"] = "TirnaScitheButtonOrder",
						["check"] = "event",
						["custom_hide"] = "timed",
						["custom"] = "function(_,button,order)\n    if button == 7 then \n        aura_env.order = order\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 30,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "elTvsfc0hBJ",
			["xOffset"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [3]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            local values = {1, 0, 1, 7}\n            C_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\n            local message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n    end)\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 7, b)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\Addons\\guess\\nocircle_lotus_nofill.tga",
			["cooldownEdge"] = false,
			["semver"] = "1.3.8",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "nocircle_noleaf_nofill",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["encounter"] = true,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["Tosh ZT Party Defensives Icons"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["stacksFlags"] = "OUTLINE",
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["actions"] = {
				["start"] = {
					["custom"] = "WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\")",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local config = aura_env.config\nlocal cDisplay = config[\"display\"]\nlocal cRegType = config[\"reg\"][\"type\"]\nlocal cRegSpell = config[\"reg\"][\"spell\"]\n\nlocal sharedConfigSpellIDs = {\n    [\"ArcaneTorrent\"] = {202719, 50613, 80483, 28730, 129597, 155145, 232633, 25046, 69179},\n    [\"Asphyxiate\"] = {221562, 108194},\n    [\"Evasion/Riposte\"] = {5277, 199754},\n    [\"Ascendance\"] = {114050, 114051},\n    [\"Bladestorm\"] = {227847, 46924},\n}\n\n-- Collecting registration information\naura_env.types = {}\naura_env.regTypes = {}\naura_env.spells = {}\naura_env.regSpells = {}\n\nfor key,value in pairs(cRegType) do\n    if value then        \n        if key:find(\"enabled\") == 1 then\n            local type = key:sub(8)\n            aura_env.types[type] = true\n        end\n    end\nend\n\nfor type,group in pairs(cRegSpell) do\n    for key,value in pairs(group) do\n        if value then\n            local spellID = tonumber(key)\n            if spellID then\n                aura_env.spells[spellID] = true\n            else\n                for _,spellID in ipairs(sharedConfigSpellIDs[key]) do\n                    aura_env.spells[spellID] = true\n                end\n            end\n        end\n    end\nend\n\nfor type,_ in pairs(aura_env.types) do tinsert(aura_env.regTypes, type) end\nfor spellID,_ in pairs(aura_env.spells) do tinsert(aura_env.regSpells, spellID) end\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "C_Timer.After(0.05,function() \n        WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \nend)",
					["do_custom"] = true,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "RIGHT",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desc"] = "Requires ZenTracker (ZT) backend https://wago.io/r14U746B7",
			["sparkOffsetY"] = 0,
			["uniqueId"] = "ZenTracker",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["arena"] = true,
						["party"] = true,
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["stacks"] = true,
			["texture"] = "Blizzard Raid Bar",
			["textFont"] = "ArchivoNarrow-Bold",
			["borderOffset"] = 0,
			["auto"] = true,
			["tocversion"] = 80205,
			["timerFont"] = "ArchivoNarrow-Bold",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["spark"] = false,
			["sparkOffsetX"] = 0,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Tosh ZT Party Defensives",
			["customText"] = "",
			["cooldownTextDisabled"] = false,
			["preferToUpdate"] = false,
			["uid"] = "3H33I1Zmbo2",
			["cooldownSwipe"] = true,
			["desaturate"] = false,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["custom_hide"] = "timed",
						["custom"] = "function(allstates, event, type, watchID, ...)\n    if event == \"ZT_ADD\" then\n        local member, spellID, duration, charges = ...\n        \n        -- If this WA was just loaded\n        if not type then\n            if WeakAuras.IsAuraLoaded then\n                -- Since there is no unload event, hooking into region:Collapse() which\n                -- is called from WeakAuras.UnloadDisplays(...)\n                aura_env.region.ZTRegTypes = aura_env.regTypes\n                aura_env.region.ZTRegSpells = aura_env.regSpells\n                \n                if not aura_env.region.ZTCollapse then\n                    aura_env.region.ZTCollapse = aura_env.region.Collapse\n                end\n                \n                function aura_env.region:Collapse(...)\n                    if self.ZTRegTypes and (not WeakAuras.loaded[self.id]) then\n                        WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.regTypes, self.id)\n                        WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.regSpells, self.id)\n                        self.ZTRegTypes = nil\n                        self.ZTRegSpells = nil\n                    end\n                    \n                    self.ZTCollapse(self, ...)\n                end\n            end\n            \n            -- Register for all types/spells\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regTypes, aura_env.region.id)\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regSpells, aura_env.region.id)\n        else\n            local isTypeReg = aura_env.types[type]\n            local isSpellReg = aura_env.spells[spellID]\n            local isInterested = (isTypeReg and not isSpellReg) or (not isTypeReg and isSpellReg)\n            if not allstates[watchID]\n                and isInterested\n                and (not member.isPlayer or aura_env.config[\"reg\"][\"type\"][\"showOwn\"..type])\n            then\n                local state = {\n                    show = true,\n                    changed = true,\n                    autoHide = false,\n                    resort = false,\n                    \n                    progressType = 'timed',\n                    duration = duration,\n                    expirationTime = GetTime(),\n                    \n                    ID = watchID,\n                    type = type,\n                    spellId = spellID,\n                    stacks = charges,\n                    member = member,\n                    unit = unit,\n                    \n                    name = member.name,\n                    icon = select(3, GetSpellInfo(spellID)),\n                }\n                for u in WA_IterateGroupMembers() do\n                    if UnitName(u) == member.name then\n                        state.unit = u\n                    end\n                end\n                \n                allstates[watchID] = state\n                \n                return true\n            end\n        end\n        \n    elseif event == \"ZT_TRIGGER\" then\n        local duration, expiration, charges = ...\n        \n        local state = allstates[watchID]\n        if state then\n            state.changed = true\n            state.duration = duration\n            state.expirationTime = expiration \n            state.stacks = charges\n            \n            return true\n        end\n\n    elseif event == \"ZT_REMOVE\" then\n        local state = allstates[watchID]\n        if state then\n            state.show = false\n            state.changed = true\n            return true\n        end\n\n    elseif event == \"WA_PARTYCOOLDOWNS_UPDATE\" then\n        for id, state in pairs(allstates) do\n            state.show = false\n            state.unit = nil\n            state.changed = true\n            \n            for u in WA_IterateGroupMembers() do\n                if UnitName(u) == state.member.name then\n                    state.unit = u\n                    state.show = true\n                end\n            end\n        end\n        return true\n\n    elseif event == \"GROUP_ROSTER_UPDATE\" then\n        local now = GetTime()\n        if not aura_env.last or aura_env.last < now - 1 then\n            aura_env.last = now\n            local aura_env = aura_env\n            C_Timer.After(0.5, function() \n                WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \n            end)            \n        end\n    end\nend\n",
						["events"] = "ZT_ADD, ZT_TRIGGER, ZT_REMOVE,  GROUP_ROSTER_UPDATE",
						["spellIds"] = {
						},
						["names"] = {
						},
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_CAST_START",
						["customVariables"] = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon"] = true,
			["internalVersion"] = 40,
			["width"] = 28,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["use_color"] = true,
					["alpha"] = 0,
					["scaley"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["rotate"] = 0,
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    if aura_env.state and aura_env.state.member then\n        local colors = RAID_CLASS_COLORS[aura_env.state.member.classID]\n        if colors then\n            return colors.r, colors.g, colors.b, 1\n        end\n    end\nend\n",
					["easeStrength"] = 3,
					["colorB"] = 1,
					["x"] = 0,
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["use_color"] = false,
					["alpha"] = 0,
					["scaley"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["rotate"] = 0,
					["colorFunc"] = "function()\n    if aura_env.state then\n        local c = aura_env.state.classColor\n        if c then\n            return c.r, c.g, c.b, 1\n        end\n    end\nend",
					["easeStrength"] = 3,
					["colorB"] = 1,
					["x"] = 0,
				},
				["finish"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["use_color"] = false,
					["alpha"] = 0,
					["scaley"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["rotate"] = 0,
					["colorFunc"] = "\n\n",
					["easeStrength"] = 3,
					["colorB"] = 1,
					["x"] = 0,
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["displayTextLeft"] = "%n",
			["stickyDuration"] = false,
			["sparkRotation"] = 0,
			["sparkHidden"] = "NEVER",
			["version"] = 24,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOMRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_BOTTOMRIGHT",
					["text_fontSize"] = 10,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["type"] = "description",
							["text"] = "Note: You can adjust other options like icon size in the Display tab",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [1]
						{
							["type"] = "description",
							["text"] = " ",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
						{
							["desc"] = "Direction the icons grow towards, relative to the raid frame",
							["type"] = "select",
							["default"] = 1,
							["key"] = "growDirection",
							["name"] = "Grow Direction",
							["useDesc"] = true,
							["values"] = {
								"Left", -- [1]
								"Right", -- [2]
								"Top", -- [3]
								"Bottom", -- [4]
							},
							["width"] = 1,
						}, -- [3]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 100,
							["step"] = 1,
							["width"] = 1,
							["min"] = -100,
							["key"] = "spacing",
							["desc"] = "Amount of pixels between icons",
							["softMax"] = 20,
							["useDesc"] = true,
							["name"] = "Spacing",
							["default"] = 2,
						}, -- [4]
						{
							["softMin"] = -25,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 500,
							["step"] = 1,
							["width"] = 1,
							["min"] = -500,
							["key"] = "xOffset",
							["desc"] = "Amount of pixels the display is offset horizontally",
							["softMax"] = 25,
							["useDesc"] = true,
							["name"] = "X-Offset",
							["default"] = 0,
						}, -- [5]
						{
							["softMin"] = -25,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 500,
							["step"] = 1,
							["width"] = 1,
							["min"] = -500,
							["key"] = "yOffset",
							["desc"] = "Amount of pixels the display is offset vertically",
							["softMax"] = 25,
							["useDesc"] = true,
							["name"] = "Y-Offset",
							["default"] = 0,
						}, -- [6]
						{
							["type"] = "description",
							["text"] = " ",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [7]
						{
							["type"] = "toggle",
							["default"] = false,
							["name"] = "Force Horizontal",
							["useDesc"] = false,
							["key"] = "preserveRows",
							["width"] = 0.5,
						}, -- [8]
					},
					["type"] = "group",
					["useDesc"] = false,
					["width"] = 2,
					["useCollapse"] = true,
					["key"] = "display",
					["name"] = "Display Configuration",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = true,
					["size"] = 10,
				}, -- [1]
				{
					["subOptions"] = {
						{
							["subOptions"] = {
								{
									["type"] = "description",
									["text"] = "Registration - By Type",
									["fontSize"] = "large",
									["width"] = 2,
								}, -- [1]
								{
									["type"] = "description",
									["text"] = "Coarse-grained registration for spells according to their type",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [2]
								{
									["type"] = "description",
									["text"] = " ",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [3]
								{
									["type"] = "description",
									["text"] = "'Register? (Reg)' - Whether to register for spells of this type",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [4]
								{
									["type"] = "description",
									["text"] = "'Show Own? (Own)' - Whether to show your own spells of this type",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [5]
								{
									["type"] = "description",
									["text"] = "'Row (Row)' - Which row (1, 2 or 3) for displaying spells of this type",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [6]
								{
									["type"] = "description",
									["text"] = " ",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [7]
								{
									["type"] = "description",
									["text"] = "Type",
									["fontSize"] = "large",
									["width"] = 0.35,
								}, -- [8]
								{
									["type"] = "description",
									["text"] = "Reg",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [9]
								{
									["type"] = "description",
									["text"] = "Own",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [10]
								{
									["type"] = "description",
									["text"] = "Row",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [11]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [12]
								{
									["type"] = "description",
									["text"] = "Type",
									["fontSize"] = "large",
									["width"] = 0.35,
								}, -- [13]
								{
									["type"] = "description",
									["text"] = "Reg",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [14]
								{
									["type"] = "description",
									["text"] = "Own",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [15]
								{
									["type"] = "description",
									["text"] = "Row",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [16]
								{
									["type"] = "description",
									["text"] = "DAMAGE",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [17]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledDAMAGE",
									["width"] = 0.2,
								}, -- [18]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnDAMAGE",
									["width"] = 0.2,
								}, -- [19]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowDAMAGE",
									["name"] = "",
									["default"] = 1,
								}, -- [20]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [21]
								{
									["type"] = "description",
									["text"] = "DEFMDISPEL",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [22]
								{
									["type"] = "toggle",
									["default"] = false,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledDEFMDISPEL",
									["width"] = 0.2,
								}, -- [23]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnDEFMDISPEL",
									["width"] = 0.2,
								}, -- [24]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowDEFMDISPEL",
									["name"] = "",
									["default"] = 1,
								}, -- [25]
								{
									["type"] = "description",
									["text"] = "DISPEL",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [26]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledDISPEL",
									["width"] = 0.2,
								}, -- [27]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnDISPEL",
									["width"] = 0.2,
								}, -- [28]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowDISPEL",
									["name"] = "",
									["default"] = 2,
								}, -- [29]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [30]
								{
									["type"] = "description",
									["text"] = "EXTERNAL",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [31]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledEXTERNAL",
									["width"] = 0.2,
								}, -- [32]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnEXTERNAL",
									["width"] = 0.2,
								}, -- [33]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowEXTERNAL",
									["name"] = "",
									["default"] = 2,
								}, -- [34]
								{
									["type"] = "description",
									["text"] = "HARDCC",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [35]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledHARDCC",
									["width"] = 0.2,
								}, -- [36]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnHARDCC",
									["width"] = 0.2,
								}, -- [37]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowHARDCC",
									["name"] = "",
									["default"] = 2,
								}, -- [38]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [39]
								{
									["type"] = "description",
									["text"] = "HEALING",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [40]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledHEALING",
									["width"] = 0.2,
								}, -- [41]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnHEALING",
									["width"] = 0.2,
								}, -- [42]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowHEALING",
									["name"] = "",
									["default"] = 1,
								}, -- [43]
								{
									["type"] = "description",
									["text"] = "IMMUNITY",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [44]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledIMMUNITY",
									["width"] = 0.2,
								}, -- [45]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnIMMUNITY",
									["width"] = 0.2,
								}, -- [46]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowIMMUNITY",
									["name"] = "",
									["default"] = 1,
								}, -- [47]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [48]
								{
									["type"] = "description",
									["text"] = "INTERRUPT",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [49]
								{
									["type"] = "toggle",
									["default"] = false,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledINTERRUPT",
									["width"] = 0.2,
								}, -- [50]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnINTERRUPT",
									["width"] = 0.2,
								}, -- [51]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowINTERRUPT",
									["name"] = "",
									["default"] = 1,
								}, -- [52]
								{
									["type"] = "description",
									["text"] = "PERSONAL",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [53]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledPERSONAL",
									["width"] = 0.2,
								}, -- [54]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnPERSONAL",
									["width"] = 0.2,
								}, -- [55]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowPERSONAL",
									["name"] = "",
									["default"] = 1,
								}, -- [56]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [57]
								{
									["type"] = "description",
									["text"] = "RAIDCD",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [58]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledRAIDCD",
									["width"] = 0.2,
								}, -- [59]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnRAIDCD",
									["width"] = 0.2,
								}, -- [60]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowRAIDCD",
									["name"] = "",
									["default"] = 2,
								}, -- [61]
								{
									["type"] = "description",
									["text"] = "SOFTCC",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [62]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledSOFTCC",
									["width"] = 0.2,
								}, -- [63]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnSOFTCC",
									["width"] = 0.2,
								}, -- [64]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowSOFTCC",
									["name"] = "",
									["default"] = 2,
								}, -- [65]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [66]
								{
									["type"] = "description",
									["text"] = "STHARDCC",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [67]
								{
									["type"] = "toggle",
									["default"] = false,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledSTHARDCC",
									["width"] = 0.2,
								}, -- [68]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnSTHARDCC",
									["width"] = 0.2,
								}, -- [69]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowSTHARDCC",
									["name"] = "",
									["default"] = 1,
								}, -- [70]
								{
									["type"] = "description",
									["text"] = "STSOFTCC",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [71]
								{
									["type"] = "toggle",
									["default"] = false,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledSTSOFTCC",
									["width"] = 0.2,
								}, -- [72]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnSTSOFTCC",
									["width"] = 0.2,
								}, -- [73]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowSTSOFTCC",
									["name"] = "",
									["default"] = 1,
								}, -- [74]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [75]
								{
									["type"] = "description",
									["text"] = "TANK",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [76]
								{
									["type"] = "toggle",
									["default"] = false,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledTANK",
									["width"] = 0.2,
								}, -- [77]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnTANK",
									["width"] = 0.2,
								}, -- [78]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowTANK",
									["name"] = "",
									["default"] = 1,
								}, -- [79]
								{
									["type"] = "description",
									["text"] = "UTILITY",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [80]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "enabledUTILITY",
									["width"] = 0.2,
								}, -- [81]
								{
									["type"] = "toggle",
									["default"] = true,
									["name"] = "",
									["useDesc"] = false,
									["key"] = "showOwnUTILITY",
									["width"] = 0.2,
								}, -- [82]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowUTILITY",
									["name"] = "",
									["default"] = 2,
								}, -- [83]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [84]
							},
							["type"] = "group",
							["useDesc"] = false,
							["width"] = 2,
							["useCollapse"] = true,
							["name"] = "By Type",
							["key"] = "type",
							["limitType"] = "none",
							["groupType"] = "simple",
							["collapse"] = false,
							["size"] = 10,
						}, -- [1]
						{
							["type"] = "description",
							["text"] = " ",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
						{
							["subOptions"] = {
								{
									["type"] = "description",
									["text"] = "Fine-grained registration for individual spells. If a given type is registered, these settings will instead be treated as a blacklist for that type.",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [1]
								{
									["type"] = "description",
									["text"] = "Spells will be shown according to the row specified for their associated type in the \\\"Registration - By Type\\\" settings",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [2]
								{
									["type"] = "description",
									["text"] = " ",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [3]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T2065580:0|t |cFFA330C9Fel Barrage|r",
											["useDesc"] = false,
											["key"] = "258925",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1247262:0|t |cFFA330C9Metamorphosis|r",
											["useDesc"] = false,
											["key"] = "191427",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236299:0|t |cFFA330C9Nemesis|r",
											["useDesc"] = false,
											["key"] = "206491",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1392565:0|t |cFFC41F3BApocalypse|r",
											["useDesc"] = false,
											["key"] = "275699",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237511:0|t |cFFC41F3BArmy of the Dead|r",
											["useDesc"] = false,
											["key"] = "42650",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1029007:0|t |cFFC41F3BBreath of Sindra|r",
											["useDesc"] = false,
											["key"] = "152279",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135372:0|t |cFFC41F3BEmpower Rune Wea|r",
											["useDesc"] = false,
											["key"] = "47568",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T341980:0|t |cFFC41F3BFrostwyrm's Fury|r",
											["useDesc"] = false,
											["key"] = "279302",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T458967:0|t |cFFC41F3BSummon Gargoyle|r",
											["useDesc"] = false,
											["key"] = "49206",
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136224:0|t |cFFC41F3BUnholy Frenzy|r",
											["useDesc"] = false,
											["key"] = "207289",
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236149:0|t |cFFFF7D0ABerserk|r",
											["useDesc"] = false,
											["key"] = "106951",
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136060:0|t |cFFFF7D0ACelestial Alignm|r",
											["useDesc"] = false,
											["key"] = "194223",
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132123:0|t |cFFFF7D0AFury of Elune|r",
											["useDesc"] = false,
											["key"] = "202770",
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Cho|r",
											["useDesc"] = false,
											["key"] = "102560",
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Kin|r",
											["useDesc"] = false,
											["key"] = "102543",
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136074:0|t |cFFABD473Aspect of the Wi|r",
											["useDesc"] = false,
											["key"] = "193530",
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132127:0|t |cFFABD473Bestial Wrath|r",
											["useDesc"] = false,
											["key"] = "19574",
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T2065565:0|t |cFFABD473Coordinated Assa|r",
											["useDesc"] = false,
											["key"] = "266779",
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T461112:0|t |cFFABD473Stampede|r",
											["useDesc"] = false,
											["key"] = "201430",
											["width"] = 0.5,
										}, -- [19]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132329:0|t |cFFABD473Trueshot|r",
											["useDesc"] = false,
											["key"] = "288613",
											["width"] = 0.5,
										}, -- [20]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136048:0|t |cFF40C7EBArcane Power|r",
											["useDesc"] = false,
											["key"] = "12042",
											["width"] = 0.5,
										}, -- [21]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135824:0|t |cFF40C7EBCombustion|r",
											["useDesc"] = false,
											["key"] = "190319",
											["width"] = 0.5,
										}, -- [22]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135838:0|t |cFF40C7EBIcy Veins|r",
											["useDesc"] = false,
											["key"] = "12472",
											["width"] = 0.5,
										}, -- [23]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135994:0|t |cFF40C7EBMirror Image|r",
											["useDesc"] = false,
											["key"] = "55342",
											["width"] = 0.5,
										}, -- [24]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T620832:0|t |cFF00FF96Invoke Xuen, the|r",
											["useDesc"] = false,
											["key"] = "123904",
											["width"] = 0.5,
										}, -- [25]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T988197:0|t |cFF00FF96Serenity|r",
											["useDesc"] = false,
											["key"] = "152173",
											["width"] = 0.5,
										}, -- [26]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136038:0|t |cFF00FF96Storm, Earth, an|r",
											["useDesc"] = false,
											["key"] = "137639",
											["width"] = 0.5,
										}, -- [27]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T606552:0|t |cFF00FF96Touch of Death|r",
											["useDesc"] = false,
											["key"] = "115080",
											["width"] = 0.5,
										}, -- [28]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
											["useDesc"] = false,
											["key"] = "31884",
											["width"] = 0.5,
										}, -- [29]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236262:0|t |cFFF58CBACrusade|r",
											["useDesc"] = false,
											["key"] = "231895",
											["width"] = 0.5,
										}, -- [30]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1030103:0|t |cFFF58CBASeraphim|r",
											["useDesc"] = false,
											["key"] = "152262",
											["width"] = 0.5,
										}, -- [31]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1711336:0|t |cFFFFFFFFDark Ascension|r",
											["useDesc"] = false,
											["key"] = "280711",
											["width"] = 0.5,
										}, -- [32]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T254090:0|t |cFFFFFFFFSurrender to Mad|r",
											["useDesc"] = false,
											["key"] = "193223",
											["width"] = 0.5,
										}, -- [33]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136206:0|t |cFFFFF569Adrenaline Rush|r",
											["useDesc"] = false,
											["key"] = "13750",
											["width"] = 0.5,
										}, -- [34]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236277:0|t |cFFFFF569Killing Spree|r",
											["useDesc"] = false,
											["key"] = "51690",
											["width"] = 0.5,
										}, -- [35]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T376022:0|t |cFFFFF569Shadow Blades|r",
											["useDesc"] = false,
											["key"] = "121471",
											["width"] = 0.5,
										}, -- [36]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T458726:0|t |cFFFFF569Vendetta|r",
											["useDesc"] = false,
											["key"] = "79140",
											["width"] = 0.5,
										}, -- [37]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
											["useDesc"] = false,
											["key"] = "Ascendance",
											["width"] = 0.5,
										}, -- [38]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237577:0|t |cFF0070DEFeral Spirit|r",
											["useDesc"] = false,
											["key"] = "51533",
											["width"] = 0.5,
										}, -- [39]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T2065626:0|t |cFF0070DEStorm Elemental|r",
											["useDesc"] = false,
											["key"] = "192249",
											["width"] = 0.5,
										}, -- [40]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T839977:0|t |cFF0070DEStormkeeper|r",
											["useDesc"] = false,
											["key"] = "191634",
											["width"] = 0.5,
										}, -- [41]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T463286:0|t |cFF8787EDDark Soul: Insta|r",
											["useDesc"] = false,
											["key"] = "113858",
											["width"] = 0.5,
										}, -- [42]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T463286:0|t |cFF8787EDDark Soul: Miser|r",
											["useDesc"] = false,
											["key"] = "113860",
											["width"] = 0.5,
										}, -- [43]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T2065615:0|t |cFF8787EDNether Portal|r",
											["useDesc"] = false,
											["key"] = "267217",
											["width"] = 0.5,
										}, -- [44]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1416161:0|t |cFF8787EDSummon Darkglare|r",
											["useDesc"] = false,
											["key"] = "205180",
											["width"] = 0.5,
										}, -- [45]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T2065628:0|t |cFF8787EDSummon Demonic T|r",
											["useDesc"] = false,
											["key"] = "265187",
											["width"] = 0.5,
										}, -- [46]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136219:0|t |cFF8787EDSummon Infernal|r",
											["useDesc"] = false,
											["key"] = "1122",
											["width"] = 0.5,
										}, -- [47]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T613534:0|t |cFFC79C6EAvatar|r",
											["useDesc"] = false,
											["key"] = "107574",
											["width"] = 0.5,
										}, -- [48]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236303:0|t |cFFC79C6EBladestorm|r",
											["useDesc"] = false,
											["key"] = "Bladestorm",
											["width"] = 0.5,
										}, -- [49]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T458972:0|t |cFFC79C6ERecklessness|r",
											["useDesc"] = false,
											["key"] = "1719",
											["width"] = 0.5,
										}, -- [50]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "DAMAGE",
									["key"] = "DAMAGE",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [4]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236288:0|t |cFFFF7D0ANature's Cure|r",
											["useDesc"] = false,
											["key"] = "88423",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T460692:0|t |cFF00FF96Detox|r",
											["useDesc"] = false,
											["key"] = "115450",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135949:0|t |cFFF58CBACleanse|r",
											["useDesc"] = false,
											["key"] = "4987",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135894:0|t |cFFFFFFFFPurify|r",
											["useDesc"] = false,
											["key"] = "527",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236288:0|t |cFF0070DEPurify Spirit|r",
											["useDesc"] = false,
											["key"] = "77130",
											["width"] = 0.5,
										}, -- [5]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "DEFMDISPEL",
									["key"] = "DEFMDISPEL",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [5]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T828455:0|t |cFFA330C9Disrupt|r",
											["useDesc"] = false,
											["key"] = "278326",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132163:0|t |cFFFF7D0ASoothe|r",
											["useDesc"] = false,
											["key"] = "2908",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136222:0|t |cFFBBBBBBArcane Torrent|r",
											["useDesc"] = false,
											["key"] = "ArcaneTorrent",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135739:0|t |cFFFFFFFFMass Dispel|r",
											["useDesc"] = false,
											["key"] = "32375",
											["width"] = 0.5,
										}, -- [4]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "DISPEL",
									["key"] = "DISPEL",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [6]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T572025:0|t |cFFFF7D0AIronbark|r",
											["useDesc"] = false,
											["key"] = "102342",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T627485:0|t |cFF00FF96Life Cocoon|r",
											["useDesc"] = false,
											["key"] = "116849",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135964:0|t |cFFF58CBABlessing of Prot|r",
											["useDesc"] = false,
											["key"] = "1022",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135966:0|t |cFFF58CBABlessing of Sacr|r",
											["useDesc"] = false,
											["key"] = "6940",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135880:0|t |cFFF58CBABlessing of Spel|r",
											["useDesc"] = false,
											["key"] = "204018",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237542:0|t |cFFFFFFFFGuardian Spirit|r",
											["useDesc"] = false,
											["key"] = "47788",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135936:0|t |cFFFFFFFFPain Supression|r",
											["useDesc"] = false,
											["key"] = "33206",
											["width"] = 0.5,
										}, -- [7]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "EXTERNAL",
									["key"] = "EXTERNAL",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [7]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135795:0|t |cFFA330C9Chaos Nova|r",
											["useDesc"] = false,
											["key"] = "179057",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T642414:0|t |cFF00FF96Leg Sweep|r",
											["useDesc"] = false,
											["key"] = "119381",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1723987:0|t |cFFBBBBBBBull Rush|r",
											["useDesc"] = false,
											["key"] = "255654",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132368:0|t |cFFBBBBBBWar Stomp|r",
											["useDesc"] = false,
											["key"] = "20549",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136013:0|t |cFF0070DECapacitor Totem|r",
											["useDesc"] = false,
											["key"] = "192058",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T607865:0|t |cFF8787EDShadowfury|r",
											["useDesc"] = false,
											["key"] = "30283",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236312:0|t |cFFC79C6EShockwave|r",
											["useDesc"] = false,
											["key"] = "46968",
											["width"] = 0.5,
										}, -- [7]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "HARDCC",
									["key"] = "HARDCC",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [8]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236157:0|t |cFFFF7D0AIncarnation: Tre|r",
											["useDesc"] = false,
											["key"] = "33891",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136107:0|t |cFFFF7D0ATranquility|r",
											["useDesc"] = false,
											["key"] = "740",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T877514:0|t |cFF00FF96Invoke Chi-Ji, t|r",
											["useDesc"] = false,
											["key"] = "198664",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1020466:0|t |cFF00FF96Revival|r",
											["useDesc"] = false,
											["key"] = "115310",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T589117:0|t |cFFF58CBAAvenging Crusade|r",
											["useDesc"] = false,
											["key"] = "216331",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
											["useDesc"] = false,
											["key"] = "31884",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T571555:0|t |cFFF58CBAHoly Avenger|r",
											["useDesc"] = false,
											["key"] = "105809",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135928:0|t |cFFF58CBALay on Hands|r",
											["useDesc"] = false,
											["key"] = "633",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T133192:0|t |cFFF58CBAWord of Glory|r",
											["useDesc"] = false,
											["key"] = "210191",
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1060983:0|t |cFFFFFFFFApotheosis|r",
											["useDesc"] = false,
											["key"] = "200183",
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237540:0|t |cFFFFFFFFDivine Hymn|r",
											["useDesc"] = false,
											["key"] = "64843",
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135895:0|t |cFFFFFFFFEvangelism|r",
											["useDesc"] = false,
											["key"] = "246287",
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T458225:0|t |cFFFFFFFFHoly Word: Salva|r",
											["useDesc"] = false,
											["key"] = "265202",
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T537078:0|t |cFFFFFFFFLuminous Barrier|r",
											["useDesc"] = false,
											["key"] = "271466",
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237548:0|t |cFFFFFFFFRapture|r",
											["useDesc"] = false,
											["key"] = "47536",
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136230:0|t |cFFFFFFFFVampiric Embrace|r",
											["useDesc"] = false,
											["key"] = "15286",
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
											["useDesc"] = false,
											["key"] = "114052",
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136098:0|t |cFF0070DEEarthen Wall Tot|r",
											["useDesc"] = false,
											["key"] = "198838",
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T538569:0|t |cFF0070DEHealing Tide Tot|r",
											["useDesc"] = false,
											["key"] = "108280",
											["width"] = 0.5,
										}, -- [19]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "HEALING",
									["key"] = "HEALING",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [9]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T463284:0|t |cFFA330C9Netherwalk|r",
											["useDesc"] = false,
											["key"] = "196555",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132199:0|t |cFFABD473Aspect of the Tu|r",
											["useDesc"] = false,
											["key"] = "186265",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135841:0|t |cFF40C7EBIce Block|r",
											["useDesc"] = false,
											["key"] = "45438",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T524354:0|t |cFFF58CBADivine Shield|r",
											["useDesc"] = false,
											["key"] = "642",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136177:0|t |cFFFFF569Cloak of Shadows|r",
											["useDesc"] = false,
											["key"] = "31224",
											["width"] = 0.5,
										}, -- [5]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "IMMUNITY",
									["key"] = "IMMUNITY",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [10]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1305153:0|t |cFFA330C9Disrupt|r",
											["useDesc"] = false,
											["key"] = "183752",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237527:0|t |cFFC41F3BMind Freeze|r",
											["useDesc"] = false,
											["key"] = "47528",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237569:0|t |cFFC41F3BShambling Rush|r",
											["useDesc"] = false,
											["key"] = "91802",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236946:0|t |cFFFF7D0ASkull Bash|r",
											["useDesc"] = false,
											["key"] = "106839",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T252188:0|t |cFFFF7D0ASolar Beam|r",
											["useDesc"] = false,
											["key"] = "78675",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T249170:0|t |cFFABD473Counter Shot|r",
											["useDesc"] = false,
											["key"] = "147362",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1376045:0|t |cFFABD473Muzzle|r",
											["useDesc"] = false,
											["key"] = "187707",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135856:0|t |cFF40C7EBCounter Spell|r",
											["useDesc"] = false,
											["key"] = "2139",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T608940:0|t |cFF00FF96Spear Hand Strik|r",
											["useDesc"] = false,
											["key"] = "116705",
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T523893:0|t |cFFF58CBARebuke|r",
											["useDesc"] = false,
											["key"] = "96231",
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T458230:0|t |cFFFFFFFFSilence|r",
											["useDesc"] = false,
											["key"] = "15487",
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132219:0|t |cFFFFF569Kick|r",
											["useDesc"] = false,
											["key"] = "1766",
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136018:0|t |cFF0070DEWind Shear|r",
											["useDesc"] = false,
											["key"] = "57994",
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136174:0|t |cFF8787EDSpell Lock|r",
											["useDesc"] = false,
											["key"] = "19647",
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132938:0|t |cFFC79C6EPummel|r",
											["useDesc"] = false,
											["key"] = "6552",
											["width"] = 0.5,
										}, -- [15]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "INTERRUPT",
									["key"] = "INTERRUPT",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [11]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1305150:0|t |cFFA330C9Blur|r",
											["useDesc"] = false,
											["key"] = "198589",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136120:0|t |cFFC41F3BAnti-Magic Shell|r",
											["useDesc"] = false,
											["key"] = "48707",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136146:0|t |cFFC41F3BDeath Pact|r",
											["useDesc"] = false,
											["key"] = "48743",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237525:0|t |cFFC41F3BIcebound Fortitu|r",
											["useDesc"] = false,
											["key"] = "48792",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136097:0|t |cFFFF7D0ABarkskin|r",
											["useDesc"] = false,
											["key"] = "22812",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136059:0|t |cFFFF7D0ARenewal|r",
											["useDesc"] = false,
											["key"] = "108238",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236169:0|t |cFFFF7D0ASurvival Instinc|r",
											["useDesc"] = false,
											["key"] = "61336",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T461117:0|t |cFFABD473Exhilaration|r",
											["useDesc"] = false,
											["key"] = "109304",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132293:0|t |cFFABD473Feign Death|r",
											["useDesc"] = false,
											["key"] = "5384",
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135865:0|t |cFF40C7EBCold Snap|r",
											["useDesc"] = false,
											["key"] = "235219",
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T620827:0|t |cFF00FF96Dampen Harm|r",
											["useDesc"] = false,
											["key"] = "122278",
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T775460:0|t |cFF00FF96Diffuse Magic|r",
											["useDesc"] = false,
											["key"] = "122783",
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1616072:0|t |cFF00FF96Fortifying Brew|r",
											["useDesc"] = false,
											["key"] = "243435",
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T608939:0|t |cFF00FF96Healing Elixir|r",
											["useDesc"] = false,
											["key"] = "122281",
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T651728:0|t |cFF00FF96Touch of Karma|r",
											["useDesc"] = false,
											["key"] = "122470",
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T524353:0|t |cFFF58CBADivine Protectio|r",
											["useDesc"] = false,
											["key"] = "498",
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135986:0|t |cFFF58CBAEye for an Eye|r",
											["useDesc"] = false,
											["key"] = "205191",
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236264:0|t |cFFF58CBAShield of Vengea|r",
											["useDesc"] = false,
											["key"] = "184662",
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237550:0|t |cFFFFFFFFDesperate Prayer|r",
											["useDesc"] = false,
											["key"] = "19236",
											["width"] = 0.5,
										}, -- [19]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237563:0|t |cFFFFFFFFDispersion|r",
											["useDesc"] = false,
											["key"] = "47585",
											["width"] = 0.5,
										}, -- [20]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132269:0|t |cFFFFF569Evasion/Riposte|r",
											["useDesc"] = false,
											["key"] = "Evasion/Riposte",
											["width"] = 0.5,
										}, -- [21]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T538565:0|t |cFF0070DEAstral Shift|r",
											["useDesc"] = false,
											["key"] = "108271",
											["width"] = 0.5,
										}, -- [22]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T538538:0|t |cFF8787EDDark Pact|r",
											["useDesc"] = false,
											["key"] = "108416",
											["width"] = 0.5,
										}, -- [23]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136150:0|t |cFF8787EDUnending Resolve|r",
											["useDesc"] = false,
											["key"] = "104773",
											["width"] = 0.5,
										}, -- [24]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132336:0|t |cFFC79C6EDie by the Sword|r",
											["useDesc"] = false,
											["key"] = "118038",
											["width"] = 0.5,
										}, -- [25]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132345:0|t |cFFC79C6EEnraged Regenera|r",
											["useDesc"] = false,
											["key"] = "184364",
											["width"] = 0.5,
										}, -- [26]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "PERSONAL",
									["key"] = "PERSONAL",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [12]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1305154:0|t |cFFA330C9Darkness|r",
											["useDesc"] = false,
											["key"] = "196718",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135909:0|t |cFFF58CBAAegis of Light|r",
											["useDesc"] = false,
											["key"] = "204150",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135872:0|t |cFFF58CBAAura Mastery|r",
											["useDesc"] = false,
											["key"] = "31821",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T253400:0|t |cFFFFFFFFPower Word: Barr|r",
											["useDesc"] = false,
											["key"] = "62618",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136080:0|t |cFF0070DEAncestral Protec|r",
											["useDesc"] = false,
											["key"] = "207399",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237586:0|t |cFF0070DESpirit Link Tote|r",
											["useDesc"] = false,
											["key"] = "98008",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132351:0|t |cFFC79C6ERallying Cry|r",
											["useDesc"] = false,
											["key"] = "97462",
											["width"] = 0.5,
										}, -- [7]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "RAIDCD",
									["key"] = "RAIDCD",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [13]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1418286:0|t |cFFA330C9Sigil of Chains|r",
											["useDesc"] = false,
											["key"] = "202138",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1418287:0|t |cFFA330C9Sigil of Misery|r",
											["useDesc"] = false,
											["key"] = "207684",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1418288:0|t |cFFA330C9Sigil of Silence|r",
											["useDesc"] = false,
											["key"] = "202137",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135836:0|t |cFFC41F3BBlinding Sleet|r",
											["useDesc"] = false,
											["key"] = "207167",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T538767:0|t |cFFC41F3BGorefiend's Gras|r",
											["useDesc"] = false,
											["key"] = "108199",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132121:0|t |cFFFF7D0AIncapacitating R|r",
											["useDesc"] = false,
											["key"] = "99",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T538515:0|t |cFFFF7D0AMass Entanglemen|r",
											["useDesc"] = false,
											["key"] = "102359",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T236170:0|t |cFFFF7D0ATyphoon|r",
											["useDesc"] = false,
											["key"] = "132469",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T571588:0|t |cFFFF7D0AUrsol's Vortex|r",
											["useDesc"] = false,
											["key"] = "102793",
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T462650:0|t |cFFABD473Binding Shot|r",
											["useDesc"] = false,
											["key"] = "109248",
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T134153:0|t |cFF40C7EBDragon's Breath|r",
											["useDesc"] = false,
											["key"] = "31661",
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1698698:0|t |cFF40C7EBFreeze (Pet)|r",
											["useDesc"] = false,
											["key"] = "33395",
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135848:0|t |cFF40C7EBFrost Nova|r",
											["useDesc"] = false,
											["key"] = "122",
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T464484:0|t |cFF40C7EBRing of Frost|r",
											["useDesc"] = false,
											["key"] = "113724",
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T839107:0|t |cFF00FF96Ring of Peace|r",
											["useDesc"] = false,
											["key"] = "116844",
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T571553:0|t |cFFF58CBABlinding Light|r",
											["useDesc"] = false,
											["key"] = "115750",
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136184:0|t |cFFFFFFFFPsychic Scream|r",
											["useDesc"] = false,
											["key"] = "8122",
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T571554:0|t |cFFFFFFFFShining Force|r",
											["useDesc"] = false,
											["key"] = "204263",
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237589:0|t |cFF0070DEThunderstorm|r",
											["useDesc"] = false,
											["key"] = "51490",
											["width"] = 0.5,
										}, -- [19]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "SOFTCC",
									["key"] = "SOFTCC",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [14]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1118739:0|t |cFFA330C9Fel Eruption|r",
											["useDesc"] = false,
											["key"] = "211881",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T538558:0|t |cFFC41F3BAsphyxiate|r",
											["useDesc"] = false,
											["key"] = "Asphyxiate",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132114:0|t |cFFFF7D0AMighty Bash|r",
											["useDesc"] = false,
											["key"] = "5211",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132111:0|t |cFFABD473Intimidation|r",
											["useDesc"] = false,
											["key"] = "19577",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135963:0|t |cFFF58CBAHammer of Justic|r",
											["useDesc"] = false,
											["key"] = "853",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135886:0|t |cFFFFFFFFHoly Word: Chast|r",
											["useDesc"] = false,
											["key"] = "88625",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237568:0|t |cFFFFFFFFPsychic Horror|r",
											["useDesc"] = false,
											["key"] = "64044",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T607853:0|t |cFF8787EDMortal Coil|r",
											["useDesc"] = false,
											["key"] = "6789",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T613535:0|t |cFFC79C6EStorm Bolt|r",
											["useDesc"] = false,
											["key"] = "107570",
											["width"] = 0.5,
										}, -- [9]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "STHARDCC",
									["key"] = "STHARDCC",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [15]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1380368:0|t |cFFA330C9Imprison|r",
											["useDesc"] = false,
											["key"] = "217832",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237532:0|t |cFFC41F3BDeath Grip|r",
											["useDesc"] = false,
											["key"] = "49576",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135834:0|t |cFFABD473Freezing Trap|r",
											["useDesc"] = false,
											["key"] = "187650",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T629534:0|t |cFF00FF96Paralysis|r",
											["useDesc"] = false,
											["key"] = "115078",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T572035:0|t |cFFBBBBBBQuaking Palm|r",
											["useDesc"] = false,
											["key"] = "107079",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136175:0|t |cFFFFF569Blind|r",
											["useDesc"] = false,
											["key"] = "2094",
											["width"] = 0.5,
										}, -- [6]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "STSOFTCC",
									["key"] = "STSOFTCC",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [16]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1450143:0|t |cFFA330C9Fel Devastation|r",
											["useDesc"] = false,
											["key"] = "212084",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1344647:0|t |cFFA330C9Fiery Brand|r",
											["useDesc"] = false,
											["key"] = "204021",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1247263:0|t |cFFA330C9Metamorphosis|r",
											["useDesc"] = false,
											["key"] = "187827",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T838812:0|t |cFFC41F3BBlooddrinker|r",
											["useDesc"] = false,
											["key"] = "206931",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T342917:0|t |cFFC41F3BBonestorm|r",
											["useDesc"] = false,
											["key"] = "194844",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T1121487:0|t |cFFC41F3BConsumption|r",
											["useDesc"] = false,
											["key"] = "274156",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135277:0|t |cFFC41F3BDancing Rune Wea|r",
											["useDesc"] = false,
											["key"] = "49028",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T237529:0|t |cFFC41F3BRune Tap|r",
											["useDesc"] = false,
											["key"] = "194679",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136168:0|t |cFFC41F3BVampiric Blood|r",
											["useDesc"] = false,
											["key"] = "55233",
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Gua|r",
											["useDesc"] = false,
											["key"] = "102558",
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T615341:0|t |cFF00FF96Fortifying Brew|r",
											["useDesc"] = false,
											["key"] = "115203",
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T608951:0|t |cFF00FF96Invoke Niuzao|r",
											["useDesc"] = false,
											["key"] = "132578",
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T642417:0|t |cFF00FF96Zen Meditation|r",
											["useDesc"] = false,
											["key"] = "115176",
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135870:0|t |cFFF58CBAArdent Defender|r",
											["useDesc"] = false,
											["key"] = "31850",
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135919:0|t |cFFF58CBAGuardian of the |r",
											["useDesc"] = false,
											["key"] = "86659",
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132366:0|t |cFFC79C6EDemoralizing Sho|r",
											["useDesc"] = false,
											["key"] = "1160",
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135871:0|t |cFFC79C6ELast Stand|r",
											["useDesc"] = false,
											["key"] = "12975",
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T970854:0|t |cFFC79C6ERavager|r",
											["useDesc"] = false,
											["key"] = "228920",
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132362:0|t |cFFC79C6EShield Wall|r",
											["useDesc"] = false,
											["key"] = "871",
											["width"] = 0.5,
										}, -- [19]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132361:0|t |cFFC79C6ESpell Reflection|r",
											["useDesc"] = false,
											["key"] = "23920",
											["width"] = 0.5,
										}, -- [20]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "TANK",
									["key"] = "TANK",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [17]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132129:0|t |cFFFF7D0AForce of Nature |r",
											["useDesc"] = false,
											["key"] = "205636",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136048:0|t |cFFFF7D0AInnervate|r",
											["useDesc"] = false,
											["key"] = "29166",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T464343:0|t |cFFFF7D0AStampeding Roar|r",
											["useDesc"] = false,
											["key"] = "106898",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T651727:0|t |cFF00FF96Tiger's Lust|r",
											["useDesc"] = false,
											["key"] = "116841",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T132089:0|t |cFFBBBBBBShadowmeld|r",
											["useDesc"] = false,
											["key"] = "58984",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135968:0|t |cFFF58CBABlessing of Free|r",
											["useDesc"] = false,
											["key"] = "1044",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T463835:0|t |cFFFFFFFFLeap of Faith|r",
											["useDesc"] = false,
											["key"] = "73325",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T135982:0|t |cFFFFFFFFSymbol of Hope|r",
											["useDesc"] = false,
											["key"] = "64901",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T635350:0|t |cFFFFF569Shroud of Concea|r",
											["useDesc"] = false,
											["key"] = "114018",
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136024:0|t |cFF0070DEEarth Elemental|r",
											["useDesc"] = false,
											["key"] = "198103",
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T136108:0|t |cFF0070DETremor Totem|r",
											["useDesc"] = false,
											["key"] = "8143",
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["default"] = false,
											["name"] = "|T538576:0|t |cFF0070DEWind Rush Totem|r",
											["useDesc"] = false,
											["key"] = "192077",
											["width"] = 0.5,
										}, -- [12]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "UTILITY",
									["key"] = "UTILITY",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [18]
							},
							["type"] = "group",
							["useDesc"] = false,
							["width"] = 2,
							["useCollapse"] = true,
							["name"] = "By Spell",
							["key"] = "spell",
							["limitType"] = "none",
							["groupType"] = "simple",
							["collapse"] = false,
							["size"] = 10,
						}, -- [3]
					},
					["type"] = "group",
					["useDesc"] = false,
					["width"] = 2,
					["useCollapse"] = true,
					["name"] = "Spell Registration",
					["key"] = "reg",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = true,
					["size"] = 10,
				}, -- [2]
				{
					["type"] = "description",
					["text"] = " ",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "description",
					["text"] = " ",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [4]
				{
					["type"] = "description",
					["text"] = "WARNING: Do not click Enter Author Mode!",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [5]
				{
					["type"] = "description",
					["text"] = " ",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [6]
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["semver"] = "1.0.16",
			["borderBackdrop"] = "Solid",
			["displayTextRight"] = "%p",
			["stacksFont"] = "Accidental Presidency",
			["config"] = {
				["display"] = {
					["spacing"] = 2,
					["xOffset"] = -2,
					["preserveRows"] = false,
					["growDirection"] = 1,
					["yOffset"] = -4,
				},
				["reg"] = {
					["type"] = {
						["enabledRAIDCD"] = false,
						["enabledTANK"] = true,
						["rowHARDCC"] = 2,
						["rowHEALING"] = 1,
						["showOwnINTERRUPT"] = false,
						["enabledHARDCC"] = false,
						["rowDEFMDISPEL"] = 1,
						["rowIMMUNITY"] = 1,
						["showOwnSOFTCC"] = false,
						["rowEXTERNAL"] = 1,
						["showOwnDEFMDISPEL"] = false,
						["enabledIMMUNITY"] = true,
						["rowRAIDCD"] = 2,
						["rowSOFTCC"] = 2,
						["showOwnEXTERNAL"] = true,
						["rowDISPEL"] = 2,
						["showOwnRAIDCD"] = false,
						["showOwnTANK"] = true,
						["showOwnSTSOFTCC"] = false,
						["enabledSTSOFTCC"] = false,
						["showOwnDAMAGE"] = false,
						["enabledSOFTCC"] = false,
						["showOwnDISPEL"] = false,
						["rowTANK"] = 1,
						["enabledDISPEL"] = false,
						["enabledINTERRUPT"] = false,
						["enabledHEALING"] = false,
						["enabledPERSONAL"] = true,
						["rowSTHARDCC"] = 1,
						["rowPERSONAL"] = 1,
						["enabledUTILITY"] = false,
						["showOwnPERSONAL"] = true,
						["enabledEXTERNAL"] = true,
						["showOwnUTILITY"] = false,
						["enabledDEFMDISPEL"] = false,
						["showOwnSTHARDCC"] = false,
						["rowSTSOFTCC"] = 1,
						["enabledDAMAGE"] = false,
						["rowDAMAGE"] = 1,
						["showOwnIMMUNITY"] = true,
						["rowUTILITY"] = 2,
						["showOwnHARDCC"] = false,
						["showOwnHEALING"] = false,
						["rowINTERRUPT"] = 1,
						["enabledSTHARDCC"] = false,
					},
					["spell"] = {
						["DAMAGE"] = {
							["152279"] = false,
							["12042"] = false,
							["121471"] = false,
							["42650"] = false,
							["191427"] = false,
							["190319"] = false,
							["113858"] = false,
							["193530"] = false,
							["1719"] = false,
							["137639"] = false,
							["47568"] = false,
							["279302"] = false,
							["280711"] = false,
							["123904"] = false,
							["Bladestorm"] = false,
							["201430"] = false,
							["13750"] = false,
							["193223"] = false,
							["Ascendance"] = false,
							["31884"] = false,
							["231895"] = false,
							["265187"] = false,
							["12472"] = false,
							["115080"] = false,
							["51533"] = false,
							["267217"] = false,
							["205180"] = false,
							["55342"] = false,
							["275699"] = false,
							["113860"] = false,
							["1122"] = false,
							["106951"] = false,
							["288613"] = false,
							["79140"] = false,
							["202770"] = false,
							["49206"] = false,
							["152262"] = false,
							["266779"] = false,
							["107574"] = false,
							["192249"] = false,
							["152173"] = false,
							["191634"] = false,
							["206491"] = false,
							["102543"] = false,
							["51690"] = false,
							["19574"] = false,
							["207289"] = false,
							["194223"] = false,
							["258925"] = false,
							["102560"] = false,
						},
						["HEALING"] = {
							["633"] = false,
							["198664"] = false,
							["246287"] = false,
							["216331"] = false,
							["740"] = false,
							["108280"] = false,
							["210191"] = false,
							["265202"] = false,
							["47536"] = false,
							["200183"] = false,
							["115310"] = false,
							["64843"] = false,
							["114052"] = false,
							["271466"] = false,
							["31884"] = false,
							["198838"] = false,
							["33891"] = false,
							["105809"] = false,
							["15286"] = false,
						},
						["INTERRUPT"] = {
							["91802"] = false,
							["15487"] = false,
							["1766"] = false,
							["183752"] = false,
							["187707"] = false,
							["116705"] = false,
							["2139"] = false,
							["6552"] = false,
							["57994"] = false,
							["96231"] = false,
							["47528"] = false,
							["106839"] = false,
							["78675"] = false,
							["147362"] = false,
							["19647"] = false,
						},
						["RAIDCD"] = {
							["62618"] = false,
							["31821"] = false,
							["98008"] = false,
							["97462"] = false,
							["204150"] = false,
							["196718"] = false,
							["207399"] = false,
						},
						["IMMUNITY"] = {
							["45438"] = false,
							["642"] = false,
							["196555"] = false,
							["31224"] = false,
							["186265"] = false,
						},
						["STHARDCC"] = {
							["853"] = false,
							["5211"] = false,
							["107570"] = false,
							["64044"] = false,
							["6789"] = false,
							["Asphyxiate"] = false,
							["211881"] = false,
							["88625"] = false,
							["19577"] = false,
						},
						["EXTERNAL"] = {
							["6940"] = false,
							["47788"] = false,
							["102342"] = false,
							["204018"] = false,
							["33206"] = false,
							["1022"] = false,
							["116849"] = false,
						},
						["STSOFTCC"] = {
							["217832"] = false,
							["49576"] = false,
							["187650"] = false,
							["115078"] = false,
							["2094"] = false,
							["107079"] = false,
						},
						["HARDCC"] = {
							["20549"] = false,
							["179057"] = false,
							["255654"] = false,
							["30283"] = false,
							["192058"] = false,
							["46968"] = false,
							["119381"] = false,
						},
						["DEFMDISPEL"] = {
							["115450"] = false,
							["77130"] = false,
							["4987"] = false,
							["527"] = false,
							["88423"] = false,
						},
						["SOFTCC"] = {
							["102359"] = false,
							["207167"] = false,
							["8122"] = false,
							["202137"] = false,
							["207684"] = false,
							["99"] = false,
							["102793"] = false,
							["51490"] = false,
							["116844"] = false,
							["113724"] = false,
							["33395"] = false,
							["132469"] = false,
							["122"] = false,
							["202138"] = false,
							["115750"] = false,
							["108199"] = false,
							["31661"] = false,
							["204263"] = false,
							["109248"] = false,
						},
						["DISPEL"] = {
							["278326"] = false,
							["ArcaneTorrent"] = false,
							["32375"] = false,
							["2908"] = false,
						},
						["PERSONAL"] = {
							["184662"] = false,
							["108238"] = false,
							["108271"] = false,
							["118038"] = false,
							["48743"] = false,
							["198589"] = false,
							["108416"] = false,
							["61336"] = false,
							["109304"] = false,
							["205191"] = false,
							["184364"] = false,
							["104773"] = false,
							["Evasion/Riposte"] = false,
							["48792"] = false,
							["243435"] = false,
							["47585"] = false,
							["22812"] = false,
							["122281"] = false,
							["19236"] = false,
							["498"] = false,
							["235219"] = false,
							["122783"] = false,
							["122470"] = false,
							["48707"] = false,
							["122278"] = false,
							["5384"] = false,
						},
						["TANK"] = {
							["204021"] = false,
							["31850"] = false,
							["1160"] = false,
							["206931"] = false,
							["194679"] = false,
							["194844"] = false,
							["49028"] = false,
							["274156"] = false,
							["102558"] = false,
							["86659"] = false,
							["115176"] = false,
							["228920"] = false,
							["23920"] = false,
							["12975"] = false,
							["132578"] = false,
							["115203"] = false,
							["212084"] = false,
							["55233"] = false,
							["187827"] = false,
							["871"] = false,
						},
						["UTILITY"] = {
							["64901"] = false,
							["1044"] = false,
							["106898"] = false,
							["116841"] = false,
							["205636"] = false,
							["192077"] = false,
							["73325"] = false,
							["8143"] = false,
							["198103"] = false,
							["58984"] = false,
							["114018"] = false,
							["29166"] = false,
						},
					},
				},
			},
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["height"] = 28,
			["borderSize"] = 1,
			["backgroundColor"] = {
				0.21176470588235, -- [1]
				0.21176470588235, -- [2]
				0.21176470588235, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["borderInFront"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHeight"] = 30,
			["sparkRotationMode"] = "AUTO",
			["textFlags"] = "OUTLINE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["useAdjustededMax"] = false,
			["id"] = "Tosh ZT Party Defensives Icons",
			["rotateText"] = "NONE",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "0",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "0",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["skipWagoUpdate"] = "34",
		},
		["circle_lotus_fill"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 2, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["customName"] = "function()\n    return \nend",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unit"] = "player",
						["customName"] = "function()\n    return aura_env.order            \nend",
						["events"] = "TirnaScitheButtonOrder",
						["check"] = "event",
						["custom_hide"] = "timed",
						["custom"] = "function(_,button,order)\n    if button == 2 then \n        aura_env.order = order\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 30,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "r7WpfSk1XOA",
			["xOffset"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [3]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            local values = {0, 0, 0, 2}\n            C_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\n            local message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n    end)\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 2, b)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\Addons\\guess\\circle_lotus_fill.tga",
			["cooldownEdge"] = false,
			["semver"] = "1.3.8",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "circle_lotus_fill",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["encounter"] = true,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["ZenTracker (ZT) Main"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = " ",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/r14U746B7/78",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["custom"] = "",
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "--------------------------------------------------------------------------------\n-- CONFIGURATION\n--\n-- The configuration options have moved to the \"Author Options\" tab as of\n-- WeakAuras Version 2.10.\n--\n-- DO NOT EDIT THIS CODE!\n--------------------------------------------------------------------------------\nlocal ZT = aura_env\n\n-- Local versions of commonly used functions\nlocal ipairs = ipairs\nlocal pairs = pairs\nlocal print = print\nlocal select = select\nlocal tonumber = tonumber\nlocal tinsert = tinsert\n\nlocal IsInGroup = IsInGroup\nlocal IsInRaid = IsInRaid\nlocal UnitGUID = UnitGUID\n\n-- Turns on/off debugging messages\nlocal DEBUG_EVENT = { isEnabled = false, color = \"FF2281F4\" }\nlocal DEBUG_MESSAGE = { isEnabled = false, color = \"FF11D825\" }\nlocal DEBUG_TIMER = { isEnabled = false, color = \"FFF96D27\" }\nlocal DEBUG_TRACKING = { isEnabled = false, color = \"FFA53BF7\" }\n\n-- Turns on/off testing of combatlog-based tracking for the player\n-- (Note: This will disable sharing of player CD updates over addon messages)\nlocal TEST_CLEU = false\n\nlocal function prdebug(type, ...)\n    if type.isEnabled then\n        print(\"|c\"..type.color..\"[ZT-Debug]\", ...)\n    end\nend\n\nlocal function prerror(...)\n    print(\"|cFFFF0000[ZT-Error]\", ...)\nend\n\n-- Utility functions for creating tables/maps\nlocal function DefaultTable_Create(genDefaultFunc)\n    local metatable = {}\n    metatable.__index = function(table, key)\n        local value = genDefaultFunc()\n        rawset(table, key, value)\n        return value\n    end\n\n    return setmetatable({}, metatable)\nend\n\nlocal function Map_FromTable(table)\n    local map = {}\n    for _,value in ipairs(table) do\n        map[value] = true\n    end\n    return map\nend\n\n--##############################################################################\n-- Class and Spec Information\n\nlocal DH = {ID=12, name=\"DEMONHUNTER\", Havoc=577, Veng=581}\nlocal DK = {ID=6, name=\"DEATHKNIGHT\", Blood=250, Frost=251, Unholy=252}\nlocal Druid = {ID=11, name=\"DRUID\", Balance=102, Feral=103, Guardian=104, Resto=105}\nlocal Hunter = {ID=3, name=\"HUNTER\", BM=253, MM=254, SV=255}\nlocal Mage = {ID=8, name=\"MAGE\", Arcane=62, Fire=63, Frost=64}\nlocal Monk = {ID=10, name=\"MONK\", BRM=268, WW=269, MW=270}\nlocal Paladin = {ID=2, name=\"PALADIN\", Holy=65, Prot=66, Ret=70}\nlocal Priest = {ID=5, name=\"PRIEST\", Disc=256, Holy=257, Shadow=258}\nlocal Rogue = {ID=4, name=\"ROGUE\", Sin=259, Outlaw=260, Sub=261}\nlocal Shaman = {ID=7, name=\"SHAMAN\", Ele=262, Enh=263, Resto=264}\nlocal Warlock = {ID=9, name=\"WARLOCK\", Affl=265, Demo=266, Destro=267}\nlocal Warrior = {ID=1, name=\"WARRIOR\", Arms=71, Fury=72, Prot=73}\n\nlocal AllClasses = {\n    [DH.name] = DH, [DK.name] = DK, [Druid.name] = Druid, [Hunter.name] = Hunter,\n    [Mage.name] = Mage, [Monk.name] = Monk, [Paladin.name] = Paladin,\n    [Priest.name] = Priest, [Rogue.name] = Rogue, [Shaman.name] = Shaman,\n    [Warlock.name] = Warlock, [Warrior.name] = Warrior\n}\n\nlocal AllCovenants = {\n    [\"Kyrian\"] = 1,\n    [\"Venthyr\"] = 2,\n    [\"NightFae\"] = 3,\n    [\"Necrolord\"] = 4,\n}\n\n--##############################################################################\n-- Spell Requirements\n\nlocal function Requirement(type, check, indices)\n    return { type = type, check = check, indices = indices }\nend\n\nlocal function LevelReq(minLevel)\n    return Requirement(\"level\", function(member)\n        if type(member.level) == \"string\" then\n            prerror(\"!!!\", member.level)\n        end\n        return member.level >= minLevel end, {minLevel})\nend\n\nlocal function RaceReq(race)\n    return Requirement(\"race\", function(member) return member.race == race end, {race})\nend\n\nlocal function ClassReq(class)\n    return Requirement(\"class\", function(member) return member.classID == class.ID end, {class.ID})\nend\n\nlocal function SpecReq(ids)\n    local idsMap = Map_FromTable(ids)\n    return Requirement(\"spec\", function(member) return idsMap[member.specID] ~= nil end, ids)\nend\n\nlocal function TalentReq(id)\n    return Requirement(\"talent\", function(member) return member.talents[id] ~= nil end, {id})\nend\n\nlocal function NoTalentReq(id)\n    return Requirement(\"notalent\", function(member) return member.talents[id] == nil end, {id})\nend\n\n-- local function ItemReq(id)\n--     return Requirement(\"items\", function(member) return false end)\n-- end\n\nlocal function CovenantReq(name)\n    local covenantID = AllCovenants[name]\n    return Requirement(\"covenant\", function(member) return covenantID == member.covenantID end, {covenantID})\nend\n\n--##############################################################################\n-- Spell Modifiers (Static and Dynamic)\n\nlocal function StaticMod(func)\n    return { type = \"Static\", func = func }\nend\n\nlocal function SubtractMod(amount)\n    return StaticMod(function(watchInfo) watchInfo.duration = watchInfo.duration - amount end)\nend\n\nlocal function MultiplyMod(coeff)\n    return StaticMod(function(watchInfo) watchInfo.duration = watchInfo.duration * coeff end)\nend\n\nlocal function ChargesMod(amount)\n    return StaticMod(function(watchInfo)\n        watchInfo.charges = amount\n        watchInfo.maxCharges = amount\n    end)\nend\n\n\nlocal function DynamicMod(handlers)\n    if handlers.type then\n        handlers = { handlers }\n    end\n\n    return { type = \"Dynamic\", handlers = handlers }\nend\n\nlocal function EventDeltaMod(type, spellID, delta)\n    return DynamicMod({\n        type = type,\n        spellID = spellID,\n        handler = function(watchInfo)\n            watchInfo:updateCDDelta(delta)\n        end\n    })\nend\n\nlocal function CastDeltaMod(spellID, delta)\n    return EventDeltaMod(\"SPELL_CAST_SUCCESS\", spellID, delta)\nend\n\nlocal function EventRemainingMod(type, spellID, remaining)\n    return DynamicMod({\n        type = type,\n        spellID = spellID,\n        handler = function(watchInfo)\n            watchInfo:updateCDRemaining(remaining)\n        end\n    })\nend\n\nlocal function CastRemainingMod(spellID, remaining)\n    return EventRemainingMod(\"SPELL_CAST_SUCCESS\", spellID, remaining)\nend\n\n-- If Shockwave 3+ targets hit then reduces cooldown by 15 seconds\nlocal RumblingEarthMod = DynamicMod({\n    {\n        type = \"SPELL_CAST_SUCCESS\", spellID = 46968,\n        handler = function(watchInfo)\n            watchInfo.numHits = 0\n        end\n    },\n    {\n        type = \"SPELL_AURA_APPLIED\", spellID = 132168,\n        handler = function(watchInfo)\n            watchInfo.numHits = watchInfo.numHits + 1\n            if watchInfo.numHits == 3 then\n                watchInfo:updateCDDelta(-15)\n            end\n        end\n    }\n})\n\n-- Each target hit by Capacitor Totem reduces cooldown by 5 seconds (up to 4 targets hit)\nlocal function StaticChargeAuraHandler(watchInfo)\n    watchInfo.numHits = watchInfo.numHits + 1\n    if watchInfo.numHits <= 4 then\n        watchInfo:updateCDDelta(-5)\n    end\nend\n\nlocal StaticChargeMod = DynamicMod({\n    type = \"SPELL_SUMMON\", spellID = 192058,\n    handler = function(watchInfo)\n        watchInfo.numHits = 0\n\n        if watchInfo.totemGUID then\n            ZT.eventHandlers:remove(\"SPELL_AURA_APPLIED\", 118905, watchInfo.totemGUID, StaticChargeAuraHandler)\n        end\n\n        watchInfo.totemGUID = select(8, CombatLogGetCurrentEventInfo())\n        ZT.eventHandlers:add(\"SPELL_AURA_APPLIED\", 118905, watchInfo.totemGUID, StaticChargeAuraHandler, watchInfo)\n    end\n})\n\n-- Guardian Spirit: If expires watchInfothout healing then reset to 60 seconds\nlocal GuardianAngelMod = DynamicMod({\n    {\n        type = \"SPELL_HEAL\", spellID = 48153,\n        handler = function(watchInfo)\n            watchInfo.spiritHeal = true\n        end\n    },\n    {\n        type = \"SPELL_AURA_REMOVED\", spellID = 47788,\n        handler = function(watchInfo)\n            if not watchInfo.spiritHeal then\n                watchInfo:updateCDRemaining(60)\n            end\n            watchInfo.spiritHeal = false\n        end\n    }\n})\n\n-- Dispels: Go on cooldown only if a debuff is dispelled\nlocal function DispelMod(spellID)\n    return DynamicMod({\n        type = \"SPELL_DISPEL\",\n        spellID = spellID,\n        handler = function(watchInfo)\n            watchInfo:updateCDRemaining(8)\n        end\n    })\nend\n\n-- Resource Spending: For every spender, reduce cooldown by (coefficient * cost) seconds\n--   Note: By default, I try to use minimum cost values as to not over-estimate the cooldown reduction\nlocal specIDToSpenderInfo = {\n    [DK.Blood] = {\n        [47541]  = 40, -- Death Coil\n        [49998]  = 40, -- Death Strike (Assumes -5 due to Ossuary)\n        [61999]  = 30, -- Raise Ally\n        [327574]  = 20, -- Sacrificial Pact\n    },\n    [Warrior.Arms] = {\n        [845]    = 20, -- Cleave\n        [163201] = 20, -- Execute (Ignores Sudden Death)\n        [1715]   = 10, -- Hamstring\n        [202168] = 10, -- Impending Victory\n        [12294]  = 30, -- Moral Strike\n        [772]    = 30, -- Rend\n        [1464]   = 20, -- Slam\n        [1680]   = 30, -- Whirlwind\n        [190456] = 40, -- Ignore Pain\n    },\n    [Warrior.Fury] = {\n        [202168] = 10, -- Impending Victory\n        [184367] = 75, -- Rampage (Assumes -10 from Carnage)\n        [12323]  = 10, -- Piercing Howl\n        [190456] = 40, -- Ignore Pain\n    },\n    [Warrior.Prot] = {\n        [190456] = 40, -- Ignore Pain (Ignores Vengeance)\n        [202168] = 10, -- Impending Victory\n        [6572]   = 30, -- Revenge (Ignores Vengeance)\n        [2565]   = 30, -- Shield Block\n    },\n    [Hunter.BM] = {\n        [185358] = 40, -- Arcane Shot\n        [195645] = 30, -- Wing Clip\n        [982]    = 35, -- Revive Pet\n        [34026]  = 30, -- Kill Command\n        [193455] = 35, -- Cobra Shot\n        [2643]   = 40, -- Multi-Shot\n        [1513]   = 25, -- Scare Beast\n        [53351]  = 10, -- Kill Shot\n        [131894] = 30, -- A Murder of Crows\n        [120360] = 60, -- Barrage\n    },\n    [Hunter.MM] = {\n        [185358] = 20, -- Arcane Shot\n        [195645] = 30, -- Wing Clip\n        [982]    = 35, -- Revive Pet\n        [19434]  = 35, -- Aimed Shot\n        [186387] = 10, -- Bursting Shot\n        [257620] = 20, -- Multi-Shot\n        [53351]  = 10, -- Kill Shot\n        [271788] = 60, -- Serpent Sting\n        [131894] = 30, -- A Murder of Crows\n        [120360] = 60, -- Barrage\n        [212431] = 20, -- Explosive Shot\n        [342049] = 20, -- Chimaera Shot\n    },\n    [Hunter.SV] = {\n        [185358] = 40, -- Arcane Shot\n        [195645] = 30, -- Wing Clip\n        [982]    = 35, -- Revive Pet\n        [186270] = 30, -- Raptor Strike\n        [259491] = 20, -- Serpent Sting\n        [187708] = 35, -- Carve\n        [320976] = 10, -- Kill Shot\n        [212436] = 30, -- Butchery\n        [259387] = 30, -- Mongoose Bite\n        [259391] = 15, -- Chakrams\n    },\n    [Paladin] = {\n        [85673]  = 3, -- Word of Glory\n        [85222]  = 3, -- Light of Dawn\n        [152262] = 3, -- Seraphim\n        [53600]  = 3, -- Shield of the Righteous\n        [85256]  = 3, -- Templar's Verdict\n        [53385]  = 3, -- Divine Storm\n        [343527] = 3, -- Execution Sentence\n    },\n    [Paladin.Holy] = {\n        [85673]  = 3, -- Word of Glory\n        [85222]  = 3, -- Light of Dawn\n        [152262] = 3, -- Seraphim\n    },\n    [Paladin.Prot] = {\n        [85673]  = 3, -- Word of Glory\n        [53600]  = 3, -- Shield of the Righteous\n        [152262] = 3, -- Seraphim\n    },\n    [Paladin.Ret] = {\n        [85673]  = 3, -- Word of Glory\n        [85256]  = 3, -- Templar's Verdict\n        [53385]  = 3, -- Divine Storm\n        [343527] = 3, -- Execution Sentence\n        [152262] = 3, -- Seraphim\n    },\n}\n\nlocal function ResourceSpendingMods(specID, coefficient)\n    local handlers = {}\n    local spenderInfo = specIDToSpenderInfo[specID]\n\n    for spellID,cost in pairs(spenderInfo) do\n        local delta = -(coefficient * cost)\n\n        handlers[#handlers+1] = {\n            type = \"SPELL_CAST_SUCCESS\",\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateCDDelta(delta)\n            end\n        }\n    end\n\n    return DynamicMod(handlers)\nend\n\n-- Duration Modifier (For active buff durations)\nlocal function DurationMod(spellID, refreshes)\n    local handlers = {}\n    handlers[1] = {\n        type = \"SPELL_AURA_REMOVED\",\n        force = true,\n        spellID = spellID,\n        handler = function(watchInfo)\n            watchInfo.activeExpiration = GetTime()\n            ZT:sendCDUpdate(watchInfo, true)\n            watchInfo:sendTriggerEvent()\n        end\n    }\n\n    if refreshes then\n        for r in pairs(refreshes) do\n            handlers[#handlers+1] = {\n                type = \"SPELL_CAST_SUCCESS\",\n                spellID = r,\n                handler = function(watchInfo)\n                end\n            }\n        end\n    end\n\n    return DynamicMod(handlers)\nend\n\nlocal function ActiveMod(spellID, duration, refreshes)\n    return { spellID = spellID, duration = duration , refreshes = refreshes}\nend\n\n--##############################################################################\n-- List of Tracked Spells\n-- TODO: Denote which spells should be modified by UnitSpellHaste(...)\n\nZT.spellListVersion = 103\nZT.spellList = {\n    -- Racials\n    {type=\"HARDCC\", id=255654, cd=120, reqs={RaceReq(\"HighmountainTauren\")}}, -- Bull Rush\n    {type=\"HARDCC\", id=20549, cd=90, reqs={RaceReq(\"Tauren\")}}, -- War Stomp\n    {type=\"STHARDCC\", id=287712, cd=150, reqs={RaceReq(\"KulTiran\")}}, -- Haymaker\n    {type=\"STSOFTCC\", id=107079, cd=120, reqs={RaceReq(\"Pandaren\")}}, -- Quaking Palm\n    {type=\"DISPEL\", id=202719, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(DH)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=50613, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(DK)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=80483, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(Hunter)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=28730, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(Mage)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=129597, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(Monk)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=155145, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(Paladin)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=232633, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(Priest)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=25046, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(Rogue)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=28730, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(Warlock)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=69179, cd=120, reqs={RaceReq(\"BloodElf\"), ClassReq(Warrior)}}, -- Arcane Torrent\n    {type=\"DISPEL\", id=20594, cd=120, reqs={RaceReq(\"Dwarf\")}, mods={{mod=EventRemainingMod(\"SPELL_AURA_APPLIED\",65116,120)}}}, -- Stoneform\n    {type=\"DISPEL\", id=265221, cd=120, reqs={RaceReq(\"DarkIronDwarf\")}, mods={{mod=EventRemainingMod(\"SPELL_AURA_APPLIED\",265226,120)}}}, -- Fireblood\n    {type=\"UTILITY\", id=58984, cd=120, reqs={RaceReq(\"NightElf\")}}, -- Shadowmeld\n\n    -- Covenants\n    {type=\"COVENANT\", id=324739, cd=300, reqs={CovenantReq(\"Kyrian\")}, version=101},-- Summon Steward\n    {type=\"COVENANT\", id=323436, cd=180, reqs={CovenantReq(\"Kyrian\")}, version=103},-- Purify Soul\n    {type=\"COVENANT\", id=300728, cd=60, reqs={CovenantReq(\"Venthyr\")}, version=101},-- Door of Shadows\n    {type=\"COVENANT\", id=310143, cd=90, reqs={CovenantReq(\"NightFae\")}, version=101},-- Soulshape\n    {type=\"COVENANT\", id=324631, cd=90, reqs={CovenantReq(\"Necrolord\")}, version=101},-- Fleshcraft\n\n    -- DH\n    ---- Base\n    {type=\"INTERRUPT\", id=183752, cd=15, reqs={ClassReq(DH)}}, -- Disrupt\n    {type=\"UTILITY\", id=188501, cd=60, reqs={ClassReq(DH)}, mods={{reqs={ClassReq(DH), LevelReq(42)}, mod=SubtractMod(30)}}}, -- Spectral Sight\n    {type=\"TANK\", id=185245, cd=8, reqs={ClassReq(DH), LevelReq(9)}}, -- Torment\n    {type=\"DISPEL\", id=278326, cd=10, reqs={ClassReq(DH), LevelReq(17)}}, -- Consume Magic\n    {type=\"STSOFTCC\", id=217832, cd=45, reqs={ClassReq(DH), LevelReq(34)}}, -- Imprison\n    ---- DH.Havoc\n    {type=\"HARDCC\", id=179057, cd=60, reqs={SpecReq({DH.Havoc})}, mods={{reqs={TalentReq(206477)}, mod=SubtractMod(20)}}}, -- Chaos Nova\n    {type=\"PERSONAL\", id=198589, cd=60, reqs={SpecReq({DH.Havoc}), LevelReq(21)}, active=ActiveMod(212800, 10)}, -- Blur\n    {type=\"RAIDCD\", id=196718, cd=300, reqs={SpecReq({DH.Havoc}), LevelReq(39)}, mods={{reqs={LevelReq(47)}, mod=SubtractMod(120)}}, active=ActiveMod(nil, 8)}, -- Darkness\n    {type=\"DAMAGE\", id=191427, cd=300, reqs={SpecReq({DH.Havoc})}, mods={{reqs={LevelReq(48)}, mod=SubtractMod(60)}}}, -- Metamorphosis\n    ---- DH.Veng\n    {type=\"TANK\", id=204021, cd=60, reqs={SpecReq({DH.Veng})}}, -- Fiery Brand\n    {type=\"TANK\", id=212084, cd=45, reqs={SpecReq({DH.Veng}), LevelReq(11)}}, -- Fel Devastation\n    {type=\"SOFTCC\", id=207684, cd=180, reqs={SpecReq({DH.Veng}), LevelReq(21)}, mods={{reqs={LevelReq(33)}, mod=SubtractMod(90)}, {reqs={TalentReq(209281)}, mod=MultiplyMod(0.8)}}}, -- Sigil of Misery\n    {type=\"SOFTCC\", id=202137, cd=120, reqs={SpecReq({DH.Veng}), LevelReq(39)}, mods={{reqs={LevelReq(48)}, mod=SubtractMod(60)}, {reqs={TalentReq(209281)}, mod=MultiplyMod(0.8)}}}, -- Sigil of Silence\n    {type=\"TANK\", id=187827, cd=300, reqs={SpecReq({DH.Veng})}, mods={{reqs={LevelReq(20)}, mod=SubtractMod(60)}, {reqs={LevelReq(48)}, mod=SubtractMod(60)}}}, -- Metamorphosis\n    ---- Talents\n    {type=\"IMMUNITY\", id=196555, cd=180, reqs={TalentReq(196555)}, active=ActiveMod(196555, 5)}, -- Netherwalk\n    {type=\"SOFTCC\", id=202138, cd=90, reqs={TalentReq(202138)}}, -- Sigil of Chains\n    {type=\"STHARDCC\", id=211881, cd=30, reqs={TalentReq(211881)}}, -- Fel Eruption\n    {type=\"TANK\", id=263648, cd=30, reqs={TalentReq(263648)}}, -- Soul Barrier\n    {type=\"DAMAGE\", id=258925, cd=60, reqs={TalentReq(258925)}}, -- Fel Barrage\n    {type=\"TANK\", id=320341, cd=90, reqs={TalentReq(320341)}}, -- Bulk Extraction\n    ---- Covenants\n    {type=\"COVENANT\", id=312202, cd=60, reqs={ClassReq(DK), CovenantReq(\"Kyrian\")}, version=103}, -- Shackle the Unworthy\n    {type=\"COVENANT\", id=311648, cd=60, reqs={ClassReq(DK), CovenantReq(\"Venthyr\")}, version=103}, -- Swarming Mist\n    {type=\"COVENANT\", id=324128, cd=30, reqs={ClassReq(DK), CovenantReq(\"NightFae\")}, version=103}, -- Death's Due\n    {type=\"COVENANT\", id=315443, cd=120, reqs={ClassReq(DK), CovenantReq(\"Necrolord\")}, version=103}, -- Abomination Limb\n\n    -- DK\n    -- TODO: Raise Ally (Brez support)\n    ---- Base\n    {type=\"UTILITY\", id=49576, cd=25, reqs={ClassReq(DK), LevelReq(5)}, version=103}, -- Death Grip\n    {type=\"INTERRUPT\", id=47528, cd=15, reqs={ClassReq(DK), LevelReq(7)}}, -- Mind Freeze\n    {type=\"PERSONAL\", id=48707, cd=60, reqs={ClassReq(DK), LevelReq(9)}, mods={{reqs={TalentReq(205727)}, mod=SubtractMod(20)}}}, -- Anti-Magic Shell\n    {type=\"TANK\", id=56222, cd=8, reqs={ClassReq(DK), LevelReq(14)}}, -- Dark Command\n    {type=\"PERSONAL\", id=49039, cd=120, reqs={ClassReq(DK), LevelReq(33)}, active=ActiveMod(49039, 10)}, -- Lichborne\n    {type=\"PERSONAL\", id=48792, cd=180, reqs={ClassReq(DK), LevelReq(38)}, active=ActiveMod(48792, 8)}, -- Icebound Fortitude\n    {type=\"BREZ\", id=61999, cd=600, reqs={ClassReq(DK), LevelReq(39)}}, -- Raise Ally\n    {type=\"RAIDCD\", id=51052, cd=120, reqs={ClassReq(DK), LevelReq(47)}, active=ActiveMod(nil, 10)}, -- Anti-Magic Zone\n    {type=\"PERSONAL\", id=327574, cd=120, reqs={ClassReq(DK), LevelReq(54)}}, -- Sacrificial Pact\n    ---- DK.Blood\n    {type=\"STHARDCC\", id=221562, cd=45, reqs={SpecReq({DK.Blood}), LevelReq(13)}}, -- Asphyxiate\n    {type=\"TANK\", id=55233, cd=90, reqs={SpecReq({DK.Blood}), LevelReq(29)}, mods={{reqs={TalentReq(205723)}, mod=ResourceSpendingMods(DK.Blood, 0.15)}}, active=ActiveMod(55233, 10)}, -- Vampiric Blood\n    {type=\"SOFTCC\", id=108199, cd=120, reqs={SpecReq({DK.Blood}), LevelReq(44)}, mods={{reqs={TalentReq(206970)}, mod=SubtractMod(30)}}}, -- Gorefiend's Grasp\n    {type=\"TANK\", id=49028, cd=120, reqs={SpecReq({DK.Blood}), LevelReq(34)}, active=ActiveMod(81256, 8)}, -- Dancing Rune Weapon\n    ---- DK.Frost\n    {type=\"DAMAGE\", id=51271, cd=45, reqs={SpecReq({DK.Frost}), LevelReq(29)}}, -- Pillar of Frost\n    {type=\"DAMAGE\", id=279302, cd=180, reqs={SpecReq({DK.Frost}), LevelReq(44)}}, -- Frostwyrm's Fury\n    ---- DK.Unholy\n    {type=\"DAMAGE\", id=275699, cd=90, reqs={SpecReq({DK.Unholy}), LevelReq(19)}, mods={{reqs={LevelReq(49)}, mod=SubtractMod(15)}, {reqs={TalentReq(276837)}, mod=CastDeltaMod(47541,-1)}, {reqs={TalentReq(276837)}, mod=CastDeltaMod(207317,-1)}}}, -- Apocalypse\n    {type=\"DAMAGE\", id=63560, cd=60, reqs={SpecReq({DK.Unholy}), LevelReq(32)}, mods={{reqs={LevelReq(41)}, mod=CastDeltaMod(47541,-1)}}}, -- Dark Transformation\n    {type=\"DAMAGE\", id=42650, cd=480, reqs={SpecReq({DK.Unholy}), LevelReq(44)}, mods={{reqs={TalentReq(276837)}, mod=CastDeltaMod(47541,-5)}, {reqs={TalentReq(276837)}, mod=CastDeltaMod(207317,-5)}}}, -- Army of the Dead\n    ---- Talents\n    {type=\"TANK\", id=219809, cd=60, reqs={TalentReq(219809)}}, -- Tombstone\n    {type=\"DAMAGE\", id=115989, cd=45, reqs={TalentReq(115989)}}, -- Unholy Blight\n    {type=\"STHARDCC\", id=108194, cd=45, reqs={TalentReq(108194)}}, -- Asphyxiate\n    {type=\"SOFTCC\", id=207167, cd=60, reqs={TalentReq(207167)}}, -- Blinding Sleet\n    {type=\"PERSONAL\", id=48743, cd=120, reqs={TalentReq(48743)}}, -- Death Pact\n    {type=\"TANK\", id=194844, cd=60, reqs={TalentReq(194844)}}, -- Bonestorm\n    {type=\"DAMAGE\", id=152279, cd=120, reqs={TalentReq(152279)}}, -- Breath of Sindragosa\n    {type=\"DAMAGE\", id=49206, cd=180, reqs={TalentReq(49206)}}, -- Summon Gargoyle\n    {type=\"DAMAGE\", id=207289, cd=75, reqs={TalentReq(207289)}}, -- Unholy Assault\n    ---- Covenants\n    {type=\"COVENANT\", id=306830, cd=60, reqs={ClassReq(DH), CovenantReq(\"Kyrian\")}, version=103}, -- Elysian Decree\n    {type=\"COVENANT\", id=317009, cd=60, reqs={ClassReq(DH), CovenantReq(\"Venthyr\")}, version=103}, -- Sinful Brand\n    {type=\"COVENANT\", id=323639, cd=90, reqs={ClassReq(DH), CovenantReq(\"NightFae\")}, version=103}, -- The Hunt\n    {type=\"COVENANT\", id=329554, cd=120, reqs={ClassReq(DH), CovenantReq(\"Necrolord\")}, version=103}, -- Fodder to the Flame\n\n    -- Druid\n    -- TODO: Rebirth (Brez support)\n    ---- Base\n    {type=\"TANK\", id=6795, cd=8, reqs={ClassReq(Druid), LevelReq(14)}}, -- Growl\n    {type=\"PERSONAL\", id=22812, cd=60, reqs={ClassReq(Druid), LevelReq(24)}, mods={{reqs={TalentReq(203965)}, mod=MultiplyMod(0.67)}}, active=ActiveMod(22812, 12)}, -- Barkskin\n    {type=\"BREZ\", id=20484, cd=600, reqs={ClassReq(Druid), LevelReq(29)}}, -- Rebirth\n    {type=\"DISPEL\", id=2908, cd=10, reqs={ClassReq(Druid), LevelReq(41)}}, -- Soothe\n    {type=\"UTILITY\", id=106898, cd=120, reqs={ClassReq(Druid), LevelReq(43)}, mods={{reqs={SpecReq({Druid.Guardian}), LevelReq(49)}, mod=SubtractMod(60)}}}, -- Stampeding Roar\n    ---- Shared\n    {type=\"DISPEL\", id=2782, cd=8, reqs={SpecReq({Druid.Balance, Druid.Feral, Druid.Guardian}), LevelReq(19)}, mods={{mod=DispelMod(2782)}}, ignoreCast=true}, -- Remove Corruption\n    {type=\"INTERRUPT\", id=106839, cd=15, reqs={SpecReq({Druid.Feral, Druid.Guardian}), LevelReq(26)}}, -- Skull Bash\n    {type=\"PERSONAL\", id=61336, cd=180, reqs={SpecReq({Druid.Feral, Druid.Guardian}), LevelReq(32)}, mods={{reqs={SpecReq({Druid.Guardian}), LevelReq(47)}, mod=ChargesMod(2)}}, active=ActiveMod(61336, 6)}, -- Survival Instincts\n    {type=\"UTILITY\", id=29166, cd=180, reqs={SpecReq({Druid.Balance, Druid.Resto}), LevelReq(42)}}, -- Innervate\n    ---- Druid.Balance\n    {type=\"INTERRUPT\", id=78675, cd=60, reqs={SpecReq({Druid.Balance}), LevelReq(26)}, active=ActiveMod(nil, 8)}, -- Solar Beam\n    {type=\"SOFTCC\", id=132469, cd=30, reqs={SpecReq({Druid.Balance}), LevelReq(28)}}, -- Typhoon\n    {type=\"DAMAGE\", id=194223, cd=180, reqs={SpecReq({Druid.Balance}), NoTalentReq(102560), LevelReq(39)}}, -- Celestial Alignment\n    ---- Druid.Feral\n    {type=\"STHARDCC\", id=22570, cd=20, reqs={SpecReq({Druid.Feral}), LevelReq(28)}}, -- Maim\n    {type=\"DAMAGE\", id=106951, cd=180, reqs={SpecReq({Druid.Feral}), NoTalentReq(102543), LevelReq(34)}}, -- Berserk\n    ---- Druid.Guardian\n    {type=\"SOFTCC\", id=99, cd=30, reqs={SpecReq({Druid.Guardian}), LevelReq(28)}}, -- Incapacitating Roar\n    {type=\"TANK\", id=50334, cd=180, reqs={SpecReq({Druid.Guardian}), NoTalentReq(102558), LevelReq(34)}}, -- Berserk\n    ---- Druid.Resto\n    {type=\"EXTERNAL\", id=102342, cd=90, reqs={SpecReq({Druid.Resto}), LevelReq(12)}}, -- Ironbark\n    {type=\"DISPEL\", id=88423, cd=8, reqs={SpecReq({Druid.Resto}), LevelReq(19)}, mods={{mod=DispelMod(88423)}}, ignoreCast=true}, -- Remove Corruption\n    {type=\"SOFTCC\", id=102793, cd=60, reqs={SpecReq({Druid.Resto}), LevelReq(28)}}, -- Ursol's Vortex\n    {type=\"HEALING\", id=740, cd=180, reqs={SpecReq({Druid.Resto}), LevelReq(37)}, mods={{reqs={SpecReq({Druid.Resto}), TalentReq(197073)}, mod=SubtractMod(60)}}}, -- Tranquility\n    {type=\"UTILITY\", id=132158, cd=60, reqs={SpecReq({Druid.Resto}), LevelReq(58)}}, -- Nature's Swiftness\n    ---- Talents\n    {type=\"HEALING\", id=102351, cd=30, reqs={TalentReq(102351)}}, -- Cenarion Ward\n    {type=\"UTILITY\", id=205636, cd=60, reqs={TalentReq(205636)}}, -- Force of Nature\n    {type=\"PERSONAL\", id=108238, cd=90, reqs={TalentReq(108238)}}, -- Renewal\n    {type=\"STHARDCC\", id=5211, cd=60, reqs={TalentReq(5211)}}, -- Mighty Bash\n    {type=\"SOFTCC\", id=102359, cd=30, reqs={TalentReq(102359)}}, -- Mass Entanglement\n    {type=\"SOFTCC\", id=132469, cd=30, reqs={TalentReq(197632)}}, -- Typhoon\n    {type=\"SOFTCC\", id=132469, cd=30, reqs={TalentReq(197488)}}, -- Typhoon\n    {type=\"SOFTCC\", id=102793, cd=60, reqs={TalentReq(197492)}}, -- Ursol's Vortex\n    {type=\"SOFTCC\", id=99, cd=30, reqs={TalentReq(197491)}}, -- Incapacitating Roar\n    {type=\"SOFTCC\", id=99, cd=30, reqs={TalentReq(217615)}}, -- Incapacitating Roar\n    {type=\"DAMAGE\", id=319454, cd=300, reqs={TalentReq(319454), TalentReq(202157)}}, -- Heart of the Wild\n    {type=\"PERSONAL\", id=319454, cd=300, reqs={TalentReq(319454), TalentReq(197491)}}, -- Heart of the Wild\n    {type=\"HEALING\", id=319454, cd=300, reqs={TalentReq(319454), TalentReq(197492)}}, -- Heart of the Wild\n    {type=\"DAMAGE\", id=319454, cd=300, reqs={TalentReq(319454), TalentReq(197488)}}, -- Heart of the Wild\n    {type=\"PERSONAL\", id=319454, cd=300, reqs={TalentReq(319454), TalentReq(217615)}}, -- Heart of the Wild\n    {type=\"DAMAGE\", id=319454, cd=300, reqs={TalentReq(319454), TalentReq(202155)}}, -- Heart of the Wild\n    {type=\"DAMAGE\", id=319454, cd=300, reqs={TalentReq(319454), TalentReq(197632)}}, -- Heart of the Wild\n    {type=\"DAMAGE\", id=319454, cd=300, reqs={TalentReq(319454), TalentReq(197490)}}, -- Heart of the Wild\n    {type=\"DAMAGE\", id=102543, cd=180, reqs={TalentReq(102543)}}, -- Incarnation: King of the Jungle\n    {type=\"DAMAGE\", id=102560, cd=180, reqs={TalentReq(102560)}}, -- Incarnation: Chosen of Elune\n    {type=\"TANK\", id=102558, cd=180, reqs={TalentReq(102558)}}, -- Incarnation: Guardian of Ursoc\n    {type=\"HEALING\", id=33891, cd=180, reqs={TalentReq(33891)}, mods={{mod=EventRemainingMod(\"SPELL_AURA_APPLIED\",117679,180)}}, ignoreCast=true, active=ActiveMod(117679, 30)}, -- Incarnation: Tree of Life\n    {type=\"HEALING\", id=203651, cd=60, reqs={TalentReq(203651)}}, -- Overgrowth\n    {type=\"DAMAGE\", id=202770, cd=60, reqs={TalentReq(202770)}}, -- Fury of Elune\n    {type=\"TANK\", id=204066, cd=75, reqs={TalentReq(204066)}}, -- Lunar Beam\n    {type=\"HEALING\", id=197721, cd=90, reqs={TalentReq(197721)}}, -- Flourish\n    {type=\"TANK\", id=80313, cd=30, reqs={TalentReq(80313)}}, -- Pulverize\n    ---- Covenants\n    ---- TODO: Kindered Spirits\n    {type=\"COVENANT\", id=323546, cd=180, reqs={ClassReq(Druid), CovenantReq(\"Venthyr\")}, version=103}, -- Ravenous Frenzy\n    {type=\"COVENANT\", id=323764, cd=120, reqs={ClassReq(Druid), CovenantReq(\"NightFae\")}, version=103}, -- Channel the Spirits\n    {type=\"COVENANT\", id=325727, cd=25, reqs={ClassReq(Druid), CovenantReq(\"Necrolord\")}, version=103}, -- Adaptive Swarm\n\n    -- Hunter\n    ---- Base\n    {type=\"UTILITY\", id=186257, cd=180, reqs={ClassReq(Hunter), LevelReq(5)}, mods={{reqs={ClassReq(Hunter), TalentReq(266921)}, mod=MultiplyMod(0.8)}}}, -- Aspect of the Cheetah\n    {type=\"UTILITY\", id=5384, cd=30, reqs={ClassReq(Hunter), LevelReq(6)}}, -- Feign Death\n    {type=\"IMMUNITY\", id=186265, cd=180, reqs={ClassReq(Hunter), LevelReq(8)}, mods={{reqs={ClassReq(Hunter), TalentReq(266921)}, mod=MultiplyMod(0.8)}}, active=ActiveMod(186265, 8)}, -- Aspect of the Turtle\n    {type=\"PERSONAL\", id=109304, cd=120, reqs={ClassReq(Hunter), LevelReq(9)}, mods={{reqs={SpecReq({Hunter.BM}), TalentReq(270581)}, mod=ResourceSpendingMods(Hunter.BM, 0.033)}, {reqs={SpecReq({Hunter.MM}), TalentReq(270581)}, mod=ResourceSpendingMods(Hunter.MM, 0.05)}, {reqs={SpecReq({Hunter.SV}), TalentReq(270581)}, mod=ResourceSpendingMods(Hunter.SV, 0.05)}}}, -- Exhilaration\n    {type=\"STSOFTCC\", id=187650, cd=30, reqs={ClassReq(Hunter), LevelReq(10)}, mods={{reqs={ClassReq(Hunter), LevelReq(56)}, mod=SubtractMod(5)}}}, -- Freezing Trap\n    {type=\"UTILITY\", id=34477, cd=30, reqs={ClassReq(Hunter), LevelReq(27)}}, -- Misdirection\n    {type=\"DISPEL\", id=19801, cd=10, reqs={ClassReq(Hunter), LevelReq(37)}}, -- Tranquilizing Shot\n    {type=\"PERSONAL\", id=264735, cd=180, reqs={ClassReq(Hunter)}, active=ActiveMod(264735, 10), version=103}, -- Survival of the Fittest\n    ---- Shared\n    {type=\"INTERRUPT\", id=147362, cd=24, reqs={SpecReq({Hunter.BM, Hunter.MM}), LevelReq(18)}}, -- Counter Shot\n    {type=\"STHARDCC\", id=19577, cd=60, reqs={SpecReq({Hunter.BM, Hunter.SV}), LevelReq(33)}}, -- Intimidation\n    ---- Hunter.BM\n    {type=\"DAMAGE\", id=19574, cd=90, reqs={SpecReq({Hunter.BM}), LevelReq(20)}}, -- Bestial Wrath\n    {type=\"DAMAGE\", id=193530, cd=120, reqs={SpecReq({Hunter.BM}), LevelReq(38)}}, -- Aspect of the Wild\n    ---- Hunter.MM\n    {type=\"STSOFTCC\", id=186387, cd=30, reqs={SpecReq({Hunter.MM}), LevelReq(12)}}, -- Bursting Shot\n    {type=\"HARDCC\", id=109248, cd=45, reqs={SpecReq({Hunter.MM}), LevelReq(33)}}, -- Binding Shot\n    {type=\"DAMAGE\", id=288613, cd=120, reqs={SpecReq({Hunter.MM}), LevelReq(34)}}, -- Trueshot\n    ---- Hunter.SV\n    {type=\"INTERRUPT\", id=187707, cd=15, reqs={SpecReq({Hunter.SV}), LevelReq(18)}}, -- Muzzle\n    {type=\"DAMAGE\", id=266779, cd=120, reqs={SpecReq({Hunter.SV}), LevelReq(34)}}, -- Coordinated Assault\n    ---- Talents\n    {type=\"UTILITY\", id=199483, cd=60, reqs={TalentReq(199483)}}, -- Camouflage\n    {type=\"SOFTCC\", id=162488, cd=30, reqs={TalentReq(162488)}}, -- Steel Trap\n    {type=\"HARDCC\", id=109248, cd=45, reqs={SpecReq({Hunter.BM, Hunter.SV}), TalentReq(109248)}}, -- Binding Shot\n    {type=\"DAMAGE\", id=201430, cd=120, reqs={TalentReq(201430)}}, -- Stampede\n    {type=\"DAMAGE\", id=260402, cd=60, reqs={TalentReq(260402)}}, -- Double Tap\n    {type=\"DAMAGE\", id=321530, cd=60, reqs={TalentReq(321530)}}, -- Bloodshed\n    ---- Covenants\n    {type=\"COVENANT\", id=308491, cd=60, reqs={ClassReq(Hunter), CovenantReq(\"Kyrian\")}, version=103}, -- Resonating Arrow\n    {type=\"COVENANT\", id=324149, cd=30, reqs={ClassReq(Hunter), CovenantReq(\"Venthyr\")}, version=103}, -- Flayed Shot\n    {type=\"COVENANT\", id=328231, cd=120, reqs={ClassReq(Hunter), CovenantReq(\"NightFae\")}, version=103}, -- Wild Spirits\n    {type=\"COVENANT\", id=325028, cd=45, reqs={ClassReq(Hunter), CovenantReq(\"Necrolord\")}, version=103}, -- Death Chakram\n\n    -- Mage\n    -- TODO: Arcane should have Invisibility from 34 to 46, then Greater Invisibility from 47 onward\n    ---- Base\n    {type=\"INTERRUPT\", id=2139, cd=24, reqs={ClassReq(Mage), LevelReq(7)}}, -- Counterspell\n    {type=\"DISPEL\", id=475, cd=8, reqs={ClassReq(Mage), LevelReq(21)}, mods={{mod=DispelMod(475)}}, ignoreCast=true}, -- Remove Curse\n    {type=\"IMMUNITY\", id=45438, cd=240, reqs={ClassReq(Mage), LevelReq(22)}, mods={{mod=CastRemainingMod(235219, 0)}}, active=ActiveMod(45438, 10)}, -- Ice Block\n    {type=\"PERSONAL\", id=55342, cd=120, reqs={ClassReq(Mage), LevelReq(44)}}, -- Mirror Image\n    ---- Shared\n    {type=\"UTILITY\", id=66, cd=300, reqs={SpecReq({Mage.Fire, Mage.Frost}), LevelReq(34)}}, -- Invisibility\n    {type=\"PERSONAL\", id=108978, cd=60, reqs={SpecReq({Mage.Fire, Mage.Frost}), LevelReq(58)}}, -- Alter Time\n    ---- Mage.Arcane\n    {type=\"PERSONAL\", id=342245, cd=60, reqs={SpecReq({Mage.Arcane}), LevelReq(19)}, mods={{reqs={TalentReq(342249)}, mod=SubtractMod(30)}}}, -- Alter Time\n    {type=\"PERSONAL\", id=235450, cd=25, reqs={SpecReq({Mage.Arcane}), LevelReq(28)}}, -- Prismatic Barrier\n    {type=\"DAMAGE\", id=12042, cd=120, reqs={SpecReq({Mage.Arcane}), LevelReq(29)}}, -- Arcane Power\n    {type=\"DAMAGE\", id=321507, cd=45, reqs={SpecReq({Mage.Arcane}), LevelReq(33)}}, -- Touch of the Magi\n    {type=\"UTILITY\", id=205025, cd=60, reqs={SpecReq({Mage.Arcane}), LevelReq(42)}}, -- Presence of Mind\n    {type=\"UTILITY\", id=110959, cd=120, reqs={SpecReq({Mage.Arcane}), LevelReq(47)}}, -- Greater Invisibility\n    ---- Mage.Fire\n    {type=\"SOFTCC\", id=31661, cd=20, reqs={SpecReq({Mage.Fire}), LevelReq(27)}, mods={{reqs={SpecReq({Mage.Fire}), LevelReq(38)}, mod=SubtractMod(2)}}}, -- Dragon's Breath\n    {type=\"PERSONAL\", id=235313, cd=25, reqs={SpecReq({Mage.Fire}), LevelReq(28)}}, -- Blazing Barrier\n    {type=\"DAMAGE\", id=190319, cd=120, reqs={SpecReq({Mage.Fire}), LevelReq(29)}}, -- Combustion\n    ---- Mage.Frost\n    {type=\"PERSONAL\", id=11426, cd=25, reqs={SpecReq({Mage.Frost}), LevelReq(28)}}, -- Ice Barrier\n    {type=\"DAMAGE\", id=12472, cd=180, reqs={SpecReq({Mage.Frost}), LevelReq(29)}}, -- Icy Veins\n    {type=\"DAMAGE\", id=84714, cd=60, reqs={SpecReq({Mage.Frost}), LevelReq(38)}}, -- Frozen Orb\n    {type=\"UTILITY\", id=235219, cd=300, reqs={SpecReq({Mage.Frost}), LevelReq(42)}, mods={{reqs={SpecReq({Mage.Frost}), LevelReq(54)}, mod=SubtractMod(30)}}}, -- Cold Snap\n    ---- Talents\n    {type=\"SOFTCC\", id=113724, cd=45, reqs={TalentReq(113724)}}, -- Ring of Frost\n    ---- Covenants\n    {type=\"COVENANT\", id=307443, cd=30, reqs={ClassReq(Mage), CovenantReq(\"Kyrian\")}, version=103}, -- Radiant Spark\n    {type=\"COVENANT\", id=314793, cd=90, reqs={ClassReq(Mage), CovenantReq(\"Venthyr\")}, version=103}, -- Mirrors of Torment\n    {type=\"COVENANT\", id=314791, cd=45, reqs={ClassReq(Mage), CovenantReq(\"NightFae\")}, version=103}, -- Shifting Power\n    {type=\"COVENANT\", id=324220, cd=180, reqs={ClassReq(Mage), CovenantReq(\"Necrolord\")}, version=103}, -- Deathborne\n\n    -- Monk\n    -- TODO: Spiritual Focus (280197) as a ResourceSpendingMod\n    -- TODO: Blackout Combo modifiers\n    ---- Base\n    {type=\"DAMAGE\", id=322109, cd=180, reqs={ClassReq(Monk)}}, -- Touch of Death\n    {type=\"TANK\", id=115546, cd=8, reqs={ClassReq(Monk), LevelReq(14)}}, -- Provoke\n    {type=\"STSOFTCC\", id=115078, cd=45, reqs={ClassReq(Monk), LevelReq(22)}, mods={{reqs={ClassReq(Monk), LevelReq(56)}, mod=SubtractMod(15)}}}, -- Paralysis\n    {type=\"HARDCC\", id=119381, cd=60, reqs={ClassReq(Monk), LevelReq(6)}, mods={{reqs={ClassReq(Monk), TalentReq(264348)}, mod=SubtractMod(10)}}}, -- Leg Sweep\n    ---- Shared\n    {type=\"INTERRUPT\", id=116705, cd=15, reqs={SpecReq({Monk.BRM, Monk.WW}), LevelReq(18)}}, -- Spear Hand Strike\n    {type=\"DISPEL\", id=218164, cd=8, reqs={SpecReq({Monk.BRM, Monk.WW}), LevelReq(24)}, mods={{mod=DispelMod(218164)}}, ignoreCast=true, version=103}, -- Detox\n    {type=\"PERSONAL\", id=243435, cd=420, reqs={SpecReq({Monk.MW, Monk.WW}), LevelReq(28)}, mods={{reqs={LevelReq(48)}, mod=SubtractMod(240)}}, active=ActiveMod(243435, 15)}, -- Fortifying Brew\n    ---- Monk.BRM\n    {type=\"TANK\", id=322507, cd=30, reqs={SpecReq({Monk.BRM}), LevelReq(27)}, mods={{reqs={SpecReq({Monk.BRM}), TalentReq(325093)}, mod=MultiplyMod(0.8)}, {reqs={TalentReq(115399)}, mod=CastRemainingMod(115399, 0)}}}, -- Celestial Brew\n    {type=\"PERSONAL\", id=115203, cd=360, reqs={SpecReq({Monk.BRM}), LevelReq(28)}, active=ActiveMod(115203, 15)}, -- Fortifying Brew\n    {type=\"TANK\", id=115176, cd=300, reqs={SpecReq({Monk.BRM}), LevelReq(34)}}, -- Zen Meditation\n    {type=\"SOFTCC\", id=324312, cd=30, reqs={SpecReq({Monk.BRM}), LevelReq(54)}}, -- Clash\n    {type=\"TANK\", id=132578, cd=180, reqs={SpecReq({Monk.BRM}), LevelReq(42)}, active=ActiveMod(nil, 25)}, -- Invoke Niuzao, the Black Ox\n    ---- Monk.MW\n    {type=\"DISPEL\", id=115450, cd=8, reqs={SpecReq({Monk.MW}), LevelReq(24)}, mods={{mod=DispelMod(115450)}}, ignoreCast=true, version=103}, -- Detox\n    {type=\"HEALING\", id=322118, cd=180, reqs={SpecReq({Monk.MW}), NoTalentReq(325197), LevelReq(42)}, active=ActiveMod(nil, 25)}, -- Invoke Yu'lon, the Jade Serpent\n    {type=\"HEALING\", id=115310, cd=180, reqs={SpecReq({Monk.MW}), LevelReq(46)}}, -- Revival\n    {type=\"EXTERNAL\", id=116849, cd=120, reqs={SpecReq({Monk.MW}), LevelReq(27)}}, -- Life Cocoon\n    ---- Monk.WW\n    {type=\"PERSONAL\", id=122470, cd=90, reqs={SpecReq({Monk.WW}), LevelReq(29)}}, -- Touch of Karma\n    {type=\"DAMAGE\", id=137639, cd=90, reqs={SpecReq({Monk.WW}), LevelReq(27), NoTalentReq(152173)}, mods={{reqs={LevelReq(47)}, mod=ChargesMod(2)}}}, -- Storm, Earth, and Fire\n    {type=\"DAMAGE\", id=123904, cd=120, reqs={SpecReq({Monk.WW}), LevelReq(42)}}, -- Invoke Xuen, the White Tiger\n    {type=\"DAMAGE\", id=113656, cd=24, reqs={SpecReq({Monk.WW}), LevelReq(12)}}, -- Fists of Fury\n    ---- Talents\n    {type=\"UTILITY\", id=116841, cd=30, reqs={TalentReq(116841)}}, -- Tiger's Lust\n    {type=\"TANK\", id=115399, cd=120, reqs={TalentReq(115399)}}, -- Black Ox Brew\n    {type=\"SOFTCC\", id=198898, cd=30, reqs={TalentReq(198898)}}, -- Song of Chi-Ji\n    {type=\"SOFTCC\", id=116844, cd=45, reqs={TalentReq(116844)}, active=ActiveMod(nil, 5)}, -- Ring of Peace\n    {type=\"PERSONAL\", id=122783, cd=90, reqs={TalentReq(122783)}}, -- Diffuse Magic\n    {type=\"PERSONAL\", id=122278, cd=120, reqs={TalentReq(122278)}, active=ActiveMod(122278, 10)}, -- Dampen Harm\n    {type=\"TANK\", id=325153, cd=60, reqs={TalentReq(325153)}}, -- Exploding Keg\n    {type=\"HEALING\", id=325197, cd=120, reqs={TalentReq(325197)}, active=ActiveMod(nil, 25)}, -- Invoke Chi-Ji, the Red Crane\n    {type=\"DAMAGE\", id=152173, cd=90, reqs={TalentReq(152173)}}, -- Serenity\n    ---- Covenants\n    {type=\"COVENANT\", id=310454, cd=120, reqs={ClassReq(Monk), CovenantReq(\"Kyrian\")}, version=103}, -- Weapons of Order\n    {type=\"COVENANT\", id=326860, cd=180, reqs={ClassReq(Monk), CovenantReq(\"Venthyr\")}, version=103}, -- Fallen Order\n    {type=\"COVENANT\", id=327104, cd=30, reqs={ClassReq(Monk), CovenantReq(\"NightFae\")}, version=103}, -- Faeline Stomp\n    {type=\"COVENANT\", id=325216, cd=60, reqs={ClassReq(Monk), CovenantReq(\"Necrolord\")}, version=103}, -- Bonedust Brew\n\n    -- Paladin\n    -- TODO: Prot should have Divine Protection from 28 to 41, then Ardent Defender from 42 onward\n    ---- Base\n    {type=\"IMMUNITY\", id=642, cd=300, reqs={ClassReq(Paladin)}, mods={{reqs={TalentReq(114154)}, mod=MultiplyMod(0.7)}}, active=ActiveMod(642, 8)}, -- Divine Shield\n    {type=\"STHARDCC\", id=853, cd=60, reqs={ClassReq(Paladin), LevelReq(5)}, mods={{reqs={TalentReq(234299)}, mod=ResourceSpendingMods(Paladin, 2)}}}, -- Hammer of Justice\n    {type=\"EXTERNAL\", id=633, cd=600, reqs={ClassReq(Paladin), LevelReq(9)}, mods={{reqs={TalentReq(114154)}, mod=MultiplyMod(0.3)}}}, -- Lay on Hands\n    {type=\"UTILITY\", id=1044, cd=25, reqs={ClassReq(Paladin), LevelReq(22)}, version=101}, -- Blessing of Freedom\n    {type=\"EXTERNAL\", id=6940, cd=120, reqs={ClassReq(Paladin), LevelReq(32)}}, -- Blessing of Sacrifice\n    {type=\"EXTERNAL\", id=1022, cd=300, reqs={ClassReq(Paladin), LevelReq(41), NoTalentReq(204018)}}, -- Blessing of Protection\n    ---- Shared\n    {type=\"DISPEL\", id=213644, cd=8, reqs={SpecReq({Paladin.Prot, Paladin.Ret}), LevelReq(12)}}, -- Cleanse Toxins\n    {type=\"INTERRUPT\", id=96231, cd=15, reqs={SpecReq({Paladin.Prot, Paladin.Ret}), LevelReq(23)}}, -- Rebuke\n    {type=\"DAMAGE\", id=31884, cd=180, reqs={SpecReq({Paladin.Prot, Paladin.Ret}), LevelReq(37), NoTalentReq(231895)}, mods={{reqs={LevelReq(49)}, mod=SubtractMod(60)}}}, -- Avenging Wrath\n    ---- Paladin.Holy\n    {type=\"DISPEL\", id=4987, cd=8, reqs={SpecReq({Paladin.Holy}), LevelReq(12)}, mods={{mod=DispelMod(4987)}}, ignoreCast=true}, -- Cleanse\n    {type=\"PERSONAL\", id=498, cd=60, reqs={SpecReq({Paladin.Holy}), LevelReq(26)}, mods={{reqs={TalentReq(114154)}, mod=MultiplyMod(0.7)}}, active=ActiveMod(498, 8)}, -- Divine Protection\n    {type=\"HEALING\", id=31884, cd=180, reqs={SpecReq({Paladin.Holy}), LevelReq(37), NoTalentReq(216331)}, mods={{reqs={LevelReq(49)}, mod=SubtractMod(60)}}, active=ActiveMod(31884, 20)}, -- Avenging Wrath\n    {type=\"RAIDCD\", id=31821, cd=180, reqs={SpecReq({Paladin.Holy}), LevelReq(39)}, active=ActiveMod(31821, 6)}, -- Aura Mastery\n    ---- Paladin.Prot\n    {type=\"INTERRUPT\", id=31935, cd=15, reqs={SpecReq({Paladin.Prot}), LevelReq(10)}}, -- Avenger's Shield\n    {type=\"TANK\", id=62124, cd=8, reqs={SpecReq({Paladin.Prot}), LevelReq(14)}, version=102}, -- Hand of Reckoning\n    {type=\"TANK\", id=86659, cd=300, reqs={SpecReq({Paladin.Prot}), LevelReq(39)}, active=ActiveMod(86659, 8)}, -- Guardian of Ancient Kings\n    {type=\"TANK\", id=31850, cd=120, reqs={SpecReq({Paladin.Prot}), LevelReq(42)}, mods={{reqs={TalentReq(114154)}, mod=MultiplyMod(0.7)}}, active=ActiveMod(31850, 8)}, -- Ardent Defender\n    ---- Paladin.Ret\n    {type=\"PERSONAL\", id=184662, cd=120, reqs={SpecReq({Paladin.Ret}), LevelReq(26)}, mods={{reqs={TalentReq(114154)}, mod=MultiplyMod(0.7)}}}, -- Shield of Vengeance\n    ---- Talents\n    {type=\"STSOFTCC\", id=20066, cd=15, reqs={TalentReq(20066)}}, -- Repentance\n    {type=\"SOFTCC\", id=115750, cd=90, reqs={TalentReq(115750)}}, -- Blinding Light\n    {type=\"PERSONAL\", id=205191, cd=60, reqs={TalentReq(205191)}, active=ActiveMod(205191, 10)}, -- Eye for an Eye\n    {type=\"EXTERNAL\", id=204018, cd=180, reqs={TalentReq(204018)}}, -- Blessing of Spellwarding\n    {type=\"HEALING\", id=105809, cd=180, reqs={TalentReq(105809), SpecReq({Paladin.Holy})}, active=ActiveMod(105809, 20)}, -- Holy Avenger\n    {type=\"TANK\", id=105809, cd=180, reqs={TalentReq(105809), SpecReq({Paladin.Prot})}}, -- Holy Avenger\n    {type=\"DAMAGE\", id=105809, cd=180, reqs={TalentReq(105809), SpecReq({Paladin.Ret})}}, -- Holy Avenger\n    {type=\"HEALING\", id=216331, cd=120, reqs={TalentReq(216331)}, active=ActiveMod(216331, 20)}, -- Avenging Crusader\n    {type=\"DAMAGE\", id=231895, cd=20, reqs={TalentReq(231895)}}, -- Crusade\n    {type=\"DAMAGE\", id=343721, cd=60, reqs={TalentReq(343721)}}, -- Final Reckoning\n    {type=\"HEALING\", id=200025, cd=15, reqs={TalentReq(200025)}}, -- Beacon of Virtue\n    ---- Covenants\n    {type=\"COVENANT\", id=304971, cd=60, reqs={ClassReq(Paladin), CovenantReq(\"Kyrian\")}, version=103}, -- Divine Toll\n    {type=\"COVENANT\", id=316958, cd=240, reqs={ClassReq(Paladin), CovenantReq(\"Venthyr\")}, version=103}, -- Ashen Hallow\n    ---- TODO: Blessing of Summer\n    {type=\"COVENANT\", id=328204, cd=30, reqs={ClassReq(Paladin), CovenantReq(\"Necrolord\")}, version=103}, -- Vanquisher's Hammer\n\n    -- Priest\n    ---- Base\n    {type=\"SOFTCC\", id=8122, cd=60, reqs={ClassReq(Priest), LevelReq(7)}, mods={{reqs={TalentReq(196704)}, mod=SubtractMod(30)}}}, -- Psychic Scream\n    {type=\"PERSONAL\", id=19236, cd=90, reqs={ClassReq(Priest), LevelReq(8)}, active=ActiveMod(19236, 10)}, -- Desperate Prayer\n    {type=\"DISPEL\", id=32375, cd=45, reqs={ClassReq(Priest), LevelReq(42)}}, -- Mass Dispel\n    {type=\"UTILITY\", id=73325, cd=90, reqs={ClassReq(Priest), LevelReq(49)}}, -- Leap of Faith\n    ---- Shared\n    {type=\"DISPEL\", id=527, cd=8, reqs={SpecReq({Priest.Disc, Priest.Holy}), LevelReq(18)}, mods={{mod=DispelMod(4987)}}, ignoreCast=true}, -- Purify\n    {type=\"HEALING\", id=10060, cd=120, reqs={SpecReq({Priest.Disc, Priest.Holy}), LevelReq(58)}}, -- Power Infusion\n    ---- Priest.Disc\n    {type=\"EXTERNAL\", id=33206, cd=180, reqs={SpecReq({Priest.Disc}), LevelReq(38)}}, -- Pain Suppression\n    {type=\"HEALING\", id=47536, cd=90, reqs={SpecReq({Priest.Disc}), LevelReq(41), NoTalentReq(109964)}, active=ActiveMod(47536, 8)}, -- Rapture\n    {type=\"RAIDCD\", id=62618, cd=180, reqs={SpecReq({Priest.Disc}), LevelReq(44)}, active=ActiveMod(nil, 10)}, -- Power Word: Barrier\n    ---- Priest.Holy\n    {type=\"STSOFTCC\", id=88625, cd=60, reqs={SpecReq({Priest.Holy}), LevelReq(23), NoTalentReq(200199)}, mods={{mod=CastDeltaMod(585, -4)}, {reqs={TalentReq(196985)}, mod=CastDeltaMod(585, -1.3333)}}}, -- Holy Word: Chastise\n    {type=\"STHARDCC\", id=88625, cd=60, reqs={SpecReq({Priest.Holy}), LevelReq(23), TalentReq(200199)}, mods={{mod=CastDeltaMod(585, -4)}, {reqs={TalentReq(196985)}, mod=CastDeltaMod(585, -1.3333)}}}, -- Holy Word: Chastise\n    {type=\"EXTERNAL\", id=47788, cd=180, reqs={SpecReq({Priest.Holy}), LevelReq(38)}, mods={{reqs={TalentReq(200209)}, mod=GuardianAngelMod}}}, -- Guardian Spirit\n    {type=\"HEALING\", id=64843, cd=180, reqs={SpecReq({Priest.Holy}), LevelReq(44)}}, -- Divine Hymn\n    {type=\"UTILITY\", id=64901, cd=300, reqs={SpecReq({Priest.Holy}), LevelReq(47)}}, -- Symbol of Hope\n    ---- Priest.Shadow\n    {type=\"PERSONAL\", id=47585, cd=120, reqs={SpecReq({Priest.Shadow}), LevelReq(16)}, mods={{reqs={TalentReq(288733)}, mod=SubtractMod(30)}}, active=ActiveMod(47585, 6)}, -- Dispersion\n    {type=\"DISPEL\", id=213634, cd=8, reqs={SpecReq({Priest.Shadow}), LevelReq(18)}}, -- Purify Disease\n    {type=\"DAMAGE\", id=228260, cd=90, reqs={SpecReq({Priest.Shadow}), LevelReq(23)}}, -- Void Eruption\n    {type=\"HEALING\", id=15286, cd=120, reqs={SpecReq({Priest.Shadow}), LevelReq(38)}, mods={{reqs={TalentReq(199855)}, mod=SubtractMod(45)}}, active=ActiveMod(15286, 15)}, -- Vampiric Embrace\n    {type=\"INTERRUPT\", id=15487, cd=45, reqs={SpecReq({Priest.Shadow}), LevelReq(41)}, mods={{reqs={TalentReq(263716)}, mod=SubtractMod(15)}}}, -- Silence\n    {type=\"DAMAGE\", id=10060, cd=120, reqs={SpecReq({Priest.Shadow}), LevelReq(58)}}, -- Power Infusion\n    ---- Talents\n    {type=\"HARDCC\", id=205369, cd=30, reqs={TalentReq(205369)}}, -- Mind Bomb\n    {type=\"SOFTCC\", id=204263, cd=45, reqs={TalentReq(204263)}}, -- Shining Force\n    {type=\"STHARDCC\", id=64044, cd=45, reqs={TalentReq(64044)}}, -- Psychic Horror\n    {type=\"HEALING\", id=109964, cd=60, reqs={TalentReq(109964)}, active=ActiveMod(109964, 10)}, -- Spirit Shell\n    {type=\"HEALING\", id=200183, cd=120, reqs={TalentReq(200183)}, active=ActiveMod(200183, 20)}, -- Apotheosis\n    {type=\"HEALING\", id=246287, cd=90, reqs={TalentReq(246287)}}, -- Evangelism\n    {type=\"HEALING\", id=265202, cd=720, reqs={TalentReq(265202)}, mods={{mod=CastDeltaMod(34861,-30)}, {mod=CastDeltaMod(2050,-30)}}}, -- Holy Word: Salvation\n    {type=\"DAMAGE\", id=319952, cd=90, reqs={TalentReq(319952)}}, -- Surrender to Madness\n    ---- Covenants\n    {type=\"COVENANT\", id=325013, cd=180, reqs={ClassReq(Priest), CovenantReq(\"Kyrian\")}, version=103}, -- Boon of the Ascended\n    {type=\"COVENANT\", id=323673, cd=45, reqs={ClassReq(Priest), CovenantReq(\"Venthyr\")}, version=103}, -- Mindgames\n    {type=\"COVENANT\", id=327661, cd=90, reqs={ClassReq(Priest), CovenantReq(\"NightFae\")}, version=103}, -- Fae Guardians\n    {type=\"COVENANT\", id=324724, cd=60, reqs={ClassReq(Priest), CovenantReq(\"Necrolord\")}, version=103}, -- Unholy Nova\n\n    -- Rogue\n    ---- Base\n    {type=\"UTILITY\", id=57934, cd=30, reqs={ClassReq(Rogue), LevelReq(44)}}, -- Tricks of the Trade\n    {type=\"UTILITY\", id=114018, cd=360, reqs={ClassReq(Rogue), LevelReq(47)}, active=ActiveMod(114018, 15)}, -- Shroud of Concealment\n    {type=\"UTILITY\", id=1856, cd=120, reqs={ClassReq(Rogue), LevelReq(31)}}, -- Vanish\n    {type=\"IMMUNITY\", id=31224, cd=120, reqs={ClassReq(Rogue), LevelReq(49)}, active=ActiveMod(31224, 5)}, -- Cloak of Shadows\n    {type=\"STHARDCC\", id=408, cd=20, reqs={ClassReq(Rogue), LevelReq(20)}}, -- Kidney Shot\n    {type=\"UTILITY\", id=1725, cd=30, reqs={ClassReq(Rogue), LevelReq(36)}}, -- Distract\n    {type=\"STSOFTCC\", id=2094, cd=120, reqs={ClassReq(Rogue), LevelReq(41)}, mods={{reqs={TalentReq(256165)}, mod=SubtractMod(30)}}}, -- Blind\n    {type=\"PERSONAL\", id=5277, cd=120, reqs={ClassReq(Rogue), LevelReq(23)}, active=ActiveMod(5277, 10)}, -- Evasion\n    {type=\"INTERRUPT\", id=1766, cd=15, reqs={ClassReq(Rogue), LevelReq(6)}}, -- Kick\n    {type=\"PERSONAL\", id=185311, cd=30, reqs={ClassReq(Rogue), LevelReq(8)}}, -- Crimson Vial\n    ---- Rogue.Sin\n    {type=\"DAMAGE\", id=79140, cd=120, reqs={SpecReq({Rogue.Sin}), LevelReq(34)}}, -- Vendetta\n    ---- Rogue.Outlaw\n    {type=\"DAMAGE\", id=13877, cd=30, reqs={SpecReq({Rogue.Outlaw}), LevelReq(33)}, mods={{reqs={SpecReq({Rogue.Outlaw}), TalentReq(272026)}, mod=SubtractMod(-3)}}}, -- Blade Flurry\n    {type=\"DAMAGE\", id=13750, cd=180, reqs={SpecReq({Rogue.Outlaw}), LevelReq(34)}}, -- Adrenaline Rush\n    {type=\"STSOFTCC\", id=1776, cd=15, reqs={SpecReq({Rogue.Outlaw}), LevelReq(46)}, version=101}, -- Gouge\n    ---- Rogue.Sub\n    {type=\"DAMAGE\", id=121471, cd=180, reqs={SpecReq({Rogue.Sub}), LevelReq(34)}}, -- Shadow Blades\n    ---- Talents\n    {type=\"DAMAGE\", id=343142, cd=90, reqs={TalentReq(343142)}}, -- Dreadblades\n    {type=\"DAMAGE\", id=271877, cd=45, reqs={TalentReq(271877)}}, -- Blade Rush\n    {type=\"DAMAGE\", id=51690, cd=120, reqs={TalentReq(51690)}}, -- Killing Spree\n    {type=\"DAMAGE\", id=277925, cd=60, reqs={TalentReq(277925)}}, -- Shuriken Tornado\n    ---- Covenants\n    {type=\"COVENANT\", id=323547, cd=45, reqs={ClassReq(Rogue), CovenantReq(\"Kyrian\")}, version=103}, -- Echoing Reprimand\n    {type=\"COVENANT\", id=323654, cd=90, reqs={ClassReq(Rogue), CovenantReq(\"Venthyr\")}, version=103}, -- Flagellation\n    {type=\"COVENANT\", id=328305, cd=90, reqs={ClassReq(Rogue), CovenantReq(\"NightFae\")}, version=103}, -- Sepsis\n    {type=\"COVENANT\", id=328547, cd=30, reqs={ClassReq(Rogue), CovenantReq(\"Necrolord\")}, charges=3, version=103}, -- Serrated Bone Spike\n\n    -- Shaman\n    -- TODO: Add support for Reincarnation\n    ---- Base\n    {type=\"INTERRUPT\", id=57994, cd=12, reqs={ClassReq(Shaman), LevelReq(12)}}, -- Wind Shear\n    {type=\"HARDCC\", id=192058, cd=60, reqs={ClassReq(Shaman), LevelReq(23)}, mods={{reqs={TalentReq(265046)}, mod=StaticChargeMod}}}, -- Capacitor Totem\n    {type=\"UTILITY\", id=198103, cd=300, reqs={ClassReq(Shaman), LevelReq(37)}}, -- Earth Elemental\n    {type=\"STSOFTCC\", id=51514, cd=30, reqs={ClassReq(Shaman), LevelReq(41)}, mods={{reqs={LevelReq(56)}, mod=SubtractMod(10)}}}, -- Hex\n    {type=\"PERSONAL\", id=108271, cd=90, reqs={ClassReq(Shaman), LevelReq(42)}, active=ActiveMod(108271, 8)}, -- Astral Shift\n    {type=\"DISPEL\", id=8143, cd=60, reqs={ClassReq(Shaman), LevelReq(47)}, active=ActiveMod(nil, 10)}, -- Tremor Totem\n    ---- Shared\n    {type=\"DISPEL\", id=51886, cd=8, reqs={SpecReq({Shaman.Ele, Shaman.Enh}), LevelReq(18)}, mods={{mod=DispelMod(51886)}}, ignoreCast=true}, -- Cleanse Spirit\n    {type=\"UTILITY\", id=79206, cd=120, reqs={SpecReq({Shaman.Ele, Shaman.Resto}), LevelReq(44)}, mods={{reqs={TalentReq(192088)}, mod=SubtractMod(60)}}}, -- Spiritwalker's Grace\n    ---- Shaman.Ele\n    {type=\"DAMAGE\", id=198067, cd=150, reqs={SpecReq({Shaman.Ele}), LevelReq(34), NoTalentReq(192249)}}, -- Fire Elemental\n    ---- Shaman.Enh\n    {type=\"DAMAGE\", id=51533, cd=120, reqs={SpecReq({Shaman.Enh}), LevelReq(34)}, mods={{reqs={SpecReq({Shaman.Enh}), TalentReq(262624)}, mod=SubtractMod(30)}}}, -- Feral Spirit\n    ---- Shaman.Resto\n    {type=\"DISPEL\", id=77130, cd=8, reqs={SpecReq({Shaman.Resto}), LevelReq(18)}, mods={{mod=DispelMod(77130)}}, ignoreCast=true}, -- Purify Spirit\n    {type=\"UTILITY\", id=16191, cd=180, reqs={SpecReq({Shaman.Resto}), LevelReq(38)}}, -- Mana Tide Totem\n    {type=\"RAIDCD\", id=98008, cd=180, reqs={SpecReq({Shaman.Resto}), LevelReq(43)}, active=ActiveMod(nil, 6), version=101}, -- Spirit Link Totem\n    {type=\"HEALING\", id=108280, cd=180, reqs={SpecReq({Shaman.Resto}), LevelReq(49)}}, -- Healing Tide Totem\n    ---- Talents\n    {type=\"SOFTCC\", id=51485, cd=30, reqs={TalentReq(51485)}}, -- Earthgrab Totem\n    {type=\"HEALING\", id=198838, cd=60, reqs={TalentReq(198838)}}, -- Earthen Wall Totem\n    {type=\"DAMAGE\", id=192249, cd=150, reqs={TalentReq(192249)}}, -- Fire Elemental\n    {type=\"EXTERNAL\", id=207399, cd=300, reqs={TalentReq(207399)}}, -- Ancestral Protection Totem\n    {type=\"HEALING\", id=108281, cd=120, reqs={TalentReq(108281)}, active=ActiveMod(108281, 10)}, -- Ancestral Guidance\n    {type=\"UTILITY\", id=192077, cd=120, reqs={TalentReq(192077)}}, -- Wind Rush Totem\n    {type=\"DAMAGE\", id=191634, cd=60, reqs={TalentReq(191634)}}, -- Stormkeeper\n    {type=\"HEALING\", id=114052, cd=180, reqs={TalentReq(114052)}, active=ActiveMod(264735, 10)}, -- Ascendance\n    {type=\"DAMAGE\", id=114050, cd=180, reqs={TalentReq(114050)}}, -- Ascendance\n    {type=\"DAMAGE\", id=114051, cd=180, reqs={TalentReq(114051)}}, -- Ascendance\n    ---- Covenants\n    {type=\"COVENANT\", id=324386, cd=60, reqs={ClassReq(Shaman), CovenantReq(\"Kyrian\")}, version=103}, -- Vesper Totem\n    {type=\"COVENANT\", id=320674, cd=90, reqs={ClassReq(Shaman), CovenantReq(\"Venthyr\")}, version=103}, -- Chain Harvest\n    {type=\"COVENANT\", id=328923, cd=120, reqs={ClassReq(Shaman), CovenantReq(\"NightFae\")}, version=103}, -- Fae Transfusion\n    {type=\"COVENANT\", id=326059, cd=45, reqs={ClassReq(Shaman), CovenantReq(\"Necrolord\")}, version=103}, -- Primordial Wave\n\n    -- Warlock\n    -- TODO: Soulstone (Brez Support)\n    -- TODO: PetReq for Spell Lock and Axe Toss\n    ---- Base\n    {type=\"PERSONAL\", id=104773, cd=180, reqs={ClassReq(Warlock), LevelReq(4)}, active=ActiveMod(104773, 8)}, -- Unending Resolve\n    {type=\"UTILITY\", id=333889, cd=180, reqs={ClassReq(Warlock), LevelReq(22)}}, -- Fel Domination\n    {type=\"BREZ\", id=20707, cd=600, reqs={ClassReq(Warlock), LevelReq(48)}}, -- Soulstone\n    {type=\"HARDCC\", id=30283, cd=60, reqs={ClassReq(Warlock), LevelReq(38)}, mods={{reqs={TalentReq(264874)}, mod=SubtractMod(15)}}}, -- Shadowfury\n    ---- Shared\n    {type=\"INTERRUPT\", id=19647, cd=24, reqs={SpecReq({Warlock.Affl, Warlock.Destro}), LevelReq(29)}}, -- Spell Lock\n    ---- Warlock.Affl\n    {type=\"DAMAGE\", id=205180, cd=180, reqs={SpecReq({Warlock.Affl}), LevelReq(42)}, mods={{reqs={TalentReq(334183)}, mod=SubtractMod(60)}}}, -- Summon Darkglare\n    ---- Warlock.Demo\n    {type=\"INTERRUPT\", id=89766, cd=30, reqs={SpecReq({Warlock.Demo}), LevelReq(29)}}, -- Axe Toss\n    {type=\"DAMAGE\", id=265187, cd=90, reqs={SpecReq({Warlock.Demo}), LevelReq(42)}}, -- Summon Demonic Tyrant\n    ---- Warlock.Destro\n    {type=\"DAMAGE\", id=1122, cd=180, reqs={SpecReq({Warlock.Destro}), LevelReq(42)}}, -- Summon Infernal\n    ---- Talents\n    {type=\"PERSONAL\", id=108416, cd=60, reqs={TalentReq(108416)}}, -- Dark Pact\n    {type=\"DAMAGE\", id=152108, cd=30, reqs={TalentReq(152108)}}, -- Cataclysm\n    {type=\"STHARDCC\", id=6789, cd=45, reqs={TalentReq(6789)}}, -- Mortal Coil\n    {type=\"SOFTCC\", id=5484, cd=40, reqs={TalentReq(5484)}}, -- Howl of Terror\n    {type=\"DAMAGE\", id=111898, cd=120, reqs={TalentReq(111898)}}, -- Grimoire: Felguard\n    {type=\"DAMAGE\", id=113858, cd=120, reqs={TalentReq(113858)}}, -- Dark Soul: Instability\n    {type=\"DAMAGE\", id=267217, cd=180, reqs={TalentReq(267217)}}, -- Nether Portal\n    {type=\"DAMAGE\", id=113860, cd=120, reqs={TalentReq(113860)}}, -- Dark Soul: Misery\n    ---- Covenants\n    {type=\"COVENANT\", id=312321, cd=40, reqs={ClassReq(Warlock), CovenantReq(\"Kyrian\")}, version=103}, -- Scouring Tithe\n    {type=\"COVENANT\", id=321792, cd=60, reqs={ClassReq(Warlock), CovenantReq(\"Venthyr\")}, version=103}, -- Impending Catastrophe\n    {type=\"COVENANT\", id=325640, cd=60, reqs={ClassReq(Warlock), CovenantReq(\"NightFae\")}, version=103}, -- Soul Rot\n    {type=\"COVENANT\", id=325289, cd=45, reqs={ClassReq(Warlock), CovenantReq(\"Necrolord\")}, version=103}, -- Decimating Bolt\n\n    -- Warrior\n    ---- Base\n    {type=\"INTERRUPT\", id=6552, cd=15, reqs={ClassReq(Warrior), LevelReq(7)}}, -- Pummel\n    {type=\"TANK\", id=355, cd=8, reqs={ClassReq(Warrior), LevelReq(14)}}, -- Taunt\n    {type=\"SOFTCC\", id=5246, cd=90, reqs={ClassReq(Warrior), LevelReq(34)}}, -- Intimidating Shout\n    {type=\"UTILITY\", id=64382, cd=180, reqs={ClassReq(Warrior), LevelReq(41)}}, -- Shattering Throw\n    {type=\"EXTERNAL\", id=3411, cd=30, reqs={ClassReq(Warrior), LevelReq(43)}}, -- Intervene\n    {type=\"RAIDCD\", id=97462, cd=180, reqs={ClassReq(Warrior), LevelReq(46)}, active=ActiveMod(97462, 10)}, -- Rallying Cry\n    {type=\"TANK\", id=1161, cd=240, reqs={ClassReq(Warrior), LevelReq(54)}}, -- Challenging Shout\n    ---- Shared\n    {type=\"PERSONAL\", id=23920, cd=25, reqs={SpecReq({Warrior.Arms, Warrior.Fury}), LevelReq(47)}, active=ActiveMod(23920, 5)}, -- Spell Reflection\n    ---- Warrior.Arms\n    {type=\"PERSONAL\", id=118038, cd=180, reqs={SpecReq({Warrior.Arms}), LevelReq(23)}, mods={{reqs={LevelReq(52)}, mod=SubtractMod(60)}}, active=ActiveMod(118038, 8)}, -- Die by the Sword\n    {type=\"DAMAGE\", id=227847, cd=90, reqs={SpecReq({Warrior.Arms}), LevelReq(38)}, mods={{reqs={TalentReq(152278)}, mod=ResourceSpendingMods(Warrior.Arms, 0.05)}}}, -- Bladestorm\n    ---- Warrior.Fury\n    {type=\"PERSONAL\", id=184364, cd=180, reqs={SpecReq({Warrior.Fury}), LevelReq(23)}, mods={{reqs={LevelReq(32)}, mod=SubtractMod(60)}}, active=ActiveMod(184364, 8)}, -- Enraged Regeneration\n    {type=\"DAMAGE\", id=1719, cd=90, reqs={SpecReq({Warrior.Fury}), LevelReq(38)}, mods={{reqs={TalentReq(152278)}, mod=ResourceSpendingMods(Warrior.Fury, 0.05)}}}, -- Recklessness\n    ---- Warrior.Prot\n    {type=\"HARDCC\", id=46968, cd=40, reqs={SpecReq({Warrior.Prot}), LevelReq(21)}, mods={{reqs={TalentReq(275339)}, mod=RumblingEarthMod}}}, -- Shockwave\n    {type=\"TANK\", id=871, cd=240, reqs={SpecReq({Warrior.Prot}), LevelReq(23)}, mods={{reqs={TalentReq(152278)}, mod=ResourceSpendingMods(Warrior.Arms, 0.1)}}, active=ActiveMod(871, 8)}, -- Shield Wall\n    {type=\"TANK\", id=1160, cd=45, reqs={SpecReq({Warrior.Prot}), LevelReq(27)}}, -- Demoralizing Shout\n    {type=\"DAMAGE\", id=107574, cd=90, reqs={SpecReq({Warrior.Prot}), LevelReq(32)}, mods={{reqs={TalentReq(152278)}, mod=ResourceSpendingMods(Warrior.Prot, 0.1)}}}, -- Avatar\n    {type=\"TANK\", id=12975, cd=180, reqs={SpecReq({Warrior.Prot}), LevelReq(38)}, mods={{reqs={TalentReq(280001)}, mod=SubtractMod(60)}}, active=ActiveMod(12975, 15)}, -- Last Stand\n    {type=\"PERSONAL\", id=23920, cd=25, reqs={SpecReq({Warrior.Prot}), LevelReq(47)}, active=ActiveMod(23920, 5)}, -- Spell Reflection\n    ---- Talents\n    {type=\"STHARDCC\", id=107570, cd=30, reqs={TalentReq(107570)}}, -- Storm Bolt\n    {type=\"DAMAGE\", id=107574, cd=90, reqs={TalentReq(107574)}}, -- Avatar\n    {type=\"DAMAGE\", id=262228, cd=60, reqs={TalentReq(262228)}}, -- Deadly Calm\n    {type=\"DAMAGE\", id=228920, cd=45, reqs={TalentReq(228920)}}, -- Ravager\n    {type=\"DAMAGE\", id=46924, cd=60, reqs={TalentReq(46924)}}, -- Bladestorm\n    {type=\"DAMAGE\", id=152277, cd=45, reqs={TalentReq(152277)}}, -- Ravager\n    {type=\"DAMAGE\", id=280772, cd=30, reqs={TalentReq(280772)}}, -- Siegebreaker\n    ---- Covenants\n    {type=\"COVENANT\", id=307865, cd=60, reqs={ClassReq(Warrior), CovenantReq(\"Kyrian\")}, version=103}, -- Spear of Bastion\n    {type=\"COVENANT\", id=325886, cd=90, reqs={ClassReq(Warrior), CovenantReq(\"NightFae\")}, version=103}, -- Ancient Aftershock\n    {type=\"COVENANT\", id=324143, cd=180, reqs={ClassReq(Warrior), CovenantReq(\"Necrolord\")}, version=103}, -- Conqueror's Banner\n}\n\nZT.linkedSpellIDs = {\n    [19647]  = {119910, 132409, 115781}, -- Spell Lock\n    [89766]  = {119914, 347008}, -- Axe Toss\n    [51514]  = {211004, 211015, 277778, 309328, 210873, 211010, 269352, 277784}, -- Hex\n    [132469] = {61391}, -- Typhoon\n    [191427] = {200166}, -- Metamorphosis\n    [106898] = {77761, 77764}, -- Stampeding Roar\n    [86659] = {212641}, -- Guardian of the Ancient Kings (+Glyph)\n    [281195] = {264735}, -- Survival of the Fittest (+Lone Wolf)\n}\n\nZT.separateLinkedSpellIDs = {\n    [86659] = {212641}, -- Guardian of the Ancient Kings (+Glyph)\n}\n\n--##############################################################################\n-- Handling custom spells specified by the user in the configuration\n\nlocal spellConfigPrefix = \"return function(DH,DK,Druid,Hunter,Mage,Monk,Paladin,Priest,Rogue,Shaman,Warlock,Warrior,LevelReq,RaceReq,ClassReq,SpecReq,TalentReq,NoTalentReq,SubtractMod,MultiplyMod,ChargesMod,DynamicMod,EventDeltaMod,CastDeltaMod,EventRemainingMod,CastRemainingMod,DispelMod) return \"\nlocal spellConfigSuffix = \"end\"\n\nlocal function trim(s) -- From PiL2 20.4\n    if s ~= nil then\n        return s:gsub(\"^%s*(.-)%s*$\", \"%1\")\n    end\n    return \"\"\nend\n\nlocal function addCustomSpell(spellConfig, i)\n    if not spellConfig or type(spellConfig) ~= \"table\" then\n        prerror(\"Custom Spell\", i, \"is not represented as a valid table\")\n        return\n    end\n\n    if type(spellConfig.type) ~= \"string\" then\n        prerror(\"Custom Spell\", i, \"does not have a valid 'type' entry\")\n        return\n    end\n\n    if type(spellConfig.id) ~= \"number\" then\n        prerror(\"Custom Spell\", i, \"does not have a valid 'id' entry\")\n        return\n    end\n\n    if type(spellConfig.cd) ~= \"number\" then\n        prerror(\"Custom Spell\", i, \"does not have a valid 'cd' entry\")\n        return\n    end\n\n    spellConfig.version = 10000\n    spellConfig.isCustom = true\n\n    ZT.spellList[#ZT.spellList + 1] = spellConfig\nend\n\nfor i = 1,16 do\n    local spellConfig = trim(ZT.config[\"custom\"..i])\n    if spellConfig ~= \"\" then\n        local spellConfigFunc = WeakAuras.LoadFunction(spellConfigPrefix..spellConfig..spellConfigSuffix, \"ZenTracker Custom Spell \"..i)\n        if spellConfigFunc then\n            local spell = spellConfigFunc(DH,DK,Druid,Hunter,Mage,Monk,Paladin,Priest,Rogue,Shaman,Warlock,Warrior,LevelReq,RaceReq,ClassReq,SpecReq,TalentReq,NoTalentReq,SubtractMod,MultiplyMod,ChargesMod,DynamicMod,EventDeltaMod,CastDeltaMod,EventRemainingMod,CastRemainingMod,DispelMod)\n            addCustomSpell(spell, i)\n        end\n    end\nend\n\n--##############################################################################\n-- Compiling the complete indexed tables of spells\n\nZT.spells = DefaultTable_Create(function() return DefaultTable_Create(function() return {} end) end)\n\nfor _,spellInfo in ipairs(ZT.spellList) do\n    spellInfo.version = spellInfo.version or 100\n    spellInfo.isRegistered = false\n    spellInfo.frontends = {}\n\n    -- Indexing for faster lookups based on the info/requirements\n    if spellInfo.reqs and (#spellInfo.reqs > 0) then\n        for _,req in ipairs(spellInfo.reqs) do\n            if req.indices then\n                for _,index in ipairs(req.indices) do\n                    tinsert(ZT.spells[req.type][index], spellInfo)\n                end\n            end\n        end\n    else\n        tinsert(ZT.spells[\"generic\"], spellInfo)\n    end\n\n    if spellInfo.mods then\n        for _,mod in ipairs(spellInfo.mods) do\n            if mod.reqs then\n                for _,req in ipairs(mod.reqs) do\n                    for _,index in ipairs(req.indices) do\n                        tinsert(ZT.spells[req.type][index], spellInfo)\n                    end\n                end\n            end\n        end\n    end\n\n    tinsert(ZT.spells[\"type\"][spellInfo.type], spellInfo)\n    tinsert(ZT.spells[\"id\"][spellInfo.id], spellInfo)\n\n    -- Handling more convenient way of specifying active durations\n    if spellInfo.active then\n        local spellID = spellInfo.active.spellID\n        local duration = spellInfo.active.duration\n\n        spellInfo.duration = duration\n        if spellID then\n            if not spellInfo.mods then\n                spellInfo.mods = {}\n            end\n            tinsert(spellInfo.mods, {mod=DurationMod(spellID)})\n        end\n    end\nend\n\n--##############################################################################\n-- Handling combatlog and WeakAura events by invoking specified callbacks\n\nZT.eventHandlers = { handlers = {} }\n\nfunction ZT.eventHandlers:add(type, spellID, sourceGUID, func, data)\n    local types = self.handlers[spellID]\n    if not types then\n        types = {}\n        self.handlers[spellID] = types\n    end\n\n    local sources = types[type]\n    if not sources then\n        sources = {}\n        types[type] = sources\n    end\n\n    local handlers = sources[sourceGUID]\n    if not handlers then\n        handlers = {}\n        sources[sourceGUID] = handlers\n    end\n\n    handlers[func] = data\nend\n\nfunction ZT.eventHandlers:remove(type, spellID, sourceGUID, func)\n    local types = self.handlers[spellID]\n    if types then\n        local sources = types[type]\n        if sources then\n            local handlers = sources[sourceGUID]\n            if handlers then\n                handlers[func] = nil\n            end\n        end\n    end\nend\n\nfunction ZT.eventHandlers:removeAll(sourceGUID)\n    for _,spells in pairs(self.eventHandlers) do\n        for _,sources in pairs(spells) do\n            for GUID,handlers in pairs(sources) do\n                if GUID == sourceGUID then\n                    wipe(handlers)\n                end\n            end\n        end\n    end\nend\n\nlocal function fixSourceGUID(sourceGUID) -- Based on https://wago.io/p/Nnogga\n    local type = strsplit(\"-\", sourceGUID)\n    if type == \"Pet\" then\n        for unit in WA_IterateGroupMembers() do\n            if UnitGUID(unit..\"pet\") == sourceGUID then\n                sourceGUID = UnitGUID(unit)\n                break\n            end\n        end\n    end\n\n    return sourceGUID\nend\n\nfunction ZT.eventHandlers:handle(type, spellID, sourceGUID)\n    local types = self.handlers[spellID]\n    if not types then\n        return\n    end\n\n    local sources = types[type]\n    if not sources then\n        return\n    end\n\n    local handlers = sources[sourceGUID]\n    if not handlers then\n        sourceGUID = fixSourceGUID(sourceGUID)\n        handlers = sources[sourceGUID]\n        if not handlers then\n            return\n        end\n    end\n\n    for func,data in pairs(handlers) do\n        func(data, spellID)\n    end\nend\n\n--##############################################################################\n-- Managing timer callbacks in a way that allows for updates/removals\n\nZT.timers = { heap={}, callbackTimes={} }\n\nfunction ZT.timers:fixHeapUpwards(index)\n    local heap = self.heap\n    local timer = heap[index]\n\n    local parentIndex, parentTimer\n    while index > 1 do\n        parentIndex = floor(index / 2)\n        parentTimer = heap[parentIndex]\n        if timer.time >= parentTimer.time then\n            break\n        end\n\n        parentTimer.index = index\n        heap[index] = parentTimer\n        index = parentIndex\n    end\n\n    if timer.index ~= index then\n        timer.index = index\n        heap[index] = timer\n    end\nend\n\nfunction ZT.timers:fixHeapDownwards(index)\n    local heap = self.heap\n    local timer = heap[index]\n\n    local childIndex, minChildTimer, leftChildTimer, rightChildTimer\n    while true do\n        childIndex = 2 * index\n\n        leftChildTimer = heap[childIndex]\n        if leftChildTimer then\n            rightChildTimer = heap[childIndex + 1]\n            if rightChildTimer and (rightChildTimer.time < leftChildTimer.time) then\n                minChildTimer = rightChildTimer\n            else\n                minChildTimer = leftChildTimer\n            end\n        else\n            break\n        end\n\n        if timer.time <= minChildTimer.time then\n            break\n        end\n\n        childIndex = minChildTimer.index\n        minChildTimer.index = index\n        heap[index] = minChildTimer\n        index = childIndex\n    end\n\n    if timer.index ~= index then\n        timer.index = index\n        heap[index] = timer\n    end\nend\n\nfunction ZT.timers:setupCallback()\n    local minTimer = self.heap[1]\n    if minTimer then\n        local timeNow = GetTime()\n        local remaining = minTimer.time - timeNow\n        if remaining <= 0 then\n            self:handle()\n        elseif not self.callbackTimes[minTimer.time] then\n            for time,_ in pairs(self.callbackTimes) do\n                if time < timeNow then\n                    self.callbackTimes[time] = nil\n                end\n            end\n            self.callbackTimes[minTimer.time] = true\n\n            -- Note: This 0.001 avoids early callbacks that I ran into\n            remaining = remaining + 0.001\n            prdebug(DEBUG_TIMER, \"Setting callback for handling timers after\", remaining, \"seconds\")\n            C_Timer.After(remaining, function() self:handle() end)\n        end\n    end\nend\n\nfunction ZT.timers:handle()\n    local timeNow = GetTime()\n    local heap = self.heap\n    local minTimer = heap[1]\n\n    prdebug(DEBUG_TIMER, \"Handling timers at time\", timeNow, \"( Min @\", minTimer and minTimer.time or \"NONE\", \")\")\n    while minTimer and minTimer.time <= timeNow do\n        local heapSize = #heap\n        if heapSize > 1 then\n            heap[1] = heap[heapSize]\n            heap[1].index = 1\n            heap[heapSize] = nil\n            self:fixHeapDownwards(1)\n        else\n            heap[1] = nil\n        end\n\n        minTimer.index = -1\n        minTimer.callback()\n\n        minTimer = heap[1]\n    end\n\n    self:setupCallback()\nend\n\nfunction ZT.timers:add(time, callback)\n    local heap = self.heap\n\n    local index = #heap + 1\n    local timer = {time=time, callback=callback, index=index}\n    heap[index] = timer\n\n    self:fixHeapUpwards(index)\n    self:setupCallback()\n\n    return timer\nend\n\nfunction ZT.timers:cancel(timer)\n    local index = timer.index\n    if index == -1 then\n        return\n    end\n\n    timer.index = -1\n\n    local heap = self.heap\n    local heapSize = #heap\n    if heapSize ~= index then\n        heap[index] = heap[heapSize]\n        heap[index].index = index\n        heap[heapSize] = nil\n        self:fixHeapDownwards(index)\n        self:setupCallback()\n    else\n        heap[index] = nil\n    end\nend\n\nfunction ZT.timers:update(timer, time)\n    local fixHeapFunc = (time <= timer.time) and self.fixHeapUpwards or self.fixHeapDownwards\n    timer.time = time\n\n    fixHeapFunc(self, timer.index)\n    self:setupCallback()\nend\n\n--##############################################################################\n-- Managing the set of spells that are being watched\n\nlocal WatchInfo = { nextID = 1 }\nlocal WatchInfoMT = { __index = WatchInfo }\n\nZT.watching = {}\n\nfunction WatchInfo:create(member, spellInfo, isHidden)\n    local time = GetTime()\n    local watchInfo = {\n        id = self.nextID,\n        member = member,\n        spellInfo = spellInfo,\n        duration = spellInfo.cd,\n        expiration = time,\n        activeDuration = spellInfo.active and spellInfo.active.duration or nil,\n        activeExpiration = time,\n        charges = spellInfo.charges,\n        maxCharges = spellInfo.charges,\n        isHidden = isHidden,\n        isLazy = spellInfo.isLazy,\n        ignoreSharing = false,\n    }\n    self.nextID = self.nextID + 1\n\n    watchInfo = setmetatable(watchInfo, WatchInfoMT)\n    watchInfo:updateModifiers()\n\n    return watchInfo\nend\n\nfunction WatchInfo:updateModifiers()\n    if not self.spellInfo.mods then\n        return\n    end\n\n    self.duration = self.spellInfo.cd\n    self.charges = self.spellInfo.charges\n    self.maxCharges = self.spellInfo.charges\n\n    for _,modifier in ipairs(self.spellInfo.mods) do\n        if modifier.mod.type == \"Static\" then\n            if self.member:checkRequirements(modifier.reqs) then\n                modifier.mod.func(self)\n            end\n        end\n    end\nend\n\nfunction WatchInfo:sendAddEvent()\n    if not self.isLazy and not self.isHidden then\n        local spellInfo = self.spellInfo\n        prdebug(DEBUG_EVENT, \"Sending ZT_ADD\", spellInfo.type, self.id, self.member.name, spellInfo.id, self.duration, self.charges)\n        WeakAuras.ScanEvents(\"ZT_ADD\", spellInfo.type, self.id, self.member, spellInfo.id, self.duration, self.charges)\n\n        if self.expiration > GetTime() then\n            self:sendTriggerEvent()\n        end\n    end\nend\n\nfunction WatchInfo:sendTriggerEvent()\n    if self.isLazy then\n        self.isLazy = false\n        self:sendAddEvent()\n    end\n\n    if not self.isHidden then\n        prdebug(DEBUG_EVENT, \"Sending ZT_TRIGGER\", self.spellInfo.type, self.id, self.duration, self.expiration, self.charges, self.activeDuration, self.activeExpiration)\n        WeakAuras.ScanEvents(\"ZT_TRIGGER\", self.spellInfo.type, self.id, self.duration, self.expiration, self.charges, self.activeDuration, self.activeExpiration)\n    end\nend\n\nfunction WatchInfo:sendRemoveEvent()\n    if not self.isLazy and not self.isHidden then\n        prdebug(DEBUG_EVENT, \"Sending ZT_REMOVE\", self.spellInfo.type, self.id)\n        WeakAuras.ScanEvents(\"ZT_REMOVE\", self.spellInfo.type, self.id)\n    end\nend\n\nfunction WatchInfo:hide()\n    if not self.isHidden then\n        self:sendRemoveEvent()\n        self.isHidden = true\n    end\nend\n\nfunction WatchInfo:unhide(suppressAddEvent)\n    if self.isHidden then\n        self.isHidden = false\n        if not suppressAddEvent then\n            self:sendAddEvent()\n        end\n    end\nend\n\nfunction WatchInfo:toggleHidden(toggle, suppressAddEvent)\n    if toggle then\n        self:hide()\n    else\n        self:unhide(suppressAddEvent)\n    end\nend\n\nfunction WatchInfo:handleReadyTimer()\n    if self.charges then\n        self.charges = self.charges + 1\n\n        -- If we are not at max charges, update expiration and start a ready timer\n        if self.charges < self.maxCharges then\n            self.expiration = self.expiration + self.duration\n            prdebug(DEBUG_TIMER, \"Adding ready timer of\", self.expiration, \"for spellID\", self.spellInfo.id)\n            self.readyTimer = ZT.timers:add(self.expiration, function() self:handleReadyTimer() end)\n        else\n            self.readyTimer = nil\n        end\n    else\n        self.readyTimer = nil\n    end\n\n    self:sendTriggerEvent()\nend\n\nfunction WatchInfo:updateReadyTimer() -- Returns true if a timer was set, false if handled immediately\n    if self.expiration > GetTime() then\n        if self.readyTimer then\n            prdebug(DEBUG_TIMER, \"Updating ready timer from\", self.readyTimer.time, \"to\", self.expiration, \"for spellID\", self.spellInfo.id)\n            ZT.timers:update(self.readyTimer, self.expiration)\n        else\n            prdebug(DEBUG_TIMER, \"Adding ready timer of\", self.expiration, \"for spellID\", self.spellInfo.id)\n            self.readyTimer = ZT.timers:add(self.expiration, function() self:handleReadyTimer() end)\n        end\n\n        return true\n    else\n        if self.readyTimer then\n            prdebug(DEBUG_TIMER, \"Canceling ready timer for spellID\", self.spellInfo.id)\n            ZT.timers:cancel(self.readyTimer)\n            self.readyTimer = nil\n        end\n\n        self:handleReadyTimer(self.expiration)\n        return false\n    end\nend\n\nfunction WatchInfo:handleActiveTimer()\n    self.activeTimer = nil\n    self:sendTriggerEvent()\n    if self.member.isPlayer then\n        ZT:sendCDUpdate(self, true)\n    end\nend\n\nfunction WatchInfo:updateActiveTimer() -- Returns true if a timer was set, false if handled immediately\n    if self.activeExpiration > GetTime() then\n        if self.activeTimer then\n            prdebug(DEBUG_TIMER, \"Updating active timer from\", self.activeTimer.time, \"to\", self.activeExpiration, \"for spellID\", self.spellInfo.id)\n            ZT.timers:update(self.activeTimer, self.activeExpiration)\n        else\n            prdebug(DEBUG_TIMER, \"Adding active timer of\", self.expiration, \"for spellID\", self.spellInfo.id)\n            self.activeTimer = ZT.timers:add(self.activeExpiration, function() self:handleActiveTimer() end)\n        end\n\n        return true\n    else\n        if self.activeTimer then\n            prdebug(DEBUG_TIMER, \"Canceling active timer for spellID\", self.spellInfo.id)\n            ZT.timers:cancel(self.activeTimer)\n            self.activeTimer = nil\n        end\n\n        self:handleActiveTimer()\n        return false\n    end\nend\n\nlocal function GetActiveInfo(member, activeSpellID)\n    for a=1,40 do\n        local name,_,_,_,duration,expirationTime,_,_,_,spellID = UnitAura(member.unit, a)\n        if spellID == activeSpellID then\n            return duration, expirationTime\n        elseif not name then\n            return\n        end\n    end\nend\n\nfunction WatchInfo:updateActive(time)\n    local active = self.spellInfo.active\n    if not active then\n        return\n    end\n\n    if not time then\n        time = GetTime()\n    end\n\n    local activeSpellID = active.spellID\n    local activeDefaultDuration = active.duration\n\n    if activeSpellID then\n        self.activeDuration, self.activeExpiration = GetActiveInfo(self.member, activeSpellID)\n    else\n        self.activeDuration = activeDefaultDuration\n        self.activeExpiration = time + activeDefaultDuration\n        self:updateActiveTimer()\n    end\nend\n\nfunction WatchInfo:startCD()\n    local time = GetTime()\n\n    if self.charges then\n        if self.charges == 0 or self.charges == self.maxCharges then\n            self.expiration = time + self.duration\n            self:updateReadyTimer()\n        end\n\n        if self.charges > 0 then\n            self.charges = self.charges - 1\n        end\n    else\n        self.expiration = time + self.duration\n        self:updateReadyTimer()\n    end\n\n    self:updateActive(time)\n    self:sendTriggerEvent()\nend\n\nfunction WatchInfo:updateCDDelta(delta)\n    self.expiration = self.expiration + delta\n\n    local time = GetTime()\n    local remaining = self.expiration - time\n\n    if self.charges and remaining <= 0 then\n        local chargesGained = 1 - floor(remaining / self.duration)\n        self.charges = max(self.charges + chargesGained, self.maxCharges)\n        if self.charges == self.maxCharges then\n            self.expiration = time\n        else\n            self.expiration = self.expiration + (chargesGained * self.duration)\n        end\n    end\n\n    if self:updateReadyTimer() then\n        self:sendTriggerEvent()\n    end\nend\n\nfunction WatchInfo:updateCDRemaining(remaining)\n    -- Note: This assumes that when remaining is 0 and the spell uses charges then it gains a charge\n    if self.charges and remaining == 0 then\n        if self.charges < self.maxCharges then\n            self.charges = self.charges + 1\n        end\n\n        -- Below maximum charges the expiration time doesn't change\n        if self.charges < self.maxCharges then\n            self:sendTriggerEvent()\n        else\n            self.expiration = GetTime()\n            self:updateReadyTimer()\n        end\n    else\n        self.expiration = GetTime() + remaining\n        if self:updateReadyTimer() then\n            self:sendTriggerEvent()\n        end\n    end\nend\n\nfunction WatchInfo:updatePlayerCharges()\n    local charges, maxCharges = GetSpellCharges(self.spellInfo.id)\n    if charges then\n        self.charges = charges\n        self.maxCharges = maxCharges\n    end\nend\n\nfunction WatchInfo:updatePlayerCD(spellID, ignoreIfReady)\n    local startTime, duration, enabled, charges, chargesUsed\n    if self.charges then\n        charges, self.maxCharges, startTime, duration = GetSpellCharges(spellID)\n        if charges == self.maxCharges then\n            startTime = 0\n        end\n        chargesUsed = self.charges > charges\n        self.charges = charges\n        enabled = 1\n    else\n        startTime, duration, enabled = GetSpellCooldown(spellID)\n        chargesUsed = false\n    end\n\n    if enabled ~= 0 then\n        local time = GetTime()\n        local ignoreRateLimit\n        if startTime ~= 0 then\n            if (self.expiration <= time) or chargesUsed then\n                ignoreRateLimit = true\n                self:updateActive(time)\n            end\n\n            self.duration = duration\n            self.expiration = startTime + duration\n        else\n            ignoreRateLimit = true\n            self.expiration = time\n        end\n\n        if (not ignoreIfReady) or (startTime ~= 0) then\n            ZT:sendCDUpdate(self, ignoreRateLimit)\n            self:sendTriggerEvent()\n        end\n    end\nend\n\nfunction ZT:togglePlayerHandlers(watchInfo, enable)\n    local spellInfo = watchInfo.spellInfo\n    local spellID = spellInfo.id\n    local member = watchInfo.member\n    local toggleHandlerFunc = enable and self.eventHandlers.add or self.eventHandlers.remove\n\n    if enable then\n        WeakAuras.WatchSpellCooldown(spellID)\n    end\n    toggleHandlerFunc(self.eventHandlers, \"SPELL_COOLDOWN_CHANGED\", spellID, 0, watchInfo.updatePlayerCD, watchInfo)\n\n    local links = self.separateLinkedSpellIDs[spellID]\n    if links then\n        for _,linkedSpellID in ipairs(links) do\n            if enable then\n                WeakAuras.WatchSpellCooldown(linkedSpellID)\n            end\n            toggleHandlerFunc(self.eventHandlers, \"SPELL_COOLDOWN_CHANGED\", linkedSpellID, 0, watchInfo.updatePlayerCD, watchInfo)\n        end\n    end\n\n    -- Handling any dynamic modifiers that are always required (with the 'force' tag)\n    if spellInfo.mods then\n        for _,modifier in ipairs(spellInfo.mods) do\n            if modifier.mod.type == \"Dynamic\" then\n                if not enable or member:checkRequirements(modifier.reqs) then\n                    for _,handlerInfo in ipairs(modifier.mod.handlers) do\n                        if handlerInfo.force then\n                            toggleHandlerFunc(self.eventHandlers, handlerInfo.type, handlerInfo.spellID, member.GUID, handlerInfo.handler, watchInfo)\n                        end\n                    end\n                end\n            end\n        end\n    end\nend\n\nfunction ZT:toggleCombatLogHandlers(watchInfo, enable)\n    local spellInfo = watchInfo.spellInfo\n    local spellID = spellInfo.id\n    local member = watchInfo.member\n    local toggleHandlerFunc = enable and self.eventHandlers.add or self.eventHandlers.remove\n\n    if not spellInfo.ignoreCast then\n        toggleHandlerFunc(self.eventHandlers, \"SPELL_CAST_SUCCESS\", spellID, member.GUID, watchInfo.startCD, watchInfo)\n\n        local links = self.linkedSpellIDs[spellID]\n        if links then\n            for _,linkedSpellID in ipairs(links) do\n                toggleHandlerFunc(self.eventHandlers, \"SPELL_CAST_SUCCESS\", linkedSpellID, member.GUID, watchInfo.startCD, watchInfo)\n            end\n        end\n    end\n\n    if spellInfo.mods then\n        for _,modifier in ipairs(spellInfo.mods) do\n            if modifier.mod.type == \"Dynamic\" then\n                if not enable or member:checkRequirements(modifier.reqs) then\n                    for _,handlerInfo in ipairs(modifier.mod.handlers) do\n                        toggleHandlerFunc(self.eventHandlers, handlerInfo.type, handlerInfo.spellID, member.GUID, handlerInfo.handler, watchInfo)\n                    end\n                end\n            end\n        end\n    end\nend\n\nfunction ZT:watch(spellInfo, member)\n    -- Only handle registered spells (or those for the player)\n    if not spellInfo.isRegistered and not member.isPlayer then\n        return\n    end\n\n    -- Only handle spells that meet all the requirements for the member\n    if not member:checkRequirements(spellInfo.reqs) then\n        return\n    end\n\n    local spellID = spellInfo.id\n    local spells = self.watching[spellID]\n    if not spells then\n        spells = {}\n        self.watching[spellID] = spells\n    end\n\n    local isHidden = (member.isPlayer and not spellInfo.isRegistered) or member.isHidden\n\n    local watchInfo = spells[member.GUID]\n    local isNew = (watchInfo == nil)\n    if not watchInfo then\n        watchInfo = WatchInfo:create(member, spellInfo, isHidden)\n        spells[member.GUID] = watchInfo\n        member.watching[spellID] = watchInfo\n    else\n        -- If the type changed, send a remove event\n        if not isHidden and spellInfo.type ~= watchInfo.spellInfo.type then\n            watchInfo:sendRemoveEvent()\n        end\n        watchInfo.spellInfo = spellInfo\n        watchInfo:updateModifiers()\n        watchInfo:toggleHidden(isHidden, true) -- We will send the ZT_ADD event later\n    end\n\n    if member.isPlayer then\n        watchInfo:updatePlayerCharges()\n        watchInfo:sendAddEvent()\n\n        watchInfo:updatePlayerCD(spellID, true)\n\n        local links = self.separateLinkedSpellIDs[spellID]\n        if links then\n            for _,linkedSpellID in ipairs(links) do\n                watchInfo:updatePlayerCD(linkedSpellID, true)\n            end\n        end\n    else\n        watchInfo:sendAddEvent()\n    end\n\n    if member.isPlayer and not TEST_CLEU then\n        if isNew then\n            self:togglePlayerHandlers(watchInfo, true)\n        end\n    elseif member.tracking == \"CombatLog\" or (member.tracking == \"Sharing\" and member.spellsVersion < spellInfo.version) then\n        watchInfo.ignoreSharing = true\n        if not isNew then\n            self:toggleCombatLogHandlers(watchInfo, false)\n        end\n        self:toggleCombatLogHandlers(watchInfo, true)\n    else\n        watchInfo.ignoreSharing = false\n    end\nend\n\nfunction ZT:unwatch(spellInfo, member)\n    -- Only handle registered spells (or those for the player)\n    if not spellInfo.isRegistered and not member.isPlayer then\n        return\n    end\n\n    local spellID = spellInfo.id\n    local sources = self.watching[spellID]\n    if not sources then\n        return\n    end\n\n    local watchInfo = sources[member.GUID]\n    if not watchInfo then\n        return\n    end\n\n    -- Ignoring unwatch requests if the spellInfo doesn't match (yet spellID does)\n    -- (Note: This serves to ease updating after spec/talent changes)\n    if watchInfo.spellInfo ~= spellInfo then\n        return\n    end\n\n    if member.isPlayer and not TEST_CLEU then\n        -- If called due to front-end unregistration, only hide it to allow continued sharing of updates\n        -- Otherwise, called due to a spec/talent change, so actually unwatch it\n        if not spellInfo.isRegistered then\n            watchInfo:hide()\n            return\n        end\n\n        self:togglePlayerHandlers(watchInfo, false)\n    elseif member.tracking == \"CombatLog\"  or (member.tracking == \"Sharing\" and member.spellsVersion < spellInfo.version) then\n        self:toggleCombatLogHandlers(watchInfo, false)\n    end\n\n    if watchInfo.readyTimer then\n        self.timers:cancel(watchInfo.readyTimer)\n    end\n\n    sources[member.GUID] = nil\n    member.watching[spellID] = nil\n\n    watchInfo:sendRemoveEvent()\nend\n\n--##############################################################################\n-- Tracking types registered by front-end WAs\n\nfunction ZT:registerSpells(frontendID, spells)\n    for _,spellInfo in ipairs(spells) do\n        local frontends = spellInfo.frontends\n        if next(frontends, nil) ~= nil then\n            -- Some front-end already registered for this spell, so just send ADD events\n            local watched = self.watching[spellInfo.id]\n            if watched then\n                for _,watchInfo in pairs(watched) do\n                    if watchInfo.spellInfo == spellInfo then\n                        watchInfo:sendAddEvent()\n                    end\n                end\n            end\n        else\n            -- No front-end was registered for this spell, so watch as needed\n            spellInfo.isRegistered = true\n            for _,member in pairs(self.members) do\n                if not member.isIgnored then\n                    self:watch(spellInfo, member)\n                end\n            end\n        end\n\n        frontends[frontendID] = true\n    end\nend\n\nfunction ZT:unregisterSpells(frontendID, spells)\n    for _,spellInfo in ipairs(spells) do\n        local frontends = spellInfo.frontends\n        frontends[frontendID] = nil\n\n        if next(frontends, nil) == nil then\n            local watched = self.watching[spellInfo.id]\n            if watched then\n                for _,watchInfo in pairs(watched) do\n                    if watchInfo.spellInfo == spellInfo then\n                        self:unwatch(spellInfo, watchInfo.member)\n                    end\n                end\n            end\n            spellInfo.isRegistered = false\n        end\n    end\nend\n\nfunction ZT:toggleFrontEndRegistration(frontendID, info, toggle)\n    local infoType = type(info)\n    local registerFunc = toggle and self.registerSpells or self.unregisterSpells\n\n    if infoType == \"string\" then -- Registration info is a type\n        prdebug(DEBUG_EVENT, \"Received\", toggle and \"ZT_REGISTER\" or \"ZT_UNREGISTER\", \"from\", frontendID, \"for type\", info)\n        registerFunc(self, frontendID, self.spells[\"type\"][info])\n    elseif infoType == \"number\" then -- Registration info is a spellID\n        prdebug(DEBUG_EVENT, \"Received\", toggle and \"ZT_REGISTER\" or \"ZT_UNREGISTER\", \"from\", frontendID, \"for spellID\", info)\n        registerFunc(self, frontendID, self.spells[\"id\"][info])\n    elseif infoType == \"table\" then -- Registration info is a table of types or spellIDs\n        infoType = type(info[1])\n\n        if infoType == \"string\" then\n            prdebug(DEBUG_EVENT, \"Received\", toggle and \"ZT_REGISTER\" or \"ZT_UNREGISTER\", \"from\", frontendID, \"for multiple types\")\n            for _,type in ipairs(info) do\n                registerFunc(self, frontendID, self.spells[\"type\"][type])\n            end\n        elseif infoType == \"number\" then\n            prdebug(DEBUG_EVENT, \"Received\", toggle and \"ZT_REGISTER\" or \"ZT_UNREGISTER\", \"from\", frontendID, \"for multiple spells\")\n            for _,spellID in ipairs(info) do\n                registerFunc(self, frontendID, self.spells[\"id\"][spellID])\n            end\n        end\n    end\nend\n\nfunction ZT:registerFrontEnd(frontendID, info)\n    self:toggleFrontEndRegistration(frontendID, info, true)\nend\n\nfunction ZT:unregisterFrontEnd(frontendID, info)\n    self:toggleFrontEndRegistration(frontendID, info, false)\nend\n\n--##############################################################################\n-- Managing member information (e.g., spec, talents) for all group members\n\nlocal Member = { }\nlocal MemberMT = { __index = Member }\n\nZT.members = {}\nZT.inEncounter = false\n\nlocal membersToIgnore = {}\nif ZT.config[\"ignoreList\"] then\n    local ignoreListStr = trim(ZT.config[\"ignoreList\"])\n    if ignoreListStr ~= \"\" then\n        ignoreListStr = \"return \"..ignoreListStr\n        local ignoreList = WeakAuras.LoadFunction(ignoreListStr, \"ZenTracker Ignore List\")\n        if ignoreList and (type(ignoreList) == \"table\") then\n            for i,name in ipairs(ignoreList) do\n                if type(name) == \"string\" then\n                    membersToIgnore[strlower(name)] = true\n                else\n                    prerror(\"Ignore list entry\", i, \"is not a string. Skipping...\")\n                end\n            end\n        else\n            prerror(\"Ignore list is not in the form of a table. Usage: {\\\"Zenlia\\\", \\\"Cistara\\\"}\")\n        end\n    end\nend\n\nfunction Member:create(memberInfo)\n    local member = memberInfo\n    member.watching = {}\n    member.tracking = member.tracking and member.tracking or \"CombatLog\"\n    member.isPlayer = (member.GUID == UnitGUID(\"player\"))\n    member.isHidden = false\n    member.isReady = false\n\n    return setmetatable(member, MemberMT)\nend\n\nfunction Member:update(memberInfo)\n    self.level = memberInfo.level or self.level\n    self.specID = memberInfo.specID or self.specID\n    self.talents = memberInfo.talents or self.talents\n    self.talentsStr = memberInfo.talentsStr or self.talentsStr\n    self.covenantID = memberInfo.covenantID or self.covenantID\n    self.unit = memberInfo.unit or self.unit\n    if memberInfo.tracking then\n        self.tracking = memberInfo.tracking\n        self.spellsVersion = memberInfo.spellsVersion\n        self.protocolVersion = memberInfo.protocolVersion\n    end\nend\n\nfunction Member:gatherInfo()\n    local _,className,_,race,_,name = GetPlayerInfoByGUID(self.GUID)\n    self.name = name and gsub(name, \"%-[^|]+\", \"\") or nil\n    self.class = className and AllClasses[className] or nil\n    self.classID = className and AllClasses[className].ID or nil\n    self.classColor = className and RAID_CLASS_COLORS[className] or nil\n    self.race = race\n    self.level = self.unit and UnitLevel(self.unit) or -1\n\n    if (self.tracking == \"Sharing\") and self.name then\n        prdebug(DEBUG_TRACKING, self.name, \"is using ZenTracker with spell list version\", self.spellsVersion)\n    end\n\n    if self.name and membersToIgnore[strlower(self.name)] then\n        self.isIgnored = true\n        return false\n    end\n\n    if self.isPlayer then\n        self.covenantID = ZT:updateCovenantInfo()\n    end\n\n    self.isReady = (self.name ~= nil) and (self.classID ~= nil) and (self.race ~= nil) and (self.level >= 1)\n    return self.isReady\nend\n\nfunction Member:checkRequirements(reqs)\n    if not reqs then\n        return true\n    end\n\n    for _,req in ipairs(reqs) do\n        if not req.check(self) then\n            return false\n        end\n    end\n    return true\nend\n\nfunction Member:hide()\n    if not self.isHidden and not self.isPlayer then\n        self.isHidden = true\n        for _,watchInfo in pairs(self.watching) do\n            watchInfo:hide()\n        end\n    end\nend\n\nfunction Member:unhide()\n    if self.isHidden and not self.isPlayer then\n        self.isHidden = false\n        for _,watchInfo in pairs(self.watching) do\n            watchInfo:unhide()\n        end\n    end\nend\n\n-- TODO: Fix rare issue where somehow only talented spells are being shown?\nfunction ZT:addOrUpdateMember(memberInfo)\n    local member = self.members[memberInfo.GUID]\n    if not member then\n        member = Member:create(memberInfo)\n        self.members[member.GUID] = member\n    end\n\n    if member.isIgnored then\n        return\n    end\n\n    -- Determining which properties of the member have updated\n    local isInitialUpdate = not member.isReady and member:gatherInfo()\n    local isLevelUpdate = memberInfo.level and (memberInfo.level ~= member.level)\n    local isSpecUpdate = memberInfo.specID and (memberInfo.specID ~= member.specID)\n    local isTalentUpdate = false\n    if memberInfo.talents then\n        for talent,_ in pairs(memberInfo.talents) do\n            if member.talents[talent] == nil then\n                isTalentUpdate = true\n                break\n            end\n        end\n    end\n    local isCovenantUpdate = memberInfo.covenantID and (memberInfo.covenantID ~= member.covenantID)\n\n    if member.isReady and (isInitialUpdate or isLevelUpdate or isSpecUpdate or isTalentUpdate or isCovenantUpdate) then\n        local prevSpecID = member.specID\n        local prevTalents = member.talents or {}\n        local prevCovenantID = member.covenantID\n        member:update(memberInfo)\n\n        -- This handshake should come before any cooldown updates for newly watched spells\n        if member.isPlayer then\n            self:sendHandshake()\n        end\n\n        -- If we are in an encounter, hide the member if they are outside the player's instance\n        -- (Note: Previously did this on member creation, which seemed to introduce false positives)\n        if isInitialUpdate and self.inEncounter and (not member.isPlayer) then\n            local _,_,_,instanceID = UnitPosition(\"player\")\n            local _,_,_,mInstanceID = UnitPosition(member.unit)\n            if instanceID ~= mInstanceID then\n                member:hide()\n            end\n        end\n\n        -- Generic Spells + Class Spells + Race Spells\n        -- Note: These are set once and never change\n        if isInitialUpdate then\n            for _,spellInfo in ipairs(self.spells[\"generic\"]) do\n                self:watch(spellInfo, member)\n            end\n            for _,spellInfo in ipairs(self.spells[\"race\"][member.race]) do\n                self:watch(spellInfo, member)\n            end\n            for _,spellInfo in ipairs(self.spells[\"class\"][member.classID]) do\n                self:watch(spellInfo, member)\n            end\n        end\n\n        -- Leveling (No need to handle on initial update)\n        if isLevelUpdate then\n            for _,spellInfo in ipairs(self.spells[\"level\"][member.level]) do\n                self:watch(spellInfo, member)\n            end\n        end\n\n        -- Specialization Spells\n        if (isInitialUpdate or isSpecUpdate) and member.specID then\n            for _,spellInfo in ipairs(self.spells[\"spec\"][member.specID]) do\n                self:watch(spellInfo, member)\n            end\n\n            if isSpecUpdate and prevSpecID then\n                for _,spellInfo in ipairs(self.spells[\"spec\"][prevSpecID]) do\n                    if not member:checkRequirements(spellInfo.reqs) then\n                        self:unwatch(spellInfo, member)\n                    end\n                end\n            end\n        end\n\n        -- Talented Spells\n        if (isInitialUpdate or isTalentUpdate) and member.talents then\n            -- Handling talents that were just selected\n            for talent,_ in pairs(member.talents) do\n                if isInitialUpdate or not prevTalents[talent] then\n                    for _,spellInfo in ipairs(self.spells[\"talent\"][talent]) do\n                        self:watch(spellInfo, member)\n                    end\n                    for _,spellInfo in ipairs(self.spells[\"notalent\"][talent]) do\n                        if not member:checkRequirements(spellInfo.reqs) then\n                            self:unwatch(spellInfo, member)\n                        end\n                    end\n                end\n            end\n\n            -- Handling talents that were just unselected\n            if not isInitialUpdate then\n                for talent,_ in pairs(prevTalents) do\n                    if not member.talents[talent] then\n                        for _,spellInfo in ipairs(self.spells[\"talent\"][talent]) do\n                            if not member:checkRequirements(spellInfo.reqs) then\n                                self:unwatch(spellInfo, member) -- Talent was required\n                            else\n                                self:watch(spellInfo, member) -- Talent was a modifier\n                            end\n                        end\n                        for _,spellInfo in ipairs(self.spells[\"notalent\"][talent]) do\n                            self:watch(spellInfo, member)\n                        end\n                    end\n                end\n            end\n        end\n\n        -- Covenant Spells\n        if (isInitialUpdate or isCovenantUpdate) and member.covenantID then\n            for _,spellInfo in ipairs(self.spells[\"covenant\"][member.covenantID]) do\n                self:watch(spellInfo, member)\n            end\n\n            if isCovenantUpdate and prevCovenantID then\n                for _,spellInfo in ipairs(self.spells[\"covenant\"][prevCovenantID]) do\n                    if not member:checkRequirements(spellInfo.reqs) then\n                        self:unwatch(spellInfo, member)\n                    end\n                end\n            end\n        end\n    end\n\n    -- If tracking changed from \"CombatLog\" to \"Sharing\", remove unnecessary event handlers and send a handshake/updates\n    if (member.tracking == \"CombatLog\") and (memberInfo.tracking == \"Sharing\") then\n        member.tracking = \"Sharing\"\n        member.spellsVersion = memberInfo.spellsVersion\n\n        if member.name then\n            prdebug(DEBUG_TRACKING, member.name, \"is using ZenTracker with spell list version\", member.spellsVersion)\n        end\n\n        for _,watchInfo in pairs(member.watching) do\n            if watchInfo.spellInfo.version <= member.spellsVersion then\n                watchInfo.ignoreSharing = false\n                self:toggleCombatLogHandlers(watchInfo, false)\n            end\n        end\n\n        self:sendHandshake()\n        local time = GetTime()\n        for _,watchInfo in pairs(self.members[UnitGUID(\"player\")].watching) do\n            if watchInfo.expiration > time then\n                self:sendCDUpdate(watchInfo)\n            end\n        end\n    end\nend\n\n--##############################################################################\n-- Handling raid and M+ encounters\n\nfunction ZT:resetEncounterCDs()\n    for _,member in pairs(self.members) do\n        local resetMemberCDs = not member.isPlayer and member.tracking ~= \"Sharing\"\n\n        for _,watchInfo in pairs(member.watching) do\n            if resetMemberCDs and watchInfo.duration >= 180 then\n                watchInfo.charges = watchInfo.maxCharges\n                watchInfo:updateCDRemaining(0)\n            end\n\n            -- If spell uses lazy tracking and it was triggered, reset lazy tracking at this point\n            if watchInfo.spellInfo.isLazy and not watchInfo.isLazy then\n                watchInfo:sendRemoveEvent()\n                watchInfo.isLazy = true\n            end\n        end\n    end\nend\n\nfunction ZT:startEncounter(event)\n    self.inEncounter = true\n\n    local _,_,_,instanceID = UnitPosition(\"player\")\n    for _,member in pairs(self.members) do\n        local _,_,_,mInstanceID = UnitPosition(self.inspectLib:GuidToUnit(member.GUID))\n        if mInstanceID ~= instanceID then\n            member:hide()\n        else\n            member:unhide() -- Note: Shouldn't be hidden, but just in case...\n        end\n    end\n\n    if event == \"CHALLENGE_MODE_START\" then\n        self:resetEncounterCDs()\n    end\nend\n\nfunction ZT:endEncounter(event)\n    if self.inEncounter then\n        self.inEncounter = false\n        for _,member in pairs(self.members) do\n            member:unhide()\n        end\n    end\n\n    if event == \"ENCOUNTER_END\" then\n        self:resetEncounterCDs()\n    end\nend\n\n--##############################################################################\n-- Public functions for other addons/auras to query ZenTracker information\n-- Note: This API is subject to change at any time (for now)\n\n-- Parameters:\n--   type (string) -> Filter by a specific spell type (e.g., \"IMMUNITY\")\n--   spellIDs (map<number, bool>) -> Filter by a specific set of spell IDs (e.g., {[642]=true, [1022]=true})\n--   unitOrGUID (string) -> Filter by a specific member, as specified by a GUID or current unit (e.g., \"player\")\n--   available (bool) -> Filters by whether a spell is available for use or not (e.g., true)\n--   (Note: Set parameters to nil if they should be ignored)\n-- Return Value:\n--   Array containing tables with the following keys: spellID, member, expiration, charges, activeExpiration\nlocal function Public_Query(type, spellIDs, unitOrGUID, available)\n    local results = {}\n\n    local members\n    if unitOrGUID then\n        local GUID = UnitGUID(unitOrGUID) or unitOrGUID\n        if GUID and ZT.members[GUID] then\n            members = {[GUID]=ZT.members[GUID]}\n        else\n            return results\n        end\n    else\n        members = ZT.members\n    end\n\n    local time = GetTime()\n    for _,member in pairs(members) do\n        for _,watchInfo in pairs(member.watching) do\n            local spellInfo = watchInfo.spellInfo\n            if (not type or spellInfo.type == type) and (not spellIDs or spellIDs[spellInfo.id]) and (available == nil or (watchInfo.expiration <= time or (watchInfo.charges and watchInfo.charges > 0)) == available) then\n                tinsert(results, {spellID = spellInfo.id, member = member, expiration = watchInfo.expiration, charges = watchInfo.charges, activeExpiration = watchInfo.activeExpiration})\n            end\n        end\n    end\n\n    return results\nend\n\nsetglobal(\"ZenTracker_PublicFunctions\", { query = Public_Query })\n\n--##############################################################################\n-- Handling the exchange of addon messages with other ZT clients\n--\n-- Message Format = <Protocol Version (%d)>:<Message Type (%s)>:<Member GUID (%s)>...\n--   Type = \"H\" (Handshake)\n--     ...:<Spec ID (%d)>:<Talents (%s)>:<IsInitial? (%d)>:<Spells Version (%d)>:<Covenant ID (%d)>\n--   Type = \"U\" (CD Update)\n--     ...:<Spell ID (%d)>:<Duration (%f)>:<Remaining (%f)>:<#Charges (%d)>:<Active Duration (%f)>:<Active Remaining (%f)>\n\nZT.protocolVersion = 4\n\nZT.timeBetweenHandshakes = 5 --seconds\nZT.timeOfNextHandshake = 0\nZT.handshakeTimer = nil\n\nZT.timeBetweenCDUpdates = 5 --seconds (per spellID)\nZT.timeOfNextCDUpdate = {}\nZT.updateTimers = {}\n\nlocal function sendMessage(message)\n    prdebug(DEBUG_MESSAGE, \"Sending message '\"..message..\"'\")\n\n    if not IsInGroup() and not IsInRaid() then\n        return\n    end\n\n    local channel = IsInGroup(2) and \"INSTANCE_CHAT\" or \"RAID\"\n    C_ChatInfo.SendAddonMessage(\"ZenTracker\", message, channel)\nend\n\nZT.hasSentHandshake = false\nfunction ZT:sendHandshake()\n    local time = GetTime()\n    if time < self.timeOfNextHandshake then\n        if not self.handshakeTimer then\n            self.handshakeTimer = self.timers:add(self.timeOfNextHandshake, function() self:sendHandshake() end)\n        end\n        return\n    end\n\n    local GUID = UnitGUID(\"player\")\n    if not self.members[GUID] then\n        return -- This may happen when rejoining a group after login, so ignore this attempt to send a handshake\n    end\n\n    local member = self.members[GUID]\n    local specID = member.specID or 0\n    local talents = member.talentsStr or \"\"\n    local isInitial = self.hasSentHandshake and 0 or 1\n    local covenantID = member.covenantID or 0\n    local message = string.format(\"%d:H:%s:%d:%s:%d:%d:%d\", self.protocolVersion, GUID, specID, talents, isInitial, self.spellListVersion, covenantID)\n    sendMessage(message)\n\n    self.hasSentHandshake = true\n    self.timeOfNextHandshake = time + self.timeBetweenHandshakes\n    if self.handshakeTimer then\n        self.timers:cancel(self.handshakeTimer)\n        self.handshakeTimer = nil\n    end\nend\n\nfunction ZT:sendCDUpdate(watchInfo, ignoreRateLimit)\n    local spellID = watchInfo.spellInfo.id\n    local time = GetTime()\n\n    local timer = self.updateTimers[spellID]\n    if ignoreRateLimit then\n        if timer then\n            self.timers:cancel(timer)\n            self.updateTimers[spellID] = nil\n        end\n    elseif timer then\n        return\n    else\n        local timeOfNextCDUpdate = self.timeOfNextCDUpdate[spellID]\n        if timeOfNextCDUpdate and (time < timeOfNextCDUpdate) then\n            self.updateTimers[spellID] = self.timers:add(timeOfNextCDUpdate, function() self:sendCDUpdate(watchInfo, true) end)\n            return\n        end\n    end\n\n    local message\n    local GUID = watchInfo.member.GUID\n    local duration = watchInfo.duration\n    local remaining = watchInfo.expiration - time\n    if remaining < 0 then\n        remaining = 0\n    end\n    local charges = watchInfo.charges and tostring(watchInfo.charges) or \"-\"\n    local activeDuration = watchInfo.activeDuration\n    if activeDuration then\n        local activeRemaining = watchInfo.activeExpiration - time\n        if activeRemaining < 0 then\n            activeRemaining = 0\n        end\n        message = string.format(\"%d:U:%s:%d:%0.2f:%0.2f:%s:%0.2f:%0.2f\", self.protocolVersion, GUID, spellID, duration, remaining, charges, activeDuration, activeRemaining)\n    else\n        message = string.format(\"%d:U:%s:%d:%0.2f:%0.2f:%s\", self.protocolVersion, GUID, spellID, duration, remaining, charges)\n    end\n    sendMessage(message)\n\n    self.timeOfNextCDUpdate[spellID] = time + self.timeBetweenCDUpdates\nend\n\nfunction ZT:handleHandshake(version, mGUID, specID, talentsStr, isInitial, spellsVersion, covenantID)\n    -- Protocol V4: Ignore any earlier versions due to substantial changes (talents)\n    if version < 4 then\n        return\n    end\n\n    specID = tonumber(specID)\n    if specID == 0 then\n        specID = nil\n    end\n\n    local talents = {}\n    if talents ~= \"\" then\n        for index in talentsStr:gmatch(\"%d+\") do\n            index = tonumber(index)\n            talents[index] = true\n        end\n    end\n\n    -- Protocol V2: Assume false if not present\n    if isInitial == \"1\" then\n        isInitial = true\n    else\n        isInitial = false\n    end\n\n    -- Protocol V2: Assume spellsVersion is 1 if not present\n    if spellsVersion then\n        spellsVersion = tonumber(spellsVersion)\n        if not spellsVersion then\n            spellsVersion = 1\n        end\n    else\n        spellsVersion = 1\n    end\n\n    -- Protocol V4: Assume covenantID is nil if not present\n    covenantID = tonumber(covenantID)\n    if covenantID == 0 then\n        covenantID = nil\n    end\n\n    local memberInfo = {\n        GUID = mGUID,\n        specID = specID,\n        talents = talents,\n        talentsStr = talentsStr,\n        covenantID = covenantID,\n        tracking = \"Sharing\",\n        protocolVersion = version,\n        spellsVersion = spellsVersion,\n    }\n\n    self:addOrUpdateMember(memberInfo)\n    if isInitial then\n        self:sendHandshake()\n    end\nend\n\nfunction ZT:handleCDUpdate(version, mGUID, spellID, duration, remaining, charges, activeDuration, activeRemaining)\n    local member = self.members[mGUID]\n    if not member or not member.isReady then\n        return\n    end\n\n    spellID = tonumber(spellID)\n    duration = tonumber(duration)\n    remaining = tonumber(remaining)\n    if not spellID or not duration or not remaining then\n        return\n    end\n\n    local sources = self.watching[spellID]\n    if sources then\n        local watchInfo = sources[member.GUID]\n        if not watchInfo or watchInfo.ignoreSharing then\n            return\n        end\n\n        local time = GetTime()\n\n        -- Protocol V3: Charges (Ignore if not present)\n        charges = tonumber(charges)\n        if charges then\n            watchInfo.charges = charges\n        end\n\n        -- Protocol V4: Active Duration/ Expiration (Assume default or inspect buff if not present)\n        activeDuration = tonumber(activeDuration)\n        activeRemaining = tonumber(activeRemaining)\n        if activeDuration and activeRemaining then\n            watchInfo.activeDuration = activeDuration\n            watchInfo.activeExpiration = time + activeRemaining\n        elseif watchInfo.spellInfo.active then\n            watchInfo:updateActive(time)\n        end\n\n        watchInfo.duration = duration\n        watchInfo.expiration = time + remaining\n        watchInfo:sendTriggerEvent()\n    end\nend\n\nfunction ZT:handleMessage(message)\n    local version, type, mGUID, arg1, arg2, arg3, arg4, arg5, arg6 = strsplit(\":\", message)\n    version = tonumber(version)\n\n    -- Ignore any messages sent by the player\n    if mGUID == UnitGUID(\"player\") then\n        return\n    end\n\n    prdebug(DEBUG_MESSAGE, \"Received message '\"..message..\"'\")\n\n    if type == \"H\" then     -- Handshake\n        self:handleHandshake(version, mGUID, arg1, arg2, arg3, arg4, arg5, arg6)\n    elseif type == \"U\" then -- CD Update\n        self:handleCDUpdate(version, mGUID, arg1, arg2, arg3, arg4, arg5, arg6)\n    else\n        return\n    end\nend\n\nif not C_ChatInfo.RegisterAddonMessagePrefix(\"ZenTracker\") then\n    prerror(\"Could not register addon message prefix. Defaulting to local-only cooldown tracking.\")\nend\n\n--##############################################################################\n-- Callback functions for libGroupInspecT for updating/removing members\n\nZT.delayedUpdates = {}\n\nfunction ZT:updateCovenantInfo()\n    local covenantID = C_Covenants.GetActiveCovenantID()\n    if covenantID == 0 then\n        return\n    end\n\n    -- local soulbindID = C_Soulbinds.GetActiveSoulbindID()\n    -- local soulbindData = C_Soulbinds.GetSoulbindData(soulbindID)\n    -- if soulbindData and soulbindData.tree and soulbindData.tree.nodes then\n    --     for _,node in pairs(soulbindData.tree.nodes) do\n    --         if node.state == 3 then\n    --             if node.conduitID ~= 0 then\n    --             -- Process node.conduitID, node.conduitRank\n    --             else\n    --             -- Process node.spellID\n    --             end\n    --         end\n    --     end\n    -- end\n\n    return covenantID\nend\n\nfunction ZT:libInspectUpdate(_, GUID, _, info)\n    local specID = info.global_spec_id\n    if specID == 0 then\n        specID = nil\n    end\n\n    local talents = {}\n    local talentsStr = \"\"\n    if info.talents then\n        for _,talent in pairs(info.talents) do\n            if talent.spell_id then -- This is rarely nil, not sure why...\n                talents[talent.spell_id] = true\n                talentsStr = talentsStr..talent.spell_id..\",\"\n            end\n        end\n    end\n\n    local memberInfo = {\n        GUID = GUID,\n        unit = info.lku,\n        specID = specID,\n        talents = talents,\n        talentsStr = strsub(talentsStr, 0, -2),\n    }\n\n    if not self.delayedUpdates then\n        self:addOrUpdateMember(memberInfo)\n    else\n        self.delayedUpdates[GUID] = memberInfo\n    end\nend\n\nfunction ZT:libInspectRemove(_, GUID)\n    local member = self.members[GUID]\n    if not member then\n        return\n    end\n\n    for _,watchInfo in pairs(member.watching) do\n        self:unwatch(watchInfo.spellInfo, member)\n    end\n    self.members[GUID] = nil\nend\n\nfunction ZT:handleDelayedUpdates()\n    if self.delayedUpdates then\n        for _,memberInfo in pairs(self.delayedUpdates) do\n            self:addOrUpdateMember(memberInfo)\n        end\n        self.delayedUpdates = nil\n    end\nend\n\nZT.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\", true)\n\nif ZT.inspectLib then\n    local prevZT = _G[\"ZenTracker_AuraEnv\"]\n    if prevZT then\n        ZT.inspectLib.UnregisterAllCallbacks(prevZT)\n        if prevZT.timers then\n            prevZT.timers.heap = {}\n        end\n    end\n    _G[\"ZenTracker_AuraEnv\"] = ZT\n\n    -- If prevZT exists, we know it wasn't a login or reload. If it doesn't exist,\n    -- it still might not be a login or reload if the user is installing ZenTracker\n    -- for the first time. IsLoginFinished() takes care of the second case.\n    if prevZT or WeakAuras.IsLoginFinished() then\n        ZT.delayedUpdates = nil\n    end\n\n    ZT.inspectLib.RegisterCallback(ZT, \"GroupInSpecT_Update\", \"libInspectUpdate\")\n    ZT.inspectLib.RegisterCallback(ZT, \"GroupInSpecT_Remove\", \"libInspectRemove\")\n\n    for unit in WA_IterateGroupMembers() do\n        local GUID = UnitGUID(unit)\n        if GUID then\n            local info = ZT.inspectLib:GetCachedInfo(GUID)\n            if info then\n                ZT:libInspectUpdate(\"Init\", GUID, unit, info)\n            else\n                ZT.inspectLib:Rescan(GUID)\n            end\n        end\n    end\nelse\n    prerror(\"LibGroupInSpecT-1.1 not found\")\nend\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event,...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local _, eventType, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID = ...\n        aura_env.eventHandlers:handle(eventType, spellID, sourceGUID)\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom"] = "function (event, id)\n    aura_env.eventHandlers:handle(event, id, 0)\nend",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "SPELL_COOLDOWN_CHANGED, SPELL_COOLDOWN_READY",
						["custom_type"] = "event",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event)\n    if event == \"ENCOUNTER_START\" or event == \"ENCOUNTER_END\" then\n        local _,instanceType = IsInInstance()\n        if instanceType ~= \"raid\" then\n            return\n        end\n    end\n    \n    if event == \"ENCOUNTER_START\" or event == \"CHALLENGE_MODE_START\" then\n        aura_env:startEncounter(event)\n    elseif event == \"ENCOUNTER_END\" or event == \"CHALLENGE_MODE_COMPLETED\" or event == \"PLAYER_ENTERING_WORLD\" then\n        aura_env:endEncounter(event)\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "ENCOUNTER_START,ENCOUNTER_END, CHALLENGE_MODE_START,CHALLENGE_MODE_COMPLETED,PLAYER_ENTERING_WORLD",
						["custom_type"] = "event",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["event"] = "Chat Message",
						["use_unit"] = true,
						["events"] = "ZT_REGISTER, ZT_UNREGISTER",
						["custom"] = "function (event, type, frontendID)\n    if event == \"ZT_REGISTER\" then\n        aura_env:registerFrontEnd(frontendID, type)\n    elseif event == \"ZT_UNREGISTER\" then\n        aura_env:unregisterFrontEnd(frontendID, type)\n    end\nend",
						["unevent"] = "auto",
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom"] = "function(event,prefix,message,type,sender)\n    if prefix == \"ZenTracker\" then\n        aura_env:handleMessage(message)\n    end\nend",
						["custom_type"] = "event",
						["events"] = "CHAT_MSG_ADDON",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom"] = "function()\n    aura_env:sendHandshake()\nend",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "GROUP_JOINED",
						["custom_type"] = "event",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [6]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["events"] = "SPELLS_CHANGED",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["custom"] = "function()\n    aura_env:handleDelayedUpdates()\nend",
						["unevent"] = "timed",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [7]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Combat Log",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["events"] = "PLAYER_LEVEL_UP",
						["custom"] = "function(event, level)\n    if level then\n        aura_env:addOrUpdateMember({GUID=UnitGUID(\"player\"), level=level})\n    end\nend",
						["subeventSuffix"] = "",
						["subeventPrefix"] = "",
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [8]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function(event)\n    aura_env:addOrUpdateMember({GUID=UnitGUID(\"player\"), covenantID=aura_env:updateCovenantInfo()})\nend",
						["custom_type"] = "event",
						["custom_hide"] = "timed",
						["unit"] = "player",
						["events"] = "COVENANT_CHOSEN",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [9]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 78,
			["height"] = 12.000001907349,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["conditions"] = {
			},
			["regionType"] = "text",
			["preferToUpdate"] = true,
			["_table"] = "d",
			["automaticWidth"] = "Auto",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["wordWrap"] = "WordWrap",
			["shadowYOffset"] = -1,
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "ZenTracker (ZT) Main",
			["uid"] = "ejYTBRnd5n5",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "Custom Spell List",
					["width"] = 2,
				}, -- [1]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "You may add custom entries to the spell list here. The format consists of a Lua table with mandatory entries (type, id, cd) and optional entries (reqs, mods, ignoreCast, isLazy). You can look at how such values are defined in the Actions tab 'OnInit' code.",
					["width"] = 2,
				}, -- [2]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "Example: {type=\"INTERRUPT\", id=183752, cd=15, reqs={ClassReq(DH)}}",
					["width"] = 2,
				}, -- [3]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [4]
				{
					["type"] = "input",
					["key"] = "custom1",
					["useLength"] = false,
					["name"] = "Spell 1",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [5]
				{
					["type"] = "input",
					["key"] = "custom2",
					["useLength"] = false,
					["name"] = "Spell 2",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [6]
				{
					["type"] = "input",
					["key"] = "custom3",
					["useLength"] = false,
					["name"] = "Spell 3",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [7]
				{
					["type"] = "input",
					["key"] = "custom4",
					["useLength"] = false,
					["name"] = "Spell 4",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [8]
				{
					["type"] = "input",
					["key"] = "custom5",
					["useLength"] = false,
					["name"] = "Spell 5",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [9]
				{
					["type"] = "input",
					["key"] = "custom6",
					["useLength"] = false,
					["name"] = "Spell 6",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [10]
				{
					["type"] = "input",
					["key"] = "custom7",
					["useLength"] = false,
					["name"] = "Spell 7",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [11]
				{
					["type"] = "input",
					["key"] = "custom8",
					["useLength"] = false,
					["name"] = "Spell 8",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [12]
				{
					["type"] = "input",
					["key"] = "custom9",
					["useLength"] = false,
					["name"] = "Spell 9",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [13]
				{
					["type"] = "input",
					["key"] = "custom10",
					["useLength"] = false,
					["name"] = "Spell 10",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [14]
				{
					["type"] = "input",
					["key"] = "custom11",
					["useLength"] = false,
					["name"] = "Spell 11",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [15]
				{
					["type"] = "input",
					["key"] = "custom12",
					["useLength"] = false,
					["name"] = "Spell 12",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [16]
				{
					["type"] = "input",
					["key"] = "custom13",
					["useLength"] = false,
					["name"] = "Spell 13",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [17]
				{
					["type"] = "input",
					["key"] = "custom14",
					["useLength"] = false,
					["name"] = "Spell 14",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [18]
				{
					["type"] = "input",
					["key"] = "custom15",
					["useLength"] = false,
					["name"] = "Spell 15",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [19]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [20]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [21]
			},
			["config"] = {
				["custom8"] = "",
				["custom15"] = "",
				["custom5"] = "",
				["custom2"] = "",
				["custom6"] = "",
				["custom1"] = "",
				["custom7"] = "",
				["custom4"] = "",
				["custom13"] = "",
				["custom12"] = "",
				["custom14"] = "",
				["custom11"] = "",
				["custom9"] = "",
				["custom3"] = "",
				["custom10"] = "",
			},
			["width"] = 6.9999642372131,
			["semver"] = "1.1.23",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["circle_lotus_nofill"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 3, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["customName"] = "function()\n    return \nend",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unit"] = "player",
						["customName"] = "function()\n    return aura_env.order            \nend",
						["events"] = "TirnaScitheButtonOrder",
						["check"] = "event",
						["custom_hide"] = "timed",
						["custom"] = "function(_,button,order)\n    if button == 3 then \n        aura_env.order = order\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 30,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "9fxaRMOhArX",
			["xOffset"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [3]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            local values = {0, 0, 1, 3}\n            C_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\n            local message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n    end)\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 3, b)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\Addons\\guess\\circle_lotus_nofill.tga",
			["cooldownEdge"] = false,
			["semver"] = "1.3.8",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "circle_lotus_nofill",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["encounter"] = true,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["Bone Shield"] = {
			["iconSource"] = -1,
			["xOffset"] = -141.1661376953125,
			["preferToUpdate"] = false,
			["yOffset"] = -95.16632080078125,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useGroup_count"] = false,
						["unit"] = "player",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["use_tooltip"] = false,
						["spellIds"] = {
							195181, -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Bone Shield", -- [1]
						},
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"195181", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_TOPLEFT",
					["text_fontSize"] = 40,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 64.999885559082,
			["load"] = {
				["use_class"] = true,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["url"] = "https://wago.io/BJrGF-XR7/1",
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["semver"] = "1.0.0",
			["id"] = "Bone Shield",
			["width"] = 71.000137329102,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "wONxDz0Wpfl",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["desaturate"] = false,
		},
		["Autofollow Follower"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if (aura_env.leader) then\n        FollowUnit(leader)\n    end\nend",
			["shadowYOffset"] = -1,
			["displayText_format_p_time_dynamic"] = false,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/UW5MyMEHT/11",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"AuF\")\naura_env.leader = nil\n\nif not aura_env.clickableFrame then\n    local r = WeakAuras.regions['Autofollow Follower'].region\n    aura_env.clickableFrame = CreateFrame(\"Button\",\"TargetingButton\", r, \"SecureActionButtonTemplate\")  \nend\n\naura_env.clickableFrame:SetAllPoints()",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["customVariables"] = "\n\n",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "nameplate",
						["custom"] = "--Honorax@Illidan\n\nfunction(event, ...)\n    if not (UnitIsGroupLeader(\"player\")) then\n        if (event == \"CHAT_MSG_ADDON\") then\n            local prefix, text, _, sender = ...\n            if (prefix == \"AuF\") then\n                local msg = {}\n                for entry in text:gmatch(\"[^,]+\") do\n                    table.insert(msg, entry)\n                end\n                \n                local action = msg[1]\n                local payload = msg[2]\n                if (action == \"F\") then --Follow\n                    aura_env.leader = payload\n                    FollowUnit(payload)\n                elseif (action == \"M\") then -- Mount\n                    if (not IsMounted()) then\n                        C_MountJournal.SummonByID(payload)\n                    end\n                elseif(action == \"Q\") then -- Quest ping\n                    C_ChatInfo.SendAddonMessage(\"AuF\", \"QA\")\n                end\n            end\n        elseif (event == \"QUEST_DETAIL\") then\n            AcceptQuest()\n        end\n    elseif (event == \"PLAYER_REGEN_ENABLED\") then\n        if (aura_env.leader) then\n            FollowUnit(aura_env.leader)\n        end\n    end\nend\n\n\n\n",
						["spellIds"] = {
						},
						["events"] = "CHAT_MSG_ADDON, PLAYER_REGEN_ENABLED, QUEST_DETAIL",
						["check"] = "event",
						["names"] = {
						},
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "TOP",
			["desaturate"] = false,
			["font"] = "Oswald",
			["version"] = 11,
			["subRegions"] = {
			},
			["height"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["load"] = {
				["use_never"] = false,
				["use_ingroup"] = true,
				["ignoreNameRealm"] = "Honorax",
				["use_ignoreNameRealm"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["single"] = "group",
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldown"] = false,
			["conditions"] = {
			},
			["fontSize"] = 36,
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 1,
					["key"] = "leader",
					["default"] = "",
					["desc"] = "If configured, your characters will only receive commands from this character.",
					["multiline"] = false,
					["length"] = 10,
					["name"] = "Leader",
					["useLength"] = false,
				}, -- [1]
			},
			["displayText_format_n_format"] = "none",
			["shadowXOffset"] = 1,
			["cooldownEdge"] = false,
			["yOffset"] = 40,
			["uid"] = "EAGXePwu6IA",
			["regionType"] = "text",
			["parent"] = "Autofollow",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 9,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.10",
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Autofollow Follower",
			["automaticWidth"] = "Auto",
			["alpha"] = 1,
			["width"] = 1,
			["displayText"] = "%c",
			["config"] = {
				["leader"] = "",
			},
			["inverse"] = false,
			["icon"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
			},
			["anchorPoint"] = "TOP",
		},
		["Autofollow"] = {
			["controlledChildren"] = {
				"Autofollow Leader", -- [1]
				"Autofollow Follower", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = true,
			["yOffset"] = 333.3333740234375,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/UW5MyMEHT/11",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 40,
			["selfPoint"] = "BOTTOMLEFT",
			["desc"] = "--Honorax@Illidan",
			["version"] = 11,
			["subRegions"] = {
			},
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.10",
			["tocversion"] = 90002,
			["id"] = "Autofollow",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "pOW9j20lPNi",
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["xOffset"] = 117.5001220703125,
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
			},
			["borderInset"] = 1,
		},
		["Tosh ZT Party Offensives Icons"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["iconSource"] = -1,
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["text"] = "Note: You can adjust other options like icon size in the Display tab",
							["type"] = "description",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [1]
						{
							["text"] = " ",
							["type"] = "description",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
						{
							["width"] = 1,
							["type"] = "select",
							["default"] = 1,
							["values"] = {
								"Left", -- [1]
								"Right", -- [2]
								"Top", -- [3]
								"Bottom", -- [4]
							},
							["useDesc"] = true,
							["name"] = "Grow Direction",
							["key"] = "growDirection",
							["desc"] = "Direction the icons grow towards, relative to the raid frame",
						}, -- [3]
						{
							["softMin"] = 0,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 100,
							["step"] = 1,
							["width"] = 1,
							["min"] = -100,
							["key"] = "spacing",
							["default"] = 2,
							["softMax"] = 20,
							["name"] = "Spacing",
							["useDesc"] = true,
							["desc"] = "Amount of pixels between icons",
						}, -- [4]
						{
							["softMin"] = -25,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 500,
							["step"] = 1,
							["width"] = 1,
							["min"] = -500,
							["key"] = "xOffset",
							["default"] = 0,
							["softMax"] = 25,
							["name"] = "X-Offset",
							["useDesc"] = true,
							["desc"] = "Amount of pixels the display is offset horizontally",
						}, -- [5]
						{
							["softMin"] = -25,
							["type"] = "range",
							["bigStep"] = 1,
							["max"] = 500,
							["step"] = 1,
							["width"] = 1,
							["min"] = -500,
							["key"] = "yOffset",
							["default"] = 0,
							["softMax"] = 25,
							["name"] = "Y-Offset",
							["useDesc"] = true,
							["desc"] = "Amount of pixels the display is offset vertically",
						}, -- [6]
						{
							["text"] = " ",
							["type"] = "description",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [7]
						{
							["type"] = "toggle",
							["name"] = "Force Horizontal",
							["default"] = false,
							["key"] = "preserveRows",
							["useDesc"] = false,
							["width"] = 0.5,
						}, -- [8]
					},
					["type"] = "group",
					["useDesc"] = false,
					["width"] = 2,
					["useCollapse"] = true,
					["key"] = "display",
					["name"] = "Display Configuration",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = true,
					["size"] = 10,
				}, -- [1]
				{
					["subOptions"] = {
						{
							["subOptions"] = {
								{
									["text"] = "Registration - By Type",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 2,
								}, -- [1]
								{
									["text"] = "Coarse-grained registration for spells according to their type",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [2]
								{
									["text"] = " ",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [3]
								{
									["text"] = "'Register? (Reg)' - Whether to register for spells of this type",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [4]
								{
									["text"] = "'Show Own? (Own)' - Whether to show your own spells of this type",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [5]
								{
									["text"] = "'Row (Row)' - Which row (1, 2 or 3) for displaying spells of this type",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [6]
								{
									["text"] = " ",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [7]
								{
									["text"] = "Type",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 0.35,
								}, -- [8]
								{
									["text"] = "Reg",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [9]
								{
									["text"] = "Own",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [10]
								{
									["text"] = "Row",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [11]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [12]
								{
									["text"] = "Type",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 0.35,
								}, -- [13]
								{
									["text"] = "Reg",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [14]
								{
									["text"] = "Own",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [15]
								{
									["text"] = "Row",
									["type"] = "description",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [16]
								{
									["text"] = "DAMAGE",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [17]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledDAMAGE",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [18]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnDAMAGE",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [19]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowDAMAGE",
									["default"] = 1,
									["name"] = "",
								}, -- [20]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [21]
								{
									["text"] = "DEFMDISPEL",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [22]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = false,
									["key"] = "enabledDEFMDISPEL",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [23]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnDEFMDISPEL",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [24]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowDEFMDISPEL",
									["default"] = 1,
									["name"] = "",
								}, -- [25]
								{
									["text"] = "DISPEL",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [26]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledDISPEL",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [27]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnDISPEL",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [28]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowDISPEL",
									["default"] = 2,
									["name"] = "",
								}, -- [29]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [30]
								{
									["text"] = "EXTERNAL",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [31]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledEXTERNAL",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [32]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnEXTERNAL",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [33]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowEXTERNAL",
									["default"] = 2,
									["name"] = "",
								}, -- [34]
								{
									["text"] = "HARDCC",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [35]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledHARDCC",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [36]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnHARDCC",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [37]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowHARDCC",
									["default"] = 2,
									["name"] = "",
								}, -- [38]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [39]
								{
									["text"] = "HEALING",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [40]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledHEALING",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [41]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnHEALING",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [42]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowHEALING",
									["default"] = 1,
									["name"] = "",
								}, -- [43]
								{
									["text"] = "IMMUNITY",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [44]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledIMMUNITY",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [45]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnIMMUNITY",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [46]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowIMMUNITY",
									["default"] = 1,
									["name"] = "",
								}, -- [47]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [48]
								{
									["text"] = "INTERRUPT",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [49]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = false,
									["key"] = "enabledINTERRUPT",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [50]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnINTERRUPT",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [51]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowINTERRUPT",
									["default"] = 1,
									["name"] = "",
								}, -- [52]
								{
									["text"] = "PERSONAL",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [53]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledPERSONAL",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [54]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnPERSONAL",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [55]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowPERSONAL",
									["default"] = 1,
									["name"] = "",
								}, -- [56]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [57]
								{
									["text"] = "RAIDCD",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [58]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledRAIDCD",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [59]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnRAIDCD",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [60]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowRAIDCD",
									["default"] = 2,
									["name"] = "",
								}, -- [61]
								{
									["text"] = "SOFTCC",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [62]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledSOFTCC",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [63]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnSOFTCC",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [64]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowSOFTCC",
									["default"] = 2,
									["name"] = "",
								}, -- [65]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [66]
								{
									["text"] = "STHARDCC",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [67]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = false,
									["key"] = "enabledSTHARDCC",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [68]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnSTHARDCC",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [69]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowSTHARDCC",
									["default"] = 1,
									["name"] = "",
								}, -- [70]
								{
									["text"] = "STSOFTCC",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [71]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = false,
									["key"] = "enabledSTSOFTCC",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [72]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnSTSOFTCC",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [73]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowSTSOFTCC",
									["default"] = 1,
									["name"] = "",
								}, -- [74]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [75]
								{
									["text"] = "TANK",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [76]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = false,
									["key"] = "enabledTANK",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [77]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnTANK",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [78]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowTANK",
									["default"] = 1,
									["name"] = "",
								}, -- [79]
								{
									["text"] = "UTILITY",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [80]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "enabledUTILITY",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [81]
								{
									["type"] = "toggle",
									["name"] = "",
									["default"] = true,
									["key"] = "showOwnUTILITY",
									["useDesc"] = false,
									["width"] = 0.2,
								}, -- [82]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 3,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 1,
									["key"] = "rowUTILITY",
									["default"] = 2,
									["name"] = "",
								}, -- [83]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [84]
							},
							["type"] = "group",
							["useDesc"] = false,
							["width"] = 2,
							["useCollapse"] = true,
							["name"] = "By Type",
							["key"] = "type",
							["limitType"] = "none",
							["groupType"] = "simple",
							["collapse"] = false,
							["size"] = 10,
						}, -- [1]
						{
							["text"] = " ",
							["type"] = "description",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
						{
							["subOptions"] = {
								{
									["text"] = "Fine-grained registration for individual spells. If a given type is registered, these settings will instead be treated as a blacklist for that type.",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [1]
								{
									["text"] = "Spells will be shown according to the row specified for their associated type in the \\\"Registration - By Type\\\" settings",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [2]
								{
									["text"] = " ",
									["type"] = "description",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [3]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T2065580:0|t |cFFA330C9Fel Barrage|r",
											["default"] = false,
											["key"] = "258925",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T1247262:0|t |cFFA330C9Metamorphosis|r",
											["default"] = false,
											["key"] = "191427",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T236299:0|t |cFFA330C9Nemesis|r",
											["default"] = false,
											["key"] = "206491",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T1392565:0|t |cFFC41F3BApocalypse|r",
											["default"] = false,
											["key"] = "275699",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T237511:0|t |cFFC41F3BArmy of the Dead|r",
											["default"] = false,
											["key"] = "42650",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T1029007:0|t |cFFC41F3BBreath of Sindra|r",
											["default"] = false,
											["key"] = "152279",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T135372:0|t |cFFC41F3BEmpower Rune Wea|r",
											["default"] = false,
											["key"] = "47568",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["name"] = "|T341980:0|t |cFFC41F3BFrostwyrm's Fury|r",
											["default"] = false,
											["key"] = "279302",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["name"] = "|T458967:0|t |cFFC41F3BSummon Gargoyle|r",
											["default"] = false,
											["key"] = "49206",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["name"] = "|T136224:0|t |cFFC41F3BUnholy Frenzy|r",
											["default"] = false,
											["key"] = "207289",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["name"] = "|T236149:0|t |cFFFF7D0ABerserk|r",
											["default"] = false,
											["key"] = "106951",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["name"] = "|T136060:0|t |cFFFF7D0ACelestial Alignm|r",
											["default"] = false,
											["key"] = "194223",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["name"] = "|T132123:0|t |cFFFF7D0AFury of Elune|r",
											["default"] = false,
											["key"] = "202770",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Cho|r",
											["default"] = false,
											["key"] = "102560",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Kin|r",
											["default"] = false,
											["key"] = "102543",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["name"] = "|T136074:0|t |cFFABD473Aspect of the Wi|r",
											["default"] = false,
											["key"] = "193530",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["name"] = "|T132127:0|t |cFFABD473Bestial Wrath|r",
											["default"] = false,
											["key"] = "19574",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["name"] = "|T2065565:0|t |cFFABD473Coordinated Assa|r",
											["default"] = false,
											["key"] = "266779",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["name"] = "|T461112:0|t |cFFABD473Stampede|r",
											["default"] = false,
											["key"] = "201430",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [19]
										{
											["type"] = "toggle",
											["name"] = "|T132329:0|t |cFFABD473Trueshot|r",
											["default"] = false,
											["key"] = "288613",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [20]
										{
											["type"] = "toggle",
											["name"] = "|T136048:0|t |cFF40C7EBArcane Power|r",
											["default"] = false,
											["key"] = "12042",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [21]
										{
											["type"] = "toggle",
											["name"] = "|T135824:0|t |cFF40C7EBCombustion|r",
											["default"] = false,
											["key"] = "190319",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [22]
										{
											["type"] = "toggle",
											["name"] = "|T135838:0|t |cFF40C7EBIcy Veins|r",
											["default"] = false,
											["key"] = "12472",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [23]
										{
											["type"] = "toggle",
											["name"] = "|T135994:0|t |cFF40C7EBMirror Image|r",
											["default"] = false,
											["key"] = "55342",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [24]
										{
											["type"] = "toggle",
											["name"] = "|T620832:0|t |cFF00FF96Invoke Xuen, the|r",
											["default"] = false,
											["key"] = "123904",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [25]
										{
											["type"] = "toggle",
											["name"] = "|T988197:0|t |cFF00FF96Serenity|r",
											["default"] = false,
											["key"] = "152173",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [26]
										{
											["type"] = "toggle",
											["name"] = "|T136038:0|t |cFF00FF96Storm, Earth, an|r",
											["default"] = false,
											["key"] = "137639",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [27]
										{
											["type"] = "toggle",
											["name"] = "|T606552:0|t |cFF00FF96Touch of Death|r",
											["default"] = false,
											["key"] = "115080",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [28]
										{
											["type"] = "toggle",
											["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
											["default"] = false,
											["key"] = "31884",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [29]
										{
											["type"] = "toggle",
											["name"] = "|T236262:0|t |cFFF58CBACrusade|r",
											["default"] = false,
											["key"] = "231895",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [30]
										{
											["type"] = "toggle",
											["name"] = "|T1030103:0|t |cFFF58CBASeraphim|r",
											["default"] = false,
											["key"] = "152262",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [31]
										{
											["type"] = "toggle",
											["name"] = "|T1711336:0|t |cFFFFFFFFDark Ascension|r",
											["default"] = false,
											["key"] = "280711",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [32]
										{
											["type"] = "toggle",
											["name"] = "|T254090:0|t |cFFFFFFFFSurrender to Mad|r",
											["default"] = false,
											["key"] = "193223",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [33]
										{
											["type"] = "toggle",
											["name"] = "|T136206:0|t |cFFFFF569Adrenaline Rush|r",
											["default"] = false,
											["key"] = "13750",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [34]
										{
											["type"] = "toggle",
											["name"] = "|T236277:0|t |cFFFFF569Killing Spree|r",
											["default"] = false,
											["key"] = "51690",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [35]
										{
											["type"] = "toggle",
											["name"] = "|T376022:0|t |cFFFFF569Shadow Blades|r",
											["default"] = false,
											["key"] = "121471",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [36]
										{
											["type"] = "toggle",
											["name"] = "|T458726:0|t |cFFFFF569Vendetta|r",
											["default"] = false,
											["key"] = "79140",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [37]
										{
											["type"] = "toggle",
											["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
											["default"] = false,
											["key"] = "Ascendance",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [38]
										{
											["type"] = "toggle",
											["name"] = "|T237577:0|t |cFF0070DEFeral Spirit|r",
											["default"] = false,
											["key"] = "51533",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [39]
										{
											["type"] = "toggle",
											["name"] = "|T2065626:0|t |cFF0070DEStorm Elemental|r",
											["default"] = false,
											["key"] = "192249",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [40]
										{
											["type"] = "toggle",
											["name"] = "|T839977:0|t |cFF0070DEStormkeeper|r",
											["default"] = false,
											["key"] = "191634",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [41]
										{
											["type"] = "toggle",
											["name"] = "|T463286:0|t |cFF8787EDDark Soul: Insta|r",
											["default"] = false,
											["key"] = "113858",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [42]
										{
											["type"] = "toggle",
											["name"] = "|T463286:0|t |cFF8787EDDark Soul: Miser|r",
											["default"] = false,
											["key"] = "113860",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [43]
										{
											["type"] = "toggle",
											["name"] = "|T2065615:0|t |cFF8787EDNether Portal|r",
											["default"] = false,
											["key"] = "267217",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [44]
										{
											["type"] = "toggle",
											["name"] = "|T1416161:0|t |cFF8787EDSummon Darkglare|r",
											["default"] = false,
											["key"] = "205180",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [45]
										{
											["type"] = "toggle",
											["name"] = "|T2065628:0|t |cFF8787EDSummon Demonic T|r",
											["default"] = false,
											["key"] = "265187",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [46]
										{
											["type"] = "toggle",
											["name"] = "|T136219:0|t |cFF8787EDSummon Infernal|r",
											["default"] = false,
											["key"] = "1122",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [47]
										{
											["type"] = "toggle",
											["name"] = "|T613534:0|t |cFFC79C6EAvatar|r",
											["default"] = false,
											["key"] = "107574",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [48]
										{
											["type"] = "toggle",
											["name"] = "|T236303:0|t |cFFC79C6EBladestorm|r",
											["default"] = false,
											["key"] = "Bladestorm",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [49]
										{
											["type"] = "toggle",
											["name"] = "|T458972:0|t |cFFC79C6ERecklessness|r",
											["default"] = false,
											["key"] = "1719",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [50]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "DAMAGE",
									["key"] = "DAMAGE",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [4]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T236288:0|t |cFFFF7D0ANature's Cure|r",
											["default"] = false,
											["key"] = "88423",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T460692:0|t |cFF00FF96Detox|r",
											["default"] = false,
											["key"] = "115450",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T135949:0|t |cFFF58CBACleanse|r",
											["default"] = false,
											["key"] = "4987",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T135894:0|t |cFFFFFFFFPurify|r",
											["default"] = false,
											["key"] = "527",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T236288:0|t |cFF0070DEPurify Spirit|r",
											["default"] = false,
											["key"] = "77130",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "DEFMDISPEL",
									["key"] = "DEFMDISPEL",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [5]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T828455:0|t |cFFA330C9Disrupt|r",
											["default"] = false,
											["key"] = "278326",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T132163:0|t |cFFFF7D0ASoothe|r",
											["default"] = false,
											["key"] = "2908",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T136222:0|t |cFFBBBBBBArcane Torrent|r",
											["default"] = false,
											["key"] = "ArcaneTorrent",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T135739:0|t |cFFFFFFFFMass Dispel|r",
											["default"] = false,
											["key"] = "32375",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "DISPEL",
									["key"] = "DISPEL",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [6]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T572025:0|t |cFFFF7D0AIronbark|r",
											["default"] = false,
											["key"] = "102342",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T627485:0|t |cFF00FF96Life Cocoon|r",
											["default"] = false,
											["key"] = "116849",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T135964:0|t |cFFF58CBABlessing of Prot|r",
											["default"] = false,
											["key"] = "1022",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T135966:0|t |cFFF58CBABlessing of Sacr|r",
											["default"] = false,
											["key"] = "6940",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T135880:0|t |cFFF58CBABlessing of Spel|r",
											["default"] = false,
											["key"] = "204018",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T237542:0|t |cFFFFFFFFGuardian Spirit|r",
											["default"] = false,
											["key"] = "47788",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T135936:0|t |cFFFFFFFFPain Supression|r",
											["default"] = false,
											["key"] = "33206",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "EXTERNAL",
									["key"] = "EXTERNAL",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [7]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T135795:0|t |cFFA330C9Chaos Nova|r",
											["default"] = false,
											["key"] = "179057",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T642414:0|t |cFF00FF96Leg Sweep|r",
											["default"] = false,
											["key"] = "119381",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T1723987:0|t |cFFBBBBBBBull Rush|r",
											["default"] = false,
											["key"] = "255654",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T132368:0|t |cFFBBBBBBWar Stomp|r",
											["default"] = false,
											["key"] = "20549",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T136013:0|t |cFF0070DECapacitor Totem|r",
											["default"] = false,
											["key"] = "192058",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T607865:0|t |cFF8787EDShadowfury|r",
											["default"] = false,
											["key"] = "30283",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T236312:0|t |cFFC79C6EShockwave|r",
											["default"] = false,
											["key"] = "46968",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "HARDCC",
									["key"] = "HARDCC",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [8]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T236157:0|t |cFFFF7D0AIncarnation: Tre|r",
											["default"] = false,
											["key"] = "33891",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T136107:0|t |cFFFF7D0ATranquility|r",
											["default"] = false,
											["key"] = "740",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T877514:0|t |cFF00FF96Invoke Chi-Ji, t|r",
											["default"] = false,
											["key"] = "198664",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T1020466:0|t |cFF00FF96Revival|r",
											["default"] = false,
											["key"] = "115310",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T589117:0|t |cFFF58CBAAvenging Crusade|r",
											["default"] = false,
											["key"] = "216331",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
											["default"] = false,
											["key"] = "31884",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T571555:0|t |cFFF58CBAHoly Avenger|r",
											["default"] = false,
											["key"] = "105809",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["name"] = "|T135928:0|t |cFFF58CBALay on Hands|r",
											["default"] = false,
											["key"] = "633",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["name"] = "|T133192:0|t |cFFF58CBAWord of Glory|r",
											["default"] = false,
											["key"] = "210191",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["name"] = "|T1060983:0|t |cFFFFFFFFApotheosis|r",
											["default"] = false,
											["key"] = "200183",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["name"] = "|T237540:0|t |cFFFFFFFFDivine Hymn|r",
											["default"] = false,
											["key"] = "64843",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["name"] = "|T135895:0|t |cFFFFFFFFEvangelism|r",
											["default"] = false,
											["key"] = "246287",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["name"] = "|T458225:0|t |cFFFFFFFFHoly Word: Salva|r",
											["default"] = false,
											["key"] = "265202",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["name"] = "|T537078:0|t |cFFFFFFFFLuminous Barrier|r",
											["default"] = false,
											["key"] = "271466",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["name"] = "|T237548:0|t |cFFFFFFFFRapture|r",
											["default"] = false,
											["key"] = "47536",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["name"] = "|T136230:0|t |cFFFFFFFFVampiric Embrace|r",
											["default"] = false,
											["key"] = "15286",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
											["default"] = false,
											["key"] = "114052",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["name"] = "|T136098:0|t |cFF0070DEEarthen Wall Tot|r",
											["default"] = false,
											["key"] = "198838",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["name"] = "|T538569:0|t |cFF0070DEHealing Tide Tot|r",
											["default"] = false,
											["key"] = "108280",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [19]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "HEALING",
									["key"] = "HEALING",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [9]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T463284:0|t |cFFA330C9Netherwalk|r",
											["default"] = false,
											["key"] = "196555",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T132199:0|t |cFFABD473Aspect of the Tu|r",
											["default"] = false,
											["key"] = "186265",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T135841:0|t |cFF40C7EBIce Block|r",
											["default"] = false,
											["key"] = "45438",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T524354:0|t |cFFF58CBADivine Shield|r",
											["default"] = false,
											["key"] = "642",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T136177:0|t |cFFFFF569Cloak of Shadows|r",
											["default"] = false,
											["key"] = "31224",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "IMMUNITY",
									["key"] = "IMMUNITY",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [10]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T1305153:0|t |cFFA330C9Disrupt|r",
											["default"] = false,
											["key"] = "183752",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T237527:0|t |cFFC41F3BMind Freeze|r",
											["default"] = false,
											["key"] = "47528",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T237569:0|t |cFFC41F3BShambling Rush|r",
											["default"] = false,
											["key"] = "91802",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T236946:0|t |cFFFF7D0ASkull Bash|r",
											["default"] = false,
											["key"] = "106839",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T252188:0|t |cFFFF7D0ASolar Beam|r",
											["default"] = false,
											["key"] = "78675",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T249170:0|t |cFFABD473Counter Shot|r",
											["default"] = false,
											["key"] = "147362",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T1376045:0|t |cFFABD473Muzzle|r",
											["default"] = false,
											["key"] = "187707",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["name"] = "|T135856:0|t |cFF40C7EBCounter Spell|r",
											["default"] = false,
											["key"] = "2139",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["name"] = "|T608940:0|t |cFF00FF96Spear Hand Strik|r",
											["default"] = false,
											["key"] = "116705",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["name"] = "|T523893:0|t |cFFF58CBARebuke|r",
											["default"] = false,
											["key"] = "96231",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["name"] = "|T458230:0|t |cFFFFFFFFSilence|r",
											["default"] = false,
											["key"] = "15487",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["name"] = "|T132219:0|t |cFFFFF569Kick|r",
											["default"] = false,
											["key"] = "1766",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["name"] = "|T136018:0|t |cFF0070DEWind Shear|r",
											["default"] = false,
											["key"] = "57994",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["name"] = "|T136174:0|t |cFF8787EDSpell Lock|r",
											["default"] = false,
											["key"] = "19647",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["name"] = "|T132938:0|t |cFFC79C6EPummel|r",
											["default"] = false,
											["key"] = "6552",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [15]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "INTERRUPT",
									["key"] = "INTERRUPT",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [11]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T1305150:0|t |cFFA330C9Blur|r",
											["default"] = false,
											["key"] = "198589",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T136120:0|t |cFFC41F3BAnti-Magic Shell|r",
											["default"] = false,
											["key"] = "48707",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T136146:0|t |cFFC41F3BDeath Pact|r",
											["default"] = false,
											["key"] = "48743",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T237525:0|t |cFFC41F3BIcebound Fortitu|r",
											["default"] = false,
											["key"] = "48792",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T136097:0|t |cFFFF7D0ABarkskin|r",
											["default"] = false,
											["key"] = "22812",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T136059:0|t |cFFFF7D0ARenewal|r",
											["default"] = false,
											["key"] = "108238",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T236169:0|t |cFFFF7D0ASurvival Instinc|r",
											["default"] = false,
											["key"] = "61336",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["name"] = "|T461117:0|t |cFFABD473Exhilaration|r",
											["default"] = false,
											["key"] = "109304",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["name"] = "|T132293:0|t |cFFABD473Feign Death|r",
											["default"] = false,
											["key"] = "5384",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["name"] = "|T135865:0|t |cFF40C7EBCold Snap|r",
											["default"] = false,
											["key"] = "235219",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["name"] = "|T620827:0|t |cFF00FF96Dampen Harm|r",
											["default"] = false,
											["key"] = "122278",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["name"] = "|T775460:0|t |cFF00FF96Diffuse Magic|r",
											["default"] = false,
											["key"] = "122783",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["name"] = "|T1616072:0|t |cFF00FF96Fortifying Brew|r",
											["default"] = false,
											["key"] = "243435",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["name"] = "|T608939:0|t |cFF00FF96Healing Elixir|r",
											["default"] = false,
											["key"] = "122281",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["name"] = "|T651728:0|t |cFF00FF96Touch of Karma|r",
											["default"] = false,
											["key"] = "122470",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["name"] = "|T524353:0|t |cFFF58CBADivine Protectio|r",
											["default"] = false,
											["key"] = "498",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["name"] = "|T135986:0|t |cFFF58CBAEye for an Eye|r",
											["default"] = false,
											["key"] = "205191",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["name"] = "|T236264:0|t |cFFF58CBAShield of Vengea|r",
											["default"] = false,
											["key"] = "184662",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["name"] = "|T237550:0|t |cFFFFFFFFDesperate Prayer|r",
											["default"] = false,
											["key"] = "19236",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [19]
										{
											["type"] = "toggle",
											["name"] = "|T237563:0|t |cFFFFFFFFDispersion|r",
											["default"] = false,
											["key"] = "47585",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [20]
										{
											["type"] = "toggle",
											["name"] = "|T132269:0|t |cFFFFF569Evasion/Riposte|r",
											["default"] = false,
											["key"] = "Evasion/Riposte",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [21]
										{
											["type"] = "toggle",
											["name"] = "|T538565:0|t |cFF0070DEAstral Shift|r",
											["default"] = false,
											["key"] = "108271",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [22]
										{
											["type"] = "toggle",
											["name"] = "|T538538:0|t |cFF8787EDDark Pact|r",
											["default"] = false,
											["key"] = "108416",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [23]
										{
											["type"] = "toggle",
											["name"] = "|T136150:0|t |cFF8787EDUnending Resolve|r",
											["default"] = false,
											["key"] = "104773",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [24]
										{
											["type"] = "toggle",
											["name"] = "|T132336:0|t |cFFC79C6EDie by the Sword|r",
											["default"] = false,
											["key"] = "118038",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [25]
										{
											["type"] = "toggle",
											["name"] = "|T132345:0|t |cFFC79C6EEnraged Regenera|r",
											["default"] = false,
											["key"] = "184364",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [26]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "PERSONAL",
									["key"] = "PERSONAL",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [12]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T1305154:0|t |cFFA330C9Darkness|r",
											["default"] = false,
											["key"] = "196718",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T135909:0|t |cFFF58CBAAegis of Light|r",
											["default"] = false,
											["key"] = "204150",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T135872:0|t |cFFF58CBAAura Mastery|r",
											["default"] = false,
											["key"] = "31821",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T253400:0|t |cFFFFFFFFPower Word: Barr|r",
											["default"] = false,
											["key"] = "62618",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T136080:0|t |cFF0070DEAncestral Protec|r",
											["default"] = false,
											["key"] = "207399",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T237586:0|t |cFF0070DESpirit Link Tote|r",
											["default"] = false,
											["key"] = "98008",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T132351:0|t |cFFC79C6ERallying Cry|r",
											["default"] = false,
											["key"] = "97462",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "RAIDCD",
									["key"] = "RAIDCD",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [13]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T1418286:0|t |cFFA330C9Sigil of Chains|r",
											["default"] = false,
											["key"] = "202138",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T1418287:0|t |cFFA330C9Sigil of Misery|r",
											["default"] = false,
											["key"] = "207684",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T1418288:0|t |cFFA330C9Sigil of Silence|r",
											["default"] = false,
											["key"] = "202137",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T135836:0|t |cFFC41F3BBlinding Sleet|r",
											["default"] = false,
											["key"] = "207167",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T538767:0|t |cFFC41F3BGorefiend's Gras|r",
											["default"] = false,
											["key"] = "108199",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T132121:0|t |cFFFF7D0AIncapacitating R|r",
											["default"] = false,
											["key"] = "99",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T538515:0|t |cFFFF7D0AMass Entanglemen|r",
											["default"] = false,
											["key"] = "102359",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["name"] = "|T236170:0|t |cFFFF7D0ATyphoon|r",
											["default"] = false,
											["key"] = "132469",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["name"] = "|T571588:0|t |cFFFF7D0AUrsol's Vortex|r",
											["default"] = false,
											["key"] = "102793",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["name"] = "|T462650:0|t |cFFABD473Binding Shot|r",
											["default"] = false,
											["key"] = "109248",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["name"] = "|T134153:0|t |cFF40C7EBDragon's Breath|r",
											["default"] = false,
											["key"] = "31661",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["name"] = "|T1698698:0|t |cFF40C7EBFreeze (Pet)|r",
											["default"] = false,
											["key"] = "33395",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["name"] = "|T135848:0|t |cFF40C7EBFrost Nova|r",
											["default"] = false,
											["key"] = "122",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["name"] = "|T464484:0|t |cFF40C7EBRing of Frost|r",
											["default"] = false,
											["key"] = "113724",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["name"] = "|T839107:0|t |cFF00FF96Ring of Peace|r",
											["default"] = false,
											["key"] = "116844",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["name"] = "|T571553:0|t |cFFF58CBABlinding Light|r",
											["default"] = false,
											["key"] = "115750",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["name"] = "|T136184:0|t |cFFFFFFFFPsychic Scream|r",
											["default"] = false,
											["key"] = "8122",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["name"] = "|T571554:0|t |cFFFFFFFFShining Force|r",
											["default"] = false,
											["key"] = "204263",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["name"] = "|T237589:0|t |cFF0070DEThunderstorm|r",
											["default"] = false,
											["key"] = "51490",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [19]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "SOFTCC",
									["key"] = "SOFTCC",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [14]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T1118739:0|t |cFFA330C9Fel Eruption|r",
											["default"] = false,
											["key"] = "211881",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T538558:0|t |cFFC41F3BAsphyxiate|r",
											["default"] = false,
											["key"] = "Asphyxiate",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T132114:0|t |cFFFF7D0AMighty Bash|r",
											["default"] = false,
											["key"] = "5211",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T132111:0|t |cFFABD473Intimidation|r",
											["default"] = false,
											["key"] = "19577",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T135963:0|t |cFFF58CBAHammer of Justic|r",
											["default"] = false,
											["key"] = "853",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T135886:0|t |cFFFFFFFFHoly Word: Chast|r",
											["default"] = false,
											["key"] = "88625",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T237568:0|t |cFFFFFFFFPsychic Horror|r",
											["default"] = false,
											["key"] = "64044",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["name"] = "|T607853:0|t |cFF8787EDMortal Coil|r",
											["default"] = false,
											["key"] = "6789",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["name"] = "|T613535:0|t |cFFC79C6EStorm Bolt|r",
											["default"] = false,
											["key"] = "107570",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [9]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "STHARDCC",
									["key"] = "STHARDCC",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [15]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T1380368:0|t |cFFA330C9Imprison|r",
											["default"] = false,
											["key"] = "217832",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T237532:0|t |cFFC41F3BDeath Grip|r",
											["default"] = false,
											["key"] = "49576",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T135834:0|t |cFFABD473Freezing Trap|r",
											["default"] = false,
											["key"] = "187650",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T629534:0|t |cFF00FF96Paralysis|r",
											["default"] = false,
											["key"] = "115078",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T572035:0|t |cFFBBBBBBQuaking Palm|r",
											["default"] = false,
											["key"] = "107079",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T136175:0|t |cFFFFF569Blind|r",
											["default"] = false,
											["key"] = "2094",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "STSOFTCC",
									["key"] = "STSOFTCC",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [16]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T1450143:0|t |cFFA330C9Fel Devastation|r",
											["default"] = false,
											["key"] = "212084",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T1344647:0|t |cFFA330C9Fiery Brand|r",
											["default"] = false,
											["key"] = "204021",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T1247263:0|t |cFFA330C9Metamorphosis|r",
											["default"] = false,
											["key"] = "187827",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T838812:0|t |cFFC41F3BBlooddrinker|r",
											["default"] = false,
											["key"] = "206931",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T342917:0|t |cFFC41F3BBonestorm|r",
											["default"] = false,
											["key"] = "194844",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T1121487:0|t |cFFC41F3BConsumption|r",
											["default"] = false,
											["key"] = "274156",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T135277:0|t |cFFC41F3BDancing Rune Wea|r",
											["default"] = false,
											["key"] = "49028",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["name"] = "|T237529:0|t |cFFC41F3BRune Tap|r",
											["default"] = false,
											["key"] = "194679",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["name"] = "|T136168:0|t |cFFC41F3BVampiric Blood|r",
											["default"] = false,
											["key"] = "55233",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Gua|r",
											["default"] = false,
											["key"] = "102558",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["name"] = "|T615341:0|t |cFF00FF96Fortifying Brew|r",
											["default"] = false,
											["key"] = "115203",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["name"] = "|T608951:0|t |cFF00FF96Invoke Niuzao|r",
											["default"] = false,
											["key"] = "132578",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["name"] = "|T642417:0|t |cFF00FF96Zen Meditation|r",
											["default"] = false,
											["key"] = "115176",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["name"] = "|T135870:0|t |cFFF58CBAArdent Defender|r",
											["default"] = false,
											["key"] = "31850",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["name"] = "|T135919:0|t |cFFF58CBAGuardian of the |r",
											["default"] = false,
											["key"] = "86659",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["name"] = "|T132366:0|t |cFFC79C6EDemoralizing Sho|r",
											["default"] = false,
											["key"] = "1160",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["name"] = "|T135871:0|t |cFFC79C6ELast Stand|r",
											["default"] = false,
											["key"] = "12975",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["name"] = "|T970854:0|t |cFFC79C6ERavager|r",
											["default"] = false,
											["key"] = "228920",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [18]
										{
											["type"] = "toggle",
											["name"] = "|T132362:0|t |cFFC79C6EShield Wall|r",
											["default"] = false,
											["key"] = "871",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [19]
										{
											["type"] = "toggle",
											["name"] = "|T132361:0|t |cFFC79C6ESpell Reflection|r",
											["default"] = false,
											["key"] = "23920",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [20]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "TANK",
									["key"] = "TANK",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [17]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["name"] = "|T132129:0|t |cFFFF7D0AForce of Nature |r",
											["default"] = false,
											["key"] = "205636",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["name"] = "|T136048:0|t |cFFFF7D0AInnervate|r",
											["default"] = false,
											["key"] = "29166",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["name"] = "|T464343:0|t |cFFFF7D0AStampeding Roar|r",
											["default"] = false,
											["key"] = "106898",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["name"] = "|T651727:0|t |cFF00FF96Tiger's Lust|r",
											["default"] = false,
											["key"] = "116841",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["name"] = "|T132089:0|t |cFFBBBBBBShadowmeld|r",
											["default"] = false,
											["key"] = "58984",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["name"] = "|T135968:0|t |cFFF58CBABlessing of Free|r",
											["default"] = false,
											["key"] = "1044",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["name"] = "|T463835:0|t |cFFFFFFFFLeap of Faith|r",
											["default"] = false,
											["key"] = "73325",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["name"] = "|T135982:0|t |cFFFFFFFFSymbol of Hope|r",
											["default"] = false,
											["key"] = "64901",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["name"] = "|T635350:0|t |cFFFFF569Shroud of Concea|r",
											["default"] = false,
											["key"] = "114018",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["name"] = "|T136024:0|t |cFF0070DEEarth Elemental|r",
											["default"] = false,
											["key"] = "198103",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["name"] = "|T136108:0|t |cFF0070DETremor Totem|r",
											["default"] = false,
											["key"] = "8143",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["name"] = "|T538576:0|t |cFF0070DEWind Rush Totem|r",
											["default"] = false,
											["key"] = "192077",
											["useDesc"] = false,
											["width"] = 0.5,
										}, -- [12]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = true,
									["name"] = "UTILITY",
									["key"] = "UTILITY",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = true,
									["size"] = 10,
								}, -- [18]
							},
							["type"] = "group",
							["useDesc"] = false,
							["width"] = 2,
							["useCollapse"] = true,
							["name"] = "By Spell",
							["key"] = "spell",
							["limitType"] = "none",
							["groupType"] = "simple",
							["collapse"] = false,
							["size"] = 10,
						}, -- [3]
					},
					["type"] = "group",
					["useDesc"] = false,
					["width"] = 2,
					["useCollapse"] = true,
					["name"] = "Spell Registration",
					["key"] = "reg",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = true,
					["size"] = 10,
				}, -- [2]
				{
					["text"] = " ",
					["type"] = "description",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [3]
				{
					["text"] = " ",
					["type"] = "description",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [4]
				{
					["text"] = "WARNING: Do not click Enter Author Mode!",
					["type"] = "description",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [5]
				{
					["text"] = " ",
					["type"] = "description",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [6]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "RIGHT",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["uniqueId"] = "ZenTracker",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
						["arena"] = true,
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["stacks"] = true,
			["texture"] = "Blizzard Raid Bar",
			["textFont"] = "ArchivoNarrow-Bold",
			["borderOffset"] = 0,
			["auto"] = true,
			["tocversion"] = 80205,
			["timerFont"] = "ArchivoNarrow-Bold",
			["alpha"] = 1,
			["uid"] = "XUAjXPJI9iW",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["skipWagoUpdate"] = "34",
			["borderBackdrop"] = "Solid",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Tosh ZT Party Offensives",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInset"] = 1,
			["zoom"] = 0.3,
			["cooldownSwipe"] = true,
			["rotateText"] = "NONE",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, type, watchID, ...)\n    if event == \"ZT_ADD\" then\n        local member, spellID, duration, charges = ...\n        \n        -- If this WA was just loaded\n        if not type then\n            if WeakAuras.IsAuraLoaded then\n                -- Since there is no unload event, hooking into region:Collapse() which\n                -- is called from WeakAuras.UnloadDisplays(...)\n                aura_env.region.ZTRegTypes = aura_env.regTypes\n                aura_env.region.ZTRegSpells = aura_env.regSpells\n                \n                if not aura_env.region.ZTCollapse then\n                    aura_env.region.ZTCollapse = aura_env.region.Collapse\n                end\n                \n                function aura_env.region:Collapse(...)\n                    if self.ZTRegTypes and (not WeakAuras.loaded[self.id]) then\n                        WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.regTypes, self.id)\n                        WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.regSpells, self.id)\n                        self.ZTRegTypes = nil\n                        self.ZTRegSpells = nil\n                    end\n                    \n                    self.ZTCollapse(self, ...)\n                end\n            end\n            \n            -- Register for all types/spells\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regTypes, aura_env.region.id)\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regSpells, aura_env.region.id)\n        else\n            local isTypeReg = aura_env.types[type]\n            local isSpellReg = aura_env.spells[spellID]\n            local isInterested = (isTypeReg and not isSpellReg) or (not isTypeReg and isSpellReg)\n            if not allstates[watchID]\n                and isInterested\n                and (not member.isPlayer or aura_env.config[\"reg\"][\"type\"][\"showOwn\"..type])\n            then\n                local state = {\n                    show = true,\n                    changed = true,\n                    autoHide = false,\n                    resort = false,\n                    \n                    progressType = 'timed',\n                    duration = duration,\n                    expirationTime = GetTime(),\n                    \n                    ID = watchID,\n                    type = type,\n                    spellId = spellID,\n                    stacks = charges,\n                    member = member,\n                    unit = unit,\n                    \n                    name = member.name,\n                    icon = select(3, GetSpellInfo(spellID)),\n                }\n                for u in WA_IterateGroupMembers() do\n                    if UnitName(u) == member.name then\n                        state.unit = u\n                    end\n                end\n                \n                allstates[watchID] = state\n                \n                return true\n            end\n        end\n        \n    elseif event == \"ZT_TRIGGER\" then\n        local duration, expiration, charges = ...\n        \n        local state = allstates[watchID]\n        if state then\n            state.changed = true\n            state.duration = duration\n            state.expirationTime = expiration \n            state.stacks = charges\n            \n            return true\n        end\n\n    elseif event == \"ZT_REMOVE\" then\n        local state = allstates[watchID]\n        if state then\n            state.show = false\n            state.changed = true\n            return true\n        end\n\n    elseif event == \"WA_PARTYCOOLDOWNS_UPDATE\" then\n        for id, state in pairs(allstates) do\n            state.show = false\n            state.unit = nil\n            state.changed = true\n            \n            for u in WA_IterateGroupMembers() do\n                if UnitName(u) == state.member.name then\n                    state.unit = u\n                    state.show = true\n                end\n            end\n        end\n        return true\n\n    elseif event == \"GROUP_ROSTER_UPDATE\" then\n        local now = GetTime()\n        if not aura_env.last or aura_env.last < now - 1 then\n            aura_env.last = now\n            local aura_env = aura_env\n            C_Timer.After(0.5, function() \n                WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \n            end)            \n        end\n    end\nend\n",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["events"] = "ZT_ADD, ZT_TRIGGER, ZT_REMOVE,  GROUP_ROSTER_UPDATE",
						["unevent"] = "timed",
						["customVariables"] = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["textSize"] = 12,
			["internalVersion"] = 40,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorB"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["use_color"] = true,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorType"] = "custom",
					["easeStrength"] = 3,
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    if aura_env.state and aura_env.state.member then\n        local colors = RAID_CLASS_COLORS[aura_env.state.member.classID]\n        if colors then\n            return colors.r, colors.g, colors.b, 1\n        end\n    end\nend\n",
					["rotate"] = 0,
					["scalex"] = 1,
					["scaley"] = 1,
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorB"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorType"] = "custom",
					["easeStrength"] = 3,
					["colorFunc"] = "function()\n    if aura_env.state then\n        local c = aura_env.state.classColor\n        if c then\n            return c.r, c.g, c.b, 1\n        end\n    end\nend",
					["rotate"] = 0,
					["scalex"] = 1,
					["scaley"] = 1,
				},
				["finish"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorB"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["use_color"] = false,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorType"] = "custom",
					["easeStrength"] = 3,
					["colorFunc"] = "\n\n",
					["rotate"] = 0,
					["scalex"] = 1,
					["scaley"] = 1,
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["desc"] = "Requires ZenTracker (ZT) backend https://wago.io/r14U746B7",
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\")",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "C_Timer.After(0.05,function() \n        WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \nend)",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "local config = aura_env.config\nlocal cDisplay = config[\"display\"]\nlocal cRegType = config[\"reg\"][\"type\"]\nlocal cRegSpell = config[\"reg\"][\"spell\"]\n\nlocal sharedConfigSpellIDs = {\n    [\"ArcaneTorrent\"] = {202719, 50613, 80483, 28730, 129597, 155145, 232633, 25046, 69179},\n    [\"Asphyxiate\"] = {221562, 108194},\n    [\"Evasion/Riposte\"] = {5277, 199754},\n    [\"Ascendance\"] = {114050, 114051},\n    [\"Bladestorm\"] = {227847, 46924},\n}\n\n-- Collecting registration information\naura_env.types = {}\naura_env.regTypes = {}\naura_env.spells = {}\naura_env.regSpells = {}\n\nfor key,value in pairs(cRegType) do\n    if value then        \n        if key:find(\"enabled\") == 1 then\n            local type = key:sub(8)\n            aura_env.types[type] = true\n        end\n    end\nend\n\nfor type,group in pairs(cRegSpell) do\n    for key,value in pairs(group) do\n        if value then\n            local spellID = tonumber(key)\n            if spellID then\n                aura_env.spells[spellID] = true\n            else\n                for _,spellID in ipairs(sharedConfigSpellIDs[key]) do\n                    aura_env.spells[spellID] = true\n                end\n            end\n        end\n    end\nend\n\nfor type,_ in pairs(aura_env.types) do tinsert(aura_env.regTypes, type) end\nfor spellID,_ in pairs(aura_env.spells) do tinsert(aura_env.regSpells, spellID) end\n",
					["do_custom"] = true,
				},
			},
			["id"] = "Tosh ZT Party Offensives Icons",
			["version"] = 24,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOMRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_BOTTOMRIGHT",
					["text_fontSize"] = 10,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["textFlags"] = "OUTLINE",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["timerSize"] = 12,
			["height"] = 28,
			["xOffset"] = 0,
			["sparkOffsetX"] = 0,
			["stacksFont"] = "Accidental Presidency",
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["borderInFront"] = true,
			["borderSize"] = 1,
			["spark"] = false,
			["icon_side"] = "LEFT",
			["backgroundColor"] = {
				0.21176470588235, -- [1]
				0.21176470588235, -- [2]
				0.21176470588235, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHeight"] = 30,
			["sparkRotationMode"] = "AUTO",
			["config"] = {
				["display"] = {
					["spacing"] = 2,
					["xOffset"] = -2,
					["preserveRows"] = false,
					["growDirection"] = 1,
					["yOffset"] = -4,
				},
				["reg"] = {
					["spell"] = {
						["DAMAGE"] = {
							["152279"] = false,
							["12042"] = false,
							["121471"] = false,
							["42650"] = false,
							["102560"] = false,
							["190319"] = false,
							["113858"] = false,
							["193530"] = false,
							["1719"] = false,
							["137639"] = false,
							["47568"] = false,
							["279302"] = false,
							["280711"] = false,
							["123904"] = false,
							["Bladestorm"] = false,
							["191427"] = false,
							["201430"] = false,
							["193223"] = false,
							["194223"] = false,
							["51533"] = false,
							["231895"] = false,
							["19574"] = false,
							["12472"] = false,
							["115080"] = false,
							["31884"] = false,
							["267217"] = false,
							["205180"] = false,
							["55342"] = false,
							["275699"] = false,
							["106951"] = false,
							["1122"] = false,
							["288613"] = false,
							["113860"] = false,
							["79140"] = false,
							["202770"] = false,
							["49206"] = false,
							["152262"] = false,
							["206491"] = false,
							["107574"] = false,
							["192249"] = false,
							["152173"] = false,
							["191634"] = false,
							["266779"] = false,
							["102543"] = false,
							["51690"] = false,
							["265187"] = false,
							["207289"] = false,
							["Ascendance"] = false,
							["258925"] = false,
							["13750"] = false,
						},
						["TANK"] = {
							["204021"] = false,
							["31850"] = false,
							["55233"] = false,
							["206931"] = false,
							["194679"] = false,
							["194844"] = false,
							["49028"] = false,
							["274156"] = false,
							["102558"] = false,
							["86659"] = false,
							["115176"] = false,
							["871"] = false,
							["23920"] = false,
							["1160"] = false,
							["132578"] = false,
							["115203"] = false,
							["212084"] = false,
							["12975"] = false,
							["187827"] = false,
							["228920"] = false,
						},
						["INTERRUPT"] = {
							["91802"] = false,
							["15487"] = false,
							["1766"] = false,
							["183752"] = false,
							["187707"] = false,
							["116705"] = false,
							["2139"] = false,
							["6552"] = false,
							["57994"] = false,
							["96231"] = false,
							["147362"] = false,
							["106839"] = false,
							["78675"] = false,
							["47528"] = false,
							["19647"] = false,
						},
						["STSOFTCC"] = {
							["217832"] = false,
							["49576"] = false,
							["187650"] = false,
							["115078"] = false,
							["2094"] = false,
							["107079"] = false,
						},
						["RAIDCD"] = {
							["97462"] = false,
							["31821"] = false,
							["98008"] = false,
							["62618"] = false,
							["196718"] = false,
							["204150"] = false,
							["207399"] = false,
						},
						["HEALING"] = {
							["633"] = false,
							["198664"] = false,
							["246287"] = false,
							["31884"] = false,
							["740"] = false,
							["108280"] = false,
							["33891"] = false,
							["265202"] = false,
							["47536"] = false,
							["200183"] = false,
							["115310"] = false,
							["64843"] = false,
							["114052"] = false,
							["271466"] = false,
							["216331"] = false,
							["210191"] = false,
							["198838"] = false,
							["105809"] = false,
							["15286"] = false,
						},
						["PERSONAL"] = {
							["184662"] = false,
							["108238"] = false,
							["122278"] = false,
							["118038"] = false,
							["48743"] = false,
							["198589"] = false,
							["108416"] = false,
							["61336"] = false,
							["109304"] = false,
							["205191"] = false,
							["5384"] = false,
							["108271"] = false,
							["Evasion/Riposte"] = false,
							["48792"] = false,
							["48707"] = false,
							["47585"] = false,
							["122470"] = false,
							["122281"] = false,
							["122783"] = false,
							["498"] = false,
							["235219"] = false,
							["19236"] = false,
							["22812"] = false,
							["243435"] = false,
							["104773"] = false,
							["184364"] = false,
						},
						["UTILITY"] = {
							["8143"] = false,
							["1044"] = false,
							["106898"] = false,
							["116841"] = false,
							["205636"] = false,
							["192077"] = false,
							["73325"] = false,
							["64901"] = false,
							["198103"] = false,
							["114018"] = false,
							["58984"] = false,
							["29166"] = false,
						},
						["HARDCC"] = {
							["20549"] = false,
							["179057"] = false,
							["255654"] = false,
							["30283"] = false,
							["192058"] = false,
							["46968"] = false,
							["119381"] = false,
						},
						["DEFMDISPEL"] = {
							["115450"] = false,
							["77130"] = false,
							["4987"] = false,
							["527"] = false,
							["88423"] = false,
						},
						["SOFTCC"] = {
							["102359"] = false,
							["207167"] = false,
							["8122"] = false,
							["202137"] = false,
							["207684"] = false,
							["99"] = false,
							["102793"] = false,
							["51490"] = false,
							["116844"] = false,
							["113724"] = false,
							["33395"] = false,
							["132469"] = false,
							["122"] = false,
							["202138"] = false,
							["115750"] = false,
							["108199"] = false,
							["204263"] = false,
							["31661"] = false,
							["109248"] = false,
						},
						["DISPEL"] = {
							["2908"] = false,
							["ArcaneTorrent"] = false,
							["32375"] = false,
							["278326"] = false,
						},
						["EXTERNAL"] = {
							["6940"] = false,
							["47788"] = false,
							["102342"] = false,
							["204018"] = false,
							["33206"] = false,
							["1022"] = false,
							["116849"] = false,
						},
						["STHARDCC"] = {
							["853"] = false,
							["5211"] = false,
							["107570"] = false,
							["6789"] = false,
							["64044"] = false,
							["Asphyxiate"] = false,
							["211881"] = false,
							["88625"] = false,
							["19577"] = false,
						},
						["IMMUNITY"] = {
							["45438"] = false,
							["642"] = false,
							["196555"] = false,
							["31224"] = false,
							["186265"] = false,
						},
					},
					["type"] = {
						["showOwnHEALING"] = true,
						["enabledTANK"] = false,
						["rowHARDCC"] = 2,
						["rowHEALING"] = 1,
						["enabledSTHARDCC"] = false,
						["enabledHARDCC"] = false,
						["rowDEFMDISPEL"] = 1,
						["rowIMMUNITY"] = 1,
						["showOwnSOFTCC"] = false,
						["rowEXTERNAL"] = 1,
						["showOwnDEFMDISPEL"] = false,
						["enabledIMMUNITY"] = false,
						["rowRAIDCD"] = 2,
						["rowSOFTCC"] = 2,
						["showOwnEXTERNAL"] = false,
						["rowDISPEL"] = 2,
						["showOwnRAIDCD"] = false,
						["showOwnTANK"] = false,
						["showOwnSTSOFTCC"] = false,
						["enabledINTERRUPT"] = false,
						["showOwnDAMAGE"] = true,
						["enabledSOFTCC"] = false,
						["showOwnDISPEL"] = false,
						["rowTANK"] = 1,
						["showOwnINTERRUPT"] = false,
						["enabledRAIDCD"] = false,
						["enabledHEALING"] = true,
						["enabledSTSOFTCC"] = false,
						["rowSTHARDCC"] = 1,
						["rowPERSONAL"] = 1,
						["enabledUTILITY"] = false,
						["enabledEXTERNAL"] = false,
						["showOwnPERSONAL"] = false,
						["showOwnUTILITY"] = false,
						["showOwnIMMUNITY"] = false,
						["showOwnSTHARDCC"] = false,
						["rowSTSOFTCC"] = 1,
						["enabledDAMAGE"] = true,
						["rowDAMAGE"] = 1,
						["enabledDEFMDISPEL"] = false,
						["rowUTILITY"] = 2,
						["showOwnHARDCC"] = false,
						["enabledPERSONAL"] = false,
						["rowINTERRUPT"] = 1,
						["enabledDISPEL"] = false,
					},
				},
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["semver"] = "1.0.16",
			["sparkHidden"] = "NEVER",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 3,
			["width"] = 28,
			["stacksFlags"] = "OUTLINE",
			["sparkRotation"] = 0,
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "0",
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["cooldownTextDisabled"] = false,
		},
		["circle_leaf_nofill"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 1, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["customName"] = "function()\n    return \nend",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unit"] = "player",
						["customName"] = "function()\n    return aura_env.order            \nend",
						["events"] = "TirnaScitheButtonOrder",
						["check"] = "event",
						["custom_hide"] = "timed",
						["custom"] = "function(_,button,order)\n    if button == 1 then \n        aura_env.order = order\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 30,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "yHm4qQxAb7Z",
			["xOffset"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [3]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            local values = {0, 1, 1, 1}\n            C_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\n            local message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n    end)\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 1, b)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\Addons\\guess\\circle_leaf_nofill.tga",
			["cooldownEdge"] = false,
			["semver"] = "1.3.8",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "circle_leaf_nofill",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["encounter"] = true,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["Autofollow Leader"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["customText"] = "function()\n    if (aura_env.leader) then\n        FollowUnit(leader)\n    end\nend",
			["yOffset"] = 13,
			["anchorPoint"] = "TOP",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["events"] = "PARTY_LEADER_CHANGED, GROUP_ROSTER_UPDATE",
						["names"] = {
						},
						["check"] = "event",
						["custom_type"] = "event",
						["unit"] = "nameplate",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["type"] = "custom",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["custom_type"] = "event",
						["event"] = "Combat Log",
						["events"] = "UNIT_SPELLCAST_START, QUEST_ACCEPTED,CHAT_MSG_ADDON",
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["custom"] = "function(event, ...)\n    if (UnitIsGroupLeader(\"player\")) then\n        if (event == \"UNIT_SPELLCAST_START\") then\n            local unit, _, spell = ...\n            if unit == \"player\" then\n                local spellName = GetSpellInfo(spell)\n                local mountIDs = C_MountJournal.GetMountIDs()    \n                for i = 1, #mountIDs do\n                    local creatureName, _, _, _, _, _, _, _, _, _, _, mountID = C_MountJournal.GetMountInfoByID(mountIDs[i])\n                    if spellName == creatureName then\n                        C_ChatInfo.SendAddonMessage(\"AuF\", \"M,\" .. tostring(mountIDs[i]))\n                        return\n                    end\n                end    \n            end\n        elseif (event == \"QUEST_ACCEPTED\") then\n            local quest = ...\n            if (quest) then\n                C_ChatInfo.SendAddonMessage(\"AuF\", \"Q\")\n                aura_env.pendingQuest = quest\n            end\n        elseif (event == \"CHAT_MSG_ADDON\") then\n            local prefix, text = ...\n            if (prefix == \"AuF\" and text == \"QA\") then\n                if (aura_env.pendingQuest) then\n                    C_QuestLog.SetSelectedQuest(aura_env.pendingQuest)\n                    QuestLogPushQuest()\n                    aura_env.pendingQuest = nil\n                end\n                \n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n",
						["use_sourceUnit"] = true,
						["duration"] = "1",
						["spellName"] = 0,
						["use_track"] = true,
						["unevent"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["semver"] = "1.0.10",
			["automaticWidth"] = "Auto",
			["desaturate"] = false,
			["cooldown"] = false,
			["font"] = "Oswald",
			["version"] = 11,
			["subRegions"] = {
			},
			["height"] = 64,
			["displayIcon"] = 450907,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
				},
				["use_never"] = false,
				["use_ingroup"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["preferToUpdate"] = true,
			["parent"] = "Autofollow",
			["fontSize"] = 36,
			["wordWrap"] = "WordWrap",
			["displayText_format_n_format"] = "none",
			["shadowXOffset"] = 1,
			["uid"] = "qXaOqb12Grz",
			["url"] = "https://wago.io/UW5MyMEHT/11",
			["width"] = 64,
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["conditions"] = {
			},
			["shadowYOffset"] = -1,
			["displayText_format_p_time_precision"] = 1,
			["anchorFrameParent"] = false,
			["cooldownTextDisabled"] = false,
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Autofollow Leader",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["custom"] = "if not aura_env.clickableFrame then\n    local r = WeakAuras.regions['Autofollow Leader'].region\n    aura_env.clickableFrame = CreateFrame(\"Button\",\"FollowButton\", r, \"SecureActionButtonTemplate\")  \nend\n\naura_env.clickableFrame:SetAllPoints()\naura_env.clickableFrame:SetAttribute(\"type\", \"macro\")\naura_env.clickableFrame:SetAttribute(\"macrotext\", \"/run C_ChatInfo.SendAddonMessage(\\\"AuF\\\", \\\"F,\\\" .. UnitName(\\\"player\\\"))\")",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"AuF\")",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["displayText_format_p_time_dynamic"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
			},
			["xOffset"] = -490,
		},
		["Mists of Tirna Scithe guessing game"] = {
			["grow"] = "GRID",
			["controlledChildren"] = {
				"circle_leaf_fill", -- [1]
				"circle_leaf_nofill", -- [2]
				"circle_lotus_fill", -- [3]
				"circle_lotus_nofill", -- [4]
				"nocircle_leaf_fill", -- [5]
				"nocircle_leaf_nofil", -- [6]
				"nocircle_noleaf_fill", -- [7]
				"nocircle_noleaf_nofill", -- [8]
				"Reset", -- [9]
				"Solution Display", -- [10]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 940.1946659412147,
			["preferToUpdate"] = true,
			["yOffset"] = -191.3727736954145,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 2,
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["desc"] = "Created by Saxayone#2791 EU Sylvanas",
			["stagger"] = 0,
			["version"] = 30,
			["subRegions"] = {
			},
			["uid"] = "sVVqHxXcZHH",
			["fullCircle"] = true,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "TOPLEFT",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorPoint"] = "TOP",
			["animate"] = false,
			["customGrow"] = "function(newPositions, activeRegions)\n    local newheight = 2\n    local offset = 0\n    for i = 1, 4 do\n        newPositions[i] = {\n            activeRegions[i][\"dimensions\"].width*(2.5-i),\n            0\n        }\n    end\n    for i = 5, 8 do\n        newPositions[i] = {\n            activeRegions[i][\"dimensions\"].width*(2.5-i+4),\n            activeRegions[i][\"dimensions\"].height*-1\n        }\n    end\n    \n    newPositions[9] = {\n        0,\n        (activeRegions[1][\"dimensions\"].height*-1.5)-(activeRegions[9][\"dimensions\"].height*0.5)\n    }\n    newPositions[10] = {\n        0,\n        (activeRegions[1][\"dimensions\"].height*-1.5)-(activeRegions[9][\"dimensions\"].height*1.5)\n    }\n    newPositions[11] = {\n        0,\n        (activeRegions[1][\"dimensions\"].height*-1.5)-(activeRegions[9][\"dimensions\"].height*1.5)-(activeRegions[10][\"dimensions\"].height*1.5)\n    }\n    \nend",
			["scale"] = 0.85,
			["rowSpace"] = 2,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["useLimit"] = false,
			["internalVersion"] = 40,
			["constantFactor"] = "RADIUS",
			["sort"] = "none",
			["borderOffset"] = 4,
			["semver"] = "1.3.8",
			["tocversion"] = 90002,
			["id"] = "Mists of Tirna Scithe guessing game",
			["frameStrata"] = 1,
			["gridWidth"] = 4,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["rotation"] = 0,
			["conditions"] = {
			},
			["information"] = {
			},
			["arcLength"] = 360,
		},
		["Targeted Spells"] = {
			["text2Point"] = "CENTER",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.stacks and aura_env.state.stacks > 1 then\n        return aura_env.state.stacks\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["text1Font"] = "Friz Quadrata TT",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "\n\n",
					["glow_action"] = "show",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "-- update 25/04/20 -- by Buds - https://wago.io/BFADungeonTargetedSpells\n\n-- Spell list\naura_env.spells = {}\nfor i, v in ipairs(aura_env.config.spells) do\n    if v.spellId ~= 0 then\n        local opt = v.options\n        aura_env.spells[v.spellId] = { icon = opt[1], glow = opt[2], sound = opt[3], bigIcon = opt[4] }\n    end\nend\n\n\n-- TODO move this in aura_env.config\naura_env.blacklist_npc = {\n    [120651] = true, -- explosive orb affix\n}\naura_env.blacklist_spell = {\n    \n}\n\n-- DO NOT EDIT BELOW --\n\naura_env.loaded = false\n\naura_env.isBlackListed = function(spellId, unit)\n    local guid = UnitGUID(unit)\n    local npc_id= select(6,strsplit(\"-\",guid))\n    return aura_env.blacklist_spell[spellId] or aura_env.blacklist_npc[npc_id]\nend\n\naura_env.allcasts = {}\n\naura_env.loaded = true",
					["do_custom"] = true,
				},
				["finish"] = {
					["hide_all_glows"] = true,
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showOnActive",
						["event"] = "Health",
						["custom_type"] = "stateupdate",
						["unit"] = "player",
						["events"] = "UNIT_SPELLCAST_CHANNEL_START UNIT_SPELLCAST_CHANNEL_STOP UNIT_SPELLCAST_CHANNEL_UPDATE UNIT_SPELLCAST_DELAYED UNIT_SPELLCAST_FAILED UNIT_SPELLCAST_FAILED_QUIET UNIT_SPELLCAST_INTERRUPTED UNIT_SPELLCAST_START UNIT_SPELLCAST_STOP UNIT_TARGET ENCOUNTER_END",
						["custom"] = "function(allstates, event, sourceUnit)\n    if not aura_env.loaded then return false end\n    if event == \"ENCOUNTER_END\" then\n        -- reset aura state to avoid ghost icons between pulls\n        aura_env.allcasts = {}\n        for _,state in pairs(allstates) do\n            state.show = false\n            state.changed = true\n        end\n        return true\n    end\n    if sourceUnit and UnitIsEnemy(sourceUnit, \"player\") then\n        local allcasts = aura_env.allcasts\n        local sourceGUID = UnitGUID(sourceUnit)\n        local iconChanged = false\n        local cast = allcasts[sourceGUID]\n        \n        if event == \"UNIT_SPELLCAST_START\"\n        or event == \"UNIT_SPELLCAST_DELAYED\" \n        or event == \"UNIT_SPELLCAST_CHANNEL_START\"\n        or event == \"UNIT_SPELLCAST_CHANNEL_UPDATE\"\n        or event == \"UNIT_TARGET\"\n        then\n            if not cast then\n                -- check if unit is casting\n                local castType\n                local name,_,texture,castStart,castEnd,_,_,notInterruptible,spellId = UnitCastingInfo(sourceUnit)\n                if name then\n                    castType = \"cast\"\n                else\n                    name,_,texture,castStart,castEnd,_,notInterruptible,spellId = UnitChannelInfo(sourceUnit)\n                    if name then\n                        castType = \"channel\"\n                    end\n                end\n                \n                if spellId and not aura_env.isBlackListed(spellId, sourceUnit) then\n                    local spellInList = aura_env.spells[spellId]\n                    -- find npc's target\n                    local targetUnit = sourceUnit..\"target\"\n                    if UnitExists(targetUnit) then\n                        for groupmember in WA_IterateGroupMembers() do\n                            if UnitIsUnit(targetUnit, groupmember) then\n                                local targetGUID = UnitGUID(groupmember)\n                                local targeted = targetGUID == WeakAuras.myGUID\n                                local showIcon = (spellInList and spellInList.icon) or (not spellInList and aura_env.config.icon.enable)\n                                local showGlow = spellInList and spellInList.glow\n                                local playSound = targeted and spellInList and spellInList.sound\n                                local bigIcon = targeted and spellInList and spellInList.bigIcon\n                                allcasts[sourceGUID] = {\n                                    name = name,\n                                    icon = texture,\n                                    start = castStart/1000,\n                                    expirationTime = castEnd/1000,\n                                    spellId = spellId,\n                                    target = groupmember,\n                                    targetGUID = targetGUID,\n                                    targeted = targeted,\n                                    spellInList = spellInList,\n                                    notInterruptible = notInterruptible,\n                                    castType = castType,\n                                    showIcon = showIcon,\n                                    showGlow = showGlow,\n                                    bigIcon = bigIcon,\n                                    playSound = playSound\n                                }\n                                iconChanged = true\n                                break\n                            end\n                        end\n                    end\n                end\n            else\n                if UnitExists(sourceUnit) then\n                    if event == \"UNIT_SPELLCAST_DELAYED\" \n                    or event == \"UNIT_SPELLCAST_CHANNEL_UPDATE\"\n                    or event == \"UNIT_SPELLCAST_CHANNEL_START\"\n                    then\n                        local castType\n                        local name,_,_,castStart,castEnd,_,_,notInterruptible,spellId = UnitCastingInfo(sourceUnit)\n                        if name then\n                            castType = \"cast\"\n                        else\n                            name,_,_,castStart,castEnd,_,notInterruptible,spellId = UnitChannelInfo(sourceUnit)\n                            if name then\n                                castType = \"channel\"\n                            end\n                        end\n                        if spellId then\n                            cast.notInterruptible = notInterruptible\n                            cast.castType = castType\n                            cast.start = castStart/1000\n                            cast.expirationTime = castEnd/1000\n                            cast.changed = true\n                            iconChanged = true\n                        end\n                    elseif event == \"UNIT_TARGET\" then\n                        local targetUnit = sourceUnit..\"target\"\n                        if UnitExists(targetUnit) then\n                            for groupmember in WA_IterateGroupMembers() do\n                                if UnitIsUnit(targetUnit, groupmember) then\n                                    local targetGUID = UnitGUID(groupmember)\n                                    local targeted = targetGUID == WeakAuras.myGUID\n                                    local spellId = cast.spellId\n                                    cast.changed = true\n                                    cast.target = groupmember\n                                    cast.targetGUID = targetGUID\n                                    cast.targeted = targeted\n                                    \n                                    iconChanged = true\n                                    break\n                                end\n                            end\n                        end\n                    end\n                end\n            end\n        elseif cast then\n            if event == \"UNIT_SPELLCAST_STOP\" --  or event == \"UNIT_SPELLCAST_SUCCEEDED\"\n            or event == \"UNIT_SPELLCAST_INTERRUPTED\"\n            or event == \"UNIT_SPELLCAST_FAILED\"\n            or event == \"UNIT_SPELLCAST_FAILED_QUIET\"\n            or event == \"UNIT_SPELLCAST_CHANNEL_STOP\"\n            then\n                allcasts[sourceGUID] = nil\n                iconChanged = true\n            end\n        end\n        \n        if iconChanged then\n            local change = false\n            -- update allstates from allcasts\n            for sourceGUID, cast in pairs(allcasts) do\n                -- index for allstates is \"spellId_targetGUID\"\n                local index = (\"%s_%s\"):format(cast.spellId, cast.targetGUID)\n                \n                local state = allstates[index]\n                \n                if state and state.show then\n                    state.casts[sourceGUID] = true\n                    if cast.expirationTime > state.expirationTime then\n                        state.expirationTime = cast.expirationTime\n                        state.changed = true\n                        change = true\n                    end\n                else\n                    allstates[index] = {\n                        show = true,\n                        name = cast.name,\n                        icon = cast.icon,\n                        changed = true,\n                        autoHide = true,\n                        progressType = \"timed\",\n                        duration = cast.expirationTime - cast.start,\n                        expirationTime = cast.expirationTime,\n                        spellId = cast.spellId,\n                        castType = cast.castType,\n                        notInterruptible = cast.notInterruptible,\n                        target = cast.target,\n                        unit = cast.showIcon and cast.target,\n                        targetGUID = cast.targetGUID,\n                        casts = {\n                            [sourceGUID] = true\n                        },\n                        targeted = cast.targeted,\n                        showGlow = cast.showGlow,\n                        playSound = cast.playSound,\n                        bigIcon = cast.bigIcon,\n                        showIcon = cast.showIcon,\n                    }\n                    change = true\n                end\n            end\n            \n            -- count how much of the same cast is showing each icon\n            -- remove casts stopped from state.casts\n            -- remove state if state.casts is empty\n            for index, state in pairs(allstates) do \n                if state.show and state.showIcon then\n                    local countcasts = 0\n                    for sourceGUID,_ in pairs(state.casts) do\n                        local cast = allcasts[sourceGUID]\n                        if not cast\n                        or (cast and cast.targetGUID ~= state.targetGUID)\n                        then\n                            state.casts[sourceGUID] = nil\n                        else \n                            countcasts = countcasts + 1\n                        end\n                    end\n                    if state.stacks ~= countcasts then\n                        state.stacks = countcasts\n                        state.changed = true\n                        change = true\n                    end\n                    -- hide if no cast\n                    if countcasts == 0 then\n                        state.show = false \n                        state.changed = true\n                        change = true\n                    end\n                end\n            end\n            if change then\n                return true \n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "{\n    targeted = {\n        display = \"Targeted\",\n        type = \"bool\"\n    },\n    playSound = {\n        display = \"Play Sound\",\n        type = \"bool\"\n    },\n    showGlow = {\n        display = \"Glow\",\n        type = \"bool\"\n    },\n    bigIcon = {\n        display = \"Big Icon\",\n        type = \"bool\"\n    },\n    spellId = {\n        display = \"Spell Id\",\n        type = \"number\"\n    },\n    notInterruptible = {\n        display = \"Not Interruptible\",\n        type = \"bool\"\n    },\n    castType = {\n        display = \"Cast Type\",\n        type = \"select\",\n        values = {\n            [\"cast\"] = \"Cast\",\n            [\"channel\"] = \"Channeling\"\n        }\n    }\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["parent"] = "Dungeon - Targeted Spells",
			["url"] = "https://wago.io/BFADungeonTargetedSpells/67",
			["text2"] = "%p",
			["stickyDuration"] = false,
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOM",
			["version"] = 67,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_fontSize"] = 13,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 20,
			["selfPoint"] = "CENTER",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["difficulty"] = {
					["multi"] = {
						["challenge"] = true,
						["heroic"] = true,
						["lfr"] = true,
						["timewalking"] = true,
						["none"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["flexible"] = true,
						["none"] = true,
						["arena"] = true,
						["party"] = true,
						["pvp"] = true,
					},
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["type"] = "toggle",
							["key"] = "enable",
							["desc"] = "Show cast's icons on Unit Frames",
							["default"] = true,
							["useDesc"] = true,
							["name"] = "Show (default)",
							["width"] = 2,
						}, -- [1]
					},
					["type"] = "group",
					["width"] = 2,
					["useCollapse"] = true,
					["name"] = "Cast icons on Unit Frames",
					["key"] = "icon",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = false,
					["size"] = 10,
				}, -- [1]
				{
					["subOptions"] = {
						{
							["type"] = "number",
							["useDesc"] = false,
							["max"] = 999999,
							["step"] = 1,
							["width"] = 1,
							["min"] = 0,
							["name"] = "Spell Id",
							["key"] = "spellId",
							["default"] = 0,
						}, -- [1]
						{
							["type"] = "input",
							["useDesc"] = false,
							["width"] = 1,
							["key"] = "desc",
							["multiline"] = false,
							["default"] = "",
							["length"] = 10,
							["name"] = "Description",
							["useLength"] = false,
						}, -- [2]
						{
							["type"] = "multiselect",
							["values"] = {
								"Icon", -- [1]
								"Glow", -- [2]
								"Sound", -- [3]
								"Big Icon", -- [4]
							},
							["default"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
							},
							["key"] = "options",
							["useDesc"] = false,
							["name"] = "Options",
							["width"] = 1,
						}, -- [3]
					},
					["type"] = "group",
					["useDesc"] = false,
					["nameSource"] = 2,
					["width"] = 1,
					["useCollapse"] = true,
					["hideReorder"] = false,
					["name"] = "Spells",
					["collapse"] = false,
					["limitType"] = "none",
					["groupType"] = "array",
					["key"] = "spells",
					["size"] = 10,
				}, -- [2]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 10,
					["width"] = 2,
					["useHeight"] = true,
				}, -- [3]
			},
			["text1Containment"] = "OUTSIDE",
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 40,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["desaturate"] = false,
			["config"] = {
				["icon"] = {
					["enable"] = true,
				},
				["spells"] = {
					{
						["spellId"] = 259832,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Massive Glaive - Stormbound Conqueror (Warport Wastari, Zuldazar, for testing purpose only)",
					}, -- [1]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "== Atal'Dazar ==",
					}, -- [2]
					{
						["spellId"] = 253239,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Dazar'ai Juggernaut - Merciless Assault",
					}, -- [3]
					{
						["spellId"] = 256846,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Dinomancer Kish'o - Deadeye Aim",
					}, -- [4]
					{
						["spellId"] = 257407,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Rezan - Pursuit",
					}, -- [5]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "== Freehold ==",
					}, -- [6]
					{
						["spellId"] = 257739,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Blacktooth Scrapper - Blind Rage",
					}, -- [7]
					{
						["spellId"] = 258338,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Captain Raoul - Blackout Barrel",
					}, -- [8]
					{
						["spellId"] = 256979,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Captain Eudora - Powder Shot",
					}, -- [9]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "== Kings'Rest ==",
					}, -- [10]
					{
						["spellId"] = 266231,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Kula the Butcher - Severing Axe",
					}, -- [11]
					{
						["spellId"] = 270507,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Spectral Beastmaster - Poison Barrage",
					}, -- [12]
					{
						["spellId"] = 265773,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "The Golden Serpent - Spit Gold",
					}, -- [13]
					{
						["spellId"] = 270506,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Spectral Beastmaster - Deadeye Shot",
					}, -- [14]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Shrine of the Storm ==",
					}, -- [15]
					{
						["spellId"] = 264166,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Aqu'sirr - Undertow",
					}, -- [16]
					{
						["spellId"] = 268214,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Runecarver Sorn - Carve Flesh",
					}, -- [17]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Siege of Boralus ==",
					}, -- [18]
					{
						["spellId"] = 257641,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Kul Tiran Marksman - Molten Slug",
					}, -- [19]
					{
						["spellId"] = 272874,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Ashvane Commander - Trample",
					}, -- [20]
					{
						["spellId"] = 272581,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Bilge Rat Tempest - Water Spray",
					}, -- [21]
					{
						["spellId"] = 272528,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Ashvane Sniper - Shoot",
					}, -- [22]
					{
						["spellId"] = 272542,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Ashvane Sniper - Ricochet",
					}, -- [23]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Temple of Sethraliss ==",
					}, -- [24]
					{
						["spellId"] = 268703,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Charged Dust Devil - Lightning Bolt",
					}, -- [25]
					{
						["spellId"] = 272670,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Sandswept Marksman - Shoot",
					}, -- [26]
					{
						["spellId"] = 267278,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Static-charged Dervish - Electrocute",
					}, -- [27]
					{
						["spellId"] = 272820,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Spark Channeler - Shock",
					}, -- [28]
					{
						["spellId"] = 274642,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Hoodoo Hexer - Lava Burst",
					}, -- [29]
					{
						["spellId"] = 268061,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Plague Doctor - Chain Lightning",
					}, -- [30]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== The Motherlode!! ==",
					}, -- [31]
					{
						["spellId"] = 268185,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Refreshment Vendor, Iced Spritzer",
					}, -- [32]
					{
						["spellId"] = 258674,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Off-Duty Laborer - Throw Wrench",
					}, -- [33]
					{
						["spellId"] = 276304,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Rowdy Reveler - Penny For Your Thoughts",
					}, -- [34]
					{
						["spellId"] = 263628,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Mechanized Peacekeeper - Charged Claw",
					}, -- [35]
					{
						["spellId"] = 263209,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Mine Rat - Throw Rock",
					}, -- [36]
					{
						["spellId"] = 263202,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Venture Co. Earthshaper - Rock Lance",
					}, -- [37]
					{
						["spellId"] = 262794,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Venture Co. Mastermind - Energy Lash",
					}, -- [38]
					{
						["spellId"] = 260669,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Rixxa Fluxflame - Propellant Blast",
					}, -- [39]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== The Underrot ==",
					}, -- [40]
					{
						["spellId"] = 265376,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Fanatical Headhunter - Barbed Spear",
					}, -- [41]
					{
						["spellId"] = 265084,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Devout Blood Priest - Blood Bolt",
					}, -- [42]
					{
						["spellId"] = 265625,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Befouled Spirit - Dark Omen",
					}, -- [43]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Tol Dagor ==",
					}, -- [44]
					{
						["spellId"] = 256039,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Overseer Korgus - Deadeye",
					}, -- [45]
					{
						["spellId"] = 185857,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Ashvane Spotter - Shoot",
					}, -- [46]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Waycrest Manor ==",
					}, -- [47]
					{
						["spellId"] = 263891,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Heartsbane Vinetwister - Grasping Thorns",
					}, -- [48]
					{
						["spellId"] = 264510,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Crazed Marksman - Shoot",
					}, -- [49]
					{
						["spellId"] = 260699,
						["options"] = {
							true, -- [1]
							false, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Coven Diviner - Soul Bolt",
					}, -- [50]
					{
						["spellId"] = 260551,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Soulbound Goliath - Soul Thorns",
					}, -- [51]
					{
						["spellId"] = 260741,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Heartsbane Triad - Jagged Nettles",
					}, -- [52]
					{
						["spellId"] = 268202,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Gorak Tul - Death Lens",
					}, -- [53]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Season 4 Affix ==",
					}, -- [54]
					{
						["spellId"] = 314406,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Crippling Pestilence",
					}, -- [55]
					{
						["spellId"] = 314411,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Lingering Doubt",
					}, -- [56]
					{
						["spellId"] = 314592,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Mind Flay",
					}, -- [57]
				},
			},
			["text2FontSize"] = 24,
			["frameStrata"] = 6,
			["anchorFrameFrame"] = "UIParent",
			["text1"] = "%c",
			["width"] = 20,
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["useGlowColor"] = true,
			["tocversion"] = 90002,
			["id"] = "Targeted Spells",
			["text1FontFlags"] = "OUTLINE",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "3.0.5",
			["uid"] = "pWfZPrRiJzV",
			["inverse"] = false,
			["glowParticules"] = 4,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "playSound",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "targeted",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "playSound",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_kit_id"] = "12889",
								["sound_type"] = "Play",
								["sound"] = " KitID",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "showGlow",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["glow_frame_type"] = "UNITFRAME",
								["glow_type"] = "Pixel",
								["use_glow_color"] = true,
								["glow_action"] = "show",
							},
							["property"] = "glowexternal",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "bigIcon",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "-- Send event for aura \"BigIcon when targeted\"\nWeakAuras.ScanEvents(\n    \"SHOW_BIGICON\",\n    aura_env.state.icon,\n    aura_env.state.spellId,\n    aura_env.state.duration\n)",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Reset"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [2]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    return aura_env.resetText\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["version"] = 30,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = -1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Arial Narrow",
					["text_shadowYOffset"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["border_offset"] = 2,
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [2]
			},
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 300,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["semver"] = "1.3.8",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.resetText = \"Reset\"\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\n    aura_env.resetText = \"초기화\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\n    aura_env.resetText = \"Reset\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\n    aura_env.resetText = \"Zurücksetzen\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\n    aura_env.resetText = \"重置\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\n    aura_env.resetText = \"Resetear\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\n    aura_env.resetText = \"Сброс\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\n    aura_env.resetText = \"Resetar\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", \"9 9 9 9\", \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", \"9 9 9 9\", \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", \"9 9 9 9\", \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n            WeakAuras.ScanEvents(\"GlowReset\")\n    end)\n    aura_env.frameData = b\nend\n\naura_env.LCG = LibStub(\"LibCustomGlow-1.0\")\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["url"] = "https://wago.io/hVLym_eLv/30",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["mirror"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["blendMode"] = "BLEND",
			["parent"] = "Mists of Tirna Scithe guessing game",
			["config"] = {
				["debug"] = false,
				["encounter"] = true,
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["alpha"] = 1,
			["zoom"] = 1,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Reset",
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
			["uid"] = "FNnrOJUWpi)",
			["inverse"] = false,
			["xOffset"] = 10,
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				0.57647058823529, -- [2]
				0.71372549019608, -- [3]
				0.80000001192093, -- [4]
			},
		},
		["Sound when targeted by a boss"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -40,
			["anchorPoint"] = "TOP",
			["url"] = "https://wago.io/BFADungeonTargetedSpells/67",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["flexible"] = true,
						["none"] = true,
						["arena"] = true,
						["party"] = true,
						["pvp"] = true,
					},
				},
				["use_size"] = false,
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_role"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["challenge"] = true,
						["heroic"] = true,
						["lfr"] = true,
						["timewalking"] = true,
						["none"] = true,
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_encounter"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["config"] = {
			},
			["displayIcon"] = 134427,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n-- Do not remove this comment, it is part of this trigger: Sound when a boss target you",
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["useglowColor"] = false,
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "spiral",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 67,
			["height"] = 102.63238525391,
			["parent"] = "Dungeon - Targeted Spells",
			["preferToUpdate"] = true,
			["alpha"] = 1,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["cooldownEdge"] = false,
			["selfPoint"] = "TOP",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameFrame"] = "UIParent",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SELECTFRAME",
			["actions"] = {
				["start"] = {
					["message"] = "Saw Dingo is forever.",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RobotBlip.ogg",
					["do_message"] = false,
				},
				["init"] = {
					["custom"] = "\n-- Do not remove this comment, it is part of this trigger: Sound when a boss target you",
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_status"] = true,
						["duration"] = "0.1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["status"] = 2,
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["threatUnit"] = "target",
						["event"] = "Threat Situation",
						["use_threatUnit"] = true,
						["events"] = "UNIT_TARGET:boss",
						["spellIds"] = {
						},
						["custom"] = "function(states, event, unit)\n    if unit == \"boss1\"\n    or unit == \"boss2\"\n    or unit == \"boss3\"\n    or unit == \"boss4\"\n    or unit == \"boss5\"\n    then\n        if UnitIsUnit(\"player\", unit..\"target\") then\n            states[\"\"] = {\n                show = true,\n                changed = true,\n            }\n        else\n            local state = states[\"\"]\n            if state then\n                state.show = false\n                state.changed = true \n            end\n        end\n    end\n    return true\nend",
						["check"] = "event",
						["unevent"] = "auto",
						["custom_hide"] = "custom",
						["unit"] = "player",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["custom"] = "function(event, unit)\n    if aura_env.unit and aura_env.unit == unit then\n        return not UnitIsUnit(\"player\", unit..\"target\")\n    end    \nend",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["text2"] = "%p",
			["text1"] = " ",
			["anchorFrameParent"] = false,
			["semver"] = "3.0.5",
			["zoom"] = 0,
			["justify"] = "LEFT",
			["text1Point"] = "BOTTOMRIGHT",
			["id"] = "Sound when targeted by a boss",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["width"] = 100.44454956055,
			["xOffset"] = 0,
			["uid"] = "VCMkmT9LnOU",
			["inverse"] = false,
			["glow"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Font"] = "Friz Quadrata TT",
		},
		["Solution Display"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = -290,
			["displayText"] = "%c",
			["customText"] = "function()\n    return aura_env.solution .. \"\\n\" .. aura_env.lastSolve\nend",
			["yOffset"] = -31,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/hVLym_eLv/30",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.solution = \"No submissions yet\"\naura_env.solutionText = \"Solution\"\naura_env.nocircleText =\"NO CIRCLE\"\naura_env.circleText = \"CIRCLE\"\naura_env.leafText = \"LEAF\"\naura_env.lotusText = \"LOTUS\"\naura_env.emptyText = \"EMPTY / NOT FILLED\"\naura_env.filledText = \"FILLED\"\naura_env.noSolveText = \"No solution found\"\naura_env.sigSentText = \"Sigil sent by\"\naura_env.totalText = \"Total provided\"\naura_env.dupeText = \"Duplicated input\"\naura_env.noSubText = \"No submissions yet\"\naura_env.lastSolve = \"\"\naura_env.lastSolveText = \"Previous Solution\"\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\n    aura_env.solution = \"입력 없음\"\n    aura_env.solutionText = \"정답\"\n    aura_env.nocircleText =\"테두리 없음\"\n    aura_env.circleText = \"테두리 있음\"\n    aura_env.leafText = \"나뭇잎\"\n    aura_env.lotusText = \"꽃\"\n    aura_env.emptyText = \"색칠 안 됨\"\n    aura_env.filledText = \"색칠됨\"\n    aura_env.noSolveText = \"답을 찾을 수 없음\"\n    aura_env.sigSentText = \"정보 받음 \"\n    aura_env.totalText = \"받은 정보\"\n    aura_env.dupeText = \"중복 입력\"\n    aura_env.noSubText = \"입력 없음\"\n    aura_env.lastSolveText = \"이전 정답\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\n    aura_env.solution = \"Pas d'entrée actuelle\"\n    aura_env.solutionText = \"Solution\"\n    aura_env.nocircleText =\"NO CERCLE\"\n    aura_env.circleText = \"CERCLE\"\n    aura_env.leafText = \"FEUILLE\"\n    aura_env.lotusText = \"LOTUS\"\n    aura_env.emptyText = \"VIDE\"\n    aura_env.filledText = \"REMPLI\"\n    aura_env.noSolveText = \"Pas de solution trouvée\"\n    aura_env.sigSentText = \"Sigil envoyé par\"\n    aura_env.totalText = \"Total Fourni\"\n    aura_env.dupeText = \"Saise dupliquée\"\n    aura_env.noSubText = \"Pas d'entrée actuelle\"\n    aura_env.lastSolveText = \"Solution précédente\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\n    aura_env.solution = \"Noch keine Eingaben\"\n    aura_env.solutionText = \"Lösung\"\n    aura_env.nocircleText = \"KEIN KREIS\"\n    aura_env.circleText = \"KREIS\"\n    aura_env.leafText = \"BLATT\"\n    aura_env.lotusText = \"LOTUS\"\n    aura_env.emptyText = \"NICHT AUSGEFÜLLT\"\n    aura_env.filledText = \"AUSGEFÜLLT\"\n    aura_env.noSolveText = \"Keine Lösung gefunden\"\n    aura_env.sigSentText = \"Siegel gesendet von\"\n    aura_env.totalText = \"Insgesamt bereitgestellt\"\n    aura_env.dupeText = \"Doppelt eingegeben\"\n    aura_env.noSubText = \"Noch keine Eingaben\"\n    aura_env.lastSolveText = \"Vorherige Lösung\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\n    aura_env.solution = \"尚未标记\"\n    aura_env.solutionText = \"答案\"\n    aura_env.nocircleText = \"无圈\"\n    aura_env.circleText = \"有圈\"\n    aura_env.leafText = \"叶\"\n    aura_env.lotusText = \"花\"\n    aura_env.emptyText = \"空心\"\n    aura_env.filledText = \"实心\"\n    aura_env.noSolveText = \"未找到答案\"\n    aura_env.sigSentText = \"标记来自于\"\n    aura_env.totalText = \"已标记数\"\n    aura_env.dupeText = \"标记重复\"\n    aura_env.noSubText = \"尚未标记\"\n    aura_env.lastSolveText = \"最终答案\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\n    aura_env.solution = \"Aún no hay entradas\"\n    aura_env.solutionText = \"Solución\"\n    aura_env.nocircleText =\"SIN CIRCULO\"\n    aura_env.circleText = \"CIRCULO\"\n    aura_env.leafText = \"HOJA\"\n    aura_env.lotusText = \"LOTO\"\n    aura_env.emptyText = \"VACIO\"\n    aura_env.filledText = \"RELLENO\"\n    aura_env.noSolveText = \"Solución no encontrada\"\n    aura_env.sigSentText = \"Marca enviada por\"\n    aura_env.totalText = \"Total proporcionado\"\n    aura_env.dupeText = \"Entrada Duplicada\"\n    aura_env.noSubText = \"Aún no hay entradas\"\n    aura_env.lastSolveText = \"Solución anterior\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\n    aura_env.solution = \"Ничего не введено\"\n    aura_env.solutionText = \"Решение\"\n    aura_env.nocircleText = \"БЕЗ КРУГА\"\n    aura_env.circleText = \"КРУГ\"\n    aura_env.leafText = \"ЛИСТ\"\n    aura_env.lotusText = \"ЛОТОС\"\n    aura_env.emptyText = \"ПУСТОЙ\"\n    aura_env.filledText = \"ЦВЕТНОЙ\"\n    aura_env.noSolveText = \"Нет решения\"\n    aura_env.sigSentText = \"Отправлено\"\n    aura_env.totalText = \"Всего выбрано\"\n    aura_env.dupeText = \"Дублирующиеся данные\"\n    aura_env.noSubText = \"Ничего не введено\"\n    aura_env.lastSolveText = \"Предыдущее решение\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\n    aura_env.solution = \"Sem submições\"\n    aura_env.solutionText = \"Solução\"\n    aura_env.nocircleText = \"Sem Circulo\"\n    aura_env.circleText = \"Circulo\"\n    aura_env.leafText = \"Folha\"\n    aura_env.lotusText = \"Flor\"\n    aura_env.emptyText = \"Vazio\"\n    aura_env.filledText = \"Cheio\"\n    aura_env.noSolveText = \"Solução não encontrada\"\n    aura_env.sigSentText = \"Marca enviada por\"\n    aura_env.totalText = \"Total provido\"\n    aura_env.dupeText = \"Entrada Duplicada\"\n    aura_env.noSubText = \"Sem submições\"\n    aura_env.lastSolveText = \"Solução anterior\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nC_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\naura_env.logged_images = {}\naura_env.testArray = {}\naura_env.dupe = false\naura_env.button = 9\n\naura_env.noc = {4,5,6,7}\naura_env.cir = {0,1,2,3}\naura_env.leaf = {0,1,4,5}\naura_env.lotus = {2,3,6,7}\naura_env.nofi = {1,3,5,7}\naura_env.fill = {0,2,4,6}\n\naura_env.LCG = LibStub(\"LibCustomGlow-1.0\")",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["customName"] = "function()\n    return \nend",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["duration"] = "20",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["custom_type"] = "event",
						["custom"] = "function(event, prefix, msg, dist, sender)\n    -- Ignore non-WA messages\n    if prefix ~= \"TIRNASCYTHE\" then return false end\n    if aura_env.debugmode then\n        print(\"Received:\",prefix, msg, dist, sender)\n    end\n    \n    local length = table.getn(aura_env.logged_images)\n    -- Ignore additional signs when at 4\n    if length > 3 then return false end\n    if length == 0 then WeakAuras.ScanEvents(\"GlowReset\") end\n    -- If we're resetting\n    local circle, shape, fill, dup = string.match(msg, \"(%d) (%d) (%d) (%d)\")\n    if (circle == \"9\" and shape == \"9\" and fill == \"9\" and dup == \"9\") then\n        aura_env.solution = aura_env.noSubText\n        aura_env.logged_images = {}\n        return true \n    end\n    \n    -- Main logic\n    local array = {circle, shape, fill, dup}\n    aura_env.dupe = false\n    if length > 0 then\n        for i=1, table.getn(aura_env.logged_images) do \n            if aura_env.logged_images[i][4] == array[4] then \n                aura_env.dupe = true\n            end\n        end\n    end\n    if not aura_env.dupe then\n        aura_env.logged_images[length + 1] = array\n        local new_length = table.getn(aura_env.logged_images)\n        for i=1, new_length do \n            aura_env.button = tonumber(aura_env.logged_images[i][4])\n            aura_env.LCG.PixelGlow_Start(aura_env.testArray[aura_env.button], {0, 0, 1},8,0,1000,3,0,0,true,2)\n        end\n        \n        WeakAuras.ScanEvents(\"TirnaScitheButtonOrder\", aura_env.button, new_length)\n        if (new_length > 3) then\n            local circleSum = 0\n            local shapeSum = 0\n            local fillSum = 0\n            for i=1,4 do\n                circleSum = circleSum + tonumber(aura_env.logged_images[i][1])\n                shapeSum = shapeSum + tonumber(aura_env.logged_images[i][2])\n                fillSum = fillSum + tonumber(aura_env.logged_images[i][3])\n            end\n            if circleSum == 1 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.noc[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], {1, 0, 0},8,0,1000,3,0,0,true,2)\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.nocircleText\n                aura_env.lastSolve  = aura_env.lastSolveText .. \": \" ..aura_env.nocircleText\n            elseif circleSum == 3 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.cir[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], {1, 0, 0},8,0,1000,3,0,0,true,2)\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.circleText                \n                aura_env.lastSolve  = aura_env.lastSolveText .. \": \" ..aura_env.circleText\n            elseif shapeSum == 1 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.leaf[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], {1, 0, 0},8,0,1000,3,0,0,true,2)\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.leafText\n                aura_env.lastSolve  = aura_env.lastSolveText .. \": \" ..aura_env.leafText\n            elseif shapeSum == 3 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.lotus[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], {1, 0, 0},8,0,1000,3,0,0,true,2)\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.lotusText\n                aura_env.lastSolve  = aura_env.lastSolveText .. \": \" ..aura_env.lotusText\n            elseif fillSum == 1 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.nofi[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], {1, 0, 0},8,0,1000,3,0,0,true,2)\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.emptyText\n                aura_env.lastSolve  = aura_env.lastSolveText .. \": \" ..aura_env.emptyText\n            elseif fillSum == 3 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.fill[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], {1, 0, 0},8,0,1000,3,0,0,true,2)\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.filledText\n                aura_env.lastSolve  = aura_env.lastSolveText .. \": \" ..aura_env.filledText\n            else\n                aura_env.solution = aura_env.noSolveText\n            end\n            aura_env.logged_images = {}\n        else\n            aura_env.solution = aura_env.sigSentText .. \" \" .. sender .. \"\\n\" .. aura_env.totalText .. \": \" .. new_length .. \"/4\"  \n        end\n    else\n        aura_env.solution = aura_env.dupeText\n    end\n    return true\nend",
						["event"] = "Combat Log",
						["events"] = "CHAT_MSG_ADDON_LOGGED",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["spellName"] = 0,
						["use_track"] = true,
						["dynamicDuration"] = false,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_hide"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "",
						["duration"] = "0.5",
						["event"] = "Cooldown Progress (Spell)",
						["custom"] = "function(event, frameNumber, frameData)\n    -- Add button data to array\n    if not aura_env.testArray[frameNumber] or aura_env.testArray[frameNumber] ~= frameData then\n        if aura_env.debugmode then\n            print(\"ButtonData:\",frameNumber, frameData, aura_env.testArray[frameNumber])\n        end\n        aura_env.testArray[frameNumber] = frameData\n    end\n    return true\nend",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["events"] = "TirnaScitheButtonData",
						["custom_type"] = "event",
						["check"] = "event",
						["subeventPrefix"] = "",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["subeventSuffix"] = "",
						["duration"] = "0.5",
						["event"] = "Cooldown Progress (Spell)",
						["custom"] = "function()\n    for i=0, 7 do \n        aura_env.LCG.PixelGlow_Stop(aura_env.testArray[i], 2)\n    end\n    WeakAuras.ScanEvents(\"TirnaScitheButtonOrder\", 9, 9)\n    return true\nend",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["events"] = "GlowReset",
						["custom_type"] = "status",
						["check"] = "event",
						["subeventPrefix"] = "",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [5]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["font"] = "Arial Narrow",
			["version"] = 30,
			["subRegions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 21,
			["shadowXOffset"] = 1,
			["selfPoint"] = "TOP",
			["regionType"] = "text",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [2]
			},
			["preferToUpdate"] = true,
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["displayText_format_p_time_dynamic"] = false,
			["shadowYOffset"] = -1,
			["uid"] = "iNljGjbglO(",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Solution Display",
			["automaticWidth"] = "Auto",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.3.8",
			["config"] = {
				["debug"] = false,
				["encounter"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["wordWrap"] = "WordWrap",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Mists of Tirna Scithe guessing game",
		},
		["Tosh ZT Party Defensives"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Tosh ZT Party Defensives Icons", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -4,
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["uid"] = "5J(nNDJR5qt",
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["grow"] = "LEFT",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["limit"] = 3,
			["animate"] = false,
			["radius"] = 200,
			["scale"] = 1,
			["useAnchorPerUnit"] = true,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["anchorPerUnit"] = "UNITFRAME",
			["gridType"] = "RD",
			["rotation"] = 0,
			["constantFactor"] = "RADIUS",
			["borderInset"] = 1,
			["borderOffset"] = 4,
			["selfPoint"] = "RIGHT",
			["frameStrata"] = 1,
			["id"] = "Tosh ZT Party Defensives",
			["authorOptions"] = {
			},
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["sort"] = "none",
			["config"] = {
			},
			["fullCircle"] = true,
			["rowSpace"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["useLimit"] = true,
		},
		["Quaking Current Cast Warning"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "option1",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Play sound",
					["width"] = 1,
				}, -- [1]
			},
			["displayText"] = "CANCEL CAST",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["custom"] = "function()\n    --By Seolfer-Antonidas (EU)\n    local buff = \"\"\n    local expires, spellId\n    local count = 1\n    \n    --search for a debuff with quakes spell id\n    while true do\n        buff, _, _, _, _, expires, _, _, _, spellId = UnitAura(\"player\", count, \"HARMFUL\")\n        if not buff then break end\n        if spellId == 240447 then break end\n        count = count + 1\n    end\n    \n    \n    if buff then\n        spell, _, _, _, endTime, _, _, _ = UnitCastingInfo(\"player\");\n        \n        if spell then\n            \n            --compare expiration Time of Quaking to end time of cast\n            --UnitAura rounds to 1/100 s, UnitCastingInfo to 1/1000 - add 1/100 s to prevent mistakes from this\n            if expires*1000 < endTime + 10 then\n                return true\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["event"] = "Health",
						["check"] = "update",
						["custom_type"] = "status",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function()\n    local buff = \"\"\n    local expires, spellId\n    local count = 1\n    \n    --go search for a debuff with quakes spell id\n    while true do\n        buff, _, _, _, _, expires, _, _, _, spellId = UnitAura(\"player\", count, \"HARMFUL\")\n        if not buff then break end\n        if spellId == 240447 then break end\n        count = count + 1\n    end\n    \n    \n    if spell then\n        \n        if buff then\n            \n            if expires*1000 > endTime + 10 then\n                return true\n            end\n        else\n            return true\n        end\n    else \n        return true\n    end\nend\n\n\n\n\n\n",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 5,
			["height"] = 72.000015258789,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_size"] = true,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
			},
			["fontSize"] = 72,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["url"] = "https://wago.io/ByQSAbqBm/5",
			["wordWrap"] = "WordWrap",
			["xOffset"] = 0.99981689453125,
			["semver"] = "1.0.1",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Quaking Current Cast Warning",
			["uid"] = "BfiauuKJdu5",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				0.054901960784314, -- [2]
				0.63137254901961, -- [3]
				1, -- [4]
			},
			["config"] = {
				["option1"] = false,
			},
			["width"] = 502.00006103516,
			["yOffset"] = 193,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["ZT - Interrupt Tracker"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"ZT - Interrupt Tracker Bar", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -447.9999389648438,
			["preferToUpdate"] = false,
			["yOffset"] = 368.3336791992188,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = -1,
			["url"] = "https://wago.io/InterruptTracker/29",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 40,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["desc"] = "Requires: LibGroupInspecT 1.1\nRequires: ZenTracker Backend: https://wago.io/r14U746B7\n",
			["stagger"] = 0,
			["version"] = 29,
			["groupIcon"] = 132938,
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["radius"] = 200,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["grow"] = "DOWN",
			["animate"] = false,
			["authorOptions"] = {
			},
			["scale"] = 1,
			["fullCircle"] = true,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["uid"] = "cXyfgTRvuuZ",
			["useLimit"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 16,
			["semver"] = "1.0.11",
			["tocversion"] = 90001,
			["id"] = "ZT - Interrupt Tracker",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["borderInset"] = 0,
			["limit"] = 5,
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["rotation"] = 0,
		},
		["Dungeon - Targeted Spells"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Targeted Spells", -- [1]
				"Sound when targeted by a boss", -- [2]
			},
			["xOffset"] = 8,
			["preferToUpdate"] = true,
			["groupIcon"] = 1033497,
			["anchorPoint"] = "TOP",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/BFADungeonTargetedSpells/67",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backgroundInset"] = 0,
			["wordWrap"] = "WordWrap",
			["stagger"] = 0,
			["font"] = "Friz Quadrata TT",
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["regionType"] = "dynamicgroup",
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 4,
			["tocversion"] = 90002,
			["config"] = {
			},
			["fixedWidth"] = 200,
			["grow"] = "HORIZONTAL",
			["borderBackdrop"] = "Blizzard Tooltip",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fullCircle"] = true,
			["useAnchorPerUnit"] = true,
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 40,
			["useLimit"] = true,
			["align"] = "CENTER",
			["version"] = 67,
			["subRegions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["yOffset"] = 0,
			["customTextUpdate"] = "update",
			["rotation"] = 0,
			["uid"] = "zSrl30KxJ6i",
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["outline"] = "OUTLINE",
			["borderSize"] = 2,
			["sort"] = "none",
			["limit"] = 3,
			["gridType"] = "RD",
			["anchorPerUnit"] = "UNITFRAME",
			["displayText"] = "%p",
			["frameStrata"] = 6,
			["semver"] = "3.0.5",
			["justify"] = "LEFT",
			["selfPoint"] = "TOP",
			["id"] = "Dungeon - Targeted Spells",
			["space"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["borderInset"] = 1,
			["background"] = "None",
			["radius"] = 200,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Quaking Bar"] = {
			["sparkWidth"] = 3,
			["sparkOffsetX"] = 0,
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then\n        return \"20\"\n    else\n        if aura_env.state and aura_env.state.expirationTime then\n            local remaining = aura_env.state.expirationTime - GetTime()\n            \n            return floor(remaining % 20)\n        end\n    end\nend",
			["yOffset"] = 380,
			["anchorPoint"] = "CENTER",
			["iconSource"] = 0,
			["borderBackdrop"] = "None",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/B1H06AUNM/3",
			["backgroundColor"] = {
				0.086274509803922, -- [1]
				0.086274509803922, -- [2]
				0.086274509803922, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["spellId"] = "240447",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["destUnit"] = "player",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["subeventSuffix"] = "_AURA_APPLIED",
						["type"] = "event",
						["name"] = "Quake",
						["auraType"] = "DEBUFF",
						["use_showOn"] = true,
						["use_spellId"] = true,
						["event"] = "Combat Log",
						["unevent"] = "timed",
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unit"] = "player",
						["use_destUnit"] = true,
						["duration"] = "60",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 40,
			["color"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["backdropInFront"] = false,
			["config"] = {
			},
			["barColor"] = {
				0.63529411764706, -- [1]
				0.34117647058824, -- [2]
				0.18823529411765, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["sparkRotationMode"] = "AUTO",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_offset"] = 2,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = " ",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 25,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
			},
			["height"] = 30,
			["icon"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["single"] = 14,
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
						["challenge"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_affixes"] = true,
				["use_difficulty"] = true,
				["use_size"] = true,
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["displayIcon"] = 136025,
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "-- Made by Domestos#3678 @Discord\nlocal bar = WeakAuras.regions[aura_env.id].region.bar\n\nlocal function CreateSpark()\n    local spark = bar:CreateTexture(nil, \"ARTWORK\")\n    spark:SetDrawLayer(\"ARTWORK\", 4)\n    spark:SetTexture(bar.spark:GetTexture())\n    spark:SetBlendMode(bar.spark:GetBlendMode())\n    spark:SetWidth(bar.spark:GetWidth())\n    spark:SetHeight(bar.spark:GetHeight())\n    \n    return spark\nend\n\nlocal function DrawSpark(offset, spark)\n    spark:SetPoint(\"CENTER\", bar, \"RIGHT\", offset * -1, 0)\n    spark:Show()\nend\n\n-- create sparks\nif bar.spark20 then bar.spark20:Hide() end\nif bar.spark40 then bar.spark40:Hide() end\nif bar.spark60 then bar.spark60:Hide() end\nbar.spark20 = CreateSpark()\nbar.spark40 = CreateSpark()\nbar.spark60 = CreateSpark()\n\n-- place sparks on bar\nlocal sizePerUnit = bar:GetWidth() / 60\nDrawSpark(sizePerUnit * 20, bar.spark20)\nDrawSpark(sizePerUnit * 40, bar.spark40)\nDrawSpark(sizePerUnit * 60, bar.spark60)",
					["do_custom"] = true,
				},
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["sparkOffsetY"] = 0,
			["icon_side"] = "LEFT",
			["uid"] = "v0WIvsY8rNA",
			["alpha"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Norm",
			["anchorFrameType"] = "SCREEN",
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["semver"] = "1.0.0",
			["zoom"] = 0.3,
			["sparkHidden"] = "NEVER",
			["spark"] = false,
			["frameStrata"] = 1,
			["width"] = 400,
			["auto"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["id"] = "Quaking Bar",
		},
		["circle_leaf_fill"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 0, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["customName"] = "function()\n    return \nend",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unit"] = "player",
						["customName"] = "function()\n    return aura_env.order            \nend",
						["events"] = "TirnaScitheButtonOrder",
						["check"] = "event",
						["custom_hide"] = "timed",
						["custom"] = "function(_,button,order)\n    if button == 0 then \n        aura_env.order = order\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 30,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_n_format"] = "none",
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_4.n_format"] = "none",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "8JXwVGqveZp",
			["xOffset"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [3]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            local values = {0, 1, 0, 0}\n            C_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\n            local message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n    end)\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 0, b)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\Addons\\guess\\circle_leaf_fill.tga",
			["cooldownEdge"] = false,
			["semver"] = "1.3.8",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "circle_leaf_fill",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["encounter"] = true,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["Tosh ZT Party Offensives"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Tosh ZT Party Offensives Icons", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 4,
			["yOffset"] = 0,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "RIGHT",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["limit"] = 3,
			["animate"] = false,
			["rotation"] = 0,
			["scale"] = 1,
			["useLimit"] = true,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["anchorPerUnit"] = "UNITFRAME",
			["arcLength"] = 360,
			["useAnchorPerUnit"] = true,
			["constantFactor"] = "RADIUS",
			["uid"] = "S)1hgAq(aZR",
			["borderOffset"] = 4,
			["authorOptions"] = {
			},
			["gridWidth"] = 5,
			["id"] = "Tosh ZT Party Offensives",
			["selfPoint"] = "LEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sort"] = "none",
			["borderInset"] = 1,
			["radius"] = 200,
			["space"] = 2,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fullCircle"] = true,
		},
		["ZT - Interrupt Tracker Bar"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "None",
			["authorOptions"] = {
				{
					["subOptions"] = {
						{
							["type"] = "description",
							["text"] = "Note: You can adjust other options in the Display tab",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [1]
						{
							["type"] = "description",
							["text"] = " ",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
						{
							["type"] = "description",
							["text"] = "Progress Bar:",
							["fontSize"] = "medium",
							["width"] = 0.5,
						}, -- [3]
						{
							["type"] = "color",
							["key"] = "colorBar",
							["default"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["name"] = "Custom Color",
							["width"] = 0.5,
						}, -- [4]
						{
							["type"] = "toggle",
							["key"] = "colorBarUseClass",
							["default"] = true,
							["useDesc"] = false,
							["name"] = "Use Class Color?",
							["width"] = 1,
						}, -- [5]
						{
							["type"] = "description",
							["text"] = "Name Text:",
							["fontSize"] = "medium",
							["width"] = 0.5,
						}, -- [6]
						{
							["type"] = "color",
							["key"] = "colorName",
							["default"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["name"] = "Custom Color",
							["width"] = 0.5,
						}, -- [7]
						{
							["type"] = "toggle",
							["key"] = "colorNameUseClass",
							["default"] = false,
							["useDesc"] = false,
							["name"] = "Use Class Color?",
							["width"] = 1,
						}, -- [8]
						{
							["type"] = "description",
							["text"] = "Timer Text:",
							["fontSize"] = "medium",
							["width"] = 0.5,
						}, -- [9]
						{
							["type"] = "color",
							["key"] = "colorTimer",
							["default"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["name"] = "Custom Color",
							["width"] = 0.5,
						}, -- [10]
						{
							["type"] = "toggle",
							["key"] = "colorTimerUseClass",
							["default"] = false,
							["useDesc"] = false,
							["name"] = "Use Class Color?",
							["width"] = 1,
						}, -- [11]
						{
							["type"] = "toggle",
							["key"] = "showChargeProgress",
							["desc"] = "When toggled on, the progress bar will show the progress for each charge. When toggled off (default), the progress bar will only show when the number of available charges is 0.",
							["default"] = false,
							["useDesc"] = true,
							["name"] = "Show Charge Progress?",
							["width"] = 1,
						}, -- [12]
					},
					["type"] = "group",
					["useDesc"] = false,
					["width"] = 2,
					["useCollapse"] = true,
					["key"] = "display",
					["name"] = "Display Configuration",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = true,
					["size"] = 10,
				}, -- [1]
				{
					["type"] = "description",
					["text"] = " ",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [2]
				{
					["subOptions"] = {
						{
							["type"] = "description",
							["text"] = "Sorting",
							["fontSize"] = "large",
							["width"] = 2,
						}, -- [1]
						{
							["type"] = "description",
							["text"] = "Entities will be sorted based on the following variables. Subsequent variables are only taken into consideration when two or more entities are equivalent with respect to previous variables. You can choose to sort in either ascending or descending order, which will modify how Sorting Types are sorted.",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
						{
							["type"] = "description",
							["text"] = " ",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [3]
						{
							["type"] = "select",
							["values"] = {
								"None", -- [1]
								"Type Priority", -- [2]
								"Spell Priority", -- [3]
								"Member Class", -- [4]
								"Member Name", -- [5]
								"Time until ready", -- [6]
							},
							["default"] = 6,
							["key"] = "sortVar1",
							["useDesc"] = false,
							["name"] = "1st Variable",
							["width"] = 1,
						}, -- [4]
						{
							["type"] = "select",
							["values"] = {
								"Ascending", -- [1]
								"Descending", -- [2]
							},
							["default"] = 1,
							["key"] = "sortOrder",
							["useDesc"] = false,
							["name"] = "Ordering",
							["width"] = 1,
						}, -- [5]
						{
							["type"] = "select",
							["values"] = {
								"None", -- [1]
								"Type Priority", -- [2]
								"Spell Priority", -- [3]
								"Member Class", -- [4]
								"Member Name", -- [5]
								"Time until ready", -- [6]
							},
							["default"] = 3,
							["key"] = "sortVar2",
							["useDesc"] = false,
							["name"] = "2nd Variable",
							["width"] = 1,
						}, -- [6]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["width"] = 1,
						}, -- [7]
						{
							["type"] = "select",
							["values"] = {
								"None", -- [1]
								"Type Priority", -- [2]
								"Spell Priority", -- [3]
								"Member Class", -- [4]
								"Member Name", -- [5]
								"Time until ready", -- [6]
							},
							["default"] = 5,
							["key"] = "sortVar3",
							["useDesc"] = false,
							["name"] = "3rd Variable",
							["width"] = 1,
						}, -- [8]
						{
							["type"] = "space",
							["variableWidth"] = true,
							["width"] = 1,
						}, -- [9]
					},
					["type"] = "group",
					["useDesc"] = false,
					["width"] = 2,
					["useCollapse"] = true,
					["key"] = "sorting",
					["name"] = "Sorting Configuration",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = false,
					["size"] = 10,
				}, -- [3]
				{
					["type"] = "description",
					["text"] = " ",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [4]
				{
					["subOptions"] = {
						{
							["subOptions"] = {
								{
									["type"] = "description",
									["text"] = "Coarse-grained registration for spells according to their type",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [1]
								{
									["type"] = "description",
									["text"] = " ",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [2]
								{
									["type"] = "description",
									["text"] = "'Register? (Reg)' - Whether to register for spells of this type",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [3]
								{
									["type"] = "description",
									["text"] = "'Show Own? (Own)' - Whether to show your own spells of this type",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [4]
								{
									["type"] = "description",
									["text"] = "'Priority (Pri)' - Value in [0,99] used to sort types (ASC order)",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [5]
								{
									["type"] = "description",
									["text"] = " ",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [6]
								{
									["type"] = "description",
									["text"] = "Type",
									["fontSize"] = "large",
									["width"] = 0.35,
								}, -- [7]
								{
									["type"] = "description",
									["text"] = "Reg",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [8]
								{
									["type"] = "description",
									["text"] = "Own",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [9]
								{
									["type"] = "description",
									["text"] = "Pri",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [10]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [11]
								{
									["type"] = "description",
									["text"] = "Type",
									["fontSize"] = "large",
									["width"] = 0.35,
								}, -- [12]
								{
									["type"] = "description",
									["text"] = "Reg",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [13]
								{
									["type"] = "description",
									["text"] = "Own",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [14]
								{
									["type"] = "description",
									["text"] = "Pri",
									["fontSize"] = "large",
									["width"] = 0.2,
								}, -- [15]
								{
									["type"] = "description",
									["text"] = "INTERRUPT",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [16]
								{
									["type"] = "toggle",
									["key"] = "enabledINTERRUPT",
									["default"] = false,
									["useDesc"] = false,
									["name"] = "",
									["width"] = 0.2,
								}, -- [17]
								{
									["type"] = "toggle",
									["key"] = "showOwnINTERRUPT",
									["default"] = true,
									["useDesc"] = false,
									["name"] = "",
									["width"] = 0.2,
								}, -- [18]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 99,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 0,
									["key"] = "priorityINTERRUPT",
									["name"] = "",
									["default"] = 7,
								}, -- [19]
								{
									["type"] = "description",
									["text"] = "PERSONAL",
									["fontSize"] = "medium",
									["width"] = 0.35,
								}, -- [20]
								{
									["type"] = "toggle",
									["key"] = "enabledPERSONAL",
									["default"] = false,
									["useDesc"] = false,
									["name"] = "",
									["width"] = 0.2,
								}, -- [21]
								{
									["type"] = "toggle",
									["key"] = "showOwnPERSONAL",
									["default"] = true,
									["useDesc"] = false,
									["name"] = "",
									["width"] = 0.2,
								}, -- [22]
								{
									["type"] = "number",
									["useDesc"] = false,
									["max"] = 99,
									["step"] = 1,
									["width"] = 0.2,
									["min"] = 0,
									["key"] = "priorityPERSONAL",
									["name"] = "",
									["default"] = 8,
								}, -- [23]
								{
									["type"] = "space",
									["variableWidth"] = true,
									["width"] = 0.1,
								}, -- [24]
							},
							["type"] = "group",
							["useDesc"] = false,
							["width"] = 2,
							["useCollapse"] = true,
							["key"] = "type",
							["name"] = "Type Registration",
							["limitType"] = "none",
							["groupType"] = "simple",
							["collapse"] = true,
							["size"] = 10,
						}, -- [1]
						{
							["type"] = "description",
							["text"] = " ",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
						{
							["subOptions"] = {
								{
									["type"] = "description",
									["text"] = "Fine-grained registration for individual spells. If a given type is registered, selected spells of that type will be treated as a blacklist. Otherwise, if the type is not registered, selected spells of that type will be treated as a whitelist.",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [1]
								{
									["type"] = "description",
									["text"] = " ",
									["fontSize"] = "medium",
									["width"] = 2,
								}, -- [2]
								{
									["subOptions"] = {
										{
											["type"] = "toggle",
											["key"] = "183752",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T1305153:0|t |cFFA330C9Disrupt|r",
											["width"] = 0.5,
										}, -- [1]
										{
											["type"] = "toggle",
											["key"] = "202137",
											["default"] = false,
											["useDesc"] = false,
											["name"] = "|T1418288:0|t |cFFA330C9Sigil of Silence|r",
											["width"] = 0.5,
										}, -- [2]
										{
											["type"] = "toggle",
											["key"] = "47528",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T237527:0|t |cFFC41F3BMind Freeze|r",
											["width"] = 0.5,
										}, -- [3]
										{
											["type"] = "toggle",
											["key"] = "106839",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T236946:0|t |cFFFF7D0ASkull Bash|r",
											["width"] = 0.5,
										}, -- [4]
										{
											["type"] = "toggle",
											["key"] = "78675",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T252188:0|t |cFFFF7D0ASolar Beam|r",
											["width"] = 0.5,
										}, -- [5]
										{
											["type"] = "toggle",
											["key"] = "147362",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T249170:0|t |cFFABD473Counter Shot|r",
											["width"] = 0.5,
										}, -- [6]
										{
											["type"] = "toggle",
											["key"] = "187707",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T1376045:0|t |cFFABD473Muzzle|r",
											["width"] = 0.5,
										}, -- [7]
										{
											["type"] = "toggle",
											["key"] = "2139",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T135856:0|t |cFF40C7EBCounterspell|r",
											["width"] = 0.5,
										}, -- [8]
										{
											["type"] = "toggle",
											["key"] = "116705",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T608940:0|t |cFF00FF96Spear Hand Strik|r",
											["width"] = 0.5,
										}, -- [9]
										{
											["type"] = "toggle",
											["key"] = "31935",
											["default"] = false,
											["useDesc"] = false,
											["name"] = "|T135874:0|t |cFFF58CBAAvenger's Shield|r",
											["width"] = 0.5,
										}, -- [10]
										{
											["type"] = "toggle",
											["key"] = "96231",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T523893:0|t |cFFF58CBARebuke|r",
											["width"] = 0.5,
										}, -- [11]
										{
											["type"] = "toggle",
											["key"] = "15487",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T458230:0|t |cFFFFFFFFSilence|r",
											["width"] = 0.5,
										}, -- [12]
										{
											["type"] = "toggle",
											["key"] = "1766",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T132219:0|t |cFFFFF569Kick|r",
											["width"] = 0.5,
										}, -- [13]
										{
											["type"] = "toggle",
											["key"] = "57994",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T136018:0|t |cFF0070DEWind Shear|r",
											["width"] = 0.5,
										}, -- [14]
										{
											["type"] = "toggle",
											["key"] = "89766",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T236316:0|t |cFF8787EDAxe Toss|r",
											["width"] = 0.5,
										}, -- [15]
										{
											["type"] = "toggle",
											["key"] = "19647",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T136174:0|t |cFF8787EDSpell Lock|r",
											["width"] = 0.5,
										}, -- [16]
										{
											["type"] = "toggle",
											["key"] = "6552",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T132938:0|t |cFFC79C6EPummel|r",
											["width"] = 0.5,
										}, -- [17]
										{
											["type"] = "toggle",
											["key"] = "23920",
											["default"] = true,
											["useDesc"] = false,
											["name"] = "|T132361:0|t |cFFC79C6ESpell Reflection|r",
											["width"] = 0.5,
										}, -- [18]
									},
									["type"] = "group",
									["useDesc"] = false,
									["width"] = 2,
									["useCollapse"] = false,
									["key"] = "INTERRUPT",
									["name"] = "INTERRUPT",
									["limitType"] = "none",
									["groupType"] = "simple",
									["collapse"] = false,
									["size"] = 10,
								}, -- [3]
							},
							["type"] = "group",
							["useDesc"] = false,
							["width"] = 2,
							["useCollapse"] = true,
							["key"] = "spell",
							["name"] = "Spell Registration",
							["limitType"] = "none",
							["groupType"] = "simple",
							["collapse"] = false,
							["size"] = 10,
						}, -- [3]
					},
					["type"] = "group",
					["useDesc"] = false,
					["width"] = 2,
					["useCollapse"] = false,
					["key"] = "reg",
					["name"] = "Spell Registration",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = false,
					["size"] = 10,
				}, -- [5]
				{
					["type"] = "description",
					["text"] = " ",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [6]
				{
					["subOptions"] = {
						{
							["type"] = "toggle",
							["key"] = "showSpell",
							["desc"] = "Display icon of successfully interuped spell next to the player name. Change position of icon in display tab (|cFFFF0000%extraIcon|r text replacement).",
							["default"] = true,
							["useDesc"] = true,
							["name"] = "Show interrupted spell |T135812:0|t",
							["width"] = 1,
						}, -- [1]
						{
							["type"] = "toggle",
							["key"] = "showTarget",
							["desc"] = "Display raidtarget icon of successfully interuped target next to the player name. Change position of icon in display tab (|cFFFF0000%raidIcon|r text replacement).",
							["default"] = true,
							["useDesc"] = true,
							["name"] = "Show interrupted target|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:0|t",
							["width"] = 1,
						}, -- [2]
						{
							["type"] = "toggle",
							["key"] = "showMissed",
							["desc"] = "Color the name |cFFFF0000red|r if an interrupt has been missed",
							["default"] = true,
							["useDesc"] = true,
							["name"] = "Show |cFFFF0000missed|r kicks",
							["width"] = 1,
						}, -- [3]
						{
							["type"] = "toggle",
							["key"] = "spellReflectTank",
							["desc"] = "Only show for players that are in tank specialization.",
							["default"] = true,
							["useDesc"] = true,
							["name"] = "|T132361:0|t |cFFC79C6ESpell Reflection|r Tank only",
							["width"] = 1,
						}, -- [4]
					},
					["hideReorder"] = true,
					["useDesc"] = false,
					["nameSource"] = 0,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = false,
					["name"] = "Advanced Options",
					["key"] = "advanced",
					["limitType"] = "none",
					["groupType"] = "simple",
					["type"] = "group",
					["size"] = 10,
				}, -- [7]
				{
					["type"] = "description",
					["text"] = " ",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [8]
				{
					["type"] = "description",
					["text"] = "WARNING: Do not click Enter Author Mode!",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [9]
				{
					["type"] = "description",
					["text"] = " ",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [10]
			},
			["preferToUpdate"] = false,
			["customText"] = "",
			["yOffset"] = -2.083320617675781,
			["anchorPoint"] = "CENTER",
			["useAdjustededMax"] = false,
			["sparkOffsetX"] = 0,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/InterruptTracker/29",
			["backgroundColor"] = {
				0.062745098039216, -- [1]
				0.062745098039216, -- [2]
				0.062745098039216, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["event"] = "Health",
						["custom_type"] = "stateupdate",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, type, watchID, ...)\n    \n    if event == \"ZT_ADD\" then\n        local member, spellID, duration, charges = ...\n        \n        -- If this WA was just loaded\n        if not type then\n            aura_env.region.ZTRegTypes = aura_env.regTypes\n            aura_env.region.ZTRegSpells = aura_env.regSpells\n            \n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regTypes, aura_env.region.id)\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regSpells, aura_env.region.id)\n        else\n            local isTypeReg = aura_env.types[type]\n            local isSpellReg = aura_env.spells[spellID]\n            local isInterested = (isTypeReg and not isSpellReg) or (not isTypeReg and isSpellReg)\n            --dont add Spell Reflect for DPS specs and remove it from states if already present\n            if spellID == 23920 and member.specID~=73 and aura_env.config.advanced.spellReflectTank then\n                allstates[watchID] = nil\n                return\n            end\n            if not allstates[watchID] and isInterested and (not member.isPlayer or aura_env.config[\"reg\"][\"type\"][\"showOwn\"..type]) then\n                \n                local state = {}\n                state.show = true\n                state.changed = true\n                state.autoHide = false\n                state.resort = true\n                state.watchID = watchID    \n                state.successful = false    \n                state.isDead = false    \n                state.outOfRange = false\n                \n                state.progressType = 'timed'\n                state.duration = duration\n                state.expirationTime = GetTime()\n                \n                state.name = member.name\n                \n                state.icon = select(3,GetSpellInfo(spellID))\n                state.stacks = charges\n                \n                state.type = type\n                state.spellId = spellID\n                state.member = member\n                \n                aura_env.initSortIndex(state)\n                \n                allstates[watchID] = state\n                \n                return true\n            end\n        end\n    elseif event == \"ZT_TRIGGER\" then\n        local duration, expiration, charges = ...\n        \n        local state = allstates[watchID]\n        if state then\n            state.changed = true\n            \n            state.duration = duration\n            state.stacks = charges\n            if not charges or aura_env.config[\"display\"][\"showChargeProgress\"] or charges == 0 then\n                state.expirationTime = expiration\n            end\n            if math.abs(GetTime() - expiration+duration) < 0.2 and state.spellId ~= 23920 then\n                if aura_env.config.advanced.showMissed then\n                    state.elapsedDuration = true\n                    state.changed = true\n                    C_Timer.After(3,function() \n                            WeakAuras.ScanEvents(\"NNOGGIE_INTERRUPT_RESETELAPSED\",state.watchID)\n                    end)\n                end                \n            end\n            \n            state.resort = aura_env.updateSortIndex(state)\n            \n            return true\n        end\n    elseif event == \"ZT_REMOVE\" then\n        local state = allstates[watchID]\n        if state then\n            state.show = false\n            state.changed = true\n            return true\n        end\n    end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and watchID == \"SPELL_INTERRUPT\" then    \n        local _, sourceGUID, _, _, _, _, _, _, destRaidFlags, spellId,_ ,_, extraSpellId = ...    \n        if aura_env.silenceMap[spellId] then spellId = aura_env.silenceMap[spellId] end\n        --Attribute Pet Spell's to its owner\n        local sourceType = strsplit(\"-\",sourceGUID)\n        if sourceType == \"Pet\" or sourceType == \"Creature\" then\n            for unit in WA_IterateGroupMembers() do\n                if UnitGUID(unit..\"pet\") == sourceGUID then\n                    sourceGUID = UnitGUID(unit)\n                    break\n                end\n            end\n        end\n        for watchId, state in pairs(allstates) do\n            if state.spellId == spellId and state.member.GUID == sourceGUID then    \n                local iconFileId = GetSpellTexture(extraSpellId)    \n                allstates[watchId].extraIcon = aura_env.config.advanced.showSpell and (\"|T%s:0|t\"):format(iconFileId) \n                allstates[watchId].successful = true                    \n                local mark = math.log(destRaidFlags)/math.log(2) + 1    \n                if ICON_LIST[mark] then    \n                    allstates[watchId].raidIcon = aura_env.config.advanced.showTarget and (\"%s:0\\124t\"):format(ICON_LIST[mark])    \n                else    \n                    allstates[watchId].raidIcon = nil    \n                end               \n                allstates[watchId].changed = true    \n                return true                    \n            end    \n        end    \n    end    \n    \n    if event == \"NNOGGIE_INTERRUPT_UPDATETEXT\" and type then\n        local watchId = type    \n        local state = allstates[watchId]    \n        if state then    \n            state.successful = false    \n            state.extraIcon = nil    \n            state.raidIcon = nil    \n            state.changed = true    \n            return true    \n        end    \n    end    \n    \n    if event == \"NNOGGIE_INTERRUPT_RESETELAPSED\" and type then            \n        local watchId = type    \n        local state = allstates[watchId]    \n        if state then\n            state.elapsedDuration = false\n            state.changed = true    \n            return true    \n        end    \n    end \n    \n    if event == \"OPTIONS\" then\n        aura_env.firstCheck = nil\n    end\n    \n    \n    if event == \"FRAME_UPDATE\" then    \n        if not aura_env.last or aura_env.last < GetTime() - 0.5 then    \n            aura_env.last = GetTime()\n            \n            --delay first check for 1 second to not conflict with WA setting up the states\n            aura_env.firstCheck = aura_env.firstCheck or GetTime()\n            if aura_env.last>aura_env.firstCheck+1 then\n                \n                for watchId,state in pairs(allstates) do    \n                    --local unit = state.member.unit                    \n                    local unit                \n                    for u in WA_IterateGroupMembers() do    \n                        if UnitName(u) == state.member.name then unit = u end    \n                    end    \n                    --Player Dead    \n                    local isDead = UnitIsDeadOrGhost(unit) or (not UnitIsConnected(unit)) or (not UnitIsVisible(unit))    \n                    if isDead ~= state.isDead then    \n                        state.isDead = isDead    \n                        state.resort = aura_env.updateSortIndex(state,not isDead)    \n                        state.changed = true    \n                    end                    \n                    --Player out of Range    \n                    local outOfRange = WeakAuras.CheckRange(unit, 100, \">=\")    \n                    if outOfRange ~= state.outOfRange then    \n                        state.outOfRange = outOfRange    \n                        state.resort = aura_env.updateSortIndex(state,not outOfRange)    \n                        state.changed = true    \n                    end\n                end    \n                return true\n                \n            end            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["events"] = "ZT_ADD, ZT_TRIGGER, ZT_REMOVE, CLEU:SPELL_INTERRUPT NNOGGIE_INTERRUPT_UPDATETEXT, FRAME_UPDATE NNOGGIE_INTERRUPT_RESETELAPSED",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["customVariables"] = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n    elapsedDuration = \"bool\",\n    successful = \"bool\",\n    isDead = \"bool\",\n    outOfRange = \"bool\",    \n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = false,
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["iconSource"] = -1,
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "ZT - Interrupt Tracker",
			["customTextUpdate"] = "event",
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "ArchivoNarrow-Bold",
					["text_shadowYOffset"] = -1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_shadowXOffset"] = 1,
					["text_visible"] = true,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = true,
				}, -- [2]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "%n%extraIcon%raidIcon",
					["text_text_format_extraIcon_format"] = "none",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "LEFT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_raidIcon_format"] = "none",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "ArchivoNarrow-Bold",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_visible"] = true,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [3]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [4]
			},
			["height"] = 24,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local config = aura_env.config\nlocal cDisplay = config[\"display\"]\nlocal cSort = config[\"sorting\"]\nlocal cRegType = config[\"reg\"][\"type\"]\nlocal cRegSpell = config[\"reg\"][\"spell\"]\n\n-- Handling the spell registration configuration\nlocal sharedConfigSpellIDs = {\n    [\"ArcaneTorrent\"] = {202719, 50613, 80483, 28730, 129597, 155145, 232633, 25046, 69179},\n    [\"Asphyxiate\"] = {221562, 108194},\n    [\"Evasion/Riposte\"] = {5277, 199754},\n    [\"Ascendance\"] = {114050, 114051},\n    [\"Bladestorm\"] = {227847, 46924},\n}\n\naura_env.types = {}\naura_env.regTypes = {}\naura_env.spells = {}\naura_env.regSpells = {}\naura_env.typeToWatching = {}\n\nfor key,value in pairs(cRegType) do\n    if value and key:find(\"enabled\") == 1 then\n        local type = key:sub(8)\n        aura_env.types[type] = true\n    end\nend\n\nfor type,group in pairs(cRegSpell) do\n    for key,value in pairs(group) do\n        if value then\n            local spellID = tonumber(key)\n            if spellID then\n                aura_env.spells[spellID] = true\n            else\n                for _,spellID in ipairs(sharedConfigSpellIDs[key]) do\n                    aura_env.spells[spellID] = true\n                end\n            end\n        end\n    end\nend\n\nfor type,_ in pairs(aura_env.types) do tinsert(aura_env.regTypes, type) end\nfor spellID,_ in pairs(aura_env.spells) do tinsert(aura_env.regSpells, spellID) end\n\n-- Modified from https://eu.battle.net/forums/en/wow/topic/9337744534\naura_env.fixName = function(name)\n    local length = cDisplay[\"nameLength\"]\n    if length <= 0 then\n        return \"\"\n    end\n    \n    local nameChars = {}\n    name:gsub(\"([^\\128-\\191][\\128-\\191]*)\", function(char) \n            local leadbyte = strbyte(char, 1)\n            local charLength = -1\n            \n            if leadbyte < 248 then\n                if leadbyte >= 240 then charLength = 4\n                elseif leadbyte >= 224 then charLength = 3\n                elseif leadbyte >= 192 then charLength = 2\n                elseif leadbyte < 128 then charLength = 1\n                end\n            end\n            \n            if length > #nameChars then\n                tinsert(nameChars, (charLength == #char) and char)\n            end\n    end)\n    \n    return table.concat(nameChars, \"\")\nend\n\nlocal prioritizedSpellIDs = {\n    [183752] = true, -- Disrupt\n}\n\nlocal sortVars = {}\nlocal sortVarsIndex = {}\nfor v = 1,5 do\n    local var = cSort[\"sortVar\"..v]\n    if var and var ~= 1 then\n        if not sortVarsIndex[var] then\n            local index = #sortVars + 1\n            sortVars[index] = var\n            sortVarsIndex[var] = index\n        end\n    end\nend\n\nlocal isAvail = (cSort[\"sortOrder\"] == 1) and 0 or 1\nlocal isUnavail = (cSort[\"sortOrder\"] == 1) and 1 or 0\n\naura_env.initSortIndex = function(state)\n    state.sortValues = {}\n    \n    for index,var in ipairs(sortVars) do\n        if var == 2 then     -- Type Priority\n            local priority = cRegType[\"priority\"..state.type]\n            if cSort[\"sortOrder\"] == 2 then\n                priority = 99 - priority\n            end\n            state.sortValues[index] = (\"%02d\"):format(priority)\n        elseif var == 3 then -- Spell ID\n            state.sortValues[index] = (\"%06d\"):format(aura_env.spellPriorityMap[state.spellId] or state.spellId)\n        elseif var == 4 then -- Member Class\n            state.sortValues[index] = (\"%02d\"):format(state.member.classID)\n        elseif var == 5 then -- Member Name\n            state.sortValues[index] = (\"%-12s\"):format(state.member.name)\n        elseif var == 6 then -- Availability\n            local availValue = isAvail\n            local timeValue = math.max(state.expirationTime - GetTime(),0)\n            if cSort[\"sortOrder\"] == 2 then\n                timeValue = 9999999999.999 - timeValue\n            end\n            \n            state.sortValues[index] = (\"%d%010.3f\"):format(availValue, timeValue)\n        end\n    end\n    \n    state.index = table.concat(state.sortValues)\nend\n\naura_env.updateSortIndex = function(state,shouldReIndex)\n    local index = sortVarsIndex[6]\n    if index then\n        \n        if state.isDead then\n            state.index = \"9999999999.9999999\"\n            return true\n        end\n        \n        if state.outOfRange then\n            state.index = \"9999999999.0000000\"\n            return true\n        end        \n        \n        local prevSortValue = state.sortValues[index]\n        \n        local availValue\n        local timeValue\n        \n        if state.stacks then\n            if state.stacks > 0 then\n                availValue = isAvail\n                timeValue = math.max(state.expirationTime - GetTime(),0)\n            else\n                availValue = isUnavail\n                timeValue = state.expirationTime\n            end\n        elseif state.expirationTime > GetTime() then\n            availValue = isUnavail\n            timeValue = state.expirationTime\n        else\n            availValue = isAvail\n            timeValue = 0\n        end\n        \n        if cSort[\"sortOrder\"] == 2 then\n            timeValue = 9999999999.999 - timeValue\n        end\n        state.sortValues[index] = (\"%d%010.3f\"):format(availValue, timeValue)\n        \n        if state.sortValues[index] ~= prevSortValue or shouldReIndex then\n            state.index = table.concat(state.sortValues)\n            return true\n        end\n    end\n    \n    return false\nend\n\nif WeakAuras.IsAuraLoaded then\n    -- Since there is no unload event, hooking into region:Collapse() which\n    -- is called from WeakAuras.UnloadDisplays(...)\n    if not aura_env.region.ZTHooked then\n        aura_env.region.ZTHooked = true\n        hooksecurefunc(aura_env.region, \"Collapse\", function(self, ...)\n                if self.ZTRegTypes and (not WeakAuras.IsAuraLoaded(self.id)) then\n                    WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.ZTRegTypes, self.id)\n                    WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.ZTRegSpells, self.id)\n                    self.ZTRegTypes = nil\n                    self.ZTRegSpells = nil\n                end\n        end)\n    end\nend\n\naura_env.silenceMap = { --interupt:cast\n    [220543] = 15487,  --silence\n    [97547]  = 78675,  --solar beam\n    [93985]  = 106839, --skullbash  \n    [347008] = 89766,  --axe toss Check Zen\n    [132409] = 19647,  --Spell Lock (Sacrifice)\n}\naura_env.spellPriorityMap = {\n    [23920]  = 1,  --Spell Reflect\n    [31935]  = 1,  --Avenger's Shield\n    [183752] = 2,  --Disrupt\n    [47528]  = 3,  --Mind Freeze\n    [57994]  = 4,  --Wind Shear    \n    \n    [1766]   = 5,  --Kick\n    [6552]   = 6,  --Pummel\n    [116705] = 7,  --Spear Hand Strike\n    [106839] = 8,  --Skull Bash\n    [96231]  = 9,  --Rebuke\n    [187707] = 10, --Muzzle\n    \n    [202137] = 11, --Sigil of Silence\n    \n    [2139]   = 12, --Counter Spell\n    [147362] = 13, --Counter Shot\n    [119910] = 14, --Spell Lock Command Demon\n    [19647]  = 15, --Spell Lock if used from pet bar\n    [132409] = 16, --Spell Lock Command Demon Sacrifice\n    [89766]  = 17, --Axe Toss\n    --TODO: DK Leap\n    [15487]  = 18, --Silence\n    [78675]  = 20, --Solar Beam\n}\naura_env.petSpells = {\n    [119910] = true, --Spell Lock Command Demon\n    [19647]  = true, --Spell Lock if used from pet bar\n    [132409] = true, --Spell Lock Command Demon Sacrifice\n    --TODO: DK Leap\n}\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["load"] = {
				["use_size"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_ingroup"] = false,
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["scenario"] = true,
						["party"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["internalVersion"] = 40,
			["displayIcon"] = 132938,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "custom",
					["easeType"] = "none",
					["colorB"] = 1,
					["use_color"] = true,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "custom",
					["easeStrength"] = 3,
					["duration"] = "0",
					["colorFunc"] = "function()\n    if aura_env.state then\n        local config = aura_env.config[\"display\"]\n        \n        local classColor = {aura_env.state.member.classColor:GetRGBA()}\n        local barColor, nameColor, timerColor\n        if config[\"colorBarUseClass\"] then\n            barColor = classColor\n        else\n            barColor = config[\"colorBar\"]\n        end\n        if config[\"colorNameUseClass\"] then\n            nameColor = classColor\n        else\n            nameColor = config[\"colorName\"]\n        end\n        if config[\"colorTimerUseClass\"] then\n            timerColor = classColor\n        else\n            timerColor = config[\"colorTimer\"]\n        end\n        \n        aura_env.region:Color(unpack(barColor))\n        aura_env.region.text:SetTextColor(unpack(nameColor))\n        aura_env.region.timer:SetTextColor(unpack(timerColor))\n        aura_env.state.isDead = nil\n        aura_env.state.outOfRange = nil\n        \n    end\n    \n    \n    \nend",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scaley"] = 1,
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["scalex"] = 1,
					["easeStrength"] = 3,
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["x"] = 0,
					["use_color"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["icon"] = true,
			["version"] = 29,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["uid"] = "8wu)nqGXJwU",
			["icon_side"] = "LEFT",
			["config"] = {
				["reg"] = {
					["type"] = {
						["showOwnINTERRUPT"] = true,
						["priorityINTERRUPT"] = 7,
						["showOwnPERSONAL"] = true,
						["enabledPERSONAL"] = false,
						["enabledINTERRUPT"] = false,
						["priorityPERSONAL"] = 8,
					},
					["spell"] = {
						["INTERRUPT"] = {
							["183752"] = true,
							["116705"] = true,
							["2139"] = true,
							["106839"] = true,
							["96231"] = true,
							["19647"] = true,
							["15487"] = true,
							["23920"] = true,
							["47528"] = true,
							["147362"] = true,
							["6552"] = true,
							["202137"] = false,
							["187707"] = true,
							["89766"] = true,
							["1766"] = true,
							["78675"] = true,
							["57994"] = true,
							["31935"] = false,
						},
					},
				},
				["sorting"] = {
					["sortVar2"] = 3,
					["sortOrder"] = 1,
					["sortVar1"] = 6,
					["sortVar3"] = 5,
				},
				["display"] = {
					["colorTimer"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["colorBarUseClass"] = true,
					["colorName"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["colorNameUseClass"] = false,
					["showChargeProgress"] = false,
					["colorTimerUseClass"] = false,
					["colorBar"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
				},
				["advanced"] = {
					["showTarget"] = true,
					["showSpell"] = true,
					["spellReflectTank"] = true,
					["showMissed"] = true,
				},
			},
			["width"] = 200.0001373291016,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["frameStrata"] = 1,
			["zoom"] = 0,
			["spark"] = false,
			["tocversion"] = 90001,
			["sparkHidden"] = "NEVER",
			["semver"] = "1.0.11",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["id"] = "ZT - Interrupt Tracker Bar",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["auto"] = true,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "if aura_env.state and aura_env.state.successful then    \n    WeakAuras.ScanEvents(\"NNOGGIE_INTERRUPT_UPDATETEXT\",aura_env.state.watchID)\nend\n\n\n\n",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "successful",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "elapsedDuration",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "if aura_env.state then\n    aura_env.region.text:SetTextColor(1,0,0,1)\nend",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "elapsedDuration",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "successful",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "if aura_env.state then\n    local config = aura_env.config[\"display\"]\n    \n    local classColor = {aura_env.state.member.classColor:GetRGBA()}\n    local nameColor\n    \n    if config[\"colorNameUseClass\"] then\n        nameColor = classColor\n    else\n        nameColor = config[\"colorName\"]\n    end\n    \n    aura_env.region.text:SetTextColor(unpack(nameColor))\n    \nend",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "isDead",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "isDead",
							}, -- [1]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								["custom"] = "if aura_env.state then   \n    \n    aura_env.region:Color(0.2,0.2,0.2,1)\n    aura_env.region.text:SetTextColor(0.3,0.3,0.3,1)\n    \nend",
							},
							["property"] = "customcode",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "isDead",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "if aura_env.state then\n    local config = aura_env.config[\"display\"]\n    \n    local classColor = {aura_env.state.member.classColor:GetRGBA()}\n    local barColor, nameColor, timerColor\n    if config[\"colorBarUseClass\"] then\n        barColor = classColor\n    else\n        barColor = config[\"colorBar\"]\n    end\n    if config[\"colorNameUseClass\"] then\n        nameColor = classColor\n    else\n        nameColor = config[\"colorName\"]\n    end\n    if config[\"colorTimerUseClass\"] then\n        timerColor = classColor\n    else\n        timerColor = config[\"colorTimer\"]\n    end\n    \n    aura_env.region:Color(unpack(barColor))\n    aura_env.region.text:SetTextColor(unpack(nameColor))\n    aura_env.region.timer:SetTextColor(unpack(timerColor))\n    \nend",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "outOfRange",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 0.25,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [6]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["nocircle_noleaf_fill"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 6, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["customName"] = "function()\n    return \nend",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unit"] = "player",
						["customName"] = "function()\n    return aura_env.order            \nend",
						["events"] = "TirnaScitheButtonOrder",
						["check"] = "event",
						["custom_hide"] = "timed",
						["custom"] = "function(_,button,order)\n    if button == 6 then \n        aura_env.order = order\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 30,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "jUqQ2Rm(nH6",
			["xOffset"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [3]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")           \n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            local values = {1, 0, 0, 6}\n            C_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\n            local message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n    end)\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 6, b)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\Addons\\guess\\nocircle_lotus_fill.tga",
			["cooldownEdge"] = false,
			["semver"] = "1.3.8",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "nocircle_noleaf_fill",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["encounter"] = true,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["nocircle_leaf_fill"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/hVLym_eLv/30",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 4, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_REGEN_ENABLED, PLAYER_ENTERED_WORLD ",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function(event,...)\n    if event ~= \"ENCOUNTER_START\" then \n        return true \n    end\n    if aura_env.showEncounter == false then \n        return false\n    else\n        return true\n    end\nend",
						["customName"] = "function()\n    return \nend",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unit"] = "player",
						["customName"] = "function()\n    return aura_env.order            \nend",
						["events"] = "TirnaScitheButtonOrder",
						["check"] = "event",
						["custom_hide"] = "timed",
						["custom"] = "function(_,button,order)\n    if button == 4 then \n        aura_env.order = order\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 30,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_visible"] = true,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
			},
			["height"] = 80,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["zoneId"] = "1669",
				["zone"] = "Mistveil Tangle",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "xILWxkAJQiT",
			["xOffset"] = 0,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r",
					["width"] = 2,
				}, -- [3]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    b:SetScript(\"OnClick\", function()\n            --print(\"click\")          \n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            local values = {1, 1, 0, 4}\n            C_ChatInfo.RegisterAddonMessagePrefix(\"TIRNASCYTHE\")\n            local message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\n            if IsPartyLFG() then\n                --print(\"LFG\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"INSTANCE_CHAT\")\n                --print(\"LFG sent\")\n            elseif UnitInParty(\"player\") then\n                --print(\"party\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"PARTY\")\n                --print(\"party sent\")\n            else\n                --print(\"solo\")\n                local name, _ = UnitName(\"player\")\n                C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", message, \"WHISPER\", name)\n                --print(\"solo sent\")\n            end\n    end)\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 4, b)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\Addons\\guess\\nocircle_leaf_fill.tga",
			["cooldownEdge"] = false,
			["semver"] = "1.3.8",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "nocircle_leaf_fill",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["encounter"] = true,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -374.99609375,
		["width"] = 829.9999389648438,
		["height"] = 665,
		["yOffset"] = -148.327880859375,
	},
	["editor_theme"] = "Monokai",
}
