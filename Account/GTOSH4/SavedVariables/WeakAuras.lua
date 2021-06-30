
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Bone Shield"] = {
			[195181] = 458717,
		},
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["09 Heart Rend - Teal - disabled"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "A((uIFK)7Vv",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"334765", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						0.94509803921569, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "09 Heart Rend - Teal - disabled",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["nocircle_noleaf_nofill 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 7, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
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
						["custom"] = "function(_,button,order)\n    if button == 7 then \n        aura_env.order = order\n        if order == 9 then \n            aura_env.order = \"\"\n        end\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["text_text_format_p_time_format"] = 0,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["uid"] = "YKLKHDXFofn",
			["selfPoint"] = "CENTER",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["regionType"] = "icon",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\AddOns\\guess\\nocircle_lotus_nofill.tga",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [4]
			},
			["auto"] = false,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "nocircle_noleaf_nofill 3",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["encounter"] = false,
				["noCommunication"] = false,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\naura_env.noCommunication = aura_env.config['noCommunication']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\nlocal values = {1, 0, 1, 7}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\")\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 7, b)\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\") \n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n            end\n            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")\n                end\n            else         \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n                end\n            end\n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Solution Display 3"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = -290,
			["displayText"] = "%c",
			["customText"] = "function()\n    return aura_env.solution .. \"\\n\" .. aura_env.lastSolve\nend",
			["yOffset"] = -31,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\naura_env.version = WeakAuras.GetData(aura_env.id).version\naura_env.versionCheck = 0\naura_env.maxVersion = 0\naura_env.versionPersonal = aura_env.config['versionPersonal']\naura_env.showEncounter = aura_env.config['encounter']\naura_env.selectionColour = aura_env.config['selection']\naura_env.answerColour = aura_env.config['answer']\naura_env.potColour = aura_env.config['potentialSol']\naura_env.announceClicked = aura_env.config['announceClicked']\naura_env.announceSolution = aura_env.config['announceSolution']\naura_env.lotusFlower = aura_env.config['lotusFlower']\naura_env.announceStyle = aura_env.config['announceStyle']\naura_env.announce = aura_env.config['announcer']\naura_env.matchFound = false\naura_env.noCommunication = aura_env.config['noCommunication']\naura_env.useEng = aura_env.config['useEng']\naura_env.eLang = aura_env.config['eLang']\naura_env.lastSolvePH = \"\"\naura_env.announcer = false\naura_env.encounter = false\naura_env.edgeCase = false\naura_env.fiveFour = aura_env.config['fiveFour']\naura_env.specializationName = {\n    [250] = \"TANK\",\n    [581] = \"TANK\",\n    [104] = \"TANK\",\n    [268] = \"TANK\",\n    [66] = \"TANK\",\n    [73] = \"TANK\",\n    [105] = \"HEALER\", \n    [270] = \"HEALER\", \n    [65] = \"HEALER\", \n    [256] = \"HEALER\", \n    [257] = \"HEALER\", \n    [264] = \"HEALER\", \n}\nfunction aura_env.announcement(which,i,count,mark,experiment,cout,sout,fout)\n    aura_env.announcer = false\n    local lead = UnitIsGroupLeader(\"player\")\n    aura_env.playerInfo = aura_env.specializationName[GetSpecializationInfo(GetSpecialization())]\n    if lead and aura_env.announce[1] == true then\n        aura_env.announcer = true\n    elseif aura_env.playerInfo == \"TANK\" and aura_env.announce[2] == true then\n        aura_env.announcer = true\n    elseif aura_env.playerInfo == \"HEALER\" and aura_env.announce[3] == true then\n        aura_env.announcer = true\n    elseif not IsPartyLFG() and not UnitInParty(\"player\") then\n        aura_env.announcer = true\n    elseif aura_env.announce[4] == true then\n        aura_env.announcer = true\n    end\n    if which ~= 1 and aura_env.announcer == true then\n        local cirSay, shapeSay, fillSay, msg\n        if (tonumber(aura_env.logged_images[i][1]) == 0) then\n        cirSay = aura_env.circleText else cirSay = aura_env.nocircleText end\n        if (tonumber(aura_env.logged_images[i][2]) == 0) then\n        shapeSay = aura_env.lotusText else shapeSay = aura_env.leafText end\n        if (tonumber(aura_env.logged_images[i][3]) == 0) then\n        fillSay = aura_env.filledText else fillSay = aura_env.emptyText end\n        if experiment then\n            if cout == 0 then\n                cirSay = aura_env.circleText\n            else \n                cirSay = aura_env.nocircleText\n            end\n            if sout == 0 then\n                shapeSay = aura_env.lotusText            \n            else \n                shapeSay = aura_env.leafText\n            end\n            if fout == 0 then\n                fillSay = aura_env.filledText\n            else \n                fillSay = aura_env.emptyText\n            end\n        end\n        local channel = aura_env.announceChannel(which)\n        if count == true then \n            msg = i ..\": \" .. cirSay .. \" + \" .. shapeSay .. \" + \" .. fillSay \n        else\n            msg = aura_env.solutionText .. \": \"\n            if aura_env.announceStyle == 2 then\n                msg = msg .. cirSay .. \" + \" .. shapeSay .. \" + \" .. fillSay  .. \" > \"\n            end\n            if aura_env.announceStyle == 3 then\n                msg = msg .. cirSay .. \" + \" .. shapeSay .. \" + \" .. fillSay\n            else\n                if mark ==1 then\n                    msg = msg .. cirSay\n                    aura_env.solution = aura_env.solutionText ..\": \" .. cirSay\n                    aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" .. cirSay\n                elseif mark == 2 then \n                    msg = msg .. shapeSay\n                    aura_env.solution = aura_env.solutionText ..\": \" .. shapeSay\n                    aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" .. shapeSay\n                else \n                    msg = msg .. fillSay\n                    aura_env.solution = aura_env.solutionText ..\": \" .. fillSay\n                    aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" .. fillSay\n                end\n            end\n        end\n        SendChatMessage(msg,channel);\n    end\nend\nfunction aura_env.announceChannel(out)\n    if out == 2 then\n        return \"SAY\"\n    elseif out == 3 then\n        return \"YELL\"\n    elseif out == 4 then\n        if IsPartyLFG() then\n            return \"INSTANCE_CHAT\"\n        elseif UnitInParty(\"player\") then\n            return \"PARTY\"\n        else\n            return \"SAY\"\n        end\n    end\nend\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.solution = \"No submissions yet\"\naura_env.solutionText = \"Solution\"\naura_env.nocircleText =\"NO CIRCLE\"\naura_env.circleText = \"CIRCLE\"\naura_env.leafText = \"LEAF\"\naura_env.lotusText = \"LOTUS\"\nif aura_env.lotusFlower == 2 then aura_env.lotusText = \"FLOWER\" end\naura_env.emptyText = \"EMPTY\"\naura_env.filledText = \"FILLED\"\naura_env.noSolveText = \"No solution found\"\naura_env.sigSentText = \"Sigil sent by\"\naura_env.totalText = \"Total provided\"\naura_env.dupeText = \"Duplicated input\"\naura_env.noSubText = \"No submissions yet\"\naura_env.lastSolve = \"\"\naura_env.lastSolveText = \"Previous Solution\"\naura_env.resetText = \"Reset\"\naura_env.mistcaller = \"Mistcaller\"\n\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\n    aura_env.solution = \"입력 없음\"\n    aura_env.solutionText = \"정답\"\n    aura_env.nocircleText =\"테두리 없음\"\n    aura_env.circleText = \"테두리 있음\"\n    aura_env.leafText = \"나뭇잎\"\n    aura_env.lotusText = \"꽃\"\n    aura_env.emptyText = \"색칠 안 됨\"\n    aura_env.filledText = \"색칠됨\"\n    aura_env.noSolveText = \"답을 찾을 수 없음\"\n    aura_env.sigSentText = \"정보 받음 \"\n    aura_env.totalText = \"받은 정보\"\n    aura_env.dupeText = \"중복 입력\"\n    aura_env.noSubText = \"입력 없음\"\n    aura_env.lastSolveText = \"이전 정답\"\n    aura_env.resetText = \"초기화\"\n    aura_env.mistcaller = \"미스트콜러\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\n    aura_env.solution = \"Pas d'entrée actuelle\"\n    aura_env.solutionText = \"Solution\"\n    aura_env.nocircleText =\"NO CERCLE\"\n    aura_env.circleText = \"CERCLE\"\n    aura_env.leafText = \"FEUILLE\"\n    aura_env.lotusText = \"LOTUS\"\n    aura_env.emptyText = \"VIDE\"\n    aura_env.filledText = \"REMPLI\"\n    aura_env.noSolveText = \"Pas de solution trouvée\"\n    aura_env.sigSentText = \"Sigil envoyé par\"\n    aura_env.totalText = \"Total Fourni\"\n    aura_env.dupeText = \"Saise dupliquée\"\n    aura_env.noSubText = \"Pas d'entrée actuelle\"\n    aura_env.lastSolveText = \"Solution précédente\"\n    aura_env.resetText = \"Reset\"\n    aura_env.mistcaller = \"Mandebrume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\n    aura_env.solution = \"Noch keine Eingaben\"\n    aura_env.solutionText = \"Lösung\"\n    aura_env.nocircleText = \"KEIN KREIS\"\n    aura_env.circleText = \"KREIS\"\n    aura_env.leafText = \"BLATT\"\n    aura_env.lotusText = \"LOTUS\"\n    aura_env.emptyText = \"NICHT AUSGEFÜLLT\"\n    aura_env.filledText = \"AUSGEFÜLLT\"\n    aura_env.noSolveText = \"Keine Lösung gefunden\"\n    aura_env.sigSentText = \"Siegel gesendet von\"\n    aura_env.totalText = \"Insgesamt bereitgestellt\"\n    aura_env.dupeText = \"Doppelt eingegeben\"\n    aura_env.noSubText = \"Noch keine Eingaben\"\n    aura_env.lastSolveText = \"Vorherige Lösung\"\n    aura_env.resetText = \"Zurücksetzen\"\n    aura_env.mistcaller = \"Nebelruferin\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\n    aura_env.solution = \"尚未标记\"\n    aura_env.solutionText = \"答案\"\n    aura_env.nocircleText = \"无圈\"\n    aura_env.circleText = \"有圈\"\n    aura_env.leafText = \"叶\"\n    aura_env.lotusText = \"花\"\n    aura_env.emptyText = \"空心\"\n    aura_env.filledText = \"实心\"\n    aura_env.noSolveText = \"未找到答案\"\n    aura_env.sigSentText = \"标记来自于\"\n    aura_env.totalText = \"已标记数\"\n    aura_env.dupeText = \"标记重复\"\n    aura_env.noSubText = \"尚未标记\"\n    aura_env.lastSolveText = \"最终答案\"\n    aura_env.resetText = \"重置\"\n    aura_env.mistcaller = \"唤雾者\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\n    aura_env.solution = \"Aún no hay entradas\"\n    aura_env.solutionText = \"Solución\"\n    aura_env.nocircleText =\"SIN CIRCULO\"\n    aura_env.circleText = \"CIRCULO\"\n    aura_env.leafText = \"HOJA\"\n    aura_env.lotusText = \"LOTO\"\n    aura_env.emptyText = \"VACIO\"\n    aura_env.filledText = \"RELLENO\"\n    aura_env.noSolveText = \"Solución no encontrada\"\n    aura_env.sigSentText = \"Marca enviada por\"\n    aura_env.totalText = \"Total proporcionado\"\n    aura_env.dupeText = \"Entrada Duplicada\"\n    aura_env.noSubText = \"Aún no hay entradas\"\n    aura_env.lastSolveText = \"Solución anterior\"\n    aura_env.resetText = \"Resetear\"\n    aura_env.mistcaller = \"Clamaneblina\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\n    aura_env.solution = \"尚未標記\"\n    aura_env.solutionText = \"答案\"\n    aura_env.nocircleText =\"沒圈\"\n    aura_env.circleText = \"有圈\"\n    aura_env.leafText = \"葉子\"\n    aura_env.lotusText = \"花\"\n    aura_env.emptyText = \"空心\"\n    aura_env.filledText = \"實心\"\n    aura_env.noSolveText = \"沒有答案\"\n    aura_env.sigSentText = \"圖標製作為\"\n    aura_env.totalText = \"已標記圖標\"\n    aura_env.dupeText = \"標記重複了\"\n    aura_env.noSubText = \"尚未標記\"\n    aura_env.lastSolveText = \"上一個答案\"\n    aura_env.resetText = \"重置\"\n    aura_env.mistcaller = \"唤雾者\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\n    aura_env.solution = \"Aun no hay entradas\"\n    aura_env.solutionText = \"Solucion\"\n    aura_env.nocircleText =\"Sin circulo\"\n    aura_env.circleText = \"Circulo\"\n    aura_env.leafText = \"Hoja\"\n    aura_env.lotusText = \"Loto\"\n    aura_env.emptyText = \"Vacio\"\n    aura_env.filledText = \"Lleno\"\n    aura_env.noSolveText = \"No se encuentra solucion\"\n    aura_env.sigSentText = \"Sigilo enviado por\"\n    aura_env.totalText = \"Total provisto\"\n    aura_env.dupeText = \"Entrada duplicada\"\n    aura_env.noSubText = \"Aun no hay entradas\"\n    aura_env.lastSolveText = \"Solucion anterior\"\n    aura_env.resetText = \"Reiniciar\"\n    aura_env.mistcaller = \"Clamaneblina\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\n    aura_env.solution = \"Ничего не введено\"\n    aura_env.solutionText = \"Решение\"\n    aura_env.nocircleText = \"БЕЗ КРУГА\"\n    aura_env.circleText = \"КРУГ\"\n    aura_env.leafText = \"ЛИСТ\"\n    aura_env.lotusText = \"ЛОТОС\"\n    aura_env.emptyText = \"ПУСТОЙ\"\n    aura_env.filledText = \"ЦВЕТНОЙ\"\n    aura_env.noSolveText = \"Нет решения\"\n    aura_env.sigSentText = \"Отправлено\"\n    aura_env.totalText = \"Всего выбрано\"\n    aura_env.dupeText = \"Дублирующиеся данные\"\n    aura_env.noSubText = \"Ничего не введено\"\n    aura_env.lastSolveText = \"Предыдущее решение\"\n    aura_env.resetText = \"Сброс\"\n    aura_env.mistcaller = \"Призывательница Туманов\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\n    aura_env.solution = \"Sem submições\"\n    aura_env.solutionText = \"Solução\"\n    aura_env.nocircleText = \"Sem Circulo\"\n    aura_env.circleText = \"Circulo\"\n    aura_env.leafText = \"Folha\"\n    aura_env.lotusText = \"Flor\"\n    aura_env.emptyText = \"Vazio\"\n    aura_env.filledText = \"Cheio\"\n    aura_env.noSolveText = \"Solução não encontrada\"\n    aura_env.sigSentText = \"Marca enviada por\"\n    aura_env.totalText = \"Total provido\"\n    aura_env.dupeText = \"Entrada Duplicada\"\n    aura_env.noSubText = \"Sem submições\"\n    aura_env.lastSolveText = \"Solução anterior\"\n    aura_env.resetText = \"Resetar\"\n    aura_env.mistcaller = \"Chamabruma\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\n    aura_env.solution = \"Nessuna immissione\"\n    aura_env.solutionText = \"Soluzione\"\n    aura_env.nocircleText =\"NON CERCHIATO\"\n    aura_env.circleText = \"CERCHIATO\"\n    aura_env.leafText = \"FOGLIA\"\n    aura_env.lotusText = \"FIORE\"\n    aura_env.emptyText = \"VUOTO\"\n    aura_env.filledText = \"PIENO\"\n    aura_env.noSolveText = \"Nessuna soluzione trovata\"\n    aura_env.sigSentText = \"Sigillo inviato da\"\n    aura_env.totalText = \"Totale provveduto\"\n    aura_env.dupeText = \"Doppia immissione\"\n    aura_env.noSubText = \"Nessuna immissione\"\n    aura_env.lastSolveText = \"Soluzione precedente\"\n    aura_env.resetText = \"Reset\" \n    aura_env.mistcaller = \"Evocanebbie\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\" \nend\nif aura_env.eLang == 2 and not aura_env.useEng then --Dutch\n    aura_env.solution = \"Nog geen antwoorden\"\n    aura_env.solutionText = \"Antwoord\"\n    aura_env.nocircleText =\"Geen cirkel\"\n    aura_env.circleText = \"Cirkel\"\n    aura_env.leafText = \"Blad\"\n    aura_env.lotusText = \"Lotus\"\n    aura_env.emptyText = \"Leeg\"\n    aura_env.filledText = \"Gekleurd\"\n    aura_env.noSolveText = \"Geen antwoord gevonden\"\n    aura_env.sigSentText = \"Sigil verstuurd door\"\n    aura_env.totalText = \"Totaal ingevoerd\"\n    aura_env.dupeText = \"Invoer gedupliceerd\"\n    aura_env.noSubText = \"Nog geen antwoorden\"\n    aura_env.lastSolveText = \"Vorig Antwoord\" \n    aura_env.resetText = \"Reset\"\nelseif aura_env.eLang == 3 and not aura_env.useEng then --Norwegian\n    aura_env.solution = \"Forløpig ingen data\"\n    aura_env.solutionText = \"UTEN SIRKEL\"\n    aura_env.nocircleText =\"UTEN SIRKEL\"\n    aura_env.circleText = \"SIRKEL\"\n    aura_env.leafText = \"LØV\"\n    aura_env.lotusText = \"LOTUS\"\n    aura_env.emptyText = \"IKKE FYLT\"\n    aura_env.filledText = \"FYLT\"\n    aura_env.noSolveText = \"Ingen løsning funnet\"\n    aura_env.sigSentText = \"Symbol sendt av\"\n    aura_env.totalText = \"Totalt tilbudt\"\n    aura_env.dupeText = \"Duplikert tilførsel\"\n    aura_env.noSubText = \"Forløpig ingen data\"\n    aura_env.lastSolveText = \"Forrige løsning\" \n    aura_env.resetText = \"Tilbakestill\"\nelseif aura_env.eLang == 4 and not aura_env.useEng then --Hungarian\n    aura_env.solution = \"Nincs megadva\"\n    aura_env.solutionText = \"Megoldás\"\n    aura_env.nocircleText =\"Nincs karika\"\n    aura_env.circleText = \"Karika\"\n    aura_env.leafText = \"Levél\"\n    aura_env.lotusText = \"Virág\"\n    aura_env.emptyText = \"Üres\"\n    aura_env.filledText = \"Teli\"\n    aura_env.noSolveText = \"Nem található megoldás\"\n    aura_env.sigSentText = \"Jel beküldve\"\n    aura_env.totalText = \"Összes\"\n    aura_env.dupeText = \"Dupla bemenet\"\n    aura_env.noSubText = \"Nincs megadva\"\n    aura_env.lastSolveText = \"Előző megoldás\" \n    aura_env.resetText = \"Töröl\"\nend\nif aura_env.useEng then\n    aura_env.solution = \"No submissions yet\"\n    aura_env.solutionText = \"Solution\"\n    aura_env.nocircleText =\"NO CIRCLE\"\n    aura_env.circleText = \"CIRCLE\"\n    aura_env.leafText = \"LEAF\"\n    aura_env.lotusText = \"LOTUS\"\n    if aura_env.lotusFlower == 2 then aura_env.lotusText = \"FLOWER\" end\n    aura_env.emptyText = \"EMPTY\"\n    aura_env.filledText = \"FILLED\"\n    aura_env.noSolveText = \"No solution found\"\n    aura_env.sigSentText = \"Sigil sent by\"\n    aura_env.totalText = \"Total provided\"\n    aura_env.dupeText = \"Duplicated input\"\n    aura_env.noSubText = \"No submissions yet\"\n    aura_env.lastSolveText = \"Previous Solution\"\n    aura_env.resetText = \"Reset\"\nend\n\nC_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\naura_env.logged_images = {}\naura_env.testArray = {}\naura_env.dupe = false\naura_env.button = 9\n\naura_env.noc = {4,5,6,7}\naura_env.cir = {0,1,2,3}\naura_env.leaf = {0,1,4,5}\naura_env.lotus = {2,3,6,7}\naura_env.nofi = {1,3,5,7}\naura_env.fill = {0,2,4,6}\n\naura_env.LCG = LibStub(\"LibCustomGlow-1.0\")",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD, ENCOUNTER_START",
						["custom"] = "function(event, eid,...)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if IsPartyLFG() then\n            C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", \"9 9 9 9v\"..aura_env.version, \"INSTANCE_CHAT\")\n            C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", \"9 9 9 9v\"..aura_env.version, \"INSTANCE_CHAT\")\n        elseif UnitInParty(\"player\") then\n            C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", \"9 9 9 9v\"..aura_env.version, \"PARTY\")\n            C_ChatInfo.SendAddonMessageLogged(\"TIRNASCYTHE\", \"9 9 9 9v\"..aura_env.version, \"PARTY\")\n        end\n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
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
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellName"] = 0,
						["debuffType"] = "HELPFUL",
						["duration"] = "60",
						["type"] = "custom",
						["events"] = "CHAT_MSG_ADDON_LOGGED",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["customName"] = "",
						["event"] = "Combat Log",
						["unevent"] = "timed",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["custom"] = "function(event, prefix, msg, dist, sender)\n    -- Ignore non-WA messages\n    if prefix ~= \"Tirna Ver2\" then return false end\n    -- Limit version checks vs other players to 8 times\n    if aura_env.versionCheck < 8 then\n        if string.match(msg, \"v\") then\n            local version = string.match(msg, \"v%d%d%d\") or string.match(msg, \"v%d%d\") or string.match(msg, \"v%d\")\n            version = string.match(version, \"%d%d%d\") or string.match(version, \"%d%d\") or string.match(version, \"%d\")\n            if tonumber(version) >= tonumber(aura_env.version + aura_env.versionPersonal) then \n                if aura_env.maxVersion < tonumber(version) then\n                    aura_env.maxVersion = tonumber(version)\n                    print(\"|cFFFF0000Mists of Tirna Scithe maze guessing game is \" .. (tonumber(version) - tonumber(aura_env.version)).. \" versions old, please update.|r\")\n                end            \n                aura_env.versionCheck = aura_env.versionCheck + 1\n            end \n        end\n    end\n    \n    if aura_env.debugmode then\n        print(\"Received:\",prefix,\":\", msg, dist, sender)\n    end\n    if dist ~= \"WHISPER\" and aura_env.noCommunication then \n        if aura_env.debugmode then print(\"Ignored ^\") end\n        return false \n    end\n    \n    local length = table.getn(aura_env.logged_images)\n    if length == 0 then WeakAuras.ScanEvents(\"GlowReset\", true) end\n    -- If we're resetting\n    local circle, shape, fill, dup = string.match(msg, \"(%d) (%d) (%d) (%d)\")\n    if (circle == \"9\" and shape == \"9\" and fill == \"9\" and dup == \"9\") then\n        aura_env.solution = aura_env.resetText .. \": \" .. sender .. \"\\n\" .. aura_env.noSubText\n        aura_env.logged_images = {}\n        aura_env.matchFound = false\n        WeakAuras.ScanEvents(\"GlowReset\", true)\n        return true \n    end\n    \n    -- Main logic\n    local array = {circle, shape, fill, dup}\n    aura_env.dupe = false\n    aura_env.edgeCase = false\n    local remove = false\n    if string.match(msg, \"RightButton\") then\n        remove = true\n    end\n    -- Check for duplicates and check for removals\n    if length > 0 then\n        for i=1, table.getn(aura_env.logged_images) do \n            if aura_env.logged_images[i][4] == array[4] then \n                if remove then\n                    WeakAuras.ScanEvents(\"TirnaScitheButtonOrder\", tonumber(aura_env.logged_images[i][4]), 9)\n                    WeakAuras.ScanEvents(\"GlowReset\", false, tonumber(aura_env.logged_images[i][4]))\n                    table.remove(aura_env.logged_images,i)\n                    for j=1, table.getn(aura_env.logged_images) do \n                        WeakAuras.ScanEvents(\"GlowReset\", false, tonumber(aura_env.logged_images[j][4]))\n                        WeakAuras.ScanEvents(\"TirnaScitheButtonOrder\", tonumber(aura_env.logged_images[j][4]), j)\n                        aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[j][4])], aura_env.selectionColour,8,0,1000,3,0,0,true,2)\n                    end\n                    length = table.getn(aura_env.logged_images)\n                    if length == 4 and aura_env.fiveFour then \n                        aura_env.edgeCase = true\n                    end\n                    break\n                else\n                    aura_env.dupe = true\n                    if length == 4 then \n                        aura_env.edgeCase = true\n                    end\n                end\n            end\n        end\n    end\n    -- If not a duplicate then calculate answer\n    if not aura_env.dupe and not remove then\n        aura_env.logged_images[length + 1] = array\n        local new_length = table.getn(aura_env.logged_images)\n        if new_length == 1 then \n            aura_env.lastSolve = aura_env.lastSolvePH\n        end\n        aura_env.solution = aura_env.sigSentText .. \" \" .. sender .. \"\\n\" .. aura_env.totalText .. \": \" .. new_length .. \"/4\"\n        for i=1, new_length do \n            aura_env.button = tonumber(aura_env.logged_images[i][4])\n            aura_env.LCG.PixelGlow_Start(aura_env.testArray[aura_env.button], aura_env.selectionColour,8,0,1000,3,0,0,true,2)\n            if i == new_length then\n                aura_env.announcement(aura_env.announceClicked,i,true,0)\n            end\n        end\n        WeakAuras.ScanEvents(\"TirnaScitheButtonOrder\", aura_env.button, new_length)\n    end\n    -- Ignore additional signs when at 4\n    if length > 3 and not aura_env.edgeCase then return false end\n    if not aura_env.dupe or aura_env.edgeCase then\n        local new_length = table.getn(aura_env.logged_images)\n        if new_length == 3 then \n            local checkOpp12 = {}\n            local checkOpp13 = {}\n            local checkOpp23 = {}\n            local checkAttTotal = {}\n            local countCout = 0\n            local countSout = 0\n            local countFout = 0\n            local count12match = 0\n            local count13match = 0\n            local count23match = 0\n            local annOut = 0\n            for i=1,3 do\n                checkOpp12[i] = (tonumber(aura_env.logged_images[1][i]) + tonumber(aura_env.logged_images[2][i]))\n                checkOpp13[i] = (tonumber(aura_env.logged_images[1][i]) + tonumber(aura_env.logged_images[3][i]))\n                checkOpp23[i] = (tonumber(aura_env.logged_images[2][i]) + tonumber(aura_env.logged_images[3][i]))\n            end\n            if aura_env.debugmode then \n                print(tonumber(aura_env.logged_images[1][1]), tonumber(aura_env.logged_images[1][2]), tonumber(aura_env.logged_images[1][3]))\n                print(tonumber(aura_env.logged_images[2][1]), tonumber(aura_env.logged_images[2][2]), tonumber(aura_env.logged_images[2][3]))\n                print(tonumber(aura_env.logged_images[3][1]), tonumber(aura_env.logged_images[3][2]), tonumber(aura_env.logged_images[3][3]))\n                print(\"-----\")\n                print(checkOpp12[1],checkOpp12[2],checkOpp12[3])\n                print(checkOpp13[1],checkOpp13[2],checkOpp13[3])\n                print(checkOpp23[1],checkOpp23[2],checkOpp23[3])\n            end\n            if (checkOpp12[1] == 1 and checkOpp12[2] == 1 and checkOpp12[3] == 1) or \n            (checkOpp13[1] == 1 and checkOpp13[2] == 1 and checkOpp13[3] == 1) or \n            (checkOpp23[1] == 1 and checkOpp23[2] == 1 and checkOpp23[3] == 1) then\n                if checkOpp12[1] == 0 or checkOpp12[1] == 2 then count12match = count12match + 1 end\n                if checkOpp12[2] == 0 or checkOpp12[2] == 2 then count12match = count12match + 1 end\n                if checkOpp12[3] == 0 or checkOpp12[3] == 2 then count12match = count12match + 1 end\n                if checkOpp13[1] == 0 or checkOpp13[1] == 2 then count13match = count13match + 1 end\n                if checkOpp13[2] == 0 or checkOpp13[2] == 2 then count13match = count13match + 1 end\n                if checkOpp13[3] == 0 or checkOpp13[3] == 2 then count13match = count13match + 1 end\n                if checkOpp23[1] == 0 or checkOpp23[1] == 2 then count23match = count23match + 1 end\n                if checkOpp23[2] == 0 or checkOpp23[2] == 2 then count23match = count23match + 1 end\n                if checkOpp23[3] == 0 or checkOpp23[3] == 2 then count23match = count23match + 1 end\n                if count12match ~= 2 and count13match ~= 2 then \n                    if checkOpp23[1] == 2 then annOut = 1 elseif checkOpp23[2] == 2 then annOut = 2 else annOut = 3 end\n                    aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[1][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                    aura_env.announcement(aura_env.announceSolution,1,false,annOut,true,tonumber(aura_env.logged_images[1][1]),tonumber(aura_env.logged_images[1][2]),tonumber(aura_env.logged_images[1][3]))\n                    aura_env.matchFound = true\n                    return true\n                end\n                if count12match ~= 2 and count23match ~= 2 then \n                    if checkOpp13[1] == 2 then annOut = 1 elseif checkOpp13[2] == 2 then annOut = 2 else annOut = 3 end                    \n                    aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[2][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                    aura_env.announcement(aura_env.announceSolution,1,false,annOut,true,tonumber(aura_env.logged_images[2][1]),tonumber(aura_env.logged_images[2][2]),tonumber(aura_env.logged_images[2][3]))\n                    aura_env.matchFound = true\n                    return true\n                end\n                if count23match ~= 2 and count13match ~= 2 then\n                    if checkOpp12[1] == 2 then annOut = 1 elseif checkOpp12[2] == 2 then annOut = 2 else annOut = 3 end\n                    aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[3][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                    aura_env.announcement(aura_env.announceSolution,1,false,annOut,true,tonumber(aura_env.logged_images[3][1]),tonumber(aura_env.logged_images[3][2]),tonumber(aura_env.logged_images[3][3]))\n                    aura_env.matchFound = true\n                    return true\n                end\n            end\n            checkAttTotal[1] = checkOpp12[1] + checkOpp13[1] + checkOpp23[1]\n            checkAttTotal[2] = checkOpp12[2] + checkOpp13[2] + checkOpp23[2]\n            checkAttTotal[3] = checkOpp12[3] + checkOpp13[3] + checkOpp23[3]\n            if checkAttTotal[1] == 6 or checkAttTotal[1] == 0 or checkAttTotal[2] == 6 or checkAttTotal[2] == 0 or checkAttTotal[3] == 6 or checkAttTotal[3] == 0 then\n                if checkOpp12[1] == 0 or checkOpp13[1] == 0 or checkOpp23[1] == 0 then countCout = 1 end\n                if checkOpp12[2] == 0 or checkOpp13[2] == 0 or checkOpp23[2] == 0 then countSout = 1 end\n                if checkOpp12[3] == 0 or checkOpp13[3] == 0 or checkOpp23[3] == 0 then countFout = 1 end                \n                if checkAttTotal[1] == 0 then countCout = 1 annOut = 1 elseif checkAttTotal[1] == 6 then countCout = 0 annOut = 1 end\n                if checkAttTotal[2] == 0 then countSout = 1 annOut = 2 elseif checkAttTotal[2] == 6 then countSout = 0 annOut = 2 end                \n                if checkAttTotal[3] == 0 then countFout = 1 annOut = 3 elseif checkAttTotal[3] == 6 then countFout = 0 annOut = 3 end\n                local outframetest = (4*countCout) + ((countSout-1)*-2) + countFout\n                WeakAuras.ScanEvents(\"TirnaScitheButtonOrder\", outframetest, \"4\")\n                aura_env.LCG.PixelGlow_Start(aura_env.testArray[outframetest], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                aura_env.announcement(aura_env.announceSolution,1,false,annOut,true,countCout,countSout,countFout)\n                aura_env.logged_images[4] = {countCout,countSout,countFout,tostring(outframetest)}\n                aura_env.matchFound = true\n                return true\n            end\n        end\n        if new_length > 3 then\n            local circleSum = 0\n            local shapeSum = 0\n            local fillSum = 0\n            for i=1,4 do\n                circleSum = circleSum + tonumber(aura_env.logged_images[i][1])\n                shapeSum = shapeSum + tonumber(aura_env.logged_images[i][2])\n                fillSum = fillSum + tonumber(aura_env.logged_images[i][3])\n            end\n            \n            if circleSum == 1 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.noc[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                            aura_env.announcement(aura_env.announceSolution,i,false,1)\n                            aura_env.matchFound = true\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.nocircleText\n                aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" ..aura_env.nocircleText\n            elseif circleSum == 3 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.cir[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                            aura_env.announcement(aura_env.announceSolution,i,false,1)\n                            aura_env.matchFound = true\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.circleText                \n                aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" ..aura_env.circleText\n            elseif shapeSum == 1 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.leaf[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                            aura_env.announcement(aura_env.announceSolution,i,false,2)\n                            aura_env.matchFound = true\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.leafText\n                aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" ..aura_env.leafText\n            elseif shapeSum == 3 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.lotus[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                            aura_env.announcement(aura_env.announceSolution,i,false,2)\n                            aura_env.matchFound = true\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.lotusText\n                aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" ..aura_env.lotusText\n            elseif fillSum == 1 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.nofi[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                            aura_env.announcement(aura_env.announceSolution,i,false,3)\n                            aura_env.matchFound = true\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.emptyText\n                aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" ..aura_env.emptyText\n            elseif fillSum == 3 then\n                for i=1, new_length do \n                    for j=1, 4 do \n                        if aura_env.fill[j] == tonumber(aura_env.logged_images[i][4]) then \n                            aura_env.LCG.PixelGlow_Start(aura_env.testArray[tonumber(aura_env.logged_images[i][4])], aura_env.answerColour,8,0,1000,3,0,0,true,2)\n                            aura_env.announcement(aura_env.announceSolution,i,false,3)\n                            aura_env.matchFound = true\n                        end\n                    end\n                end\n                aura_env.solution = aura_env.solutionText ..\": \" .. aura_env.filledText\n                aura_env.lastSolvePH  = aura_env.lastSolveText .. \": \" ..aura_env.filledText\n            else\n                aura_env.solution = aura_env.noSolveText\n            end\n        else\n            aura_env.solution = aura_env.sigSentText .. \" \" .. sender .. \"\\n\" .. aura_env.totalText .. \": \" .. new_length .. \"/4\"         \n        end\n    else\n        aura_env.solution = aura_env.dupeText\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["custom_hide"] = "timed",
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
						["custom"] = "function(event,full,button)\n    if full then\n        for i=0, 7 do \n            aura_env.LCG.PixelGlow_Stop(aura_env.testArray[i], 2)\n        end\n        WeakAuras.ScanEvents(\"TirnaScitheButtonOrder\", 9, 9)\n    else\n        aura_env.LCG.PixelGlow_Stop(aura_env.testArray[button], 2)\n    end\n    return true\nend",
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
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Combat Log",
						["unit"] = "player",
						["custom_type"] = "status",
						["events"] = "CHAT_MSG_MONSTER_SAY, CHAT_MSG_MONSTER_YELL",
						["custom"] = "function(event, ...)\n    if select(2,...) == aura_env.mistcaller then\n        if aura_env.matchFound then\n            WeakAuras.ScanEvents(\"GlowReset\", true)\n            aura_env.logged_images = {}\n            aura_env.matchFound = false\n        end\n    end\n    return true\nend",
						["check"] = "event",
						["subeventPrefix"] = "",
						["subeventSuffix"] = "",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["wordWrap"] = "Elide",
			["font"] = "Arial Narrow",
			["version"] = 67,
			["subRegions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
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
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["fontSize"] = 21,
			["displayText_format_n_format"] = "none",
			["shadowXOffset"] = 1,
			["displayText_format_3.n_format"] = "none",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["selfPoint"] = "TOP",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["fixedWidth"] = 300,
			["displayText_format_p_time_precision"] = 1,
			["shadowYOffset"] = -1,
			["semver"] = "2.0.2",
			["config"] = {
				["lotusFlower"] = 2,
				["debug"] = false,
				["encounter"] = false,
				["announceClicked"] = 1,
				["useEng"] = false,
				["answer"] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["versionPersonal"] = 1,
				["selection"] = {
					0, -- [1]
					0, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["fiveFour"] = true,
				["announcer"] = {
					true, -- [1]
					false, -- [2]
					false, -- [3]
					false, -- [4]
				},
				["eLang"] = 1,
				["noCommunication"] = false,
				["announceSolution"] = 4,
				["announceStyle"] = 1,
			},
			["justify"] = "LEFT",
			["tocversion"] = 90005,
			["id"] = "Solution Display 3",
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
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "color",
					["key"] = "selection",
					["default"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useDesc"] = false,
					["name"] = "Selection Border",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "color",
					["key"] = "answer",
					["default"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["useDesc"] = false,
					["name"] = "Solution Border",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "select",
					["values"] = {
						"Disabled", -- [1]
						"SAY", -- [2]
						"YELL", -- [3]
						"PARTY > INSTANCE > SAY", -- [4]
					},
					["default"] = 1,
					["key"] = "announceClicked",
					["useDesc"] = false,
					["name"] = "Announce Selection",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "select",
					["values"] = {
						"Disabled", -- [1]
						"SAY", -- [2]
						"YELL", -- [3]
						"PARTY > INSTANCE > SAY", -- [4]
					},
					["default"] = 4,
					["key"] = "announceSolution",
					["useDesc"] = false,
					["name"] = "Announce Solution",
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "select",
					["values"] = {
						"Trait", -- [1]
						"X + Y + Z > Trait", -- [2]
						"X + Y + Z", -- [3]
					},
					["default"] = 1,
					["key"] = "announceStyle",
					["useDesc"] = false,
					["name"] = "Announcement style",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"LOTUS", -- [1]
						"FLOWER", -- [2]
					},
					["default"] = 2,
					["key"] = "lotusFlower",
					["useDesc"] = false,
					["name"] = "Lotus or Flower",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "multiselect",
					["values"] = {
						"Party Leader", -- [1]
						"Tank", -- [2]
						"Healer", -- [3]
						"Always", -- [4]
					},
					["default"] = {
						true, -- [1]
						false, -- [2]
						false, -- [3]
						false, -- [4]
					},
					["key"] = "announcer",
					["useDesc"] = false,
					["name"] = "Announce as:",
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "header",
					["useName"] = false,
					["text"] = "",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "useEng",
					["desc"] = "(Overwrites selection below)",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Use English instead of Client Regional Language",
					["width"] = 2,
				}, -- [11]
				{
					["type"] = "select",
					["values"] = {
						"Use Client Region Language", -- [1]
						"Dutch", -- [2]
						"Norwegian (Bokmål)", -- [3]
						"Hungarian", -- [4]
					},
					["default"] = 1,
					["key"] = "eLang",
					["useDesc"] = false,
					["name"] = "Language (non-client region Language)",
					["width"] = 1,
				}, -- [12]
				{
					["type"] = "range",
					["useDesc"] = false,
					["max"] = 10,
					["step"] = 1,
					["width"] = 1,
					["min"] = 1,
					["key"] = "versionPersonal",
					["name"] = "Notify when version outdated:",
					["default"] = 1,
				}, -- [13]
				{
					["type"] = "toggle",
					["key"] = "fiveFour",
					["desc"] = "Make a check on going from 5 to 4 symbols. Can potentially announce an impossible combination if a false symbol remains in the four selected.",
					["default"] = true,
					["useDesc"] = true,
					["name"] = "5 - 4 on removal check (Mouseover for info)",
					["width"] = 2,
				}, -- [14]
				{
					["type"] = "header",
					["useName"] = false,
					["text"] = "",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [15]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [16]
			},
			["uid"] = "mO6xel(DgdK",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["automaticWidth"] = "Auto",
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
			["preferToUpdate"] = true,
		},
		["07 Dark Recital Partner - Yellow "] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = " ",
			["customText"] = "\n\n",
			["yOffset"] = 304.00006103516,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["spellId"] = "",
						["useExactSpellId"] = true,
						["names"] = {
						},
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"331637", -- [1]
							"331636", -- [2]
						},
						["use_spellId"] = false,
						["spellIds"] = {
						},
						["auranames"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "timed",
						["duration"] = "20",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["events"] = "UNIT_SPELLCAST_START:boss CLEU:SPELL_AURA_APPLIED:SPELL_AURA_REMOVED ENCOUNTER_START, ENCOUNTER_END",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(event, ...)\n    \n    if event == \"UNIT_SPELLCAST_START\" and select(3, ...) == 331634 then\n        aura_env.debuffs1 = {}\n        aura_env.debuffs2 = {}\n        \n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local _,  subevent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID, spellName, spellSchool, extraSpellId = ...\n        \n        if subevent == \"SPELL_AURA_REMOVED\" and (spellID == aura_env.debuff1 or spellID == aura_env.debuff2) then\n            local frame = aura_env.GetFrame(destName)\n            if frame then\n                aura_env.Glow(frame, false)\n            end\n        end\n        \n        if subevent == \"SPELL_AURA_APPLIED\" then \n            if spellID == aura_env.debuff1 then\n                local destName = gsub(destName, \"%-[^|]+\", \"\")\n                if not UnitExists(destName) or not UnitIsVisible(destName) then return end\n                table.insert(aura_env.debuffs1, destName)\n                if UnitIsUnit(destName, \"player\") and aura_env.debuffs2[#aura_env.debuffs1] then\n                    local frame = aura_env.GetFrame(aura_env.debuffs2[#aura_env.debuffs1])\n                    if frame then\n                        aura_env.Glow(frame, true)\n                    end\n                    return true\n                elseif aura_env.debuffs2[#aura_env.debuffs1] and UnitIsUnit(aura_env.debuffs2[#aura_env.debuffs1], \"player\") then\n                    local frame = aura_env.GetFrame(aura_env.debuffs1[#aura_env.debuffs2])\n                    if frame then\n                        aura_env.Glow(frame, true)\n                    end\n                    return true\n                end\n            elseif spellID == aura_env.debuff2 then\n                local destName = gsub(destName, \"%-[^|]+\", \"\")\n                if not UnitExists(destName) or not UnitIsVisible(destName) then return end\n                table.insert(aura_env.debuffs2, destName)\n                if UnitIsUnit(destName, \"player\") and aura_env.debuffs1[#aura_env.debuffs2] then\n                    local frame = aura_env.GetFrame(aura_env.debuffs1[#aura_env.debuffs2])\n                    if frame then\n                        aura_env.Glow(frame, true)\n                    end\n                    return true\n                elseif aura_env.debuffs1[#aura_env.debuffs2] and UnitIsUnit(aura_env.debuffs1[#aura_env.debuffs2], \"player\") then\n                    local frame = aura_env.GetFrame(aura_env.debuffs2[#aura_env.debuffs1])\n                    if frame then\n                        aura_env.Glow(frame, true)\n                    end\n                    return true\n                end\n            end\n        end\n        \n    elseif event == \"ENCOUNTER_START\" then\n        aura_env.debuffs1 = {}\n        aura_env.debuffs2 = {}\n        \n    elseif event == \"ENCOUNTER_END\" then\n        for unit in WA_IterateGroupMembers() do\n            local frame = aura_env.GetFrame(unit)\n            if frame then\n                aura_env.Glow(frame, false)\n            end \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["conditions"] = {
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["version"] = 27,
			["subRegions"] = {
			},
			["height"] = 75,
			["automaticWidth"] = "Auto",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["encounterid"] = "2412",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
			},
			["cooldown"] = true,
			["displayIcon"] = 135740,
			["fontSize"] = 12,
			["authorOptions"] = {
				{
					["type"] = "select",
					["values"] = {
						"Standard", -- [1]
						"Pixel", -- [2]
						"AutoCast", -- [3]
					},
					["default"] = 3,
					["name"] = "Type",
					["key"] = "glowType",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "color",
					["key"] = "glowColor",
					["default"] = {
						1, -- [1]
						0.96862745098039, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["name"] = "Color",
					["width"] = 1,
				}, -- [2]
				{
					["softMin"] = 1,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 50,
					["step"] = 1,
					["width"] = 1,
					["min"] = 1,
					["key"] = "glowParticules",
					["default"] = 20,
					["softMax"] = 50,
					["name"] = "Particules",
					["useDesc"] = true,
					["desc"] = "Number of particle groups (each groups contains 4 particles)",
				}, -- [3]
				{
					["min"] = 0,
					["type"] = "range",
					["name"] = "Frequency",
					["default"] = 0.3,
					["max"] = 1,
					["key"] = "glowFrequency",
					["step"] = 0.05,
					["width"] = 1,
				}, -- [4]
				{
					["min"] = -9999,
					["type"] = "number",
					["name"] = "xOffset",
					["default"] = 0,
					["max"] = 9999,
					["key"] = "glowxOffset",
					["step"] = 0.05,
					["width"] = 1,
				}, -- [5]
				{
					["min"] = -9999,
					["type"] = "number",
					["name"] = "yOffset",
					["default"] = 0,
					["max"] = 9999,
					["key"] = "glowyOffset",
					["step"] = 0.05,
					["width"] = 1,
				}, -- [6]
				{
					["fontSize"] = "medium",
					["key"] = "option13",
					["name"] = "Option #13",
					["text"] = "AutoCast Options",
					["type"] = "description",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 10,
					["step"] = 0.05,
					["width"] = 1,
					["min"] = 0,
					["key"] = "glowScale",
					["default"] = 2,
					["name"] = "Scale",
					["desc"] = "Scale of particles",
				}, -- [8]
				{
					["fontSize"] = "medium",
					["key"] = "option14",
					["name"] = "Option #14",
					["text"] = "Pixel Options",
					["type"] = "description",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "number",
					["useDesc"] = true,
					["max"] = 20,
					["step"] = 0.05,
					["width"] = 1,
					["min"] = 0,
					["key"] = "glowLength",
					["default"] = 8,
					["name"] = "Length",
					["desc"] = "Length of lines",
				}, -- [10]
				{
					["fontSize"] = "small",
					["key"] = "option14",
					["name"] = "Option #14",
					["text"] = " ",
					["type"] = "description",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "number",
					["useDesc"] = true,
					["max"] = 10,
					["step"] = 0.05,
					["width"] = 1,
					["min"] = 0,
					["key"] = "glowThickness",
					["default"] = 2,
					["name"] = "Thickness",
					["desc"] = "Thickness of lines",
				}, -- [12]
				{
					["fontSize"] = "small",
					["key"] = "option15",
					["name"] = "Option #15",
					["text"] = " ",
					["type"] = "description",
					["width"] = 1,
				}, -- [13]
				{
					["type"] = "toggle",
					["key"] = "glowBorder",
					["width"] = 1,
					["name"] = "Border",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "Create border under lines",
				}, -- [14]
			},
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
			["shadowXOffset"] = 1,
			["semver"] = "1.0.26",
			["uid"] = "uQmnWy8mpUe",
			["stickyDuration"] = false,
			["regionType"] = "text",
			["width"] = 75,
			["alpha"] = 1,
			["selfPoint"] = "CENTER",
			["preferToUpdate"] = true,
			["zoom"] = 0.3,
			["xOffset"] = -147.99987792969,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "07 Dark Recital Partner - Yellow ",
			["url"] = "https://wago.io/NathriaGlows/27",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.debuff1 = 331637\naura_env.debuff2 = 331636\naura_env.debuffs1 = {}\naura_env.debuffs2 = {}\naura_env.debug = false\n\n\nif aura_env.debug then\n    aura_env.debuff1 = 774\n    aura_env.debuff2 = 8936\n    aura_env.cast = 48438\nend\n\n\n\naura_env.GetFrame = WeakAuras.GetUnitFrame\n\n\n-- Custom Glow\n\nlocal LCG = LibStub(\"LibCustomGlow-1.0\")\nlocal glowTypes = {\"Standard\",\"Pixel\",\"AutoCast\"}\nlocal glowType = glowTypes[aura_env.config.glowType]\n\naura_env.Glow = function(frame,show)\n    if show then\n        if glowType == \"AutoCast\" then\n            LCG.AutoCastGlow_Start(\n                frame,\n                aura_env.config.glowColor,\n                aura_env.config.glowParticules,\n                aura_env.config.glowFrequency,\n                aura_env.config.glowScale,\n                aura_env.config.glowxOffset,\n                aura_env.config.glowyOffset,\n                aura_env.id\n            )\n        elseif glowType == \"Pixel\" then\n            LCG.PixelGlow_Start(\n                frame,\n                aura_env.config.glowColor,\n                aura_env.config.glowParticules,\n                aura_env.config.glowFrequency,\n                aura_env.config.glowLength,\n                aura_env.config.glowThickness,\n                aura_env.config.glowxOffset,\n                aura_env.config.glowyOffset,\n                aura_env.config.glowBorder,\n                aura_env.id\n            )\n        elseif glowType == \"Standard\" then\n            LCG.ButtonGlow_Start(\n                frame,\n                aura_env.config.glowColor,\n                aura_env.config.glowFrequency\n            )\n        end\n    else\n        if glowType == \"AutoCast\" then\n            LCG.AutoCastGlow_Stop(frame, aura_env.id)\n        elseif glowType == \"Pixel\" then\n            LCG.PixelGlow_Stop(frame, aura_env.id)\n        elseif glowType == \"Standard\" then\n            LCG.ButtonGlow_Stop(frame)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["config"] = {
				["glowFrequency"] = 0.3,
				["glowxOffset"] = 0,
				["glowyOffset"] = 0,
				["glowLength"] = 8,
				["glowColor"] = {
					1, -- [1]
					0.96862745098039, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["glowParticules"] = 20,
				["glowThickness"] = 2,
				["glowScale"] = 2,
				["glowType"] = 3,
				["glowBorder"] = false,
			},
			["inverse"] = false,
			["shadowYOffset"] = -1,
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
			["parent"] = "Castle Nathria Glows",
		},
		["09 Rended Heart - Red"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "WQax4p(hryJ",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"334771", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "09 Rended Heart - Red",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["06 Shared Suffering - Yellow"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2406",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "QNq2aTjAgdB",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"324983", -- [1]
							"324982", -- [2]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.89803921568627, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "06 Shared Suffering - Yellow",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["02 Sinseeker - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2418",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "5sIOdD3(9EN",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"335304", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_frequency"] = 0.25,
					["glow_lines"] = 12,
					["custom"] = "",
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_border"] = true,
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "02 Sinseeker - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["05 Volatile Ejection targeted - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2383",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "DrVkZteRvVN",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["groupclone"] = true,
						["duration"] = "1",
						["name_info"] = "aura",
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["use_tooltip"] = false,
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HARMFUL",
						["showClones"] = true,
						["type"] = "custom",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"306163", -- [1]
						},
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["auranames"] = {
						},
						["unit"] = "group",
						["matchesShowOn"] = "showOnActive",
						["events"] = "CHAT_MSG_ADDON",
						["custom"] = "function(states, e, ...)\n    \n    if e == \"CHAT_MSG_ADDON\" then\n        local prefix, msg, _, sender = ...\n        if prefix == \"RELOE_AURA_SYNCH\" then\n            sender = sender or UnitName(\"player\")\n            sender = gsub(sender, \"%-[^|]+\", \"\")\n            if not UnitExists(sender) or not UnitIsVisible(sender) then return end\n            \n            local spell, G, u = strsplit(\" \", msg)\n            if tonumber(spell) == 334064 then\n                states[G] = {\n                    show = true,\n                    unit = u,\n                    duration = 4.5,\n                    expirationTime = GetTime()+4.5,\n                    autoHide = true,\n                    changed = true,\n                }\n                return true\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.9921568627451, -- [2]
						0.9921568627451, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"RELOE_AURA_SYNCH\")\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "05 Volatile Ejection targeted - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Quaking Bar"] = {
			["sparkWidth"] = 3,
			["iconSource"] = 0,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["color"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then\n        return \"20\"\n    else\n        if aura_env.state and aura_env.state.expirationTime then\n            local remaining = aura_env.state.expirationTime - GetTime()\n            \n            return floor(remaining % 20)\n        end\n    end\nend",
			["yOffset"] = 772.9439697265625,
			["anchorPoint"] = "CENTER",
			["borderBackdrop"] = "None",
			["sparkOffsetX"] = 0,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/B1H06AUNM/3",
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
						["type"] = "combatlog",
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
			["internalVersion"] = 45,
			["xOffset"] = 5.3333740234375,
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
			["id"] = "Quaking Bar",
			["barColor"] = {
				0.63529411764706, -- [1]
				0.34117647058824, -- [2]
				0.18823529411765, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
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
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
				["use_size"] = true,
				["affixes"] = {
					["single"] = 14,
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
						["challenge"] = true,
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
				["race"] = {
					["multi"] = {
					},
				},
				["use_affixes"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["displayIcon"] = 136025,
			["desaturate"] = false,
			["backgroundColor"] = {
				0.086274509803922, -- [1]
				0.086274509803922, -- [2]
				0.086274509803922, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["sparkOffsetY"] = 0,
			["icon_side"] = "LEFT",
			["uid"] = "v0WIvsY8rNA",
			["frameStrata"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Norm",
			["anchorFrameType"] = "SCREEN",
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["semver"] = "1.0.0",
			["zoom"] = 0.3,
			["sparkHidden"] = "NEVER",
			["auto"] = false,
			["alpha"] = 1,
			["width"] = 400,
			["spark"] = false,
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
			["config"] = {
			},
		},
		["03 Greater Castigation - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2402",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "mSUk5jzZNNN",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"328889", -- [1]
							"332871", -- [2]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "03 Greater Castigation - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Spiteful"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Spiteful Countdown", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 121.6663818359375,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/yOeM0FVzB/2",
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
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["useLimit"] = false,
			["align"] = "CENTER",
			["rotation"] = 0,
			["version"] = 2,
			["subRegions"] = {
			},
			["borderInset"] = 1,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
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
				["zoneIds"] = "",
			},
			["grow"] = "DOWN",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["limit"] = 5,
			["animate"] = false,
			["selfPoint"] = "TOP",
			["scale"] = 1,
			["xOffset"] = 294.1666259765625,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["internalVersion"] = 45,
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.1",
			["tocversion"] = 90002,
			["id"] = "Spiteful",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
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
			["uid"] = "(TVy)skwDOZ",
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["stagger"] = 0,
		},
		["10 Impale - Red"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2407",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "gXRA1accee5",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"329951", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.007843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "10 Impale - Red",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["nocircle_noleaf_fill 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 6, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
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
						["custom"] = "function(_,button,order)\n    if button == 6 then \n        aura_env.order = order\n        if order == 9 then \n            aura_env.order = \"\"\n        end\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["text_text_format_p_time_format"] = 0,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["uid"] = "dhAZI5EjoCP",
			["selfPoint"] = "CENTER",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["regionType"] = "icon",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\AddOns\\guess\\nocircle_lotus_fill.tga",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [4]
			},
			["auto"] = false,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "nocircle_noleaf_fill 3",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["encounter"] = false,
				["noCommunication"] = false,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\naura_env.noCommunication = aura_env.config['noCommunication']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\nlocal values = {1, 0, 0, 6}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\")\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 6, b)\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\") \n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n            end\n            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")\n                end\n            else         \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n                end\n            end\n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Innervate Receive"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["custom_type"] = "stateupdate",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["events"] = "TOSH_WA_INNRV_GIVE,CLEU:SPELL_AURA_APPLIED",
						["custom"] = "function(allstates, event, ...) -- TOSH_WA_INNRV_GIVE,CLEU:SPELL_AURA_APPLIED\n    local state = allstates[aura_env.spellId]\n    if not state then\n        state = {\n            changed = true,\n            show = false,\n            progressType = \"timed\",\n            autoHide = true,\n            spellId = aura_env.spellId,\n        }\n        allstates[aura_env.spellId] = state\n    end\n    \n    if event == \"TOSH_WA_INNRV_GIVE\" then\n        if state.show then return end -- already being shown\n        \n        local sender = ...\n        \n        if (\n            aura_env.config.assignment ~= \"\" and\n            sender ~= aura_env.config.assignment\n        ) then return end\n        \n        local cdStart, cdDuration = GetSpellCooldown(aura_env.spellId)\n        local cdEnd = cdStart + cdDuration\n        local now = GetTime()\n        -- if spell is within a second, allow it\n        if cdEnd - now > 1 then return end\n        \n        \n        for unit in WA_IterateGroupMembers() do\n            if UnitName(unit) == sender then\n                state.unit = unit\n                state.changed = true\n                state.show = true\n                state.duration = 5\n                state.expirationTime = now + state.duration\n                break\n            end\n        end\n        \n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        if not state.show then return end\n        \n        local args = {...}\n        if args[2] ~= \"SPELL_AURA_APPLIED\" or args[12] ~= aura_env.spellId then return end\n        if UnitGUID(state.unit) == args[8] then\n            state.show = false\n            state.changed = true\n        elseif args[4] == myGUID then\n            state.show = false\n            state.changed = true\n        end\n    end\n    \n    return true\nend",
						["spellIds"] = {
						},
						["check"] = "event",
						["names"] = {
						},
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
			},
			["height"] = 48,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["single"] = 102,
					["multi"] = {
						[102] = true,
						[105] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = true,
				["zoneIds"] = "",
			},
			["anchorFrameType"] = "UNITFRAME",
			["fontSize"] = 12,
			["url"] = "",
			["shadowXOffset"] = 1,
			["cooldown"] = false,
			["fixedWidth"] = 200,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
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
			["config"] = {
				["assignment"] = "",
			},
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["desc"] = "Put the name of your assigned PI target. If set, will ignore other requestors. If empty, will show any requests.",
					["name"] = "Assignment",
					["key"] = "assignment",
					["default"] = "",
					["length"] = 10,
					["multiline"] = false,
					["useLength"] = false,
				}, -- [1]
			},
			["displayText_format_p_time_precision"] = 1,
			["frameStrata"] = 1,
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "Innervate Receive",
			["actions"] = {
				["start"] = {
					["do_loop"] = true,
					["glow_action"] = "show",
					["sound_repeat"] = 2,
					["glow_color"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["do_glow"] = true,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\ESPARK1.ogg",
					["custom"] = "local region = aura_env.region\n\nlocal unit = region.state and region.state.unit\nif not unit then return end\n\nlocal frame = WeakAuras.GetUnitFrame(unit)\nif not frame then return end\n\nregion:SetParent(frame)\nregion:ClearAllPoints()\nregion:SetAllPoints(frame)",
					["do_sound"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "ACShine",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "aura_env.spellId = 29166 -- Innervate\n\nlocal AceComm = LibStub(\"AceComm-3.0\")\n\nlocal function OnCommReceived(prefix, message, _, sender)\n    if prefix ~= \"TOSH_WA\" then return end\n    local subtype, msg = message:match(\"^(.+):(.+)$\")\n    if subtype ~= \"INNRV\" then return end\n    WeakAuras.ScanEvents(\"TOSH_WA_INNRV_GIVE\", sender)\nend\n\nAceComm:RegisterComm(\"TOSH_WA\", OnCommReceived)",
				},
				["finish"] = {
					["hide_all_glows"] = true,
					["custom"] = "local region = aura_env.region\nregion:ClearAllPoints()",
					["do_custom"] = false,
				},
			},
			["alpha"] = 1,
			["width"] = 76,
			["conditions"] = {
			},
			["uid"] = "MpP)zIHaoUL",
			["inverse"] = false,
			["shadowYOffset"] = -1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "136048",
			["information"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
		},
		["10 Searing Censure - Teal"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2407",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "bW28OeyFk5j",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"341732", -- [1]
							"341426", -- [2]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						0.89411764705882, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "10 Searing Censure - Teal",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["Impale Positions"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
				"Position", -- [1]
				"Mirror Text", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/sFnb6lvjO/5",
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
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
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
			["radius"] = 200,
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
			["rotation"] = 0,
			["version"] = 5,
			["subRegions"] = {
			},
			["borderInset"] = 1,
			["xOffset"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
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
			["limit"] = 5,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 45,
			["animate"] = false,
			["customGrow"] = "function(newPos, activeReg)\n    for i, region in ipairs(activeReg) do\n        if (region.region.header) then\n            newPos[i] = {\n                0,\n                150\n            }\n        elseif (region.region.state) then\n            local pos = region.region.state.position\n            local x,y = 0, 0\n            if (pos == 1) then\n                x = -200\n                y = -75\n            elseif (pos == 2) then\n                x = -200\n                y = 75\n            elseif (pos == 3) then\n                x = 200\n                y = 75\n            elseif (pos == 4) then\n                x = 200\n                y = -75\n            end\n            \n            newPos[i] = {x,y}\n        end\n    end\nend",
			["scale"] = 1,
			["stagger"] = 0,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["fullCircle"] = true,
			["gridType"] = "RD",
			["constantFactor"] = "RADIUS",
			["config"] = {
			},
			["borderOffset"] = 4,
			["semver"] = "1.0.4",
			["tocversion"] = 90005,
			["id"] = "Impale Positions",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["arcLength"] = 360,
			["uid"] = "uHuvwogd1WJ",
			["selfPoint"] = "CENTER",
			["useLimit"] = false,
			["conditions"] = {
			},
			["information"] = {
			},
			["space"] = 2,
		},
		["06 Shared Cognition - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2406",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "AQfauLjD2bf",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"325908", -- [1]
							"325936", -- [2]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "06 Shared Cognition - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Golden Mission Table Helper"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    if aura_env.state and aura_env.state.percent then\n        if aura_env.state.select then\n            return \"SELECT TROOPS\"\n        end\n        \n        local percent = aura_env.state.percent\n        local result = percent > 0 and \"WIN\" or percent == 0 and \"DRAW\" or \"LOSE\"\n        local digit = percent > 0 and \"+\" or \"\"\n        return (\"%s: %s%s\"):format(result, digit, percent)\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "TOP",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/FTT0P82zx/12",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if not aura_env.region.hook then\n    aura_env.region.hook = true\n    local func = function() \n        C_Timer.After(0.1, function() WeakAuras.ScanEvents(\"GO_FARM_ANIME\", true) end)\n    end\n    \n    LoadAddOn(\"Blizzard_GarrisonUI\")\n    \n    CovenantMissionFrame.MissionTab.MissionPage.Board:HookScript('OnShow', func)\n    CovenantMissionFrame.MissionTab.MissionPage.Board:HookScript('OnHide', func)\nend",
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
						["customVariables"] = "{\n    percent = \"number\",\n    select = \"bool\",\n}",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["customName"] = "\n\n",
						["events"] = "GARRISON_MISSION_NPC_OPENED GARRISON_SHIPYARD_NPC_CLOSED GARRISON_FOLLOWER_LIST_UPDATE GO_FARM_ANIME",
						["names"] = {
						},
						["check"] = "event",
						["custom"] = "function(s, e, ...)\n    if e == \"GARRISON_MISSION_NPC_OPENED\"\n    or e == \"GARRISON_SHIPYARD_NPC_CLOSED\"\n    or e == \"GARRISON_FOLLOWER_LIST_UPDATE\"\n    then\n        C_Timer.After(0.1, function() WeakAuras.ScanEvents(\"GO_FARM_ANIME\", true) end)\n    elseif e == \"GO_FARM_ANIME\" and ... then\n        if CovenantMissionFrame\n        and CovenantMissionFrame:IsVisible()\n        and CovenantMissionFrame.MissionTab\n        and CovenantMissionFrame.MissionTab.MissionPage\n        and CovenantMissionFrame.MissionTab.MissionPage.Stage\n        and CovenantMissionFrame.MissionTab.MissionPage.Stage:IsVisible()\n        and CovenantMissionFrame.MissionTab.MissionPage.Board\n        and CovenantMissionFrame.MissionTab.MissionPage.Board:IsVisible()\n        then\n            local stage = CovenantMissionFrame.MissionTab.MissionPage.Stage\n            local board = CovenantMissionFrame.MissionTab.MissionPage.Board\n            local percent = 0\n            \n            local eHP = stage.EnemyHealthValue and stage.EnemyHealthValue:GetText():gsub(',','') or 0\n            local eDMG = stage.EnemyPowerValue and stage.EnemyPowerValue:GetText():gsub(',','') or 0\n            \n            local aHP = board.AllyHealthValue and board.AllyHealthValue:GetText():gsub(',','') or 0\n            local aDMG = board.AllyPowerValue and board.AllyPowerValue:GetText():gsub(',','') or 0\n            \n            \n            if tonumber(aDMG) > 0 then\n                if ( (aHP/eDMG) - (eHP/aDMG) ) >= 0 then\n                    percent = math.ceil( (aHP/eDMG) - (eHP/aDMG) )\n                else\n                    percent = math.floor( (aHP/eDMG) - (eHP/aDMG) )\n                end\n            end\n            \n            s[\"\"] = {\n                percent = percent,\n                select = tonumber(aDMG) == 0,\n                progressType = \"static\",\n                changed = true,\n                show = true,\n            }\n            return true\n        elseif s[\"\"] then\n            s[\"\"] = {\n                changed = true,\n                show = false,\n            }\n            return true\n        end\n    end\nend",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["wordWrap"] = "WordWrap",
			["font"] = "1Bignoodle",
			["version"] = 12,
			["subRegions"] = {
			},
			["load"] = {
				["use_zone"] = false,
				["use_zoneIds"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "1698,1707,1699,1701,1565,1533",
			},
			["fontSize"] = 40,
			["shadowXOffset"] = 1,
			["anchorFrameFrame"] = "CovenantMissionFrame",
			["regionType"] = "text",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "percent",
						["value"] = "0",
					},
					["linked"] = false,
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "percent",
						["value"] = "0",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "percent",
						["value"] = "0",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "select",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.61960784313725, -- [1]
								0.61960784313725, -- [2]
								0.61960784313725, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
			},
			["selfPoint"] = "BOTTOM",
			["preferToUpdate"] = true,
			["displayText_format_p_time_precision"] = 1,
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
			["xOffset"] = 0,
			["justify"] = "LEFT",
			["semver"] = "1.0.11",
			["tocversion"] = 90002,
			["id"] = "Golden Mission Table Helper",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["authorOptions"] = {
			},
			["uid"] = "LTx0bgl)k0q",
			["automaticWidth"] = "Auto",
			["shadowYOffset"] = -1,
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
			["displayText_format_p_time_dynamic_threshold"] = 60,
		},
		["Targeted Spells"] = {
			["text2Point"] = "CENTER",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Dungeon - Targeted Spells",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.stacks and aura_env.state.stacks > 1 then\n        return aura_env.state.stacks\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["text1Font"] = "Friz Quadrata TT",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "\n\n",
					["glow_action"] = "show",
					["do_custom"] = false,
					["sound"] = " custom",
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
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["event"] = "Health",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
						["events"] = "UNIT_SPELLCAST_CHANNEL_START UNIT_SPELLCAST_CHANNEL_STOP UNIT_SPELLCAST_CHANNEL_UPDATE UNIT_SPELLCAST_DELAYED UNIT_SPELLCAST_FAILED UNIT_SPELLCAST_FAILED_QUIET UNIT_SPELLCAST_INTERRUPTED UNIT_SPELLCAST_START UNIT_SPELLCAST_STOP UNIT_TARGET ENCOUNTER_END",
						["custom"] = "function(allstates, event, sourceUnit)\n    if not aura_env.loaded then return false end\n    if event == \"ENCOUNTER_END\" then\n        -- reset aura state to avoid ghost icons between pulls\n        aura_env.allcasts = {}\n        for _,state in pairs(allstates) do\n            state.show = false\n            state.changed = true\n        end\n        return true\n    end\n    if sourceUnit and UnitIsEnemy(sourceUnit, \"player\") then\n        local allcasts = aura_env.allcasts\n        local sourceGUID = UnitGUID(sourceUnit)\n        local iconChanged = false\n        local cast = allcasts[sourceGUID]\n        \n        if event == \"UNIT_SPELLCAST_START\"\n        or event == \"UNIT_SPELLCAST_DELAYED\" \n        or event == \"UNIT_SPELLCAST_CHANNEL_START\"\n        or event == \"UNIT_SPELLCAST_CHANNEL_UPDATE\"\n        or event == \"UNIT_TARGET\"\n        then\n            if not cast then\n                -- check if unit is casting\n                local castType\n                local name,_,texture,castStart,castEnd,_,_,notInterruptible,spellId = UnitCastingInfo(sourceUnit)\n                if name then\n                    castType = \"cast\"\n                else\n                    name,_,texture,castStart,castEnd,_,notInterruptible,spellId = UnitChannelInfo(sourceUnit)\n                    if name then\n                        castType = \"channel\"\n                    end\n                end\n                \n                if spellId and not aura_env.isBlackListed(spellId, sourceUnit) then\n                    local spellInList = aura_env.spells[spellId]\n                    -- find npc's target\n                    local targetUnit = sourceUnit..\"target\"\n                    if UnitExists(targetUnit) then\n                        for groupmember in WA_IterateGroupMembers() do\n                            if UnitIsUnit(targetUnit, groupmember) then\n                                local targetGUID = UnitGUID(groupmember)\n                                local targeted = targetGUID == WeakAuras.myGUID\n                                local showIcon = (spellInList and spellInList.icon) or (not spellInList and aura_env.config.icon.enable)\n                                local showGlow = spellInList and spellInList.glow\n                                local playSound = targeted and spellInList and spellInList.sound\n                                local bigIcon = targeted and spellInList and spellInList.bigIcon\n                                allcasts[sourceGUID] = {\n                                    name = name,\n                                    icon = texture,\n                                    start = castStart/1000,\n                                    expirationTime = castEnd/1000,\n                                    spellId = spellId,\n                                    target = groupmember,\n                                    targetGUID = targetGUID,\n                                    targeted = targeted,\n                                    spellInList = spellInList,\n                                    notInterruptible = notInterruptible,\n                                    castType = castType,\n                                    showIcon = showIcon,\n                                    showGlow = showGlow,\n                                    bigIcon = bigIcon,\n                                    playSound = playSound\n                                }\n                                iconChanged = true\n                                break\n                            end\n                        end\n                    end\n                end\n            else\n                if UnitExists(sourceUnit) then\n                    if event == \"UNIT_SPELLCAST_DELAYED\" \n                    or event == \"UNIT_SPELLCAST_CHANNEL_UPDATE\"\n                    or event == \"UNIT_SPELLCAST_CHANNEL_START\"\n                    then\n                        local castType\n                        local name,_,_,castStart,castEnd,_,_,notInterruptible,spellId = UnitCastingInfo(sourceUnit)\n                        if name then\n                            castType = \"cast\"\n                        else\n                            name,_,_,castStart,castEnd,_,notInterruptible,spellId = UnitChannelInfo(sourceUnit)\n                            if name then\n                                castType = \"channel\"\n                            end\n                        end\n                        if spellId then\n                            cast.notInterruptible = notInterruptible\n                            cast.castType = castType\n                            cast.start = castStart/1000\n                            cast.expirationTime = castEnd/1000\n                            cast.changed = true\n                            iconChanged = true\n                        end\n                    elseif event == \"UNIT_TARGET\" then\n                        local targetUnit = sourceUnit..\"target\"\n                        if UnitExists(targetUnit) then\n                            for groupmember in WA_IterateGroupMembers() do\n                                if UnitIsUnit(targetUnit, groupmember) then\n                                    local targetGUID = UnitGUID(groupmember)\n                                    local targeted = targetGUID == WeakAuras.myGUID\n                                    local spellId = cast.spellId\n                                    cast.changed = true\n                                    cast.target = groupmember\n                                    cast.targetGUID = targetGUID\n                                    cast.targeted = targeted\n                                    \n                                    iconChanged = true\n                                    break\n                                end\n                            end\n                        end\n                    end\n                end\n            end\n        elseif cast then\n            if event == \"UNIT_SPELLCAST_STOP\" --  or event == \"UNIT_SPELLCAST_SUCCEEDED\"\n            or event == \"UNIT_SPELLCAST_INTERRUPTED\"\n            or event == \"UNIT_SPELLCAST_FAILED\"\n            or event == \"UNIT_SPELLCAST_FAILED_QUIET\"\n            or event == \"UNIT_SPELLCAST_CHANNEL_STOP\"\n            then\n                allcasts[sourceGUID] = nil\n                iconChanged = true\n            end\n        end\n        \n        if iconChanged then\n            local change = false\n            -- update allstates from allcasts\n            for sourceGUID, cast in pairs(allcasts) do\n                -- index for allstates is \"spellId_targetGUID\"\n                local index = (\"%s_%s\"):format(cast.spellId, cast.targetGUID)\n                \n                local state = allstates[index]\n                \n                if state and state.show then\n                    state.casts[sourceGUID] = true\n                    if cast.expirationTime > state.expirationTime then\n                        state.expirationTime = cast.expirationTime\n                        state.changed = true\n                        change = true\n                    end\n                else\n                    allstates[index] = {\n                        show = true,\n                        name = cast.name,\n                        icon = cast.icon,\n                        changed = true,\n                        autoHide = true,\n                        progressType = \"timed\",\n                        duration = cast.expirationTime - cast.start,\n                        expirationTime = cast.expirationTime,\n                        spellId = cast.spellId,\n                        castType = cast.castType,\n                        notInterruptible = cast.notInterruptible,\n                        target = cast.target,\n                        unit = cast.showIcon and cast.target,\n                        targetGUID = cast.targetGUID,\n                        casts = {\n                            [sourceGUID] = true\n                        },\n                        targeted = cast.targeted,\n                        showGlow = cast.showGlow,\n                        playSound = cast.playSound,\n                        bigIcon = cast.bigIcon,\n                        showIcon = cast.showIcon,\n                    }\n                    change = true\n                end\n            end\n            \n            -- count how much of the same cast is showing each icon\n            -- remove casts stopped from state.casts\n            -- remove state if state.casts is empty\n            for index, state in pairs(allstates) do \n                if state.show and state.showIcon then\n                    local countcasts = 0\n                    for sourceGUID,_ in pairs(state.casts) do\n                        local cast = allcasts[sourceGUID]\n                        if not cast\n                        or (cast and cast.targetGUID ~= state.targetGUID)\n                        then\n                            state.casts[sourceGUID] = nil\n                        else \n                            countcasts = countcasts + 1\n                        end\n                    end\n                    if state.stacks ~= countcasts then\n                        state.stacks = countcasts\n                        state.changed = true\n                        change = true\n                    end\n                    -- hide if no cast\n                    if countcasts == 0 then\n                        state.show = false \n                        state.changed = true\n                        change = true\n                    end\n                end\n            end\n            if change then\n                return true \n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "event",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["customVariables"] = "{\n    targeted = {\n        display = \"Targeted\",\n        type = \"bool\"\n    },\n    playSound = {\n        display = \"Play Sound\",\n        type = \"bool\"\n    },\n    showGlow = {\n        display = \"Glow\",\n        type = \"bool\"\n    },\n    bigIcon = {\n        display = \"Big Icon\",\n        type = \"bool\"\n    },\n    spellId = {\n        display = \"Spell Id\",\n        type = \"number\"\n    },\n    notInterruptible = {\n        display = \"Not Interruptible\",\n        type = \"bool\"\n    },\n    castType = {\n        display = \"Cast Type\",\n        type = \"select\",\n        values = {\n            [\"cast\"] = \"Cast\",\n            [\"channel\"] = \"Channeling\"\n        }\n    }\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/BFADungeonTargetedSpells/68",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["alpha"] = 1,
			["stickyDuration"] = false,
			["internalVersion"] = 45,
			["text1Point"] = "BOTTOM",
			["version"] = 68,
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
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["ratedpvp"] = true,
						["flexible"] = true,
						["ratedarena"] = true,
						["none"] = true,
						["arena"] = true,
						["party"] = true,
						["pvp"] = true,
					},
				},
				["race"] = {
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
				["role"] = {
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["zoneIds"] = "",
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "OUTSIDE",
			["uid"] = "pWfZPrRiJzV",
			["text2FontSize"] = 24,
			["anchorFrameFrame"] = "UIParent",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%c",
			["width"] = 20,
			["frameStrata"] = 6,
			["cooldownTextDisabled"] = true,
			["useGlowColor"] = true,
			["tocversion"] = 90002,
			["id"] = "Targeted Spells",
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
					["key"] = "icon",
					["name"] = "Cast icons on Unit Frames",
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
							["key"] = "spellId",
							["name"] = "Spell Id",
							["default"] = 0,
						}, -- [1]
						{
							["type"] = "input",
							["useDesc"] = false,
							["width"] = 1,
							["key"] = "desc",
							["default"] = "",
							["multiline"] = false,
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
					["hideReorder"] = false,
					["useDesc"] = false,
					["nameSource"] = 2,
					["width"] = 1,
					["useCollapse"] = true,
					["collapse"] = false,
					["name"] = "Spells",
					["key"] = "spells",
					["limitType"] = "none",
					["groupType"] = "array",
					["type"] = "group",
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
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["auto"] = true,
			["config"] = {
				["icon"] = {
					["enable"] = true,
				},
				["spells"] = {
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Season 4 Affix ==",
					}, -- [1]
					{
						["spellId"] = 314406,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Crippling Pestilence",
					}, -- [2]
					{
						["spellId"] = 314411,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Lingering Doubt",
					}, -- [3]
					{
						["spellId"] = 314592,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							false, -- [4]
						},
						["desc"] = "Mind Flay",
					}, -- [4]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== The Necrotic Wake ==",
					}, -- [5]
					{
						["spellId"] = 334748,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Corpse Harvester - Drain Fluids",
					}, -- [6]
					{
						["spellId"] = 323496,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Flesh Crafter - Throw Cleaver",
					}, -- [7]
					{
						["spellId"] = 322681,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Surgeon Stitchflesh - Meat Hook",
					}, -- [8]
					{
						["spellId"] = 343558,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Surgeon Stitchflesh - Morbid Fixation",
					}, -- [9]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Plaguefall ==",
					}, -- [10]
					{
						["spellId"] = 329217,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Doctor Ickus - Slime Lunge",
					}, -- [11]
					{
						["spellId"] = 325245,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Domina Venomblade - Shadow Ambush",
					}, -- [12]
					{
						["spellId"] = 334900,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Venomous Sniper - Venompiercer",
					}, -- [13]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Mists of Tirna Scithe ==",
					}, -- [14]
					{
						["spellId"] = 322648,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Tred'ova - Mind Link",
					}, -- [15]
					{
						["spellId"] = 337235,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Tred'ova - Parasitic Pacification",
					}, -- [16]
					{
						["spellId"] = 337251,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Tred'ova - Parasitic Incapacitation",
					}, -- [17]
					{
						["spellId"] = 337255,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Tred'ova - Parasitic Domination",
					}, -- [18]
					{
						["spellId"] = 322487,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Tirnenn Villager - Overgrowth",
					}, -- [19]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Halls of Atonement ==",
					}, -- [20]
					{
						["spellId"] = 323538,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "High Adjudicator Aleez - Bolt of Power",
					}, -- [21]
					{
						["spellId"] = 323143,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Lord Chamberlain - Telekinetic Toss",
					}, -- [22]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== De Other Side ==",
					}, -- [23]
					{
						["spellId"] = 320008,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "The Manastorms - Frostbolt",
					}, -- [24]
					{
						["spellId"] = 334076,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Death Speaker - Shadowcore",
					}, -- [25]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Sanguine Depths ==",
					}, -- [26]
					{
						["spellId"] = 319650,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Kryxis the Voracious - Vicious Headbutt",
					}, -- [27]
					{
						["spellId"] = 319713,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Kryxis the Voracious - Juggernaut Rush",
					}, -- [28]
					{
						["spellId"] = 322554,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Executor Tarvold - Castigate",
					}, -- [29]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Spires of Ascension ==",
					}, -- [30]
					{
						["spellId"] = 324608,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Oryphrion - Charged Stomp",
					}, -- [31]
					{
						["spellId"] = 314411,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Devos, Paragon of Doubt - Lingering Doubt",
					}, -- [32]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Theater of Pain ==",
					}, -- [33]
					{
						["spellId"] = 320120,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "An Affront of Challengers - Plague Bolt",
					}, -- [34]
					{
						["spellId"] = 319669,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Kul'tharok - Spectral Reach",
					}, -- [35]
					{
						["spellId"] = 48181,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Kul'tharok - Haunt",
					}, -- [36]
					{
						["spellId"] = 0,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "== Torghast == ",
					}, -- [37]
					{
						["spellId"] = 329322,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Arch-Suppressor Laguas - Soul Bolt",
					}, -- [38]
					{
						["spellId"] = 330755,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Observer Zelgar - Focused Blast",
					}, -- [39]
					{
						["spellId"] = 346813,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Tower Sentinel - Massive Crush",
					}, -- [40]
					{
						["spellId"] = 329609,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Runecarved Colossus - Ravage",
					}, -- [41]
					{
						["spellId"] = 315802,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Empowered Mawsworn Interceptor - Crippler",
					}, -- [42]
					{
						["spellId"] = 292926,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
						},
						["desc"] = "Lord of Torment - Eternal Torment",
					}, -- [43]
				},
			},
			["inverse"] = false,
			["glowParticules"] = 4,
			["text2"] = "%p",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["semver"] = "3.0.6",
		},
		["02 Petrifying Howl - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2418",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "m689yMCiUWp",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"334852", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_frequency"] = 0.25,
					["glow_lines"] = 12,
					["custom"] = "",
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_border"] = true,
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "02 Petrifying Howl - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["06 Concentrate Anima - Green"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2406",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "Tarb(Qq3Z05",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"332664", -- [1]
							"340477", -- [2]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						1, -- [2]
						0.019607843137255, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "06 Concentrate Anima - Green",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
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
			["internalVersion"] = 45,
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
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["role"] = {
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_size"] = true,
				["zoneIds"] = "",
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
			["url"] = "https://wago.io/ByQSAbqBm/5",
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
		["08 Hateful Gaze - Pink"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2399",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "DHWe74mdyAI",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"331209", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0, -- [2]
						0.8156862745098, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "08 Hateful Gaze - Pink",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["03 Ember Blast - Green"] = {
			["outline"] = "OUTLINE",
			["parent"] = "Castle Nathria Glows",
			["displayText"] = " ",
			["customText"] = "\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						1, -- [2]
						0.082352941176471, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["subeventPrefix"] = "SPELL",
						["duration"] = "3.5",
						["event"] = "Chat Message",
						["names"] = {
						},
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["events"] = "UNIT_TARGET:boss UNIT_SPELLCAST_SUCCEEDED:boss UNIT_SPELLCAST_STOP:boss UNIT_SPELLCAST_FAILED:boss",
						["custom"] = "function(allstates, event, unit, _, spellID)    \n    if event == \"UNIT_TARGET\" and unit and UnitExists(unit..\"target\") then\n        local _, _, _, _, expires, _, _, _, castID = UnitCastingInfo(unit)\n        if castID == 325877 then\n            local duration = expires/1000 - GetTime()\n            if not allstates[\"\"] then\n                allstates[\"\"] = {\n                    show = true,\n                    changed =  true,\n                    progressType = \"timed\", \n                    duration = duration,\n                    expirationTime = duration+GetTime(),\n                    autoHide = true,\n                    unit = unit..\"target\",\n                }\n            else\n                allstates[\"\"].show = true\n                allstates[\"\"].duration = duration\n                allstates[\"\"].expirationTime = duration+GetTime()\n                allstates[\"\"].unit = unit..\"target\"\n                allstates[\"\"].changed = true\n            end\n            return true\n        end\n    end\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_STOP\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        if UnitExists(unit) and spellID == 325877 then\n            if allstates[\"\"] then\n                allstates[\"\"].show = false\n                allstates[\"\"].changed = true\n                return true\n            end\n        end\n    end\nend",
						["check"] = "event",
						["unit"] = "player",
						["customVariables"] = "",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
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
			["cooldownTextDisabled"] = false,
			["xOffset"] = 0,
			["stickyDuration"] = false,
			["cooldown"] = true,
			["font"] = "Friz Quadrata TT",
			["version"] = 27,
			["subRegions"] = {
			},
			["height"] = 75,
			["fixedWidth"] = 200,
			["load"] = {
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2402",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["preferToUpdate"] = true,
			["conditions"] = {
			},
			["fontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["shadowXOffset"] = 1,
			["authorOptions"] = {
			},
			["width"] = 75,
			["frameStrata"] = 1,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["url"] = "https://wago.io/NathriaGlows/27",
			["auto"] = false,
			["semver"] = "1.0.26",
			["displayText_format_p_time_precision"] = 1,
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["zoom"] = 0.3,
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "03 Ember Blast - Green",
			["wordWrap"] = "WordWrap",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["uid"] = "7UopV8f635g",
			["inverse"] = false,
			["shadowYOffset"] = -1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 607865,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
		},
		["02 Jagged Claws High Stacks - Orange"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2418",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "t(HNhotIrsu",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["useMatch_count"] = true,
						["useStacks"] = true,
						["useGroup_count"] = false,
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["stacks"] = "4",
						["match_countOperator"] = ">=",
						["custom_hide"] = "timed",
						["match_count"] = "1",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"334971", -- [1]
						},
						["use_tooltip"] = false,
						["unevent"] = "timed",
						["event"] = "Health",
						["use_specific_unit"] = false,
						["duration"] = "1",
						["unit"] = "group",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["stacksOperator"] = ">=",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["custom_type"] = "stateupdate",
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.49411764705882, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "02 Jagged Claws High Stacks - Orange",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Reset 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 10,
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["type"] = "subborder",
					["border_offset"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["width"] = 300,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["cooldownTextDisabled"] = false,
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["mirror"] = false,
			["displayIcon"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				0.57647058823529, -- [2]
				0.71372549019608, -- [3]
				0.80000001192093, -- [4]
			},
			["blendMode"] = "BLEND",
			["rotation"] = 0,
			["config"] = {
				["debug"] = false,
				["eLang"] = 1,
				["useEng"] = false,
				["encounter"] = false,
				["noCommunication"] = false,
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["frameStrata"] = 1,
			["zoom"] = 1,
			["auto"] = false,
			["tocversion"] = 90005,
			["id"] = "Reset 3",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "useEng",
					["desc"] = "(Overwrites selection below)",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use English instead of Client Regional Language",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "select",
					["values"] = {
						"Use Client Region Language", -- [1]
						"Dutch", -- [2]
						"Norwegian (Bokmål)", -- [3]
						"Hungarian", -- [4]
					},
					["default"] = 1,
					["key"] = "eLang",
					["useDesc"] = false,
					["name"] = "Language (non-client region Language)",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [5]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "2.0.2",
			["uid"] = "gwvcSCXq0)t",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.noCommunication = aura_env.config['noCommunication']\naura_env.useEng = aura_env.config['useEng']\naura_env.eLang = aura_env.config['eLang']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.resetText = \"Reset\"\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\n    aura_env.resetText = \"초기화\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\n    aura_env.resetText = \"Reset\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\n    aura_env.resetText = \"Zurücksetzen\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\n    aura_env.resetText = \"重置\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\n    aura_env.resetText = \"Resetear\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\n    aura_env.resetText = \"重置\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\n    aura_env.resetText = \"Reiniciar\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\n    aura_env.resetText = \"Сброс\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\n    aura_env.resetText = \"Resetar\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\n    aura_env.resetText = \"Reset\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\" \nend\nif aura_env.eLang == 2 and not aura_env.useEng then --Dutch\n    aura_env.resetText = \"Reset\"\nelseif aura_env.eLang == 3 and not aura_env.useEng then --Norwegian\n    aura_env.resetText = \"Tilbakestill\"\nelseif aura_env.eLang == 4 and not aura_env.useEng then --Hungarian\n    aura_env.resetText = \"Töröl\"\nend\nif aura_env.useEng then \n    aura_env.resetText = \"Reset\" \nend\n\nlocal values = {9, 9, 9, 9}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\")\n    aura_env.frameData = b\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function()\n            if debug then print(\"Click Registered - true\") end\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message, \"WHISPER\", name)\n            end\n            WeakAuras.ScanEvents(\"GlowReset\")            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function()\n            if debug then print(\"Click Registered - true\") end\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message, \"PARTY\")\n                end\n            else               \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message, \"WHISPER\", name)\n                end\n            end\n            WeakAuras.ScanEvents(\"GlowReset\", true)\n    end)\nend\naura_env.LCG = LibStub(\"LibCustomGlow-1.0\")",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["url"] = "https://wago.io/hVLym_eLv/67",
		},
		["05 Volatile Ejection targeted AND Miasma - Big"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2383",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "B2VVGzOK3he",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["groupclone"] = true,
						["duration"] = "1",
						["name_info"] = "aura",
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["use_tooltip"] = false,
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HARMFUL",
						["showClones"] = true,
						["type"] = "custom",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"306163", -- [1]
						},
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["auranames"] = {
						},
						["unit"] = "group",
						["matchesShowOn"] = "showOnActive",
						["events"] = "CHAT_MSG_ADDON",
						["custom"] = "function(states, e, ...)\n    \n    if e == \"CHAT_MSG_ADDON\" then\n        local prefix, msg, _, sender = ...\n        if prefix == \"RELOE_AURA_SYNCH\" then\n            sender = sender or UnitName(\"player\")\n            sender = gsub(sender, \"%-[^|]+\", \"\")\n            if not UnitExists(sender) or not UnitIsVisible(sender) then return end\n            \n            local spell, G, u = strsplit(\" \", msg)\n            \n            if tonumber(spell) == 334064 and WA_GetUnitDebuff(u, 329298) then\n                states[G] = {\n                    show = true,\n                    unit = u,\n                    duration = 4.5,\n                    expirationTime = GetTime()+4.5,\n                    autoHide = true,\n                    changed = true,\n                }\n                return true\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.9921568627451, -- [2]
						0.9921568627451, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "ACShine",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"RELOE_AURA_SYNCH\")\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "05 Volatile Ejection targeted AND Miasma - Big",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["01 Exsanguinated High Stacks - Black"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2398",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "ibWR0uHZ2Ds",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["useMatch_count"] = true,
						["useStacks"] = true,
						["useGroup_count"] = false,
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["stacks"] = "7",
						["match_countOperator"] = ">=",
						["custom_hide"] = "timed",
						["match_count"] = "1",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"328897", -- [1]
						},
						["use_tooltip"] = false,
						["unevent"] = "timed",
						["event"] = "Health",
						["use_specific_unit"] = false,
						["duration"] = "1",
						["unit"] = "group",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["stacksOperator"] = ">=",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["custom_type"] = "stateupdate",
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.2,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "01 Exsanguinated High Stacks - Black",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Next Fever"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 0,
			["yOffset"] = 370.00048828125,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "addons",
						["spellId"] = "347350",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "BigWigs Timer",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 45,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "FEVER",
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
					["text_fontType"] = "None",
					["text_shadowYOffset"] = -1,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
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
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_n_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_p_format"] = "timed",
					["text_fontType"] = "None",
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
				{
					["glowFrequency"] = 0.3,
					["glow"] = false,
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowThickness"] = 2,
					["glowXOffset"] = 0,
					["glow_anchor"] = "bar",
					["glowScale"] = 1,
					["glowLines"] = 18,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 32,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["encounterid"] = "2412",
				["zoneIds"] = "",
				["use_encounterid"] = true,
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["zoom"] = 0,
			["iconSource"] = -1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["icon"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon_side"] = "RIGHT",
			["authorOptions"] = {
			},
			["sparkHeight"] = 30,
			["texture"] = "Smooth v2",
			["sparkHidden"] = "NEVER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Next Fever",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 324,
			["frameStrata"] = 1,
			["uid"] = "Sd0qe0TAQEd",
			["inverse"] = false,
			["config"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "expirationTime",
						["op"] = "<=",
						["value"] = "12",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
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
		["08 Chain Partner - Green"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["xOffset"] = -542.00009155273,
			["preferToUpdate"] = true,
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["actions"] = {
				["start"] = {
					["glow_lines"] = 12,
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_frame_type"] = "UNITFRAME",
					["do_glow"] = true,
					["glow_border"] = true,
					["custom"] = "",
					["glow_type"] = "Pixel",
					["glow_frequency"] = 0.25,
					["use_glow_color"] = true,
					["do_custom"] = false,
					["glow_color"] = {
						0, -- [1]
						1, -- [2]
						0.10196078431373, -- [3]
						1, -- [4]
					},
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
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
				["encounterid"] = "2399",
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
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
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "QTuppwQ4c5i",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["matchesShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["groupclone"] = true,
						["ownOnly"] = true,
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["unit"] = "group",
						["use_tooltip"] = false,
						["unevent"] = "timed",
						["useExactSpellId"] = false,
						["match_count"] = "1",
						["useName"] = true,
						["auraspellids"] = {
							"335470", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["match_countOperator"] = ">=",
						["custom_type"] = "stateupdate",
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["use_specific_unit"] = false,
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_hide"] = "timed",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"Chain Link", -- [1]
						},
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Castle Nathria Glows",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Point"] = "CENTER",
			["displayText"] = " ",
			["authorOptions"] = {
			},
			["zoom"] = 0,
			["icon"] = true,
			["text1Enabled"] = true,
			["text1"] = "%n",
			["displayIcon"] = 841384,
			["width"] = 6.9999866485596,
			["semver"] = "1.0.26",
			["justify"] = "LEFT",
			["text2"] = "%p",
			["id"] = "08 Chain Partner - Green",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 9,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text1Font"] = "Friz Quadrata TT",
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
			["config"] = {
			},
		},
		["Innervate Send"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["authorOptions"] = {
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = "To use, add to a macro (or create a new one):\n\n/script WeakAuras.ScanEvents(\"TOSH_WA_INNRV_ASK\")\n",
					["width"] = 2,
				}, -- [1]
			},
			["displayText"] = "",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "local AceComm = LibStub(\"AceComm-3.0\")\n\nfunction aura_env:Request()\n    local dist = \"PARTY\"\n    if IsInRaid() then\n        dist = \"RAID\"\n    elseif IsInGroup() == \"LE_PARTY_CATEGORY_INSTANCE\" then\n        dist = \"INSTANCE_CHAT\"\n    end\n    AceComm:SendCommMessage(\"TOSH_WA\", \"INNRV:me\", dist)\nend",
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["events"] = "TOSH_WA_INNRV_ASK",
						["spellIds"] = {
						},
						["custom"] = "function(event, ...)\n    if event == \"TOSH_WA_INNRV_ASK\" then\n        aura_env:Request()\n    end\nend\n",
						["custom_type"] = "event",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
			},
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["fontSize"] = 12,
			["cooldownTextDisabled"] = false,
			["shadowXOffset"] = 1,
			["automaticWidth"] = "Auto",
			["cooldown"] = false,
			["fixedWidth"] = 200,
			["regionType"] = "text",
			["xOffset"] = 0,
			["cooldownEdge"] = false,
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
			["config"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["justify"] = "LEFT",
			["selfPoint"] = "CENTER",
			["id"] = "Innervate Send",
			["yOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 64,
			["icon"] = true,
			["uid"] = "QOZljllHaQn",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
		},
		["09 Wicked Blade - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "7DVVseMGXho",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"333377", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "09 Wicked Blade - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["Castle Nathria Glows"] = {
			["controlledChildren"] = {
				"01 Echolocation - White", -- [1]
				"01 Blood Lantern - Green", -- [2]
				"01 Horrified - Red", -- [3]
				"01 Exsanguinated High Stacks - Black", -- [4]
				"02 Sinseeker - White", -- [5]
				"02 Sinseeker Targeted - Pink", -- [6]
				"02 Vicious Lunge - Green", -- [7]
				"02 Vicious Wound - Red", -- [8]
				"02 Jagged Claws High Stacks - Orange", -- [9]
				"02 Petrifying Howl - White", -- [10]
				"03 Greater Castigation - White", -- [11]
				"03 Crimson Torment - Red", -- [12]
				"03 Lingering Embers >1stack - Orange", -- [13]
				"03 Ember Blast - Green", -- [14]
				"04 Displacement Cypher - Green", -- [15]
				"04 Glyph of Destruction - Yellow", -- [16]
				"04 Withering Touch - White", -- [17]
				"05 Gluttonous Miasma - Black", -- [18]
				"05 Volatile Ejection targeted - White", -- [19]
				"05 Volatile Ejection targeted AND Miasma - Big", -- [20]
				"06 Change of Heart - Orange", -- [21]
				"06 Shared Cognition - White", -- [22]
				"06 Shared Suffering - Yellow", -- [23]
				"06 Concentrate Anima - Green", -- [24]
				"07 Drain Essence - White", -- [25]
				"07 Dark Recital Partner - Yellow ", -- [26]
				"08 Hateful Gaze - Pink", -- [27]
				"08 Chain Slam - Green", -- [28]
				"08 Chain Partner - Green", -- [29]
				"09 Heart Rend - Teal - disabled", -- [30]
				"09 Rended Heart - Red", -- [31]
				"09 Wicked Blade - White", -- [32]
				"09 Ravenous Feast - Pink", -- [33]
				"09 Wicked Laceration >= 2 stacks - Orange", -- [34]
				"09 Volatile Anima Infusion - Green", -- [35]
				"10 Night Hunter - Green", -- [36]
				"10 Impale - Red", -- [37]
				"10 Searing Censure - Teal", -- [38]
				"10 Final Finesse - White", -- [39]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/NathriaGlows/27",
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
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 45,
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
			["version"] = 27,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
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
				["zoneIds"] = "",
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
			["semver"] = "1.0.26",
			["tocversion"] = 90002,
			["id"] = "Castle Nathria Glows",
			["uid"] = "EazKeH6nUbn",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOMLEFT",
			["config"] = {
			},
			["borderInset"] = 1,
			["groupIcon"] = 3614361,
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
		},
		["circle_leaf_fill 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 0, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
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
						["custom"] = "function(_,button,order)\n    if button == 0 then \n        aura_env.order = order\n        if order == 9 then \n            aura_env.order = \"\"\n        end\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_n_format"] = "none",
					["text_text_format_4.n_format"] = "none",
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["uid"] = "qSPR4rlzXJY",
			["selfPoint"] = "CENTER",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["regionType"] = "icon",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\AddOns\\guess\\circle_leaf_fill.tga",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [4]
			},
			["auto"] = false,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "circle_leaf_fill 3",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["encounter"] = false,
				["noCommunication"] = false,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\naura_env.noCommunication = aura_env.config['noCommunication']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\nlocal values = {0, 1, 0, 0}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\")\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 0, b)\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\") \n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n            end\n            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")\n                end\n            else         \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n                end\n            end\n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["nocircle_leaf_fill 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 4, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
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
						["custom"] = "function(_,button,order)\n    if button == 4 then \n        aura_env.order = order\n        if order == 9 then \n            aura_env.order = \"\"\n        end\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["text_text_format_p_time_format"] = 0,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["uid"] = "Wzw0aT)U2sT",
			["selfPoint"] = "CENTER",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["regionType"] = "icon",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\AddOns\\guess\\nocircle_leaf_fill.tga",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [4]
			},
			["auto"] = false,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "nocircle_leaf_fill 3",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["encounter"] = false,
				["noCommunication"] = false,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\naura_env.noCommunication = aura_env.config['noCommunication']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\nlocal values = {1, 1, 0, 4}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\")\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 4, b)\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\") \n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n            end\n            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")\n                end\n            else         \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n                end\n            end\n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["01 Horrified - Red"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2398",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "jcIEdfv1A8B",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"343024", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.015686274509804, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "01 Horrified - Red",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Tide"] = {
			["iconSource"] = -1,
			["xOffset"] = -242.4989013671875,
			["preferToUpdate"] = false,
			["yOffset"] = -107.4995727539063,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_loop"] = true,
					["sound_repeat"] = 2,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "16191",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "8",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "timed",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["auranames"] = {
							"Innervate", -- [1]
						},
						["names"] = {
						},
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "ACShine",
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
					["glowThickness"] = 1,
					["glowScale"] = 1.5,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["role"] = {
					["single"] = "HEALER",
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["regionType"] = "icon",
			["icon"] = true,
			["zoom"] = 0,
			["information"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["authorOptions"] = {
			},
			["tocversion"] = 90002,
			["id"] = "Tide",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 64,
			["uid"] = "US4SowCAG)P",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 0.5,
			["conditions"] = {
			},
			["cooldown"] = false,
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
		},
		["circle_lotus_fill 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 2, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
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
						["custom"] = "function(_,button,order)\n    if button == 2 then \n        aura_env.order = order\n        if order == 9 then \n            aura_env.order = \"\"\n        end\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["text_text_format_p_time_format"] = 0,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["uid"] = "6(1qKruXkc6",
			["selfPoint"] = "CENTER",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["regionType"] = "icon",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\AddOns\\guess\\circle_lotus_fill.tga",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [4]
			},
			["auto"] = false,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "circle_lotus_fill 3",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["encounter"] = false,
				["noCommunication"] = false,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\naura_env.noCommunication = aura_env.config['noCommunication']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\nlocal values = {0, 0, 0, 2}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\")\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 2, b)\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\") \n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n            end\n            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")\n                end\n            else         \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n                end\n            end\n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["09 Ravenous Feast - Pink"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "O51Zf3uElpl",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"342735", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0, -- [2]
						0.83921568627451, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "09 Ravenous Feast - Pink",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["Mirror Text"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["displayText"] = "Mirror",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/sFnb6lvjO/5",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.header = true",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"329951", -- [1]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["wordWrap"] = "WordWrap",
			["font"] = "Expressway",
			["version"] = 5,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2407",
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["shadowXOffset"] = 1,
			["parent"] = "Impale Positions",
			["regionType"] = "text",
			["preferToUpdate"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["yOffset"] = 0,
			["xOffset"] = 0,
			["config"] = {
			},
			["justify"] = "LEFT",
			["tocversion"] = 90005,
			["id"] = "Mirror Text",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.4",
			["uid"] = "7oQt1teY69Z",
			["automaticWidth"] = "Auto",
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
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
			},
			["selfPoint"] = "BOTTOM",
		},
		["Dungeon - Targeted Spells"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Targeted Spells", -- [1]
				"Sound when targeted by a boss", -- [2]
			},
			["authorOptions"] = {
			},
			["displayText"] = "%p",
			["groupIcon"] = 1033497,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/BFADungeonTargetedSpells/68",
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
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
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
				["zoneIds"] = "",
			},
			["animate"] = false,
			["scale"] = 1,
			["regionType"] = "dynamicgroup",
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 4,
			["tocversion"] = 90002,
			["borderInset"] = 1,
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
			["background"] = "None",
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
			["columnSpace"] = 1,
			["internalVersion"] = 45,
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
			["version"] = 68,
			["subRegions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["selfPoint"] = "CENTER",
			["useLimit"] = true,
			["customTextUpdate"] = "update",
			["preferToUpdate"] = false,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["uid"] = "zSrl30KxJ6i",
			["borderSize"] = 2,
			["sort"] = "none",
			["outline"] = "OUTLINE",
			["limit"] = 3,
			["yOffset"] = 0,
			["config"] = {
			},
			["frameStrata"] = 6,
			["space"] = 1,
			["justify"] = "LEFT",
			["semver"] = "3.0.6",
			["id"] = "Dungeon - Targeted Spells",
			["radius"] = 200,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["gridType"] = "RD",
			["xOffset"] = 0,
			["anchorPerUnit"] = "UNITFRAME",
			["rotation"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["automaticWidth"] = "Auto",
		},
		["04 Displacement Cypher - Green"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2405",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "dYZgzCmYKhm",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"328468", -- [1]
							"328448", -- [2]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.03921568627451, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "04 Displacement Cypher - Green",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["02 Vicious Wound - Red"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2418",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "BgvMhBheSsI",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"334960", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.066666666666667, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "02 Vicious Wound - Red",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["nocircle_leaf_nofill"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 5, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
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
						["custom"] = "function(_,button,order)\n    if button == 5 then \n        aura_env.order = order\n        if order == 9 then \n            aura_env.order = \"\"\n        end\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["text_text_format_p_time_format"] = 0,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["uid"] = "15JH7fjnk6w",
			["selfPoint"] = "CENTER",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["regionType"] = "icon",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\AddOns\\guess\\nocircle_leaf_nofill.tga",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [4]
			},
			["auto"] = false,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "nocircle_leaf_nofill",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["encounter"] = false,
				["noCommunication"] = false,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\naura_env.noCommunication = aura_env.config['noCommunication']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\nlocal values = {1, 1, 1, 5}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\")\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 5, b)\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\") \n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n            end\n            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")\n                end\n            else         \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n                end\n            end\n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["01 Blood Lantern - Green"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2398",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "b)ifpvyyiNB",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"343303", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						1, -- [2]
						0.03921568627451, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.2,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "01 Blood Lantern - Green",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Better R.IO"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = " ",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HygdwKbsQ/5",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "BRIO = {}\nBRIO.PlayerFaction = 0 -- 1 for Alliance, 2 for Horde\nBRIO.PlayerRealm = \"\"\nBRIO.Config = nil\nBRIO.UNK_PLACEHOLDER = \"-\"\nBRIO.LFG_DUNGEON_CATEGORY_ID = 2 -- can check with C_LFGList.GetCategoryInfo(categoryID)\nBRIO.LFG_MAX_ENTRY_NAME_LEN = 25 -- can check manually (+5 for title without voice icon)\nBRIO.GetPlayerScoreString = function(fullname) -- returns string\n    local name, realm = strsplit(\"-\", fullname or \"\", 2)\n    local profile = RaiderIO.GetProfile(name, realm or BRIO.PlayerRealm, BRIO.PlayerFaction)\n    if not profile then return end\n    profile = profile.mythicKeystoneProfile\n    if not profile then return end\n    \n    local scoreString = profile.currentScore\n    \n    local r, g, b = RaiderIO.GetScoreColor(scoreString)\n    local color = format(\"%02x%02x%02x\", r * 255, g * 255, b * 255)\n    if BRIO.Config.rioColor and color then scoreString = format(\"|cFF%s%s|r\", color, scoreString) end\n    \n    return scoreString\nend\naura_env.UpdateApplicant = function(button, id)\n    if BRIO.Config.afterIlvl then\n        button.InviteButton:SetWidth(50);\n        button.InviteButton:SetText(\"Invite\");\n    end\nend\naura_env.UpdateApplicantMember = function(member, appID, memberIdx, status, pendingStatus)\n    local fullname, _ = C_LFGList.GetApplicantMemberInfo(appID, memberIdx)\n    if not fullname then return end\n    if type(fullname) ~= \"string\" then return end\n    \n    local scoreString = BRIO.GetPlayerScoreString(fullname)\n    if not scoreString then return end\n    \n    if BRIO.Config.afterIlvl then\n        member.ItemLevel:SetText(member.ItemLevel:GetText() .. BRIO.Config.rioSeparator .. scoreString)\n        _, relativeTo, relativePoint, xOfs, yOfs = member.ItemLevel:GetPoint(1)\n        member.ItemLevel:ClearAllPoints();\n        member.ItemLevel:SetPoint(\"CENTER\", relativeTo, \"RIGHT\", -3, 0);\n    else\n        member.Name:SetText(member.Name:GetText() .. BRIO.Config.rioSeparator .. scoreString)\n    end\nend\naura_env.SearchEntry_Update = function(group)\n    local result = C_LFGList.GetSearchResultInfo(group.resultID)\n    local categoryID = select(3, C_LFGList.GetActivityInfo(result.activityID))\n    -- print(result.leaderName, result.searchResultID, result.activityID, categoryID)\n    if categoryID ~= BRIO.LFG_DUNGEON_CATEGORY_ID then return end\n    \n    local scoreString = BRIO.GetPlayerScoreString(result.leaderName)\n    if not scoreString then scoreString = BRIO.UNK_PLACEHOLDER end\n    \n    group.Name:SetText(string.format(\"[%s] %s\", scoreString, group.Name:GetText()))\nend\n\n-- INIT\nBRIO.Config = aura_env.config\nif UnitFactionGroup(\"player\") == \"Alliance\" then \n    BRIO.PlayerFaction = 1\nelse BRIO.PlayerFaction = 2 end\nBRIO.PlayerRealm = select(2, UnitFullName(\"player\"))\n\nhooksecurefunc(\"LFGListApplicationViewer_UpdateApplicant\", aura_env.UpdateApplicant)\nhooksecurefunc(\"LFGListApplicationViewer_UpdateApplicantMember\", aura_env.UpdateApplicantMember)\nif BRIO.Config.searchScore == true then\n    hooksecurefunc(\"LFGListSearchEntry_Update\", aura_env.SearchEntry_Update)\nend\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["desc"] = "Shows R.IO score right after player name or ilvl in LFG list. Version 1.5. By Riketta / Версалита@Гордунни",
			["font"] = "Friz Quadrata TT",
			["version"] = 5,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["shadowYOffset"] = -1,
			["preferToUpdate"] = false,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["automaticWidth"] = "Auto",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Better R.IO",
			["selfPoint"] = "BOTTOM",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
				["searchScore"] = true,
				["rioShort"] = true,
				["rioColor"] = true,
				["rioSeparator"] = " || ",
				["rioFormat"] = "%.1fk",
				["afterIlvl"] = true,
			},
			["uid"] = "5hJaDt(EEz1",
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "After changes applied reload required!",
					["noMerge"] = false,
					["width"] = 2,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "afterIlvl",
					["width"] = 1,
					["name"] = "Show score after ilvl",
					["useDesc"] = true,
					["default"] = true,
					["desc"] = "If checked show score after ilvl, otherwise after name",
				}, -- [2]
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 1,
					["default"] = " || ",
					["key"] = "rioSeparator",
					["name"] = "Score separator",
					["multiline"] = false,
					["length"] = 10,
					["desc"] = "Separator between name/ilvl and score. Examples: \" \", \" - \", \" / \"",
					["useLength"] = false,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "rioShort",
					["width"] = 1,
					["name"] = "Short score form",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "If checked show exact value (1340), otherwise - short (1.3k)",
				}, -- [4]
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 1,
					["default"] = "%.1fk",
					["key"] = "rioFormat",
					["name"] = "Score format",
					["multiline"] = false,
					["length"] = 10,
					["desc"] = "Used with short score format. Examples: \"(%.1fk)\"",
					["useLength"] = false,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "rioColor",
					["width"] = 1,
					["name"] = "Use score coloring",
					["useDesc"] = true,
					["default"] = true,
					["desc"] = "Use color gradation used by addon or use default text color",
				}, -- [6]
				{
					["type"] = "toggle",
					["key"] = "searchScore",
					["width"] = 1,
					["name"] = "Score in LFG search",
					["useDesc"] = true,
					["default"] = true,
					["desc"] = "Show group leader score as group name prefix when you searching for dungeons - ex: \"[1360] +14 Atal\" or \"[UNK] +2\"",
				}, -- [7]
			},
			["semver"] = "1.5.1",
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
			["wordWrap"] = "WordWrap",
		},
		["09 Wicked Laceration >= 2 stacks - Orange"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "Jsftk)mAei5",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["useMatch_count"] = true,
						["useStacks"] = true,
						["useGroup_count"] = false,
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["stacks"] = "2",
						["match_countOperator"] = ">=",
						["custom_hide"] = "timed",
						["match_count"] = "1",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"333913", -- [1]
						},
						["use_tooltip"] = false,
						["unevent"] = "timed",
						["event"] = "Health",
						["use_specific_unit"] = false,
						["duration"] = "1",
						["unit"] = "group",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["stacksOperator"] = ">=",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["custom_type"] = "stateupdate",
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.62352941176471, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "09 Wicked Laceration >= 2 stacks - Orange",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["08 Chain Slam - Green"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2399",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "qllcPSF(ac2",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"335470", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						1, -- [2]
						0.10196078431373, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "08 Chain Slam - Green",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["Power Infusion Send"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["xOffset"] = 0,
			["displayText"] = "",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "local AceComm = LibStub(\"AceComm-3.0\")\n\nfunction aura_env:Request()\n    local dist = \"PARTY\"\n    if IsInRaid() then\n        dist = \"RAID\"\n    elseif IsInGroup() == \"LE_PARTY_CATEGORY_INSTANCE\" then\n        dist = \"INSTANCE_CHAT\"\n    end\n    AceComm:SendCommMessage(\"TOSH_WA\", \"PI:me\", dist)\nend\n",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["custom_type"] = "event",
						["custom"] = "function(event, ...)\n    if event == \"TOSH_WA_PI_ASK\" then\n        aura_env:Request()\n    end\nend\n",
						["events"] = "TOSH_WA_PI_ASK",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
			},
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["fontSize"] = 12,
			["url"] = "https://wago.io/XW-90NqWv",
			["shadowXOffset"] = 1,
			["authorOptions"] = {
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "To use, add to a macro (or create a new one):\n\n/script WeakAuras.ScanEvents(\"TOSH_WA_PI_ASK\")\n",
					["width"] = 2,
				}, -- [1]
			},
			["information"] = {
			},
			["conditions"] = {
			},
			["regionType"] = "text",
			["cooldownEdge"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["uid"] = "i5LvrJDtwzE",
			["displayText_format_p_time_precision"] = 1,
			["width"] = 64,
			["frameStrata"] = 1,
			["zoom"] = 0,
			["justify"] = "LEFT",
			["yOffset"] = 0,
			["id"] = "Power Infusion Send",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
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
			["cooldown"] = false,
			["displayText_format_p_time_dynamic_threshold"] = 60,
		},
		["DisableAutoAdd"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "-- Don't animate\nIconIntroTracker:UnregisterEvent('SPELL_PUSHED_TO_ACTIONBAR')\nIconIntroTracker.RegisterEvent = function() end",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["event"] = "Chat Message",
						["names"] = {
						},
						["events"] = "SPELL_PUSHED_TO_ACTIONBAR",
						["spellIds"] = {
						},
						["custom"] = "function(event, spellID, slotIndex, slotPos)\n    if not InCombatLockdown() then\n        ClearCursor()\n        PickupAction(slotIndex)\n        ClearCursor()\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
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
				["zoneIds"] = "",
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["preferToUpdate"] = false,
			["displayText_format_p_time_precision"] = 1,
			["conditions"] = {
			},
			["shadowYOffset"] = -1,
			["url"] = "https://wago.io/UQFNKr05D/1",
			["justify"] = "LEFT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "DisableAutoAdd",
			["uid"] = "jF9)I)f3R5T",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["config"] = {
			},
			["xOffset"] = 0,
			["semver"] = "1.0.0",
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
			["wordWrap"] = "WordWrap",
		},
		["Pixel Perfect UI Scale"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "SetCVar('useuiscale', 1)\nSetCVar('uiscale', 1)\nlocal _, height = GetPhysicalScreenSize()\nUIParent:SetScale(768 / height)",
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
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
			},
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
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
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["displayText_format_p_time_precision"] = 1,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["conditions"] = {
			},
			["id"] = "Pixel Perfect UI Scale",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "WaN2hHSdW60",
			["xOffset"] = 0,
			["yOffset"] = 0,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
		},
		["06 Change of Heart - Orange"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2406",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "mbss74ZKVaf",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"340452", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.41960784313725, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "06 Change of Heart - Orange",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["03 Crimson Torment - Red"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2402",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "Ja1h(YlOyzP",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"326586", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0, -- [2]
						0.035294117647059, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "03 Crimson Torment - Red",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["10 Final Finesse - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2407",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "cHqP9bjK9W4",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"332797", -- [1]
							"332794", -- [2]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.94901960784314, -- [1]
						1, -- [2]
						0.94901960784314, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = true,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "10 Final Finesse - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["04 Glyph of Destruction - Yellow"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2405",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "gdRn48EVZj1",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"325236", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.98039215686275, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "04 Glyph of Destruction - Yellow",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["07 Drain Essence - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2412",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "nio6IXdDxlA",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"346651", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "07 Drain Essence - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Mists of Tirna Scithe guessing game v2"] = {
			["grow"] = "GRID",
			["controlledChildren"] = {
				"circle_leaf_fill 3", -- [1]
				"circle_leaf_nofill 3", -- [2]
				"circle_lotus_fill 3", -- [3]
				"circle_lotus_nofill 3", -- [4]
				"nocircle_leaf_fill 3", -- [5]
				"nocircle_leaf_nofill", -- [6]
				"nocircle_noleaf_fill 3", -- [7]
				"nocircle_noleaf_nofill 3", -- [8]
				"Reset 3", -- [9]
				"Solution Display 3", -- [10]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -840,
			["preferToUpdate"] = true,
			["yOffset"] = -270,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/hVLym_eLv/67",
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
			["columnSpace"] = 2,
			["internalVersion"] = 45,
			["useLimit"] = false,
			["align"] = "CENTER",
			["desc"] = "Created by Saxayone#2791 EU Sylvanas",
			["stagger"] = 0,
			["version"] = 67,
			["subRegions"] = {
			},
			["uid"] = "YmFqaIu8E9g",
			["rotation"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
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
			["fullCircle"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rowSpace"] = 2,
			["animate"] = false,
			["customGrow"] = "function(newPositions, activeRegions)\n    local newheight = 2\n    local offset = 0\n    for i = 1, 4 do\n        newPositions[i] = {\n            activeRegions[i][\"dimensions\"].width*(2.5-i),\n            0\n        }\n    end\n    for i = 5, 8 do\n        newPositions[i] = {\n            activeRegions[i][\"dimensions\"].width*(2.5-i+4),\n            activeRegions[i][\"dimensions\"].height*-1\n        }\n    end\n    \n    newPositions[9] = {\n        0,\n        (activeRegions[1][\"dimensions\"].height*-1.5)-(activeRegions[9][\"dimensions\"].height*0.5)\n    }\n    newPositions[10] = {\n        0,\n        (activeRegions[1][\"dimensions\"].height*-1.5)-(activeRegions[9][\"dimensions\"].height*1.5)\n    }\n    newPositions[11] = {\n        0,\n        (activeRegions[1][\"dimensions\"].height*-1.5)-(activeRegions[9][\"dimensions\"].height*1.5)-(activeRegions[10][\"dimensions\"].height*1.5)\n    }\n    \nend",
			["scale"] = 0.85,
			["selfPoint"] = "TOPLEFT",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["anchorPoint"] = "TOP",
			["radius"] = 200,
			["constantFactor"] = "RADIUS",
			["arcLength"] = 360,
			["borderOffset"] = 4,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "Mists of Tirna Scithe guessing game v2",
			["gridWidth"] = 4,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sort"] = "none",
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
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["borderInset"] = 1,
		},
		["02 Sinseeker Targeted - Pink"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2418",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "cWR5jsxFmOS",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"335113", -- [1]
							"335112", -- [2]
							"335111", -- [3]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "02 Sinseeker Targeted - Pink",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
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
			["url"] = "https://wago.io/BFADungeonTargetedSpells/68",
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
						["ratedpvp"] = true,
						["flexible"] = true,
						["ratedarena"] = true,
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
				["use_encounter"] = true,
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
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
				["zoneIds"] = "",
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
			["uid"] = "VCMkmT9LnOU",
			["fixedWidth"] = 200,
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
			["internalVersion"] = 45,
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
			["version"] = 68,
			["height"] = 102.63238525391,
			["selfPoint"] = "TOP",
			["parent"] = "Dungeon - Targeted Spells",
			["config"] = {
			},
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["anchorFrameFrame"] = "UIParent",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 134427,
			["anchorFrameType"] = "SELECTFRAME",
			["icon"] = true,
			["zoom"] = 0,
			["anchorFrameParent"] = false,
			["text1"] = " ",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["text2"] = "%p",
			["semver"] = "3.0.6",
			["triggers"] = {
				{
					["trigger"] = {
						["use_status"] = true,
						["duration"] = "0.1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["status"] = 2,
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_hide"] = "custom",
						["custom_type"] = "stateupdate",
						["names"] = {
						},
						["unevent"] = "auto",
						["threatUnit"] = "target",
						["unit"] = "player",
						["use_threatUnit"] = true,
						["custom"] = "function(states, event, unit)\n    if unit == \"boss1\"\n    or unit == \"boss2\"\n    or unit == \"boss3\"\n    or unit == \"boss4\"\n    or unit == \"boss5\"\n    then\n        if UnitIsUnit(\"player\", unit..\"target\") then\n            states[\"\"] = {\n                show = true,\n                changed = true,\n            }\n        else\n            local state = states[\"\"]\n            if state then\n                state.show = false\n                state.changed = true \n            end\n        end\n    end\n    return true\nend",
						["events"] = "UNIT_TARGET:boss",
						["spellIds"] = {
						},
						["check"] = "event",
						["event"] = "Threat Situation",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["custom"] = "function(event, unit)\n    if aura_env.unit and aura_env.unit == unit then\n        return not UnitIsUnit(\"player\", unit..\"target\")\n    end    \nend",
						["threatUnit"] = "target",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["id"] = "Sound when targeted by a boss",
			["cooldownEdge"] = false,
			["frameStrata"] = 1,
			["width"] = 100.44454956055,
			["xOffset"] = 0,
			["alpha"] = 1,
			["inverse"] = false,
			["text1Point"] = "BOTTOMRIGHT",
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
			["preferToUpdate"] = false,
		},
		["09 Volatile Anima Infusion - Green"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "rG8vXbeYv(p",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"342655", -- [1]
							"342698", -- [2]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						1, -- [2]
						0.031372549019608, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "09 Volatile Anima Infusion - Green",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["Spiteful Countdown"] = {
			["user_y"] = 0,
			["iconSource"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText"] = "%p  - %custom",
			["yOffset"] = -2.5000057220459,
			["displayText_format_p_time_dynamic"] = false,
			["sparkRotation"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/yOeM0FVzB/2",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["crop_y"] = 0.41,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["startAngle"] = 0,
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["texture"] = "Blizzard",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = false,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "DxLaP7mMrUn",
			["displayIcon"] = 237553,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["sparkOffsetX"] = 0,
			["parent"] = "Spiteful",
			["preferToUpdate"] = false,
			["information"] = {
			},
			["shadowYOffset"] = -1,
			["crop_x"] = 0.41,
			["desaturateBackground"] = false,
			["cooldownSwipe"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["unit"] = "nameplate",
						["destUnit"] = "player",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["use_nameplateType"] = false,
						["duration"] = "1",
						["event"] = "Cast",
						["spellIds"] = {
						},
						["use_npcId"] = true,
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(allstates, event, unit, ...)\n    if event == \"WA_NAMEPLATE_CLOSED\" then\n        for i = 1, 40 do\n            local unit = \"nameplate\" .. i\n            if UnitExists(unit) and UnitCanAttack(\"player\", unit) then\n                C_Timer.After(0.1, function() WeakAuras.ScanEvents(\"NAME_PLATE_AURA_NAMES\", unit) end)\n            end\n        end\n    end\n    \n    if event == \"NAME_PLATE_UNIT_ADDED\" and unit and UnitCanAttack(\"player\", unit)\n    or event == \"NAME_PLATE_AURA_NAMES\" and unit then\n        local npcID = select(6,strsplit(\"-\",UnitGUID(unit)))\n        if UnitGUID(unit) and npcID == \"174773\" then\n            aura_env.stored[UnitGUID(unit)] = unit\n            local target = unit..\"-target\"\n            if UnitExists(target) and UnitIsUnit(\"player\", target) then\n                allstates[UnitGUID(unit)] = {\n                    GUID = UnitGUID(unit),\n                    unit = unit,\n                    changed = true,\n                    show = true,\n                }\n                return true \n            end\n        end\n    elseif event == \"NAME_PLATE_UNIT_REMOVED\" and unit then\n        if allstates[UnitGUID(unit)] then\n            allstates[UnitGUID(unit)].show = false\n            allstates[UnitGUID(unit)].changed = true\n        end\n        if aura_env.stored[UnitGUID(unit)] then\n            aura_env.stored[UnitGUID(unit)] = nil\n        end\n    end\n    if event == \"FRAME_UPDATE\" then\n        if not aura_env.last or aura_env.last < GetTime() then\n            for GUID, unit in pairs(aura_env.stored) do\n                if GUID then\n                    local target = unit..\"-target\"\n                    if UnitExists(target) and UnitIsUnit(\"player\", target) then\n                        if allstates[GUID] then\n                            allstates[GUID].changed = true\n                        else\n                            allstates[GUID] = {\n                                GUID = GUID,\n                                unit = unit,\n                                progressType = \"timed\",\n                                duration = 12.5,\n                                expirationTime = GetTime() + 12.5,\n                                autoHide = true,\n                                changed = true,\n                                show = true,\n                            }\n                        end\n                    elseif allstates[GUID] then\n                        allstates[GUID].show = false\n                        allstates[GUID].changed = true\n                    end\n                end\n            end\n        end\n    end\n    return true\nend",
						["events"] = "WA_NAMEPLATE_CLOSED,NAME_PLATE_UNIT_ADDED,NAME_PLATE_UNIT_REMOVED,NAME_PLATE_AURA_NAMES,FRAME_UPDATE",
						["check"] = "event",
						["use_destUnit"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "nameplate",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 45,
			["sparkWidth"] = 10,
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
			["displayText_format_custom_format"] = "none",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.stored = {}",
					["do_custom"] = true,
				},
			},
			["desc"] = "Credit to Translit for the base code which this is build from.\nAuthor: Justbears-Illidan(US)",
			["tocversion"] = 90002,
			["anchorFrameType"] = "SCREEN",
			["displayText_format_p_format"] = "timed",
			["version"] = 2,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "A shade is fixated on you!",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_text_format_custom_format"] = "none",
					["rotateText"] = "NONE",
					["text_justify"] = "CENTER",
					["type"] = "subtext",
					["text_anchorXOffset"] = 5,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "vixar",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_RIGHT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [1]
			},
			["height"] = 30,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["id"] = "Spiteful Countdown",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["fontSize"] = 20,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_affixes"] = true,
				["affixes"] = {
					["single"] = 123,
					["multi"] = {
						[123] = true,
					},
				},
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
				["use_never"] = false,
				["zoneIds"] = "",
			},
			["displayText_format_n_format"] = "none",
			["justify"] = "LEFT",
			["zoom"] = 0.3,
			["mirror"] = false,
			["cooldownTextDisabled"] = false,
			["automaticWidth"] = "Auto",
			["sparkHeight"] = 30,
			["spark"] = false,
			["icon_side"] = "RIGHT",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["displayText_format_p_time_precision"] = 1,
			["anchorPoint"] = "CENTER",
			["xOffset"] = -3.7499580383301,
			["sparkRotationMode"] = "AUTO",
			["semver"] = "1.0.1",
			["config"] = {
			},
			["sparkHidden"] = "NEVER",
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 30,
			["fixedWidth"] = 200,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["inverse"] = false,
			["selfPoint"] = "BOTTOM",
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Hungering Destroyer Gluttonous Miasma"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    if IsInRaid() then\n        if not aura_env.omegaGroup or not aura_env.nextSoaker then\n            return \"\"\n        end\n        \n        local duration = \"\"\n        local nextPlayer = \"\"\n        local seperator = \"\"\n        local now = GetTime()\n        --[[        \n        local FormatName = function(name)\n            if not aura_env.showRealm then\n                return name:gsub(\"-.*\", \"\")\n            else\n                return name\n            end\n        end\n        ]]--\n        \n        for i,soaker in ipairs(aura_env.omegaGroup) do\n            if aura_env.debuff(soaker) then\n                aura_env.omegaInfo[soaker].stacks = aura_env.debuff(soaker)\n            else\n                aura_env.omegaInfo[soaker].stacks = 0\n            end\n        end\n        \n        if aura_env.showNext then\n            nextPlayer = WA_ClassColorName(aura_env.nextSoaker) .. \" Next\"\n        end\n        if aura_env.showNext and aura_env.showDuration then\n            seperator = \": \"\n        end\n        if aura_env.showDuration then\n            duration = tonumber(string.format(\"%d\", aura_env.duration - now))\n            if duration <= 0 then\n                duration = \"\"\n                seperator = \"\"\n                \n            else\n                duration = duration .. \"s\"\n            end\n        end\n        aura_env.result = nextPlayer .. seperator .. duration .. \"\\n\\n\" \n        for i,soaker in ipairs(aura_env.omegaGroup) do\n            if aura_env.omegaInfo[soaker].active then\n                aura_env.result = string.format(\"%s|c%s%s: %s|r\\n\", aura_env.result, \"FFFF0000\", aura_env.omegaGroup[i], aura_env.omegaInfo[soaker].stacks)\n            elseif UnitIsDeadOrGhost(soaker) then\n                aura_env.result = string.format(\"%s|c%s%s: %s|r\\n\", aura_env.result, \"FF666666\", aura_env.omegaGroup[i], aura_env.omegaInfo[soaker].stacks)\n            else\n                aura_env.result = string.format(\"%s%s: %s\\n\", aura_env.result, WA_ClassColorName(aura_env.omegaGroup[i]), aura_env.omegaInfo[soaker].stacks)\n            end\n        end\n        return aura_env.result\n    end\nend",
			["yOffset"] = 248.579833984375,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/H19NO2KO7/10",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "-- OPTIONS --\naura_env.showNext = true -- Default true, shows the next person in your group to soak the debuff\naura_env.showDuration = true -- Defaul true, shows the duration left on the debuff on your group memeber\naura_env.enableSound = true -- Default true, plays a sound when you're next in line to soak\naura_env.enableSay = true-- Default true, prints a /say message when you're next to soak\naura_env.manualGroups = false -- Default false, lets you set the soaking groups manually\n\n\n--DO NOT EDIT BELOW! --\n--aura_env.showRealm = false -- Default false, show realm for crossrealm players e.g 'Zuggie-Frostwhisper'\nif not aura_env.Icons then\n    aura_env.Icons = { \n        [8] =\n        \" \\124TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_8:12\\124t\",\n        [7] =\n        \" \\124TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_7:12\\124t\",\n        [6] =\n        \" \\124TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_6:12\\124t\",\n        [5] =\n        \" \\124TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_5:12\\124t\",\n        [4] =\n        \" \\124TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_4:12\\124t\",\n        [3] =\n        \" \\124TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_3:12\\124t\",\n        [2] =\n        \" \\124TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_2:12\\124t\",\n        [1]  = \n        \" \\124TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_1:12\\124t\",\n    };\nend\n\nlocal spell = 334755\nlocal spell2 = 329298\naura_env.duration = 0\n\n--aura_env.FormatName = function(name)\n--    if not aura_env.showRealm then\n--        return name:gsub(\"-.*\", \"\")\n--    else\n--        return name\n--    end\n--end\n\naura_env.GetNextSoaker = function()\n    aura_env.prevSoaker = aura_env.nextSoaker\n    for i, soaker in ipairs(aura_env.omegaGroup) do\n        if not aura_env.omegaInfo[soaker].active and UnitExists(soaker) and not UnitIsDeadOrGhost(soaker) then\n            if not aura_env.nextSoaker then\n                aura_env.nextSoaker = soaker\n            else\n                if aura_env.omegaInfo[aura_env.nextSoaker].active then\n                    aura_env.nextSoaker = aura_env.omegaGroup[i]\n                elseif aura_env.omegaInfo[soaker].stacks < aura_env.omegaInfo[aura_env.nextSoaker].stacks then\n                    aura_env.nextSoaker = aura_env.omegaGroup[i]\n                elseif aura_env.omegaInfo[soaker].stacks == aura_env.omegaInfo[aura_env.nextSoaker].stacks then\n                    aura_env.nextSoaker = aura_env.omegaInfo[soaker].position < aura_env.omegaInfo[aura_env.nextSoaker].position and aura_env.omegaGroup[i] or aura_env.nextSoaker\n                end\n            end\n        end\n    end\nend\n\naura_env.debuff = function(unit)\n    if UnitIsVisible(unit) then\n        if WA_GetUnitDebuff(unit, spell) then\n            local stacks = select(3, WA_GetUnitDebuff(unit, spell))\n            return stacks\n        end\n    end\nend\n\nlocal GetMyGroup = function()\n    local omegaGroup = {}\n    if aura_env.manualGroups then\n        -- Remember to add the EXACT name, with capital letters, special characters and realm name when it's relavant\n        local soakingGroups = {\n            --Group 1\n            {\n                \"player1\",\n                \"player2\",\n                \"player3\",\n                \"player4\",\n                \"player5\"\n            },\n            -- Group 2\n            {\n                \"player1\",\n                \"player2\",\n                \"player3\",\n                \"player4\",\n                \"player5\"\n            },\n            -- Group 3\n            {\n                \"player1\",\n                \"player2\",\n                \"player3\",\n                \"player4\",\n                \"player5\"\n            },\n            -- Group 4\n            {\n                \"player1\",\n                \"player2\",\n                \"player3\",\n                \"player4\",\n                \"player5\"\n            }\n        }\n        \n        for i,group in ipairs(soakingGroups) do\n            for i, soaker in ipairs(group) do\n                if soaker == (UnitName(\"player\")) then\n                    omegaGroup = group\n                end\n            end\n        end\n    else\n        \n        local position = 0        \n        for i=1, 20 do\n            local name = GetUnitName(\"raid\"..i, true)\n            if UnitIsVisible(name) then\n                if GetUnitName(\"raid\"..i, true) == UnitName(\"player\") then\n                    position = i\n                    break\n                end\n            end\n        end\n        \n        if position <= 5 then\n            for i=1, 5 do\n                local name = GetUnitName(\"raid\"..i, true)\n                \n                if UnitIsVisible(name) then\n                    table.insert(omegaGroup, name)\n                end\n            end\n        elseif position <= 10 then\n            for i=6, 10 do\n                local name = GetUnitName(\"raid\"..i, true)\n                if UnitIsVisible(name) then\n                    table.insert(omegaGroup, name)\n                end\n            end\n        elseif position <= 15 then\n            for i=11, 15 do\n                local name = GetUnitName(\"raid\"..i, true)\n                if UnitIsVisible(name) then\n                    table.insert(omegaGroup, name)\n                end\n            end\n        else\n            for i=16, 20 do\n                local name = GetUnitName(\"raid\"..i, true)\n                if UnitIsVisible(name) then\n                    table.insert(omegaGroup, name)\n                end\n            end\n        end\n    end\n    return omegaGroup\nend\n\naura_env.omegaGroup = GetMyGroup() or {}\naura_env.omegaInfo = {}\nfor i, soaker in ipairs(aura_env.omegaGroup) do\n    aura_env.omegaInfo[soaker] = {\n        name = soaker,\n        active = false,\n        stacks = 0,\n        position = i\n    }\nend\naura_env.GetNextSoaker()",
					["do_custom"] = true,
				},
				["finish"] = {
					["stop_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["type"] = "custom",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["event"] = "Chat Message",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["custom"] = "function(_, _, type, _, _, _, _, _, _, destName, _, _, spellId)\n    if IsInRaid() then\n        if type == \"SPELL_AURA_REMOVED\" and spellId == 329298 then\n            if aura_env.omegaInfo[destName] then\n                aura_env.omegaInfo[destName].active = false\n            end\n        elseif type == \"SPELL_AURA_APPLIED\" and spellId == 329298 then\n            if aura_env.omegaInfo[destName] then\n                aura_env.duration = select(6, WA_GetUnitDebuff(destName, 329298))\n                aura_env.omegaInfo[destName].active = true\n                aura_env.GetNextSoaker()\n                \n                if aura_env.prevSoaker ~= UnitName(\"player\") and aura_env.nextSoaker == UnitName(\"player\") then\n                    if aura_env.enableSound then\n                        PlaySoundFile(\"Interface\\\\AddOns\\\\WeakAuras\\\\PowerAurasMedia\\\\Sounds\\\\Phone.ogg\", \"Master\")\n                    end\n                    if aura_env.enableSay then\n                        SendChatMessage(UnitName(\"player\")..\" next!\", \"SAY\")\n                    end\n                end\n            end\n        elseif type == \"UNIT_DIED\" then\n            if aura_env.omegaGroup[destName] then\n                aura_env.GetNextSoaker()\n                \n                if aura_env.prevSoaker ~= UnitName(\"player\") and aura_env.nextSoaker == UnitName(\"player\") then\n                    if aura_env.enableSound then\n                        PlaySoundFile(\"Interface\\\\AddOns\\\\WeakAuras\\\\PowerAurasMedia\\\\Sounds\\\\Phone.ogg\", \"Master\")\n                    end\n                    if aura_env.enableSay then\n                        SendChatMessage(UnitName(\"player\")..\" next!\", \"SAY\")\n                    end\n                end\n            end\n        end\n        return true\n    end\nend",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function()\n    if not IsInRaid() then\n        return true\n    end\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["font"] = "Accidental Presidency",
			["version"] = 10,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2383",
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["fontSize"] = 24,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["preferToUpdate"] = true,
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["automaticWidth"] = "Auto",
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Hungering Destroyer Gluttonous Miasma",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "8M4XcaCtUEr",
			["shadowYOffset"] = -1,
			["semver"] = "1.0.0",
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
			["xOffset"] = 643.3955078125,
		},
		["10 Night Hunter - Green"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2407",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "bGfwWHIdTlH",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"327796", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["glow"] = false,
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.019607843137255, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "10 Night Hunter - Green",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["parent"] = "Castle Nathria Glows",
		},
		["circle_leaf_nofill 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 1, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
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
						["custom"] = "function(_,button,order)\n    if button == 1 then \n        aura_env.order = order\n        if order == 9 then \n            aura_env.order = \"\"\n        end\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["text_text_format_p_time_format"] = 0,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["uid"] = "jO6Q2OafN)M",
			["selfPoint"] = "CENTER",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["regionType"] = "icon",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\AddOns\\guess\\circle_leaf_nofill.tga",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [4]
			},
			["auto"] = false,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "circle_leaf_nofill 3",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["encounter"] = false,
				["noCommunication"] = false,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\naura_env.noCommunication = aura_env.config['noCommunication']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\nlocal values = {0, 1, 1, 1}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\")\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 1, b)\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\") \n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n            end\n            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")\n                end\n            else         \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n                end\n            end\n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["circle_lotus_nofill 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = true,
			["customText"] = "function()\n    if aura_env.showText then\n        return aura_env.order\n    else\n        return \"\"\n    end\nend",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZONE_CHANGED, PLAYER_LOGIN, PLAYER_ENTERING_WORLD",
						["custom"] = "function()\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 3, aura_env.frameData)\n    if aura_env.debugmode then \n        return true \n    end\n    local text = GetMinimapZoneText()\n    if text == aura_env.mistZone then\n        return true\n    else\n        return false\n    end\nend\n\n",
						["names"] = {
						},
						["check"] = "event",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function(event,eid,...)\n    if event == \"ENCOUNTER_END\" then \n        if eid == 2392 and aura_env.showEncounter == false then \n            return false \n        end\n        return true \n    elseif event == \"ENCOUNTER_START\" then \n        if aura_env.showEncounter == false then \n            return false\n        else\n            return true\n        end\n    end\n    return true\nend\n\n",
						["custom_type"] = "status",
						["check"] = "event",
						["events"] = "ENCOUNTER_START, ENCOUNTER_END, PLAYER_ENTERING_WORLD",
						["customName"] = "function()\n    return \nend",
						["debuffType"] = "HELPFUL",
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
						["custom"] = "function(_,button,order)\n    if button == 3 then \n        aura_env.order = order\n        if order == 9 then \n            aura_env.order = \"\"\n        end\n        return true\n    elseif button == 9 then\n        aura_env.order = \"\"\n        return true\n    end\n    return true\nend\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
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
			["version"] = 67,
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
					["text_text_format_p_time_format"] = 0,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_shadowXOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = true,
				["zoneIds"] = "1669",
			},
			["uid"] = "wtYDqz3U(i1",
			["selfPoint"] = "CENTER",
			["parent"] = "Mists of Tirna Scithe guessing game v2",
			["regionType"] = "icon",
			["url"] = "https://wago.io/hVLym_eLv/67",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "Interface\\AddOns\\guess\\circle_lotus_nofill.tga",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "orderText",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "Show Order Text",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "encounter",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show during Boss",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "noCommunication",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Disable Cross-Communication with others running the WA",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|cffff0000Debug testing|r (requires reload for full debug)",
					["width"] = 2,
				}, -- [4]
			},
			["auto"] = false,
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90005,
			["id"] = "circle_lotus_nofill 3",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
				["encounter"] = false,
				["noCommunication"] = false,
				["debug"] = false,
				["orderText"] = true,
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.debugmode = aura_env.config['debug']\nlocal debug = aura_env.debugmode\naura_env.showEncounter = aura_env.config['encounter']\naura_env.locale=GetLocale()\naura_env.mistZone = \"Mistveil Tangle\"\naura_env.order = \"\"\naura_env.showText = aura_env.config['orderText']\naura_env.noCommunication = aura_env.config['noCommunication']\nif aura_env.locale == \"koKR\" then\n    aura_env.mistZone = \"안개장막 덩굴숲\"\nelseif aura_env.locale == \"frFR\" then\n    aura_env.mistZone = \"Maquis Voile-de-Brume\"\nelseif aura_env.locale == \"deDE\" then\n    aura_env.mistZone = \"Nebelschleierdickicht\"\nelseif aura_env.locale == \"zhCN\" then\n    aura_env.mistZone = \"纱雾迷结\"\nelseif aura_env.locale == \"esES\" then\n    aura_env.mistZone = \"Espesura Velo de Niebla\"\nelseif aura_env.locale == \"zhTW\" then\n    aura_env.mistZone = \"霧紗密林\"\nelseif aura_env.locale == \"esMX\" then\n    aura_env.mistZone = \"Espesura Veloniebla\"\nelseif aura_env.locale == \"ruRU\" then\n    aura_env.mistZone = \"Туманная чащоба\"\nelseif aura_env.locale == \"ptBR\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"\nelseif aura_env.locale == \"itIT\" then\n    aura_env.mistZone = \"Intrico Velofosco\"\nelseif aura_env.locale == \"ptPT\" then\n    aura_env.mistZone = \"Enleio do Véu da Névoa\"        \nend\nlocal values = {0, 0, 1, 3}\nlocal message = string.format(\"%d %d %d %d\", values[1], values[2], values[3], values[4])\nlocal name, _ = UnitName(\"player\")\n\nif not aura_env.frameData then\n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    b:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\")\n    aura_env.frameData = b\n    WeakAuras.ScanEvents(\"TirnaScitheButtonData\", 3, b)\nend\nif aura_env.noCommunication then\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\") \n            if debug then \n                print(\"noCommunication sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n            else\n                C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n            end\n            \n    end)\nelse\n    aura_env.frameData:SetScript(\"OnClick\", function(self, button)\n            if debug then print(\"Click Registered - true\") end\n            WeakAuras.ScanEvents(\"GlowUpdate\")\n            C_ChatInfo.RegisterAddonMessagePrefix(\"Tirna Ver2\")\n            if IsPartyLFG() then            \n                if debug then \n                    print(\"LFG sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"INSTANCE_CHAT\")\n                end\n            elseif UnitInParty(\"player\") then            \n                if debug then \n                    print(\"party sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"PARTY\")\n                end\n            else         \n                if debug then \n                    print(\"solo sent - \", C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)) \n                else\n                    C_ChatInfo.SendAddonMessageLogged(\"Tirna Ver2\", message .. \" \" .. button, \"WHISPER\", name)\n                end\n            end\n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["05 Gluttonous Miasma - Black"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2383",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "r50IsE)mCZJ",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"329298", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "05 Gluttonous Miasma - Black",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["02 Vicious Lunge - Green"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2418",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "Yz1PXd2bslF",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"334945", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						1, -- [2]
						0.015686274509804, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "02 Vicious Lunge - Green",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["Position"] = {
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "debug",
					["default"] = false,
					["name"] = "Debug",
					["useDesc"] = false,
					["width"] = 1,
				}, -- [1]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/sFnb6lvjO/5",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.index = 1\naura_env.lastEvent = 0\naura_env.debuffId = 329951\n\nif aura_env.config.debug then\n    aura_env.debuffId = 48438\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
						["events"] = "CLEU:SPELL_AURA_APPLIED",
						["spellIds"] = {
						},
						["custom"] = "function(states,event, timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId)\n    \n    if (WeakAuras.IsOptionsOpen()) then\n        for i=1, 4 do\n            states[i] = states[i] or {\n                show = true,\n                changed = true,\n                position = i,\n                progressType = \"timed\",\n                expirationTime = GetTime() + 6,\n                duration = 6,\n                me = i == 2\n            }\n            \n        end \n    end\n    \n    if (subEvent == \"SPELL_AURA_APPLIED\" and spellId == aura_env.debuffId) then\n        aura_env.index = GetTime() - aura_env.lastEvent > 10 and 1 or aura_env.index + 1\n        aura_env.lastEvent = GetTime()\n        states[timestamp .. destName] = states[timestamp] or {\n            show = true,\n            changed = true,\n            position = aura_env.index,\n            progressType = \"timed\",\n            expirationTime = GetTime() + 6,\n            duration = 6,\n            autoHide = true,\n            me = UnitIsUnit(destName, 'player')\n            \n        }\n    end\n    \n    \n    local have = false\n    \n    for _, state in pairs(states) do\n        if state.show and state.me then\n            have = true\n        end\n    end\n    \n    return have\nend",
						["names"] = {
						},
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["customVariables"] = "{\n  me = \"bool\"\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 45,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 5,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%position",
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
						0.96862745098039, -- [1]
						0.92156862745098, -- [2]
						1, -- [3]
						0.69221988320351, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = -1,
					["text_text_format_n_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_position_format"] = "none",
					["text_fontSize"] = 30,
					["text_text_format_postion_format"] = "none",
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowXOffset"] = 1,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_text_format_p_time_precision"] = 1,
					["text_anchorYOffset"] = -30,
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_visible"] = false,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
				}, -- [2]
			},
			["height"] = 100,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2407",
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["frameStrata"] = 1,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Triangle45",
			["parent"] = "Impale Positions",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.49999964237213, -- [4]
			},
			["semver"] = "1.0.4",
			["tocversion"] = 90005,
			["id"] = "Position",
			["discrete_rotation"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
				["debug"] = false,
			},
			["uid"] = "psVbcrIKQ5V",
			["xOffset"] = 0,
			["width"] = 100,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "me",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.007843137254902, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = 53,
							["property"] = "sub.1.text_fontSize",
						}, -- [2]
						{
							["value"] = {
								0.96862745098039, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["use_rotate"] = true,
					["duration_type"] = "seconds",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    if (aura_env.state and aura_env.state.me) then\n    local angle = (progress * 2 * math.pi) - (math.pi / 2)\n    return start + (((math.sin(angle) + 1)/2) * delta)\nend\nreturn start\nend",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0.5,
					["scalex"] = 1,
					["y"] = 0,
					["x"] = 0,
					["rotateType"] = "custom",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["rotateFunc"] = "function(progress, start, delta)\n    if (aura_env.state and aura_env.state.position) then\n        local pos = aura_env.state.position\n        if (pos == 1 ) then\n            return start + 270\n        elseif (pos == 2) then\n            return start + 180\n        elseif (pos == 3) then\n            return start + 90\n        elseif (pos == 4) then\n            return start \n        end\n    end\n    \n    return start\nend",
					["colorB"] = 1,
					["duration"] = "0.6",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["04 Withering Touch - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2405",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "eiJ6Jua9CYI",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["useGroup_count"] = false,
						["groupclone"] = true,
						["duration"] = "1",
						["name_info"] = "aura",
						["unit"] = "group",
						["use_tooltip"] = false,
						["auranames"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["match_count"] = "1",
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["match_countOperator"] = ">=",
						["auraspellids"] = {
							"340860", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 2,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "04 Withering Touch - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["01 Echolocation - White"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2398",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "gp3bwZU8WfR",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["auranames"] = {
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["match_countOperator"] = ">=",
						["match_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["useExactSpellId"] = true,
						["custom_hide"] = "timed",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
							"342077", -- [1]
						},
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
						["event"] = "Health",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["duration"] = "1",
						["unit"] = "group",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.98039215686275, -- [1]
						1, -- [2]
						0.91764705882353, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "01 Echolocation - White",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
		},
		["03 Lingering Embers >1stack - Orange"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -36.000030517578,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/NathriaGlows/27",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["twenty"] = true,
						["flexible"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2402",
				["zoneIds"] = "",
			},
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["text2FontSize"] = 24,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["text2Enabled"] = false,
			["uid"] = "JC2F6ej)Ktr",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["useMatch_count"] = true,
						["useStacks"] = true,
						["useGroup_count"] = false,
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "aura",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["stacks"] = "1",
						["match_countOperator"] = ">=",
						["custom_hide"] = "timed",
						["match_count"] = "1",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["showClones"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"326430", -- [1]
						},
						["use_tooltip"] = false,
						["unevent"] = "timed",
						["event"] = "Health",
						["use_specific_unit"] = false,
						["duration"] = "1",
						["unit"] = "group",
						["spellIds"] = {
							262314, -- [1]
							274387, -- [2]
							265212, -- [3]
							265360, -- [4]
							272536, -- [5]
							276672, -- [6]
							274271, -- [7]
							267427, -- [8]
						},
						["stacksOperator"] = ">",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["custom_type"] = "stateupdate",
						["names"] = {
							"Putrid Paroxysm", -- [1]
							"Absorbed in Darkness", -- [2]
							"Gestate", -- [3]
							"Roiling Deceit", -- [4]
							"Imminent Ruin", -- [5]
							"Unleashed Shadow", -- [6]
							"Deathwish", -- [7]
							"Torment", -- [8]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 45,
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
			["stickyDuration"] = false,
			["version"] = 27,
			["height"] = 11.99995803833,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "Castle Nathria Glows",
			["xOffset"] = -542.00009155273,
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.44313725490196, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_scale"] = 2,
					["glow_lines"] = 12,
					["do_glow"] = true,
					["custom"] = "",
					["glow_border"] = true,
					["use_glow_color"] = true,
					["glow_frequency"] = 0.25,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["glow_frame_type"] = "UNITFRAME",
					["hide_all_glows"] = true,
					["custom"] = "",
					["glow_action"] = "hide",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["text1"] = "%n",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["semver"] = "1.0.26",
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "03 Lingering Embers >1stack - Orange",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 9,
			["width"] = 6.9999866485596,
			["text2"] = "%p",
			["displayIcon"] = 841384,
			["inverse"] = false,
			["zoom"] = 0,
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
			["config"] = {
			},
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
			["internalVersion"] = 45,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_text_format_p_format"] = "timed",
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 64.999885559082,
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["zoneIds"] = "",
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/BJrGF-XR7/1",
			["desaturate"] = false,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["zoom"] = 0,
			["auto"] = true,
			["semver"] = "1.0.0",
			["id"] = "Bone Shield",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 71.000137329102,
			["frameStrata"] = 1,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Innervate"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["xOffset"] = -242.4989013671875,
			["preferToUpdate"] = false,
			["yOffset"] = -107.4995727539063,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_action"] = "show",
					["glow_type"] = "Pixel",
					["use_glow_color"] = true,
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["hide_all_glows"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["names"] = {
						},
						["auranames"] = {
							"Innervate", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
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
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 12,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["anchorFrameType"] = "SCREEN",
			["fontSize"] = 12,
			["displayText_format_p_time_dynamic"] = false,
			["shadowXOffset"] = 1,
			["cooldown"] = true,
			["fixedWidth"] = 200,
			["shadowYOffset"] = -1,
			["regionType"] = "icon",
			["automaticWidth"] = "Auto",
			["displayText"] = "",
			["config"] = {
			},
			["wordWrap"] = "WordWrap",
			["displayText_format_p_time_precision"] = 1,
			["frameStrata"] = 1,
			["zoom"] = 0,
			["cooldownTextDisabled"] = true,
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Innervate",
			["authorOptions"] = {
			},
			["alpha"] = 0.5,
			["width"] = 64,
			["selfPoint"] = "CENTER",
			["uid"] = "Ggw(qsGorOV",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["icon"] = true,
		},
		["Power Infusion Receive"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Health",
						["names"] = {
						},
						["use_unit"] = true,
						["custom"] = "function(allstates, event, ...) -- TOSH_WA_PI_GIVE,CLEU:SPELL_AURA_APPLIED\n    local state = allstates[aura_env.spellId]\n    if not state then\n        state = {\n            changed = true,\n            show = false,\n            progressType = \"timed\",\n            autoHide = true,\n            spellId = aura_env.spellId,\n        }\n        allstates[aura_env.spellId] = state\n    end\n\n    if event == \"TOSH_WA_PI_GIVE\" then\n        if state.show then return end -- already being shown\n\n        local sender = ...\n\n        if (\n            aura_env.config.assignment ~= \"\" and\n            sender ~= aura_env.config.assignment\n        ) then return end\n\n        local cdStart, cdDuration = GetSpellCooldown(aura_env.spellId)\n        local cdEnd = cdStart + cdDuration\n        local now = GetTime()\n        -- if spell is within a second, allow it\n        if cdEnd - now > 1 then return end\n\n\n        for unit in WA_IterateGroupMembers() do\n            if UnitName(unit) == sender then\n                state.unit = unit\n                state.changed = true\n                state.show = true\n                state.duration = 5\n                state.expirationTime = now + state.duration\n                break\n            end\n        end\n\n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        if not state.show then return end\n\n        local args = {...}\n        if args[2] ~= \"SPELL_AURA_APPLIED\" or args[12] ~= aura_env.spellId then return end\n        if UnitGUID(state.unit) == args[8] then\n            state.show = false\n            state.changed = true\n        elseif args[4] == myGUID then\n            state.show = false\n            state.changed = true\n        end\n    end\n\n    return true\nend\n",
						["spellIds"] = {
						},
						["events"] = "TOSH_WA_PI_GIVE,CLEU:SPELL_AURA_APPLIED",
						["check"] = "event",
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 45,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
			},
			["height"] = 48,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
						[257] = true,
						[258] = true,
						[256] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["zoneIds"] = "",
			},
			["width"] = 76,
			["fontSize"] = 12,
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
			["shadowXOffset"] = 1,
			["information"] = {
			},
			["displayIcon"] = "135939",
			["url"] = "https://wago.io/RMmv94O4t",
			["regionType"] = "text",
			["shadowYOffset"] = -1,
			["automaticWidth"] = "Auto",
			["uid"] = "XadeyfV7BCu",
			["conditions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "Power Infusion Receive",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "UNITFRAME",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["desc"] = "Put the name of your assigned PI target. If set, will ignore other requestors. If empty, will show any requests.",
					["default"] = "",
					["multiline"] = false,
					["key"] = "assignment",
					["length"] = 10,
					["name"] = "Assignment",
					["useLength"] = false,
				}, -- [1]
			},
			["config"] = {
				["assignment"] = "Fayfay",
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_loop"] = true,
					["glow_action"] = "show",
					["sound_repeat"] = 2,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["custom"] = "local region = aura_env.region\n\nlocal unit = region.state and region.state.unit\nif not unit then return end\n\nlocal frame = WeakAuras.GetUnitFrame(unit)\nif not frame then return end\n\nregion:SetParent(frame)\nregion:ClearAllPoints()\nregion:SetAllPoints(frame)",
					["do_sound"] = true,
					["do_custom"] = false,
					["glow_type"] = "ACShine",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bam.ogg",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["do_glow"] = false,
					["hide_all_glows"] = true,
					["custom"] = "local region = aura_env.region\nregion:ClearAllPoints()\n\n",
					["do_custom"] = false,
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "aura_env.spellId = 10060 -- Power Infusion\n\nlocal AceComm = LibStub(\"AceComm-3.0\")\n\nlocal function OnCommReceived(prefix, message, _, sender)\n    if prefix ~= \"TOSH_WA\" then return end\n    local subtype, msg = message:match(\"^(.+):(.+)$\")\n    if subtype ~= \"PI\" then return end\n    WeakAuras.ScanEvents(\"TOSH_WA_PI_GIVE\", sender)\nend\n\nAceComm:RegisterComm(\"TOSH_WA\", OnCommReceived)",
				},
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["cooldown"] = false,
			["displayText_format_p_time_dynamic_threshold"] = 60,
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
			["internalVersion"] = 45,
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
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["ratedpvp"] = true,
						["arena"] = true,
						["ratedarena"] = true,
						["pvp"] = true,
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
				["zoneIds"] = "",
			},
			["cooldownTextDisabled"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "icon",
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["uid"] = "KQEcXCBrkmH",
			["semver"] = "1.0.0",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "HealerCC'ed",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 80,
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/XNg03PyZj/1",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["lastArchiveClear"] = 1595234684,
	["minimap"] = {
		["minimapPos"] = 208.9286600903307,
		["hide"] = true,
	},
	["lastUpgrade"] = 1618448021,
	["dbVersion"] = 45,
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -542.10205078125,
		["width"] = 936.0001831054688,
		["height"] = 856.1663208007812,
		["yOffset"] = -342.54833984375,
	},
	["editor_theme"] = "Monokai",
}
