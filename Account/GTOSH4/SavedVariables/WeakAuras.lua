
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1595234684,
	["minimap"] = {
		["minimapPos"] = 208.9286600903307,
		["hide"] = true,
	},
	["lastUpgrade"] = 1595234688,
	["dbVersion"] = 33,
	["displays"] = {
		["Horrific Visions - Crystal Zone 4"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone4\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Drag\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Trade\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
					["do_message"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone4\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Drag\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Trade\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 4)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 4)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 4)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["custom_type"] = "event",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 4 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 4 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 4 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["zoom"] = 0,
			["desaturate"] = false,
			["regionType"] = "icon",
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
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["xOffset"] = 80,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["uid"] = "4Em499oQXXa",
			["semver"] = "1.0.28",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 4",
			["width"] = 70,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["icon"] = true,
			["url"] = "https://wago.io/VisionCounter/29",
		},
		["Cheat death"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.14117647058824, -- [2]
				0.14509803921569, -- [3]
				0, -- [4]
			},
			["displayText"] = "%c",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/23q54wiYR/10",
			["actions"] = {
				["start"] = {
					["glow_action"] = "hide",
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
					["do_sound"] = true,
					["do_glow"] = false,
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Idiot.ogg",
					["glow_frame"] = "WeakAuras:春哥提醒",
				},
				["finish"] = {
					["message"] = "I'm already dead.",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"304816", -- [1]
							"317865", -- [2]
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "0.5",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["scaley"] = 1,
					["colorA"] = 1,
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local bounceDistance = math.sin(progress * math.pi)\n      return startX + (bounceDistance * deltaX), startY + (bounceDistance * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["translateType"] = "bounce",
					["duration_type"] = "seconds",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["preset"] = "alphaPulse",
					["colorA"] = 1,
				},
				["finish"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["duration_type"] = "seconds",
					["duration"] = "0.5",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["scaley"] = 1,
					["colorA"] = 1,
				},
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["version"] = 10,
			["subRegions"] = {
			},
			["height"] = 64,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["alpha"] = 1,
			["width"] = 64,
			["fontSize"] = 6,
			["preferToUpdate"] = false,
			["shadowXOffset"] = 1,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.text_visible",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldownEdge"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["icon"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "Cheat death",
			["semver"] = "1.0.9",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["uid"] = "Iggfdyj1nbo",
			["inverse"] = false,
			["yOffset"] = 130,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["xOffset"] = -430,
			["authorOptions"] = {
			},
		},
		["Horrific Visions - Crystal Zone 2"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone2\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Spirits\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Dwarven\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone2\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Spirits\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Dwarven\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 2)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 2)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 2)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Conditions",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 2 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 2 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 2 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/VisionCounter/29",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["uid"] = "8SpSb3lp()g",
			["auto"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 2",
			["width"] = 70,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 80,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["icon"] = true,
		},
		["Gift CD Event"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["custom"] = "WeakAuras.ScanEvents(\"GIFT_OFF\")\n    \n    ",
					["do_custom"] = true,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"313698", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["auranames"] = {
						},
						["names"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["version"] = 10,
			["subRegions"] = {
			},
			["height"] = 64,
			["frameStrata"] = 1,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_size"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SELECTFRAME",
			["fontSize"] = 12,
			["preferToUpdate"] = false,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["shadowXOffset"] = 1,
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
			["automaticWidth"] = "Auto",
			["anchorFrameFrame"] = "WeakAuras:Gift of the titans",
			["regionType"] = "text",
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["uid"] = "YKx1zDQS38K",
			["url"] = "https://wago.io/23q54wiYR/10",
			["zoom"] = 0,
			["justify"] = "LEFT",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "Gift CD Event",
			["semver"] = "1.0.9",
			["alpha"] = 1,
			["width"] = 64,
			["xOffset"] = 0,
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
			["selfPoint"] = "CENTER",
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
		["Quaking Bar"] = {
			["sparkWidth"] = 3,
			["borderBackdrop"] = "None",
			["auto"] = false,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then\n        return \"20\"\n    else\n        if aura_env.state and aura_env.state.expirationTime then\n            local remaining = aura_env.state.expirationTime - GetTime()\n            \n            return floor(remaining % 20)\n        end\n    end\nend",
			["yOffset"] = 380,
			["anchorPoint"] = "CENTER",
			["color"] = {
			},
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/B1H06AUNM/3",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 33,
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
						["spellName"] = 0,
						["debuffType"] = "HELPFUL",
						["auraType"] = "DEBUFF",
						["type"] = "event",
						["name"] = "Quake",
						["subeventSuffix"] = "_AURA_APPLIED",
						["use_showOn"] = true,
						["use_spellId"] = true,
						["use_itemName"] = true,
						["unevent"] = "timed",
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["event"] = "Combat Log",
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
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["displayIcon"] = 136025,
			["barColor"] = {
				0.63529411764706, -- [1]
				0.34117647058824, -- [2]
				0.18823529411765, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
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
			["sparkOffsetY"] = 0,
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
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["single"] = 14,
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
						["challenge"] = true,
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
			["useAdjustededMax"] = false,
			["uid"] = "v0WIvsY8rNA",
			["version"] = 3,
			["width"] = 400,
			["alpha"] = 1,
			["spark"] = false,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["id"] = "Quaking Bar",
			["icon_side"] = "LEFT",
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Norm",
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["semver"] = "1.0.0",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["backgroundColor"] = {
				0.086274509803922, -- [1]
				0.086274509803922, -- [2]
				0.086274509803922, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["config"] = {
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
		},
		["Blue"] = {
			["xOffset"] = -573,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = 44,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"黑\"\nelse\n    aura_env.kind={\n        \"|cff6A84BCPoison|r\",\n        \"|cffFF7373Breath Fire|r\",\n        \"|cffFFAA6CHealing|r\",\n        \"|cff6CFFFDDefensive|r\",\n        \"|cffF0FF00Sanity|r\",\n    }\n    aura_env.color=\"Black\"\nend\nif not aura_env.button then \n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    \n    local function createHighlightTexture(self)\n        local texture = self:CreateTexture(nil, \"OVERLAY\")\n        self.highlight = texture\n        texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n        texture:SetBlendMode(\"ADD\")\n        texture:SetAllPoints(self)\n        texture:SetAlpha(.4)\n        return texture\n    end\n    \n    local function onButtonEnter(self)\n        if not self.highlight then\n            createHighlightTexture(self)\n        end\n        self.highlight:Show()\n        self:SetBackdropBorderColor(1, 1, 1)\n    end\n    \n    local function onButtonLeave(self)\n        if self.highlight then\n            self.highlight:Hide()\n        end\n        self:SetBackdropBorderColor(0, 0, 0)\n    end\n    \n    b:RegisterForClicks(\"LeftButtonDown\")\n    \n    b:SetScript(\"OnClick\", function()\n            \n            WeakAuras.ScanEvents(\"OrgColor\",4)\n    end)\n    \n    b:SetScript(\"OnEnter\", onButtonEnter)\n    b:SetScript(\"OnLeave\", onButtonLeave)\n    \n    aura_env.button = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
						["unit"] = "player",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["names"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "OrgColor",
						["custom"] = "function(_,id)\n    if id == 1 then\n        aura_env.text=aura_env.kind[3]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[4]\n    elseif id ==3 then\n        aura_env.text=aura_env.kind[5]\n    elseif id ==4 then\n        aura_env.text=aura_env.kind[1]\n    elseif id ==5 then\n        aura_env.text=aura_env.kind[2]\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2",
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
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["zoom"] = 0,
			["url"] = "https://wago.io/23q54wiYR/10",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
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
			["conditions"] = {
			},
			["uid"] = "8WcV2Yw81xF",
			["alpha"] = 0.9,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Blue",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 80,
			["semver"] = "1.0.9",
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				0, -- [1]
				0.36470588235294, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["icon"] = true,
		},
		["Tosh ZT Interrupts"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Tosh ZT Interrupts bar", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 489.959228515625,
			["preferToUpdate"] = false,
			["yOffset"] = 141.166748046875,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/ReAEVfksT/1",
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
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 33,
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
			["align"] = "CENTER",
			["rotation"] = 0,
			["version"] = 1,
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animate"] = false,
			["rowSpace"] = 1,
			["scale"] = 1,
			["useLimit"] = false,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["selfPoint"] = "TOP",
			["arcLength"] = 360,
			["constantFactor"] = "RADIUS",
			["limit"] = 5,
			["borderOffset"] = 16,
			["semver"] = "1.0.0",
			["uid"] = "lNfg1rgSzcW",
			["id"] = "Tosh ZT Interrupts",
			["borderInset"] = 0,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["stagger"] = 0,
			["conditions"] = {
			},
			["radius"] = 200,
			["gridType"] = "RD",
		},
		["ZenTracker (ZT) Main"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = " ",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/r14U746B7/68",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
					["do_message"] = false,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "--------------------------------------------------------------------------------\n-- CONFIGURATION\n--\n-- The configuration options have moved to the \"Author Options\" tab as of\n-- WeakAuras Version 2.10. \n--\n-- DO NOT EDIT THIS CODE!\n--------------------------------------------------------------------------------\nlocal ZT = aura_env\n\n-- Local versions of commonly used functions\nlocal ipairs = ipairs\nlocal pairs = pairs\nlocal print = print\nlocal select = select\nlocal tonumber = tonumber\n\nlocal IsInGroup = IsInGroup\nlocal IsInRaid = IsInRaid\nlocal UnitGUID = UnitGUID\n\n-- Turns on/off debugging messages\nlocal DEBUG_EVENT = { isEnabled = false, color = \"FF2281F4\" }\nlocal DEBUG_MESSAGE = { isEnabled = false, color = \"FF11D825\" }\nlocal DEBUG_TIMER = { isEnabled = false, color = \"FFF96D27\" }\nlocal DEBUG_TRACKING = { isEnabled = false, color = \"FFA53BF7\" }\n\n-- Turns on/off testing of combatlog-based tracking for the player\n-- (Note: This will disable sharing of player CD updates over addon messages)\nlocal TEST_CLEU = false\n\nlocal function prdebug(type, ...)\n    if type.isEnabled then\n        print(\"|c\"..type.color..\"[ZT-Debug]\", ...)\n    end\nend\n\nlocal function prerror(...)\n    print(\"|cFFFF0000[ZT-Error]\", ...)\nend\n\nlocal function Table_Create(values)\n    if not values then\n        return {}\n    elseif not values[1] then\n        return { values }\n    end\n    return values\nend\n\nlocal function DefaultTable_Create(genDefaultFunc)\n    local table = {}\n    local metatable = {}\n    metatable.__index = function(table, key)\n        local value = genDefaultFunc()\n        rawset(table, key, value)\n        return value\n    end\n\n    return setmetatable(table, metatable)\nend\n\nlocal function Map_FromTable(table)\n    local map = {}\n    for _,value in ipairs(table) do\n        map[value] = true\n    end\n    return map\nend\n\n-- TODOs\n--\n-- 1) Fix the registration to allow for spellIDs or types\n-- 2) Track front-end registration at the level of spellIDs\n-- 3) Change spell list to allow for multiple types per spell (introduce RAIDCD)\n\n--##############################################################################\n-- Class and Spec Information\n\nlocal DH = {ID=12, name=\"DEMONHUNTER\", Havoc=577, Veng=581}\nlocal DK = {ID=6, name=\"DEATHKNIGHT\", Blood=250, Frost=251, Unholy=252}\nlocal Druid = {ID=11, name=\"DRUID\", Balance=102, Feral=103, Guardian=104, Resto=105}\nlocal Hunter = {ID=3, name=\"HUNTER\", BM=253, MM=254, SV=255}\nlocal Mage = {ID=8, name=\"MAGE\", Arcane=62, Fire=63, Frost=64}\nlocal Monk = {ID=10, name=\"MONK\", BRM=268, WW=269, MW=270}\nlocal Paladin = {ID=2, name=\"PALADIN\", Holy=65, Prot=66, Ret=70}\nlocal Priest = {ID=5, name=\"PRIEST\", Disc=256, Holy=257, Shadow=258}\nlocal Rogue = {ID=4, name=\"ROGUE\", Sin=259, Outlaw=260, Sub=261}\nlocal Shaman = {ID=7, name=\"SHAMAN\", Ele=262, Enh=263, Resto=264}\nlocal Warlock = {ID=9, name=\"WARLOCK\", Affl=265, Demo=266, Destro=267}\nlocal Warrior = {ID=1, name=\"WARRIOR\", Arms=71, Fury=72, Prot=73}\n\nlocal AllClasses = {\n    [DH.name] = DH, [DK.name] = DK, [Druid.name] = Druid, [Hunter.name] = Hunter,\n    [Mage.name] = Mage, [Monk.name] = Monk, [Paladin.name] = Paladin,\n    [Priest.name] = Priest, [Rogue.name] = Rogue, [Shaman.name] = Shaman,\n    [Warlock.name] = Warlock, [Warrior.name] = Warrior\n}\n\n--##############################################################################\n-- Spell Cooldown Modifiers\n\nlocal function StaticMod(type, value)\n    return { type = \"Static\", [type] = value }\nend\n\nlocal function DynamicMod(handlers)\n    if not handlers[1] then\n        handlers = { handlers }\n    end\n    \n    return { type = \"Dynamic\", handlers = handlers }\nend\n\nlocal function EventDeltaMod(type, spellID, delta)\n    return DynamicMod({\n            type = type,\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateCDDelta(delta)\n            end\n    })\nend\n\nlocal function CastDeltaMod(spellID, delta)\n    return EventDeltaMod(\"SPELL_CAST_SUCCESS\", spellID, delta)\nend\n\nlocal function EventRemainingMod(type, spellID, remaining)\n    return DynamicMod({\n            type = type,\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateCDRemaining(remaining)\n            end\n    })\nend\n\nlocal function CastRemainingMod(spellID, remaining)\n    return EventRemainingMod(\"SPELL_CAST_SUCCESS\", spellID, remaining)\nend\n\n-- Shockwave: If 3+ targets hit then reduces by 15 seconds\nlocal modShockwave = DynamicMod({\n        {\n            type = \"SPELL_CAST_SUCCESS\", spellID = 46968,\n            handler = function(watchInfo)\n                watchInfo.numHits = 0\n            end\n        },\n        {\n            type = \"SPELL_AURA_APPLIED\", spellID = 132168,\n            handler = function(watchInfo)\n                watchInfo.numHits = watchInfo.numHits + 1\n                if watchInfo.numHits == 3 then\n                    watchInfo:updateCDDelta(-15)\n                end\n            end\n        }\n})\n\n-- Capacitor Totem: Each target hit reduces by 5 seconds (up to 4 targets hit)\nlocal modCapTotem = DynamicMod({\n        type = \"SPELL_SUMMON\", spellID = 192058,\n        handler = function(watchInfo)\n            watchInfo.numHits = 0\n            \n            if not watchInfo.totemHandler then\n                watchInfo.totemHandler = function(watchInfo)\n                    watchInfo.numHits = watchInfo.numHits + 1\n                    if watchInfo.numHits <= 4 then\n                        watchInfo:updateCDDelta(-5)\n                    end\n                end\n            end\n            \n            if watchInfo.totemGUID then\n                ZT.eventHandlers:remove(\"SPELL_AURA_APPLIED\", 118905, watchInfo.totemGUID, watchInfo.totemHandler)\n            end\n            \n            watchInfo.totemGUID = select(8, CombatLogGetCurrentEventInfo())\n            ZT.eventHandlers:add(\"SPELL_AURA_APPLIED\", 118905, watchInfo.totemGUID, watchInfo.totemHandler, watchInfo)\n        end\n})\n\n\n-- Guardian Spirit: If expires watchInfothout healing then reset to 60 seconds\nlocal modGuardianSpirit = DynamicMod({\n        {\n            type = \"SPELL_HEAL\", spellID = 48153,\n            handler = function(watchInfo)\n                watchInfo.spiritHeal = true\n            end\n        },\n        {\n            type = \"SPELL_AURA_REMOVED\", spellID = 47788,\n            handler = function(watchInfo)\n                if not watchInfo.spiritHeal then\n                    watchInfo:updateCDRemaining(60)\n                end\n                watchInfo.spiritHeal = false\n            end\n        }\n})\n\n-- Dispels: Go on cooldown only if a debuff is dispelled\nlocal function DispelMod(spellID)\n    return DynamicMod({\n            type = \"SPELL_DISPEL\",\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateCDRemaining(8)\n            end\n    })\nend\n\n-- Resource Spending: For every spender, reduce cooldown by (coefficient * cost) seconds\n--   Note: By default, I try to use minimum cost values as to not over-estimate the cooldown reduction\nlocal specIDToSpenderInfo = {\n    [DK.Blood] = {\n        [49998]  = 40, -- Death Strike (Assumes -5 from Ossuary)\n        [61999]  = 30, -- Raise Ally\n        [206940] = 30, -- Mark of Blood\n    },\n    [Warrior.Arms] = {\n        [845]    = 20, -- Cleave\n        [163201] = 20, -- Execute (Ignores Sudden Death)\n        [1715]   = 10, -- Hamstring\n        [202168] = 10, -- Impending Victory\n        [12294]  = 30, -- Moral Strike\n        [772]    = 30, -- Rend\n        [1464]   = 20, -- Slam\n        [1680]   = 30, -- Whirlwind\n    },\n    [Warrior.Fury] = {\n        [202168] = 10, -- Impending Victory\n        [184367] = 75, -- Rampage (Assumes -10 from Carnage)\n        [12323]  = 10, -- Piercing Howl\n    },\n    [Warrior.Prot] = {\n        [190456] = 40, -- Ignore Pain (Ignores Vengeance)\n        [202168] = 10, -- Impending Victory\n        [6572]   = 30, -- Revenge (Ignores Vengeance)\n        [2565]   = 30, -- Shield Block\n    }\n}\n\nlocal function ResourceSpendingMods(specID, coefficient)\n    local handlers = {}\n    local spenderInfo = specIDToSpenderInfo[specID]\n    \n    for spellID,cost in pairs(spenderInfo) do\n        local delta = -(coefficient * cost)\n        \n        handlers[#handlers+1] = {\n            type = \"SPELL_CAST_SUCCESS\",\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateCDDelta(delta)\n            end\n        }\n    end\n    \n    return DynamicMod(handlers)\nend\n\n--##############################################################################\n-- List of Tracked Spells\n\nZT.spellsVersion = 8\nZT.spells = {\n    -- Interrupts\n    {type=\"INTERRUPT\", spellID=183752, class=DH, baseCD=15}, -- Disrupt\n    {type=\"INTERRUPT\", spellID=47528, class=DK, baseCD=15}, -- Mind Freeze\n    {type=\"INTERRUPT\", spellID=91802, specs={DK.Unholy}, baseCD=30}, -- Shambling Rush\n    {type=\"INTERRUPT\", spellID=78675, specs={Druid.Balance}, baseCD=60}, -- Solar Beam\n    {type=\"INTERRUPT\", spellID=106839, specs={Druid.Feral, Druid.Guardian}, baseCD=15}, -- Skull Bash\n    {type=\"INTERRUPT\", spellID=147362, specs={Hunter.BM, Hunter.MM}, baseCD=24}, -- Counter Shot\n    {type=\"INTERRUPT\", spellID=187707, specs={Hunter.SV}, baseCD=15}, -- Muzzle\n    {type=\"INTERRUPT\", spellID=2139, class=Mage, baseCD=24}, -- Counter Spell\n    {type=\"INTERRUPT\", spellID=116705, specs={Monk.WW, Monk.BRM}, baseCD=15}, -- Spear Hand Strike\n    {type=\"INTERRUPT\", spellID=96231, specs={Paladin.Prot, Paladin.Ret}, baseCD=15}, -- Rebuke\n    {type=\"INTERRUPT\", spellID=15487, specs={Priest.Shadow}, baseCD=45, modTalents={[41]=StaticMod(\"sub\", 15)}}, -- Silence\n    {type=\"INTERRUPT\", spellID=1766, class=Rogue, baseCD=15}, -- Kick\n    {type=\"INTERRUPT\", spellID=57994, class=Shaman, baseCD=12}, -- Wind Shear\n    {type=\"INTERRUPT\", spellID=19647, class=Warlock, baseCD=24}, -- Spell Lock\n    {type=\"INTERRUPT\", spellID=6552, class=Warrior, baseCD=15}, -- Pummel\n    -- Hard Crowd Control (AOE)\n    {type=\"HARDCC\", spellID=179057, specs={DH.Havoc}, baseCD=60, modTalents={[61]=StaticMod(\"mul\", 0.666667)}}, -- Chaos Nova\n    {type=\"HARDCC\", spellID=119381, class=Monk, baseCD=60, modTalents={[41]=StaticMod(\"sub\", 10)}}, -- Leg Sweep\n    {type=\"HARDCC\", spellID=192058, class=Shaman, baseCD=60, modTalents={[33]=modCapTotem}}, -- Capacitor Totem\n    {type=\"HARDCC\", spellID=30283, class=Warlock, baseCD=60, modTalents={[51]=StaticMod(\"sub\", 15)}}, -- Shadowfury\n    {type=\"HARDCC\", spellID=46968, specs={Warrior.Prot}, baseCD=40, modTalents={[52]=modShockwave}}, -- Shockwave\n    {type=\"HARDCC\", spellID=255654, race=\"HighmountainTauren\", baseCD=120}, -- Bull Rush\n    {type=\"HARDCC\", spellID=20549, race=\"Tauren\", baseCD=90}, -- War Stomp\n    -- Soft Crowd Control (AOE)\n    {type=\"SOFTCC\", spellID=202138, specs={DH.Veng}, baseCD=90, reqTalents={53}}, -- Sigil of Chains\n    {type=\"SOFTCC\", spellID=207684, specs={DH.Veng}, baseCD=90, modTalents={[52]=StaticMod(\"mul\", 0.8)}}, -- Sigil of Misery\n    {type=\"SOFTCC\", spellID=202137, specs={DH.Veng}, baseCD=60, modTalents={[52]=StaticMod(\"mul\", 0.8)}}, -- Sigil of Silence\n    {type=\"SOFTCC\", spellID=108199, specs={DK.Blood}, baseCD=120, modTalents={[52]=StaticMod(\"sub\", 30)}}, -- Gorefiend's Grasp\n    {type=\"SOFTCC\", spellID=207167, specs={DK.Frost}, baseCD=60, reqTalents={33}}, -- Blinding Sleet\n    {type=\"SOFTCC\", spellID=132469, class=Druid, baseCD=30, reqTalents={43}}, -- Typhoon\n    {type=\"SOFTCC\", spellID=102359, class=Druid, baseCD=30, reqTalents={42}}, -- Mass Entanglement\n    {type=\"SOFTCC\", spellID=99, specs={Druid.Guardian}, baseCD=30}, -- Incapacitating Roar\n    {type=\"SOFTCC\", spellID=102793, specs={Druid.Guardian}, baseCD=60, reqTalents={22}}, -- Ursol's Vortex\n    {type=\"SOFTCC\", spellID=102793, specs={Druid.Resto}, baseCD=60}, -- Ursol's Vortex\n    {type=\"SOFTCC\", spellID=109248, class=Hunter, baseCD=45, reqTalents={53}}, -- Binding Shot\n    {type=\"SOFTCC\", spellID=122, class=Mage, baseCD=30, reqTalents={51,53}, mods=CastRemainingMod(235219,0), version=6}, -- Frost Nova\n    {type=\"SOFTCC\", spellID=122, class=Mage, baseCD=30, charges=2, reqTalents={52}, mods=CastRemainingMod(235219,0), version=6}, -- Frost Nova\n    {type=\"SOFTCC\", spellID=113724, class=Mage, baseCD=45, reqTalents={53}, version=6}, -- Ring of Frost\n    {type=\"SOFTCC\", spellID=31661, specs={Mage.Fire}, baseCD=20, version=2}, -- Dragon's Breath\n    {type=\"SOFTCC\", spellID=33395, specs={Mage.Frost}, baseCD=25, reqTalents={11,13}, version=6}, -- Freeze (Pet)\n    {type=\"SOFTCC\", spellID=116844, class=Monk, baseCD=45, reqTalents={43}}, -- Ring of Peace\n    {type=\"SOFTCC\", spellID=115750, class=Paladin, baseCD=90, reqTalents={33}, version=3}, -- Blinding Light\n    {type=\"SOFTCC\", spellID=8122, specs={Priest.Disc, Priest.Holy}, baseCD=60, modTalents={[41]=StaticMod(\"sub\", 30)}}, -- Psychic Scream\n    {type=\"SOFTCC\", spellID=204263, specs={Priest.Disc, Priest.Holy}, baseCD=45, reqTalents={43}}, -- Shining Force\n    {type=\"SOFTCC\", spellID=8122, specs={Priest.Shadow}, baseCD=60}, -- Psychic Scream\n    {type=\"SOFTCC\", spellID=51490, specs={Shaman.Ele}, baseCD=45}, -- Thunderstorm\n    -- Hard Crowd Control (Single Target)\n    {type=\"STHARDCC\", spellID=211881, specs={DH.Havoc}, baseCD=30, reqTalents={63}}, -- Fel Eruption\n    {type=\"STHARDCC\", spellID=221562, specs={DK.Blood}, baseCD=45}, -- Asphyxiate\n    {type=\"STHARDCC\", spellID=108194, specs={DK.FrostDK}, baseCD=45, reqTalents={32}}, -- Asphyxiate\n    {type=\"STHARDCC\", spellID=108194, specs={DK.Unholy}, baseCD=45, reqTalents={33}}, -- Asphyxiate\n    {type=\"STHARDCC\", spellID=5211, class=Druid, baseCD=50, reqTalents={41}}, -- Mighty Bash\n    {type=\"STHARDCC\", spellID=19577, specs={Hunter.BM, Hunter.Surv}, baseCD=60}, -- Intimidation\n    {type=\"STHARDCC\", spellID=853, specs={Paladin.Holy}, baseCD=60, modTalents={[31]=CastDeltaMod(275773, -10)}}, -- Hammer of Justice\n    {type=\"STHARDCC\", spellID=853, specs={Paladin.Prot}, baseCD=60, modTalents={[31]=CastDeltaMod(275779, -6)}}, -- Hammer of Justice\n    {type=\"STHARDCC\", spellID=853, specs={Paladin.Ret}, baseCD=60}, -- Hammer of Justice\n    {type=\"STHARDCC\", spellID=88625, specs={Priest.Holy}, baseCD=60, reqTalents={42}, mods=CastDeltaMod(585, -4), modTalents={[71]=CastDeltaMod(585, -1.333333)}}, -- Holy Word: Chastise\n    {type=\"STHARDCC\", spellID=64044, specs={Priest.Shadow}, baseCD=45, reqTalents={43}}, -- Psychic Horror\n    {type=\"STHARDCC\", spellID=6789, class=Warlock, baseCD=45, reqTalents={52}}, -- Mortal Coil\n    {type=\"STHARDCC\", spellID=107570, specs={Warrior.Arms,Warrior.Fury}, baseCD=30, reqTalents={23}}, -- Storm Bolt\n    {type=\"STHARDCC\", spellID=107570, specs={Warrior.Prot}, baseCD=30, reqTalents={53}}, -- Storm Bolt\n    -- Soft Crowd Control (Single Target)\n    {type=\"STSOFTCC\", spellID=217832, class=DH, baseCD=45}, -- Imprison\n    {type=\"STSOFTCC\", spellID=49576, specs={DK.Blood}, baseCD=15, version=2}, -- Death Grip\n    {type=\"STSOFTCC\", spellID=49576, specs={DK.Frost, DK.Unholy}, baseCD=25, version=2}, -- Death Grip\n    {type=\"STSOFTCC\", spellID=2094, specs={Rogue.Outlaw}, baseCD=120, modTalents={[52]=StaticMod(\"sub\", 30)}}, -- Blind\n    {type=\"STSOFTCC\", spellID=2094, specs={Rogue.Sin, Rogue.Sub}, baseCD=120}, -- Blind\n    {type=\"STSOFTCC\", spellID=115078, class=Monk, baseCD=45}, -- Paralysis\n    {type=\"STSOFTCC\", spellID=187650, class=Hunter, baseCD=30}, -- Freezing Trap\n    {type=\"STSOFTCC\", spellID=107079, race=\"Pandaren\", baseCD=120, version=4}, -- Quaking Palm\n    -- Dispel (Offensive)\n    {type=\"DISPEL\", spellID=278326, class=DH, baseCD=10, version=6}, -- Disrupt\n    {type=\"DISPEL\", spellID=2908, class=Druid, baseCD=10, version=6}, -- Soothe\n    {type=\"DISPEL\", spellID=32375, class=Priest, baseCD=45}, -- Mass Dispel\n    {type=\"DISPEL\", spellID=202719, race=\"BloodElf\", class=DH, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=50613, race=\"BloodElf\", class=DK, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=80483, race=\"BloodElf\", class=Hunter, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=28730, race=\"BloodElf\", class=Mage, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=129597, race=\"BloodElf\", class=Monk, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=155145, race=\"BloodElf\", class=Paladin, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=232633, race=\"BloodElf\", class=Priest, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=25046, race=\"BloodElf\", class=Rogue, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=28730, race=\"BloodElf\", class=Warlock, baseCD=120}, -- Arcane Torrent\n    {type=\"DISPEL\", spellID=69179, race=\"BloodElf\", class=Warrior, baseCD=120}, -- Arcane Torrent\n    -- Dispel (Defensive, Magic)\n    {type=\"DEFMDISPEL\", spellID=88423, specs={Druid.Resto}, baseCD=8, mods=DispelMod(88423), ignoreCast=true}, -- Nature's Cure\n    {type=\"DEFMDISPEL\", spellID=115450, specs={Monk.MW}, baseCD=8, mods=DispelMod(115450), ignoreCast=true}, -- Detox\n    {type=\"DEFMDISPEL\", spellID=4987, specs={Paladin.Holy}, baseCD=8, mods=DispelMod(4987), ignoreCast=true}, -- Cleanse\n    {type=\"DEFMDISPEL\", spellID=527, specs={Priest.Disc, Priest.Holy}, baseCD=8, mods=DispelMod(527), ignoreCast=true}, -- Purify\n    {type=\"DEFMDISPEL\", spellID=77130, specs={Shaman.Resto}, baseCD=8, mods=DispelMod(77130), ignoreCast=true}, -- Purify Spirit\n    -- Raid-Wide Defensives\n    {type=\"RAIDCD\", spellID=196718, specs={DH.Havoc}, baseCD=180}, -- Darkness\n    {type=\"RAIDCD\", spellID=31821, specs={Paladin.Holy}, baseCD=180}, -- Aura Mastery\n    {type=\"RAIDCD\", spellID=204150, specs={Paladin.Prot}, baseCD=180, reqTalents={63}, version=6}, -- Aegis of Light\n    {type=\"RAIDCD\", spellID=62618, specs={Priest.Disc}, baseCD=180, reqTalents={71,73}}, -- Power Word: Barrier\n    {type=\"RAIDCD\", spellID=207399, specs={Shaman.Resto}, baseCD=300, reqTalents={43}}, -- Ancestral Protection Totem\n    {type=\"RAIDCD\", spellID=98008, specs={Shaman.Resto}, baseCD=180}, -- Spirit Link Totem\n    {type=\"RAIDCD\", spellID=97462, class=Warrior, baseCD=180}, -- Rallying Cry\n    -- External Defensives (Single Target)\n    {type=\"EXTERNAL\", spellID=102342, specs={Druid.Resto}, baseCD=60, modTalents={[62]=StaticMod(\"sub\", 15)}}, -- Ironbark\n    {type=\"EXTERNAL\", spellID=116849, specs={Monk.MW}, baseCD=120}, -- Life Cocoon\n    {type=\"EXTERNAL\", spellID=6940, specs={Paladin.Holy, Paladin.Prot}, baseCD=120}, -- Blessing of Sacrifice\n    {type=\"EXTERNAL\", spellID=1022, specs={Paladin.Holy, Paladin.Ret}, baseCD=300}, -- Blessing of Protection\n    {type=\"EXTERNAL\", spellID=1022, specs={Paladin.Prot}, baseCD=300, reqTalents={41,42}}, -- Blessing of Protection\n    {type=\"EXTERNAL\", spellID=204018, specs={Paladin.Prot}, baseCD=180, reqTalents={43}}, -- Blessing of Spellwarding\n    {type=\"EXTERNAL\", spellID=33206, specs={Priest.Disc}, baseCD=180}, -- Pain Supression\n    {type=\"EXTERNAL\", spellID=47788, specs={Priest.Holy}, baseCD=180, modTalents={[32]=modGuardianSpirit}}, -- Guardian Spirit\n    -- Healing and Healing Buffs \n    {type=\"HEALING\", spellID=33891, specs={Druid.Resto}, baseCD=180, reqTalents={53}, ignoreCast=true, mods=EventRemainingMod(\"SPELL_AURA_APPLIED\",117679,180), version=6}, -- Incarnation: Tree of Life\n    {type=\"HEALING\", spellID=740, specs={Druid.Resto}, baseCD=180, modTalents={[61]=StaticMod(\"sub\", 60)}}, -- Tranquility\n    {type=\"HEALING\", spellID=198664, specs={Monk.MW}, baseCD=180, reqTalents={63}, version=6}, -- Invoke Chi-Ji, the Red Crane\n    {type=\"HEALING\", spellID=115310, specs={Monk.MW}, baseCD=180}, -- Revival\n    {type=\"HEALING\", spellID=31884, specs={Paladin.Holy}, baseCD=120, reqTalents={61,63}, version=7}, -- Avenging Wrath\n    {type=\"HEALING\", spellID=216331, specs={Paladin.Holy}, baseCD=120, reqTalents={62}}, -- Avenging Crusader\n    {type=\"HEALING\", spellID=105809, specs={Paladin.Holy}, baseCD=90, reqTalents={53}}, -- Holy Avenger\n    {type=\"HEALING\", spellID=633, specs={Paladin.Holy}, baseCD=600, modTalents={[21]=StaticMod(\"mul\", 0.7)}}, -- Lay on Hands\n    {type=\"HEALING\", spellID=633, specs={Paladin.Prot, Paladin.Ret}, baseCD=600, modTalents={[51]=StaticMod(\"mul\", 0.7)}}, -- Lay on Hands\n    {type=\"HEALING\", spellID=210191, specs={Paladin.Ret}, baseCD=60, charges=2, reqTalents={63}, version=6}, -- Word of Glory\n    {type=\"HEALING\", spellID=246287, specs={Priest.Disc}, baseCD=90, reqTalents={73}}, -- Evangelism\n    {type=\"HEALING\", spellID=47536, specs={Priest.Disc}, baseCD=90}, -- Rapture\n    {type=\"HEALING\", spellID=271466, specs={Priest.Disc}, baseCD=180, reqTalents={72}}, -- Luminous Barrier\n    {type=\"HEALING\", spellID=200183, specs={Priest.Holy}, baseCD=120, reqTalents={72}}, -- Apotheosis\n    {type=\"HEALING\", spellID=64843, specs={Priest.Holy}, baseCD=180}, -- Divine Hymn\n    {type=\"HEALING\", spellID=265202, specs={Priest.Holy}, baseCD=720, reqTalents={73}, mods={CastDeltaMod(34861,-30), CastDeltaMod(2050,-30)}}, -- Holy Word: Salvation\n    {type=\"HEALING\", spellID=15286, specs={Priest.Shadow}, baseCD=120, modTalents={[22]=StaticMod(\"sub\", 45)}}, -- Vampiric Embrace\n    {type=\"HEALING\", spellID=114052, specs={Shaman.Resto}, baseCD=180, reqTalents={73}}, -- Ascendance\n    {type=\"HEALING\", spellID=198838, specs={Shaman.Resto}, baseCD=60, reqTalents={42}}, -- Earthen Wall Totem\n    {type=\"HEALING\", spellID=108280, specs={Shaman.Resto}, baseCD=180}, -- Healing Tide Totem\n    -- Utility (Movement, Taunts, etc)\n    {type=\"UTILITY\", spellID=205636, specs={Druid.Balance}, baseCD=60, reqTalents={13}}, -- Force of Nature (Treants)\n    {type=\"UTILITY\", spellID=29166, specs={Druid.Balance, Druid.Resto}, baseCD=180}, -- Innervate\n    {type=\"UTILITY\", spellID=106898, specs={Druid.Feral}, baseCD=120, version=2}, -- Stampeding Roar\n    {type=\"UTILITY\", spellID=106898, specs={Druid.Guardian}, baseCD=60, version=2}, -- Stampeding Roar\n    {type=\"UTILITY\", spellID=116841, class=Monk, baseCD=30, reqTalents={23}, version=6}, -- Tiger's Lust\n    {type=\"UTILITY\", spellID=1044, class=Paladin, baseCD=25, version=6}, -- Blessing of Freedom\n    {type=\"UTILITY\", spellID=73325, class=Priest, baseCD=90}, -- Leap of Faith\n    {type=\"UTILITY\", spellID=64901, specs={Priest.Holy}, baseCD=300}, -- Symbol of Hope\n    {type=\"UTILITY\", spellID=114018, class=Rogue, baseCD=360}, -- Shroud of Concealment\n    {type=\"UTILITY\", spellID=198103, class=Shaman, baseCD=300, version=2}, -- Earth Elemental\n    {type=\"UTILITY\", spellID=8143, class=Shaman, baseCD=60, version=6}, -- Tremor Totem\n    {type=\"UTILITY\", spellID=192077, class=Shaman, baseCD=120, reqTalents={53}, version=2}, -- Wind Rush Totem\n    {type=\"UTILITY\", spellID=58984, race=\"NightElf\", baseCD=120, version=3}, -- Shadowmeld\n    -- Personal Defensives\n    {type=\"PERSONAL\", spellID=198589, specs={DH.Havoc}, baseCD=60, mods=EventRemainingMod(\"SPELL_AURA_APPLIED\", 212800, 60)}, -- Blur\n    {type=\"PERSONAL\", spellID=48792, class=DK, baseCD=180}, -- Icebound Fortitude\n    {type=\"PERSONAL\", spellID=48707, specs={DK.Frost, DK.Unholy}, baseCD=60}, -- Anti-Magic Shell\n    {type=\"PERSONAL\", spellID=48707, specs={DK.Blood}, baseCD=60, modTalents={[42]=StaticMod(\"sub\", 15)}}, -- Anti-Magic Shell\n    {type=\"PERSONAL\", spellID=48743, specs={DK.Frost, DK.Unholy}, baseCD=120, reqTalents={53}}, -- Death Pact\n    {type=\"PERSONAL\", spellID=22812, specs={Druid.Balance, Druid.Resto}, baseCD=60}, -- Barkskin\n    {type=\"PERSONAL\", spellID=22812, specs={Druid.Guardian}, baseCD=90, modTalents={[62]=StaticMod(\"mul\", 0.666667)}}, -- Barkskin\n    {type=\"PERSONAL\", spellID=108238, specs={Druid.Balance, Druid.Feral, Druid.Resto}, baseCD=90, reqTalents={22}, version=6}, -- Renewal\n    {type=\"PERSONAL\", spellID=61336, specs={Druid.Feral,Druid.Guardian}, baseCD=180, charges=2, version=6}, -- Survival Instincts\n    {type=\"PERSONAL\", spellID=109304, class=Hunter, baseCD=120}, -- Exhilaration\n    {type=\"PERSONAL\", spellID=5384, class=Hunter, baseCD=30, version=6}, -- Feign Death\n    {type=\"PERSONAL\", spellID=235219, specs={Mage.Frost}, baseCD=300}, -- Cold Snap\n    {type=\"PERSONAL\", spellID=122278, class=Monk, baseCD=120, reqTalents={53}}, -- Dampen Harm\n    {type=\"PERSONAL\", spellID=243435, specs={Monk.MW}, baseCD=90}, -- Fortifying Brew\n    {type=\"PERSONAL\", spellID=122281, specs={Monk.BRM}, baseCD=30, charges=2, reqTalents={52}, version=6}, -- Healing Elixir\n    {type=\"PERSONAL\", spellID=122281, specs={Monk.MW}, baseCD=30, charges=2, reqTalents={51}, version=6}, -- Healing Elixir\n    {type=\"PERSONAL\", spellID=122783, specs={Monk.MW, Monk.WW}, baseCD=90, reqTalents={52}}, -- Diffuse Magic\n    {type=\"PERSONAL\", spellID=122470, specs={Monk.WW}, baseCD=90}, -- Touch of Karma\n    {type=\"PERSONAL\", spellID=498, specs={Paladin.Holy}, baseCD=60}, -- Divine Protection\n    {type=\"PERSONAL\", spellID=184662, specs={Paladin.Ret}, baseCD=120, modTalents={[51]=StaticMod(\"mul\", 0.7)}}, -- Shield of Vengeance\n    {type=\"PERSONAL\", spellID=205191, specs={Paladin.Ret}, baseCD=60, reqTalents={53}}, -- Eye for an Eye\n    {type=\"PERSONAL\", spellID=19236, specs={Priest.Disc, Priest.Holy}, baseCD=90}, -- Desperate Prayer\n    {type=\"PERSONAL\", spellID=47585, specs={Priest.Shadow}, baseCD=120, duration=6, modTalents={[23]=StaticMod(\"sub\", 30)}, version=8}, -- Dispersion\n    {type=\"PERSONAL\", spellID=199754, specs={Rogue.Outlaw}, baseCD=120, version=2}, -- Riposte\n    {type=\"PERSONAL\", spellID=5277, specs={Rogue.Sin, Rogue.Sub}, baseCD=120, version=2}, -- Evasion\n    {type=\"PERSONAL\", spellID=108271, class=Shaman, baseCD=90}, -- Astral Shift\n    {type=\"PERSONAL\", spellID=108416, class=Warlock, baseCD=60, reqTalents={33}, version=6}, -- Dark Pact\n    {type=\"PERSONAL\", spellID=104773, class=Warlock, baseCD=180}, -- Unending Resolve\n    {type=\"PERSONAL\", spellID=118038, specs={Warrior.Arms}, baseCD=180}, -- Die by the Sword\n    {type=\"PERSONAL\", spellID=184364, specs={Warrior.Fury}, baseCD=120}, -- Enraged Regeneration\n    -- Tank-Only Defensives\n    {type=\"TANK\", spellID=212084, specs={DH.Veng}, baseCD=60, reqTalents={63}, version=6}, -- Fel Devastation\n    {type=\"TANK\", spellID=204021, specs={DH.Veng}, baseCD=60}, -- Fiery Brand\n    {type=\"TANK\", spellID=187827, specs={DH.Veng}, baseCD=180}, -- Metamorphosis\n    {type=\"TANK\", spellID=206931, specs={DK.Blood}, baseCD=30, reqTalents={12}, version=6}, -- Blooddrinker\n    {type=\"TANK\", spellID=274156, specs={DK.Blood}, baseCD=45, reqTalents={23}, version=6}, -- Consumption\n    {type=\"TANK\", spellID=49028, specs={DK.Blood}, baseCD=120}, -- Dancing Rune Weapon\n    {type=\"TANK\", spellID=194679, specs={DK.Blood}, baseCD=25, charges=2, reqTalents={43}, version=6}, -- Rune Tap\n    {type=\"TANK\", spellID=194844, specs={DK.Blood}, baseCD=60, reqTalents={73}}, -- Bonestorm\n    {type=\"TANK\", spellID=55233, specs={DK.Blood}, baseCD=90, modTalents={[72]=ResourceSpendingMods(DK.Blood, 0.1)}}, -- Vampiric Blood\n    {type=\"TANK\", spellID=102558, specs={Druid.Guardian}, baseCD=180, reqTalents={53}, version=6}, -- Incarnation: Guardian of Ursoc\n    {type=\"TANK\", spellID=132578, specs={Monk.BRM}, baseCD=180, reqTalents={63}, version=4}, -- Invoke Niuzao\n    {type=\"TANK\", spellID=115203, specs={Monk.BRM}, baseCD=420}, -- Fortifying Brew\n    {type=\"TANK\", spellID=115176, specs={Monk.BRM}, baseCD=300}, -- Zen Meditation\n    {type=\"TANK\", spellID=31850, specs={Paladin.Prot}, baseCD=120, modTalents={[51]=StaticMod(\"mul\", 0.7)}}, -- Ardent Defender\n    {type=\"TANK\", spellID=86659, specs={Paladin.Prot}, baseCD=300, version=5}, -- Guardian of the Ancient Kings\n    {type=\"TANK\", spellID=12975, specs={Warrior.Prot}, baseCD=180, modTalents={[43]=StaticMod(\"sub\", 60), [71]=ResourceSpendingMods(Warrior.Prot, 0.1)}}, -- Last Stand\n    {type=\"TANK\", spellID=871, specs={Warrior.Prot}, baseCD=240, modTalents={[71]=ResourceSpendingMods(Warrior.Prot, 0.1)}}, -- Shield Wall\n    {type=\"TANK\", spellID=1160, specs={Warrior.Prot}, baseCD=45, modTalents={[71]=ResourceSpendingMods(Warrior.Prot, 0.1)}}, -- Demoralizing Shout\n    {type=\"TANK\", spellID=228920, specs={Warrior.Prot}, baseCD=60, reqTalents={73}, version=6}, -- Ravager\n    {type=\"TANK\", spellID=23920, specs={Warrior.Prot}, baseCD=25, version=6}, -- Spell Reflection\n    -- Immunities\n    {type=\"IMMUNITY\", spellID=196555, specs={DH.Havoc}, baseCD=120, reqTalents={43}}, -- Netherwalk\n    {type=\"IMMUNITY\", spellID=186265, class=Hunter, baseCD=180, modTalents={[51]=StaticMod(\"mul\", 0.8)}}, -- Aspect of the Turtle\n    {type=\"IMMUNITY\", spellID=45438, specs={Mage.Arcane,Mage.Fire}, baseCD=240}, -- Ice Block\n    {type=\"IMMUNITY\", spellID=45438, specs={Mage.Frost}, baseCD=240, mods=CastRemainingMod(235219, 0)}, -- Ice Block\n    {type=\"IMMUNITY\", spellID=642, specs={Paladin.Holy}, baseCD=300, modTalents={[21]=StaticMod(\"mul\", 0.7)}}, -- Divine Shield\n    {type=\"IMMUNITY\", spellID=642, specs={Paladin.Prot, Paladin.Ret}, baseCD=300, modTalents={[51]=StaticMod(\"mul\", 0.7)}}, -- Divine Shield\n    {type=\"IMMUNITY\", spellID=31224, class=Rogue, baseCD=120}, -- Cloak of Shadows\n    -- Damage and Damage Buffs\n    {type=\"DAMAGE\", spellID=191427, specs={DH.Havoc}, baseCD=240}, -- Metamorphosis\n    {type=\"DAMAGE\", spellID=258925, specs={DH.Havoc}, baseCD=60, reqTalents={33}}, -- Fel Barrage\n    {type=\"DAMAGE\", spellID=206491, specs={DH.Havoc}, baseCD=120, reqTalents={73}}, -- Nemesis\n    {type=\"DAMAGE\", spellID=47568, specs={DK.Frost}, baseCD=120, version=6}, -- Empower Rune Weapon\n    {type=\"DAMAGE\", spellID=279302, specs={DK.Frost}, baseCD=180, reqTalents={63}}, -- Frostwyrm's Fury\n    {type=\"DAMAGE\", spellID=152279, specs={DK.Frost}, baseCD=120, reqTalents={73}}, -- Breath of Sindragosaa\n    {type=\"DAMAGE\", spellID=275699, specs={DK.Unholy}, baseCD=90, modTalents={[71]={CastDeltaMod(47541,-1), CastDeltaMod(207317,-1)}}, version=6}, -- Apocalypse\n    {type=\"DAMAGE\", spellID=42650, specs={DK.Unholy}, baseCD=480, modTalents={[71]={CastDeltaMod(47541,-5), CastDeltaMod(207317,-5)}}}, -- Army of the Dead\n    {type=\"DAMAGE\", spellID=49206, specs={DK.Unholy}, baseCD=180, reqTalents={73}}, -- Summon Gargoyle\n    {type=\"DAMAGE\", spellID=207289, specs={DK.Unholy}, baseCD=75, reqTalents={72}}, -- Unholy Frenzy\n    {type=\"DAMAGE\", spellID=194223, specs={Druid.Balance}, baseCD=180, reqTalents={51,52}}, -- Celestial Alignment\n    {type=\"DAMAGE\", spellID=202770, specs={Druid.Balance}, baseCD=60, reqTalents={72}, version=6}, -- Fury of Elune\n    {type=\"DAMAGE\", spellID=102560, specs={Druid.Balance}, baseCD=180, reqTalents={53}}, -- Incarnation: Chosen of Elune\n    {type=\"DAMAGE\", spellID=106951, specs={Druid.Feral}, baseCD=180, version=3}, -- Berserk\n    {type=\"DAMAGE\", spellID=102543, specs={Druid.Feral}, baseCD=180, reqTalents={53}}, -- Incarnation: King of the Jungle\n    {type=\"DAMAGE\", spellID=19574, specs={Hunter.BM}, baseCD=90, mods=CastDeltaMod(217200,-12)}, -- Bestial Wrath\n    {type=\"DAMAGE\", spellID=193530, specs={Hunter.BM}, baseCD=120}, -- Aspect of the Wild\n    {type=\"DAMAGE\", spellID=201430, specs={Hunter.BM}, baseCD=180, reqTalents={63}}, -- Stampede\n    {type=\"DAMAGE\", spellID=288613, specs={Hunter.MM}, baseCD=120, version=3}, -- Trueshot\n    {type=\"DAMAGE\", spellID=266779, specs={Hunter.SV}, baseCD=120}, -- Coordinated Assault\n    {type=\"DAMAGE\", spellID=55342, class=Mage, baseCD=120, reqTalents={32}}, -- Mirror Image\n    {type=\"DAMAGE\", spellID=12042, specs={Mage.Arcane}, baseCD=90}, -- Arcane Power\n    {type=\"DAMAGE\", spellID=190319, specs={Mage.Fire}, baseCD=120}, -- Combustion\n    {type=\"DAMAGE\", spellID=12472, specs={Mage.Frost}, baseCD=180}, -- Icy Veins\n    {type=\"DAMAGE\", spellID=115080, specs={Monk.WW}, baseCD=120}, -- Touch of Death\n    {type=\"DAMAGE\", spellID=123904, specs={Monk.WW}, baseCD=180, reqTalents={63}}, -- Invoke Xuen, the White Tiger\n    {type=\"DAMAGE\", spellID=137639, specs={Monk.WW}, baseCD=90, charges=2, reqTalents={71, 72}, version=6}, -- Storm, Earth, and Fire\n    {type=\"DAMAGE\", spellID=152173, specs={Monk.WW}, baseCD=90, reqTalents={73}}, -- Serenity\n    {type=\"DAMAGE\", spellID=152262, specs={Paladin.Prot}, baseCD=45, reqTalents={73}, version=6}, -- Seraphim\n    {type=\"DAMAGE\", spellID=31884, specs={Paladin.Prot}, baseCD=120, version=6}, -- Avenging Wrath\n    {type=\"DAMAGE\", spellID=31884, specs={Paladin.Ret}, baseCD=120, reqTalents={71,73}}, -- Avenging Wrath\n    {type=\"DAMAGE\", spellID=231895, specs={Paladin.Ret}, baseCD=120, reqTalents={72}}, -- Crusade\n    {type=\"DAMAGE\", spellID=280711, specs={Priest.Shadow}, baseCD=60, reqTalents={72}}, -- Dark Ascension\n    {type=\"DAMAGE\", spellID=193223, specs={Priest.Shadow}, baseCD=180, reqTalents={73}}, -- Surrender to Madness\n    {type=\"DAMAGE\", spellID=13750, specs={Rogue.Outlaw}, baseCD=180}, -- Adrenaline Rush\n    {type=\"DAMAGE\", spellID=51690, specs={Rogue.Outlaw}, baseCD=120, reqTalents={73}}, -- Killing Spree\n    {type=\"DAMAGE\", spellID=79140, specs={Rogue.Sin}, baseCD=120}, -- Vendetta\n    {type=\"DAMAGE\", spellID=121471, specs={Rogue.Sub}, baseCD=180}, -- Shadow Blades\n    {type=\"DAMAGE\", spellID=114050, specs={Shaman.Ele}, baseCD=180, reqTalents={73}}, -- Ascendance\n    {type=\"DAMAGE\", spellID=192249, specs={Shaman.Ele}, baseCD=150, reqTalents={42}, version=3}, -- Storm Elemental\n    {type=\"DAMAGE\", spellID=191634, specs={Shaman.Ele}, baseCD=60, reqTalents={72}, version=3}, -- Stormkeeper\n    {type=\"DAMAGE\", spellID=114051, specs={Shaman.Enh}, baseCD=180, reqTalents={73}}, -- Ascendance\n    {type=\"DAMAGE\", spellID=51533, specs={Shaman.Enh}, baseCD=180, modTalents={[71]=StaticMod(\"sub\", 30)}, version=6}, -- Feral Spirit\n    {type=\"DAMAGE\", spellID=205180, specs={Warlock.Affl}, baseCD=180}, -- Summon Darkglare\n    {type=\"DAMAGE\", spellID=113860, specs={Warlock.Affl}, baseCD=120, reqTalents={73}}, -- Dark Soul: Misery\n    {type=\"DAMAGE\", spellID=265187, specs={Warlock.Demo}, baseCD=90}, -- Summon Demonic Tyrant\n    {type=\"DAMAGE\", spellID=267217, specs={Warlock.Demo}, baseCD=180, reqTalents={73}}, -- Nether Portal\n    {type=\"DAMAGE\", spellID=113858, specs={Warlock.Destro}, baseCD=120, reqTalents={73}}, -- Dark Soul: Instability\n    {type=\"DAMAGE\", spellID=1122, specs={Warlock.Destro}, baseCD=180}, -- Summon Infernal\n    {type=\"DAMAGE\", spellID=227847, specs={Warrior.Arms}, baseCD=90, modTalents={[71]=ResourceSpendingMods(Warrior.Arms, 0.05)}}, -- Bladestorm\n    {type=\"DAMAGE\", spellID=107574, specs={Warrior.Arms}, baseCD=120, reqTalents={62}}, -- Avatar\n    {type=\"DAMAGE\", spellID=1719, specs={Warrior.Fury}, baseCD=90, modTalents={[72]=ResourceSpendingMods(Warrior.Fury, 0.05)}}, -- Recklessness\n    {type=\"DAMAGE\", spellID=46924, specs={Warrior.Fury}, baseCD=60, reqTalents={63}}, -- Bladestorm\n    {type=\"DAMAGE\", spellID=107574, specs={Warrior.Prot}, baseCD=120, modTalents={[71]=ResourceSpendingMods(Warrior.Prot, 0.1)}, version=6}, -- Avatar\n}\n\nZT.linkedSpellIDs = {\n    [19647]  = {119910, 132409, 115781}, -- Spell Lock\n    [132469] = {61391}, -- Typhoon\n    [191427] = {200166}, -- Metamorphosis\n    [106898] = {77761, 77764}, -- Stampeding Roar\n    [86659] = {212641}, -- Guardian of the Ancient Kings (+Glyph)\n}\n\nZT.separateLinkedSpellIDs = {\n    [86659] = {212641}, -- Guardian of the Ancient Kings (+Glyph)\n}\n\n--##############################################################################\n-- Handling custom spells specified by the user in the configuration\n\nlocal spellConfigFuncHeader = \"return function(DK,DH,Druid,Hunter,Mage,Monk,Paladin,Priest,Rogue,Shaman,Warlock,Warrior,StaticMod,DynamicMod,EventDeltaMod,CastDeltaMod,EventRemainingMod,CastRemainingMod,DispelMod)\"\n\nlocal function trim(s) -- From PiL2 20.4\n    return (s:gsub(\"^%s*(.-)%s*$\", \"%1\"))\nend\n\nlocal function addCustomSpell(spellConfig, i)\n    if not spellConfig or type(spellConfig) ~= \"table\" then\n        prerror(\"Custom Spell\", i, \"is not represented as a valid table\")\n        return\n    end\n    \n    if type(spellConfig.type) ~= \"string\" then\n        prerror(\"Custom Spell\", i, \"does not have a valid 'type' entry\")\n        return\n    end\n    \n    if type(spellConfig.spellID) ~= \"number\" then\n        prerror(\"Custom Spell\", i, \"does not have a valid 'spellID' entry\")\n        return\n    end\n    \n    if type(spellConfig.baseCD) ~= \"number\" then\n        prerror(\"Custom Spell\", i, \"does not have a valid 'baseCD' entry\")\n        return\n    end\n    \n    spellConfig.version = 10000\n    spellConfig.isCustom = true\n    \n    ZT.spells[#ZT.spells + 1] = spellConfig\nend\n\nfor i = 1,16 do\n    local spellConfig = ZT.config[\"custom\"..i]\n    if spellConfig then\n        spellConfig = trim(spellConfig)\n    \n        if spellConfig ~= \"\" then\n            local spellConfigFuncStr = spellConfigFuncHeader..\" return \"..spellConfig..\" end\"\n            local spellConfigFunc = WeakAuras.LoadFunction(spellConfigFuncStr, \"ZenTracker Custom Spell \"..i)\n            if spellConfigFunc then\n                local spellConfig = spellConfigFunc(DK,DH,Druid,Hunter,Mage,Monk,Paladin,Priest,Rogue,Shaman,Warlock,Warrior,\n                    StaticMod,DynamicMod,EventDeltaMod,CastDeltaMod,EventRemainingMod,CastRemainingMod,DispelMod)\n                addCustomSpell(spellConfig, i)\n            end\n        end\n    end\nend\n\n--##############################################################################\n-- Compiling the complete indexed tables of spells\n\nZT.spellsByRace = DefaultTable_Create(function() return DefaultTable_Create(function() return {} end) end)\nZT.spellsByClass = DefaultTable_Create(function() return DefaultTable_Create(function() return {} end) end)\nZT.spellsBySpec = DefaultTable_Create(function() return DefaultTable_Create(function() return {} end) end)\nZT.spellsByType = DefaultTable_Create(function() return {} end)\nZT.spellsByID = DefaultTable_Create(function() return {} end)\n\nfor _,spellInfo in ipairs(ZT.spells) do\n    -- Making the structuring for spell info more uniform\n    spellInfo.version = spellInfo.version or 1\n    spellInfo.specs = spellInfo.specs and Map_FromTable(spellInfo.specs)\n    spellInfo.mods = Table_Create(spellInfo.mods)\n    if spellInfo.modTalents then\n        for talent,mods in pairs(spellInfo.modTalents) do\n            spellInfo.modTalents[talent] = Table_Create(mods)\n        end\n    end\n\n    spellInfo.isRegistered = false\n    spellInfo.frontends = {}\n\n    -- Indexing for faster lookups\n    local spells\n    if spellInfo.race then\n        if spellInfo.class then\n            spells = ZT.spellsByRace[spellInfo.race][spellInfo.class]\n            spells[#spells + 1] = spellInfo\n        else\n            for _,class in pairs(AllClasses) do\n                spells = ZT.spellsByRace[spellInfo.race][class]\n                spells[#spells + 1] = spellInfo\n            end\n        end\n    elseif spellInfo.class then\n        if spellInfo.reqTalents then\n            for _,talent in ipairs(spellInfo.reqTalents) do\n                spells = ZT.spellsByClass[spellInfo.class][talent]\n                spells[#spells + 1] = spellInfo\n            end\n        else\n            if spellInfo.modTalents then\n                for talent,_ in pairs(spellInfo.modTalents) do\n                    spells = ZT.spellsByClass[spellInfo.class][talent]\n                    spells[#spells + 1] = spellInfo\n                end\n            end\n            spells = ZT.spellsByClass[spellInfo.class][\"Base\"]\n            spells[#spells + 1] = spellInfo\n        end\n    elseif spellInfo.specs then\n        for specID,_ in pairs(spellInfo.specs) do\n            if spellInfo.reqTalents then\n                for _,talent in ipairs(spellInfo.reqTalents) do\n                    spells = ZT.spellsBySpec[specID][talent]\n                    spells[#spells + 1] = spellInfo\n                end\n            else\n                if spellInfo.modTalents then\n                    for talent,_ in pairs(spellInfo.modTalents) do\n                        spells = ZT.spellsBySpec[specID][talent]\n                        spells[#spells + 1] = spellInfo\n                    end\n                end\n                spells = ZT.spellsBySpec[specID][\"Base\"]\n                spells[#spells + 1] = spellInfo\n            end\n        end\n    else\n        spells = ZT.spellsByClass[\"None\"]\n        spells[#spells + 1] = spellInfo\n    end\n\n    spells = ZT.spellsByType[spellInfo.type]\n    spells[#spells + 1] = spellInfo\n\n    spells = ZT.spellsByID[spellInfo.spellID]\n    spells[#spells + 1] = spellInfo\nend\n\n\n--##############################################################################\n-- Handling combatlog and WeakAura events by invoking specified callbacks\n\nZT.eventHandlers = { handlers = {} }\n\nfunction ZT.eventHandlers:add(type, spellID, sourceGUID, func, data)\n    local types = self.handlers[spellID]\n    if not types then\n        types = {}\n        self.handlers[spellID] = types\n    end\n    \n    local sources = types[type]\n    if not sources then\n        sources = {}\n        types[type] = sources\n    end\n    \n    local handlers = sources[sourceGUID]\n    if not handlers then\n        handlers = {}\n        sources[sourceGUID] = handlers\n    end\n    \n    handlers[func] = data\nend\n\nfunction ZT.eventHandlers:remove(type, spellID, sourceGUID, func)\n    local types = self.handlers[spellID]\n    if types then\n        local sources = types[type]\n        if sources then\n            local handlers = sources[sourceGUID]\n            if handlers then\n                handlers[func] = nil\n            end\n        end\n    end\nend\n\nfunction ZT.eventHandlers:removeAll(sourceGUID)\n    for _,spells in pairs(self.eventHandlers) do\n        for _,sources in pairs(spells) do\n            for GUID,handlers in pairs(sources) do\n                if GUID == sourceGUID then\n                    wipe(handlers)\n                end\n            end\n        end\n    end\nend\n\nlocal function fixSourceGUID(sourceGUID) -- Based on https://wago.io/p/Nnogga\n    local type = strsplit(\"-\",sourceGUID)\n    if type == \"Pet\" then\n        for unit in WA_IterateGroupMembers() do\n            if UnitGUID(unit..\"pet\") == sourceGUID then\n                sourceGUID = UnitGUID(unit)\n                break\n            end\n        end\n    end\n    \n    return sourceGUID\nend\n\nfunction ZT.eventHandlers:handle(type, spellID, sourceGUID)\n    local types = self.handlers[spellID]\n    if not types then\n        return\n    end\n    \n    local sources = types[type]\n    if not sources then\n        return\n    end\n    \n    local handlers = sources[sourceGUID]\n    if not handlers then\n        sourceGUID = fixSourceGUID(sourceGUID)\n        handlers = sources[sourceGUID]\n        if not handlers then\n            return\n        end\n    end\n    \n    for func,data in pairs(handlers) do\n        func(data, spellID)\n    end\nend\n\n--##############################################################################\n-- Managing timer callbacks in a way that allows for updates/removals\n\nZT.timers = { heap={}, callbackTimes={} }\n\nfunction ZT.timers:fixHeapUpwards(index)\n    local heap = self.heap\n    local timer = heap[index]\n\n    local parentIndex, parentTimer\n    while index > 1 do\n        parentIndex = floor(index / 2)\n        parentTimer = heap[parentIndex]\n        if timer.time >= parentTimer.time then\n            break\n        end\n\n        parentTimer.index = index\n        heap[index] = parentTimer\n        index = parentIndex\n    end\n\n    if timer.index ~= index then\n        timer.index = index\n        heap[index] = timer\n    end\nend\n\nfunction ZT.timers:fixHeapDownwards(index)\n    local heap = self.heap\n    local timer = heap[index]\n\n    local childIndex, minChildTimer, leftChildTimer, rightChildTimer\n    while true do\n        childIndex = 2 * index\n\n        leftChildTimer = heap[childIndex]\n        if leftChildTimer then\n            rightChildTimer = heap[childIndex + 1]\n            if rightChildTimer and (rightChildTimer.time < leftChildTimer.time) then\n                minChildTimer = rightChildTimer\n            else\n                minChildTimer = leftChildTimer\n            end\n        else\n            break\n        end\n\n        if timer.time <= minChildTimer.time then\n            break\n        end\n\n        childIndex = minChildTimer.index\n        minChildTimer.index = index\n        heap[index] = minChildTimer\n        index = childIndex\n    end\n\n    if timer.index ~= index then\n        timer.index = index\n        heap[index] = timer\n    end\nend\n\nfunction ZT.timers:setupCallback()\n    local minTimer = self.heap[1]\n    if minTimer then\n        local timeNow = GetTime()\n        local remaining = minTimer.time - timeNow\n        if remaining <= 0 then\n            self:handle()\n        elseif not self.callbackTimes[minTimer.time] then\n            for time,_ in pairs(self.callbackTimes) do\n                if time < timeNow then\n                    self.callbackTimes[time] = nil\n                end\n            end\n            self.callbackTimes[minTimer.time] = true\n\n            -- Note: This 0.001 avoids early callbacks that I ran into\n            remaining = remaining + 0.001\n            prdebug(DEBUG_TIMER, \"Setting callback for handling timers after\", remaining, \"seconds\")\n            C_Timer.After(remaining, function() self:handle() end)\n        end\n    end\nend\n\nfunction ZT.timers:handle()\n    local timeNow = GetTime()\n    local heap = self.heap \n    local minTimer = heap[1]\n\n    prdebug(DEBUG_TIMER, \"Handling timers at time\", timeNow, \"( Min @\", minTimer and minTimer.time or \"NONE\", \")\")\n    while minTimer and minTimer.time <= timeNow do\n        local heapSize = #heap\n        if heapSize > 1 then\n            heap[1] = heap[heapSize]\n            heap[1].index = 1\n            heap[heapSize] = nil\n            self:fixHeapDownwards(1)\n        else\n            heap[1] = nil\n        end\n\n        minTimer.index = -1\n        minTimer.callback()\n\n        minTimer = heap[1]\n    end\n\n    self:setupCallback()\nend\n\nfunction ZT.timers:add(time, callback)\n    local heap = self.heap \n\n    local index = #heap + 1\n    local timer = {time=time, callback=callback, index=index}\n    heap[index] = timer\n\n    self:fixHeapUpwards(index)\n    self:setupCallback()\n\n    return timer\nend\n\nfunction ZT.timers:cancel(timer)\n    local index = timer.index\n    if index == -1 then\n        return\n    end\n\n    timer.index = -1\n\n    local heap = self.heap\n    local heapSize = #heap\n    if heapSize ~= index then\n        heap[index] = heap[heapSize]\n        heap[index].index = index\n        heap[heapSize] = nil\n        self:fixHeapDownwards(index)\n        self:setupCallback()\n    else\n        heap[index] = nil\n    end\nend\n\nfunction ZT.timers:update(timer, time)\n    local heap = self.heap \n\n    local fixHeapFunc = (time <= timer.time) and self.fixHeapUpwards or self.fixHeapDownwards\n    timer.time = time\n\n    fixHeapFunc(self, timer.index)\n    self:setupCallback()\nend\n\n--##############################################################################\n-- Managing the set of <spell, member> pairs that are being watched\n\nlocal WatchInfo = { nextID = 1 }\nlocal WatchInfoMT = { __index = WatchInfo }\n\nZT.watching = {}\n\nfunction WatchInfo:create(member, specInfo, spellInfo, isHidden)\n    local watchInfo = {\n        watchID = self.nextID,\n        member = member,\n        spellInfo = spellInfo,\n        duration = member:calcSpellCD(spellInfo, specInfo),\n        expiration = GetTime(),\n        charges = spellInfo.charges,\n        isHidden = isHidden,\n        isLazy = spellInfo.isLazy,\n        ignoreSharing = false,\n    }\n    self.nextID = self.nextID + 1\n\n    watchInfo = setmetatable(watchInfo, WatchInfoMT)\n    return watchInfo\nend\n\nfunction WatchInfo:sendAddEvent()\n    if not self.isLazy and not self.isHidden then\n        local spellInfo = self.spellInfo\n        prdebug(DEBUG_EVENT, \"Sending ZT_ADD\", spellInfo.type, self.watchID, self.member.name, spellInfo.spellID, self.duration, self.charges)\n        WeakAuras.ScanEvents(\"ZT_ADD\", spellInfo.type, self.watchID, self.member, spellInfo.spellID, self.duration, self.charges)\n        \n        if self.expiration > GetTime() then\n            self:sendTriggerEvent()\n        end\n    end\nend\n\nfunction WatchInfo:sendTriggerEvent()\n    if self.isLazy then\n        self.isLazy = false\n        self:sendAddEvent()\n    end\n\n    if not self.isHidden then\n        prdebug(DEBUG_EVENT, \"Sending ZT_TRIGGER\", self.spellInfo.type, self.watchID, self.duration, self.expiration, self.charges)\n        WeakAuras.ScanEvents(\"ZT_TRIGGER\", self.spellInfo.type, self.watchID, self.duration, self.expiration, self.charges)\n    end\nend\n\nfunction WatchInfo:sendRemoveEvent()\n    if not self.isLazy and not self.isHidden then\n        prdebug(DEBUG_EVENT, \"Sending ZT_REMOVE\", self.spellInfo.type, self.watchID)\n        WeakAuras.ScanEvents(\"ZT_REMOVE\", self.spellInfo.type, self.watchID)\n    end\nend\n\nfunction WatchInfo:hide()\n    if not self.isHidden then\n        self:sendRemoveEvent()\n        self.isHidden = true\n    end\nend\n\nfunction WatchInfo:unhide(suppressAddEvent)\n    if self.isHidden then\n        self.isHidden = false\n        if not suppressAddEvent then\n            self:sendAddEvent()\n        end\n    end\nend\n\nfunction WatchInfo:toggleHidden(toggle, suppressAddEvent)\n    if toggle then\n        self:hide()\n    else\n        self:unhide(suppressAddEvent)\n    end\nend\n\nfunction WatchInfo:handleReadyTimer()\n    if self.charges then\n        self.charges = self.charges + 1\n\n        -- If we are not at max charges, update expiration and start a ready timer\n        if self.charges < self.spellInfo.charges then\n            self.expiration = self.expiration + self.duration\n            prdebug(DEBUG_TIMER, \"Adding ready timer of\", self.expiration, \"for spellID\", self.spellInfo.spellID)\n            self.readyTimer = ZT.timers:add(self.expiration, function() self:handleReadyTimer() end)\n        else\n            self.readyTimer = nil\n        end\n    else\n        self.readyTimer = nil\n    end\n\n    self:sendTriggerEvent()\nend\n\nfunction WatchInfo:updateReadyTimer() -- Returns true if a timer was set, false if handled immediately\n    if self.expiration > GetTime() then\n        if self.readyTimer then\n            prdebug(DEBUG_TIMER, \"Updating ready timer from\", self.readyTimer.time, \"to\", self.expiration, \"for spellID\", self.spellInfo.spellID)\n            ZT.timers:update(self.readyTimer, self.expiration)\n        else\n            prdebug(DEBUG_TIMER, \"Adding ready timer of\", self.expiration, \"for spellID\", self.spellInfo.spellID)\n            self.readyTimer = ZT.timers:add(self.expiration, function() self:handleReadyTimer() end)\n        end\n\n        return true\n    else\n        if self.readyTimer then\n            prdebug(DEBUG_TIMER, \"Canceling ready timer for spellID\", self.spellInfo.spellID)\n            ZT.timers:cancel(self.readyTimer)\n            self.readyTimer = nil\n        end\n\n        self:handleReadyTimer(self.expiration)\n        return false\n    end\nend\n\nfunction WatchInfo:startCD()\n    if self.charges then\n        if self.charges == 0 or self.charges == self.spellInfo.charges then\n            self.expiration = GetTime() + self.duration\n            self:updateReadyTimer()\n        end\n\n        if self.charges > 0 then\n            self.charges = self.charges - 1\n        end\n    else\n        self.expiration = GetTime() + self.duration\n        self:updateReadyTimer()\n    end\n\n    self:sendTriggerEvent()\nend\n\nfunction WatchInfo:updateCDDelta(delta)\n    self.expiration = self.expiration + delta\n\n    local time = GetTime()\n    local remaining = self.expiration - time\n\n    if self.charges and remaining <= 0 then\n        local chargesGained = 1 - floor(remaining / self.duration)\n        self.charges = max(self.charges + chargesGained, self.spellInfo.charges)\n        if self.charges == self.spellInfo.charges then\n            self.expiration = time\n        else\n            self.expiration = self.expiration + (chargesGained * self.duration)\n        end\n    end\n\n    if self:updateReadyTimer() then\n        self:sendTriggerEvent()\n    end\nend\n\nfunction WatchInfo:updateCDRemaining(remaining)\n    -- Note: This assumes that when remaining is 0 and the spell uses charges then it gains a charge\n    if self.charges and remaining == 0 then\n        if self.charges < self.spellInfo.charges then\n            self.charges = self.charges + 1\n        end\n\n        -- Below maximum charges the expiration time doesn't change\n        if self.charges < self.spellInfo.charges then\n            self:sendTriggerEvent() \n        else\n            self.expiration = GetTime()\n            self:updateReadyTimer()\n        end\n    else\n        self.expiration = GetTime() + remaining\n        if self:updateReadyTimer() then\n            self:sendTriggerEvent() \n        end\n    end\nend\n\nfunction WatchInfo:updatePlayerCharges()\n    charges = GetSpellCharges(self.spellInfo.spellID)\n    if charges then\n        self.charges = charges\n    end\nend\n\nfunction WatchInfo:updatePlayerCD(spellID, ignoreIfReady)\n    local startTime, duration, enabled\n    if self.charges then\n        local charges, maxCharges\n        charges, maxCharges, startTime, duration = GetSpellCharges(spellID)\n        if charges == maxCharges then\n            startTime = 0\n        end\n        enabled = 1\n        self.charges = charges\n    else\n        startTime, duration, enabled = GetSpellCooldown(spellID)\n    end\n\n    if enabled ~= 0 then\n        local ignoreRateLimit\n        if startTime ~= 0 then\n            ignoreRateLimit = (self.expiration < GetTime())\n            self.duration = duration\n            self.expiration = startTime + duration\n        else\n            ignoreRateLimit = true\n            self.expiration = GetTime()\n        end\n        \n        if (not ignoreIfReady) or (startTime ~= 0) then\n            ZT:sendCDUpdate(self, ignoreRateLimit)\n            self:sendTriggerEvent()\n        end\n    end\nend\n\nfunction ZT:togglePlayerHandlers(watchInfo, enable)\n    local spellID = watchInfo.spellInfo.spellID\n    local toggleHandlerFunc = enable and self.eventHandlers.add or self.eventHandlers.remove\n    \n    if enable then\n        WeakAuras.WatchSpellCooldown(spellID)\n    end\n    toggleHandlerFunc(self.eventHandlers, \"SPELL_COOLDOWN_CHANGED\", spellID, 0, watchInfo.updatePlayerCD, watchInfo)\n    \n    local links = self.separateLinkedSpellIDs[spellID]\n    if links then\n        for _,linkedSpellID in ipairs(links) do\n            if enable then\n                WeakAuras.WatchSpellCooldown(linkedSpellID)\n            end\n            toggleHandlerFunc(self.eventHandlers, \"SPELL_COOLDOWN_CHANGED\", linkedSpellID, 0, watchInfo.updatePlayerCD, watchInfo)\n        end\n    end\nend\n\nfunction ZT:toggleCombatLogHandlers(watchInfo, enable, specInfo)\n    local spellInfo = watchInfo.spellInfo\n    local spellID = spellInfo.spellID\n    local member = watchInfo.member\n    local toggleHandlerFunc = enable and self.eventHandlers.add or self.eventHandlers.remove\n    \n    if not spellInfo.ignoreCast then\n        toggleHandlerFunc(self.eventHandlers, \"SPELL_CAST_SUCCESS\", spellID, member.GUID, watchInfo.startCD, watchInfo)\n        \n        local links = self.linkedSpellIDs[spellID]\n        if links then\n            for _,linkedSpellID in ipairs(links) do\n                toggleHandlerFunc(self.eventHandlers, \"SPELL_CAST_SUCCESS\", linkedSpellID, member.GUID, watchInfo.startCD, watchInfo)\n            end\n        end\n    end\n    \n    for _,modifier in pairs(spellInfo.mods) do\n        if modifier.type == \"Dynamic\" then\n            for _,handlerInfo in ipairs(modifier.handlers) do\n                toggleHandlerFunc(self.eventHandlers, handlerInfo.type, handlerInfo.spellID, member.GUID, handlerInfo.handler, watchInfo)\n            end\n        end\n    end\n    \n    if spellInfo.modTalents then\n        for talent, modifiers in pairs(spellInfo.modTalents) do\n            if specInfo.talentsMap[talent] then\n                for _, modifier in pairs(modifiers) do\n                    if modifier.type == \"Dynamic\" then\n                        for _,handlerInfo in ipairs(modifier.handlers) do\n                            toggleHandlerFunc(self.eventHandlers, handlerInfo.type, handlerInfo.spellID, member.GUID, handlerInfo.handler, watchInfo)\n                        end\n                    end\n                end\n            end\n        end\n    end\nend\n\nfunction ZT:watch(spellInfo, member, specInfo)\n    -- Only handle registered spells (or those for the player)\n    if not spellInfo.isRegistered and not member.isPlayer then\n        return\n    end\n    \n    local spellID = spellInfo.spellID\n    local spells = self.watching[spellID]\n    if not spells then\n        spells = {}\n        self.watching[spellID] = spells\n    end\n\n    specInfo = specInfo or member.specInfo\n    local isHidden = (member.isPlayer and not spellInfo.isRegistered) or member.isHidden\n    \n    local watchInfo = spells[member.GUID]\n    local isNew = (watchInfo == nil)\n    if not watchInfo then\n        watchInfo = WatchInfo:create(member, specInfo, spellInfo, isHidden)\n        spells[member.GUID] = watchInfo\n        member.watching[spellID] = watchInfo\n    else\n        watchInfo.spellInfo = spellInfo\n        watchInfo.charges = spellInfo.charges\n        watchInfo.duration = member:calcSpellCD(spellInfo, specInfo)\n        watchInfo:toggleHidden(isHidden, true) -- We will send the ZT_ADD event later\n    end\n\n    if member.isPlayer then\n        watchInfo:updatePlayerCharges()\n        watchInfo:sendAddEvent()\n\n        watchInfo:updatePlayerCD(spellID, true)\n        \n        local links = self.separateLinkedSpellIDs[spellID]\n        if links then\n            for _,linkedSpellID in ipairs(links) do\n                watchInfo:updatePlayerCD(linkedSpellID, true)\n            end\n        end\n    else\n        watchInfo:sendAddEvent()\n    end \n\n    if member.isPlayer and not TEST_CLEU then\n        if isNew then\n            self:togglePlayerHandlers(watchInfo, true)\n        end\n    elseif member.tracking == \"CombatLog\" or (member.tracking == \"Sharing\" and member.spellsVersion < spellInfo.version) then\n        watchInfo.ignoreSharing = true\n        if not isNew then\n            self:toggleCombatLogHandlers(watchInfo, false, member.specInfo)\n        end\n        self:toggleCombatLogHandlers(watchInfo, true, specInfo)\n    else\n        watchInfo.ignoreSharing = false\n    end\nend\n\nfunction ZT:unwatch(spellInfo, member)\n    -- Only handle registered spells (or those for the player)\n    if not spellInfo.isRegistered and not member.isPlayer then\n        return\n    end\n\n    local spellID = spellInfo.spellID\n    local sources = self.watching[spellID]\n    if not sources then\n        return\n    end\n    \n    local watchInfo = sources[member.GUID]\n    if not watchInfo then\n        return\n    end\n\n    -- Ignoring unwatch requests if the spellInfo doesn't match (yet spellID does)\n    -- (Note: This serves to ease updating after spec/talent changes)\n    if watchInfo.spellInfo ~= spellInfo then\n        return\n    end\n\n    if member.isPlayer and not TEST_CLEU then\n        -- If called due to front-end unregistration, only hide it to allow continued sharing of updates\n        -- Otherwise, called due to a spec/talent change, so actually unwatch it\n        if not spellInfo.isRegistered then\n            watchInfo:hide()\n            return\n        end\n\n        self:togglePlayerHandlers(watchInfo, false)\n    elseif member.tracking == \"CombatLog\"  or (member.tracking == \"Sharing\" and member.spellsVersion < spellInfo.version) then\n        self:toggleCombatLogHandlers(watchInfo, false, member.specInfo)\n    end\n\n    if watchInfo.readyTimer then\n        self.timers:cancel(watchInfo.readyTimer)\n    end\n    \n    sources[member.GUID] = nil\n    member.watching[spellID] = nil\n    \n    watchInfo:sendRemoveEvent()\nend\n\n--##############################################################################\n-- Tracking types registered by front-end WAs\n\nfunction ZT:registerSpells(frontendID, spells)\n    for _,spellInfo in ipairs(spells) do\n        local frontends = spellInfo.frontends\n        if next(frontends, nil) ~= nil then\n            -- Some front-end already registered for this spell, so just send ADD events\n            local watched = self.watching[spellInfo.spellID]\n            if watched then\n                for _,watchInfo in pairs(watched) do\n                    if watchInfo.spellInfo == spellInfo then\n                        watchInfo:sendAddEvent()\n                    end\n                end\n            end\n        else\n            -- No front-end was registered for this spell, so watch as needed\n            spellInfo.isRegistered = true\n            for _,member in pairs(self.members) do\n                if member:knowsSpell(spellInfo) and not member.isIgnored then\n                    self:watch(spellInfo, member)\n                end\n            end\n        end\n\n        frontends[frontendID] = true\n    end\nend\n\nfunction ZT:unregisterSpells(frontendID, spells)\n    for _,spellInfo in ipairs(spells) do\n        local frontends = spellInfo.frontends\n        frontends[frontendID] = nil\n    \n        if next(frontends, nil) == nil then\n            local watched = self.watching[spellInfo.spellID]\n            if watched then\n                for _,watchInfo in pairs(watched) do\n                    if watchInfo.spellInfo == spellInfo then\n                        self:unwatch(spellInfo, watchInfo.member)\n                    end\n                end\n            end\n            spellInfo.isRegistered = false\n        end\n    end\nend\n\nfunction ZT:toggleFrontEndRegistration(frontendID, info, toggle)\n    local infoType = type(info)\n    local registerFunc = toggle and self.registerSpells or self.unregisterSpells\n\n    if infoType == \"string\" then -- Registration info is a type\n        prdebug(DEBUG_EVENT, \"Received\", toggle and \"ZT_REGISTER\" or \"ZT_UNREGISTER\", \"from\", frontendID, \"for type\", info)\n        registerFunc(self, frontendID, self.spellsByType[info])\n    elseif infoType == \"number\" then -- Registration info is a spellID\n        prdebug(DEBUG_EVENT, \"Received\", toggle and \"ZT_REGISTER\" or \"ZT_UNREGISTER\", \"from\", frontendID, \"for spellID\", info)\n        registerFunc(self, frontendID, self.spellsByID[info])\n    elseif infoType == \"table\" then -- Registration info is a table of types or spellIDs\n        infoType = type(info[1])\n\n        if infoType == \"string\" then\n            prdebug(DEBUG_EVENT, \"Received\", toggle and \"ZT_REGISTER\" or \"ZT_UNREGISTER\", \"from\", frontendID, \"for multiple types\")\n            for _,type in ipairs(info) do\n                registerFunc(self, frontendID, self.spellsByType[type])\n            end\n        elseif infoType == \"number\" then\n            prdebug(DEBUG_EVENT, \"Received\", toggle and \"ZT_REGISTER\" or \"ZT_UNREGISTER\", \"from\", frontendID, \"for multiple spells\")\n            for _,spellID in ipairs(info) do\n                registerFunc(self, frontendID, self.spellsByID[spellID])\n            end\n        end\n    end\nend\n\nfunction ZT:registerFrontEnd(frontendID, info)\n    self:toggleFrontEndRegistration(frontendID, info, true)\nend\n\nfunction ZT:unregisterFrontEnd(frontendID, info)\n    self:toggleFrontEndRegistration(frontendID, info, false)\nend\n\n\n--##############################################################################\n-- Managing member information (e.g., spec, talents) for all group members\n\nlocal Member = { }\nlocal MemberMT = { __index = Member }\n\nZT.members = {}\nZT.inEncounter = false\n\nlocal membersToIgnore = {}\nif ZT.config[\"ignoreList\"] then\n    local ignoreListStr = trim(ZT.config[\"ignoreList\"])\n    if ignoreListStr ~= \"\" then\n        ignoreListStr = \"return \"..ignoreListStr\n        local ignoreList = WeakAuras.LoadFunction(ignoreListStr, \"ZenTracker Ignore List\")\n        if ignoreList and (type(ignoreList) == \"table\") then\n            for i,name in ipairs(ignoreList) do\n                if type(name) == \"string\" then\n                    membersToIgnore[strlower(name)] = true\n                else\n                    prerror(\"Ignore list entry\", i, \"is not a string. Skipping...\")\n                end\n            end\n        else\n            prerror(\"Ignore list is not in the form of a table. For example: {\\\"Zenlia\\\", \\\"Cistara\\\"}\")\n        end\n    end\nend\n\nfunction Member:create(memberInfo)\n    local member = memberInfo\n    member.watching = {}\n    member.tracking = member.tracking and member.tracking or \"CombatLog\"\n    member.isPlayer = (member.GUID == UnitGUID(\"player\"))\n    member.isHidden = false\n    member.isReady = false\n\n    return setmetatable(member, MemberMT)\nend\n\nfunction Member:gatherInfo()\n    local _,className,_,race,_,name = GetPlayerInfoByGUID(self.GUID)\n    self.name = name and gsub(name, \"%-[^|]+\", \"\") or nil\n    self.class = className and AllClasses[className] or nil\n    self.classID = className and AllClasses[className].ID or nil\n    self.classColor = className and RAID_CLASS_COLORS[className] or nil\n    self.race = race\n    \n    if (self.tracking == \"Sharing\") and self.name then\n        prdebug(DEBUG_TRACKING, self.name, \"is using ZenTracker with spellsVersion\", self.spellsVersion)\n    end\n\n    if self.name and membersToIgnore[strlower(self.name)] then\n        self.isIgnored = true\n        return false\n    end\n\n    self.isReady = (self.name ~= nil) and (self.classID ~= nil) and (self.race ~= nil)\n    return self.isReady\nend\n\nfunction Member:knowsSpell(spellInfo, specInfo)\n    specInfo = specInfo or self.specInfo\n    \n    if spellInfo.race and spellInfo.race ~= self.race then\n        return false\n    end\n    if spellInfo.class and spellInfo.class.ID ~= self.classID then\n        return false\n    end\n    if spellInfo.specs and (not specInfo.specID or not spellInfo.specs[specInfo.specID]) then\n        return false\n    end\n    \n    if not spellInfo.reqTalents then\n        return true\n    end\n    for _,t in ipairs(spellInfo.reqTalents) do\n        if specInfo.talentsMap[t] then\n            return true\n        end\n    end\n\n    return false\nend\n\nfunction Member:calcSpellCD(spellInfo, specInfo)\n    specInfo = specInfo or self.specInfo\n    \n    local cooldown = spellInfo.baseCD\n    if spellInfo.modTalents then\n        for talent,modifiers in pairs(spellInfo.modTalents) do\n            if specInfo.talentsMap[talent] then\n                for _,modifier in ipairs(modifiers) do\n                    if modifier.type == \"Static\" then\n                        if modifier.sub then\n                            cooldown = cooldown - modifier.sub\n                        elseif modifier.mul then\n                            cooldown = cooldown * modifier.mul\n                        end\n                    end\n                end\n            end\n        end\n    end\n    \n    return cooldown\nend\n\nfunction Member:hide()\n    if not self.isHidden and not self.isPlayer then\n        self.isHidden = true\n        for _,watchInfo in pairs(self.watching) do\n            watchInfo:hide()\n        end\n    end\nend\n\nfunction Member:unhide()\n    if self.isHidden and not self.isPlayer then\n        self.isHidden = false\n        for _,watchInfo in pairs(self.watching) do\n            watchInfo:unhide()\n        end\n    end\nend\n\nfunction ZT:addOrUpdateMember(memberInfo)\n    local specInfo = memberInfo.specInfo\n\n    local member = self.members[memberInfo.GUID]\n    if not member then\n        member = Member:create(memberInfo)\n        self.members[member.GUID] = member\n    end\n\n    if member.isIgnored then\n        return\n    end\n\n    -- Update if the member is now ready, or if they swapped specs/talents\n    local needsUpdate = not member.isReady and member:gatherInfo()\n    local needsSpecUpdate = specInfo.specID and (specInfo.specID ~= member.specInfo.specID)\n    local needsTalentUpdate = specInfo.talents and (specInfo.talents ~= member.specInfo.talents)\n\n    if member.isReady and (needsUpdate or needsSpecUpdate or needsTalentUpdate) then\n        -- This handshake comes before any cooldown updates for newly watched spells\n        if member.isPlayer then\n            self:sendHandshake(specInfo)\n        end\n\n        -- If we are in an encounter, hide the member if they are outside the player's instance\n        -- (Note: Previously did this on member creation, which seemed to introduce false positives)\n        if needsUpdate and self.inEncounter and not member.isPlayer then\n            local _,_,_,instanceID = UnitPosition(\"player\")\n            local _,_,_,mInstanceID = UnitPosition(self.inspectLib:GuidToUnit(member.GUID))\n            if instanceID ~= mInstanceID then\n                member:hide()\n            end\n        end\n\n        -- Generic Spells (i.e., no class/race/spec)\n        -- Note: These are set once and never change\n        if needsUpdate then\n            for _,spellInfo in ipairs(self.spellsByClass[\"None\"]) do\n                self:watch(spellInfo, member, specInfo)\n            end\n        end\n\n        -- Class Spells (Base) + Race Spells\n        -- Note: These are set once and never change\n        if needsUpdate then\n            for _,spellInfo in ipairs(self.spellsByRace[member.race][member.class]) do\n                self:watch(spellInfo, member, specInfo)\n            end\n\n            for _,spellInfo in ipairs(self.spellsByClass[member.class][\"Base\"]) do\n                self:watch(spellInfo, member, specInfo)\n            end\n        end\n\n        -- Class Spells (Talented)\n        if needsUpdate or needsTalentUpdate then\n            local classSpells = self.spellsByClass[member.class]\n\n            for talent,_ in pairs(specInfo.talentsMap) do\n                for _,spellInfo in ipairs(classSpells[talent]) do\n                    self:watch(spellInfo, member, specInfo)\n                end\n            end\n\n            if needsTalentUpdate then\n                for talent,_ in pairs(member.specInfo.talentsMap) do\n                    if not specInfo.talentsMap[talent] then\n                        for _,spellInfo in ipairs(classSpells[talent]) do\n                            if not member:knowsSpell(spellInfo, specInfo) then\n                                self:unwatch(spellInfo, member)\n                            else\n                                self:watch(spellInfo, member, specInfo)\n                            end\n                        end\n                    end\n                end\n            end\n        end\n\n        -- Specialization Spells (Base/Talented)\n        if (needsUpdate or needsSpecUpdate or needsTalentUpdate) and specInfo.specID then\n            local specSpells = self.spellsBySpec[specInfo.specID]\n\n            if needsUpdate or needsSpecUpdate then\n                for _,spellInfo in ipairs(specSpells[\"Base\"]) do\n                    self:watch(spellInfo, member, specInfo)\n                end\n            end\n            for talent,_ in pairs(specInfo.talentsMap) do\n                for _,spellInfo in ipairs(specSpells[talent]) do\n                    self:watch(spellInfo, member, specInfo)\n                end\n            end\n\n            if (needsSpecUpdate or needsTalentUpdate) and member.specInfo.specID then\n                specSpells = self.spellsBySpec[member.specInfo.specID]\n\n                if needsSpecUpdate then\n                    for _,spellInfo in ipairs(specSpells[\"Base\"]) do\n                        if not member:knowsSpell(spellInfo, specInfo) then\n                            self:unwatch(spellInfo, member)\n                        else\n                            self:watch(spellInfo, member, specInfo)\n                        end\n                    end\n                end\n\n                for talent,_ in pairs(member.specInfo.talentsMap) do\n                    if not specInfo.talentsMap[talent] then\n                        for _,spellInfo in ipairs(specSpells[talent]) do\n                            if not member:knowsSpell(spellInfo, specInfo) then\n                                self:unwatch(spellInfo, member)\n                            else\n                                self:watch(spellInfo, member, specInfo)\n                            end\n                        end\n                    end\n                end\n            end\n        end\n        \n        member.specInfo = specInfo\n    end\n \n    -- If tracking changed from \"CombatLog\" to \"Sharing\", remove unnecessary event handlers and send a handshake/updates\n    if (member.tracking == \"CombatLog\") and (memberInfo.tracking == \"Sharing\") then\n        member.tracking = \"Sharing\"\n        member.spellsVersion = memberInfo.spellsVersion\n        \n        if member.name then\n            prdebug(DEBUG_TRACKING, member.name, \"is using ZenTracker with spell list version\", member.spellsVersion)\n        end\n        \n        for _,watchInfo in pairs(member.watching) do\n            if watchInfo.spellInfo.version <= member.spellsVersion then\n                watchInfo.ignoreSharing = false\n                self:toggleCombatLogHandlers(watchInfo, false, member.specInfo)\n            end\n        end\n        \n        self:sendHandshake()\n        local time = GetTime()\n        for _,watchInfo in pairs(self.members[UnitGUID(\"player\")].watching) do\n            if watchInfo.expiration > time then\n                self:sendCDUpdate(watchInfo)\n            end\n        end\n    end\nend\n\n--##############################################################################\n-- Handling raid and M+ encounters\n\nfunction ZT:resetEncounterCDs()\n    for _,member in pairs(self.members) do\n        local resetMemberCDs = not member.isPlayer and member.tracking ~= \"Sharing\"\n\n        for _,watchInfo in pairs(member.watching) do\n            if resetMemberCDs and watchInfo.duration >= 180 then\n                watchInfo.charges = watchInfo.spellInfo.charges\n                watchInfo:updateCDRemaining(0)\n            end\n\n            -- If spell uses lazy tracking and it was triggered, reset lazy tracking at this point\n            if watchInfo.spellInfo.isLazy and not watchInfo.isLazy then\n                watchInfo:sendRemoveEvent()\n                watchInfo.isLazy = true\n            end\n        end\n    end\nend\n\nfunction ZT:startEncounter(event)\n    self.inEncounter = true\n\n    local _,_,_,instanceID = UnitPosition(\"player\")\n    for _,member in pairs(self.members) do\n        local _,_,_,mInstanceID = UnitPosition(self.inspectLib:GuidToUnit(member.GUID))\n        if mInstanceID ~= instanceID then\n            member:hide()\n        else\n            member:unhide() -- Note: Shouldn't be hidden, but just in case...\n        end\n    end\n    \n    if event == \"CHALLENGE_MODE_START\" then\n        self:resetEncounterCDs()\n    end\nend\n\nfunction ZT:endEncounter(event)\n    if self.inEncounter then\n        self.inEncounter = false\n        for _,member in pairs(self.members) do\n            member:unhide()\n        end\n    end\n    \n    if event == \"ENCOUNTER_END\" then\n        self:resetEncounterCDs()\n    end\nend\n\n--##############################################################################\n-- Handling the exchange of addon messages with other ZT clients\n--\n-- Message Format = <Protocol Version (%d)>:<Message Type (%s)>:<Member GUID (%s)>...\n--   Type = \"H\" (Handshake)\n--     ...:<Spec ID (%d)>:<Talents (%s)>:<IsInitial? (%d) [2]>:<Spells Version (%d) [2]>\n--   Type = \"U\" (CD Update)\n--     ...:<Spell ID (%d)>:<Duration (%f)>:<Remaining (%f)>:<#Charges (%d) [3]>\n\nZT.protocolVersion = 3\n\nZT.timeBetweenHandshakes = 5 --seconds\nZT.timeOfNextHandshake = 0\nZT.handshakeTimer = nil\n\nZT.timeBetweenCDUpdates = 5 --seconds (per spellID)\nZT.timeOfNextCDUpdate = {}\nZT.updateTimers = {}\n\nlocal function sendMessage(message)\n    prdebug(DEBUG_MESSAGE, \"Sending message '\"..message..\"'\")\n\n    if not IsInGroup() and not IsInRaid() then\n        return\n    end\n\n    local channel = IsInGroup(2) and \"INSTANCE_CHAT\" or \"RAID\"\n    C_ChatInfo.SendAddonMessage(\"ZenTracker\", message, channel)\nend\n\nZT.hasSentHandshake = false\nfunction ZT:sendHandshake(specInfo)\n    local time = GetTime()\n    if time < self.timeOfNextHandshake then\n        if not self.handshakeTimer then\n            self.handshakeTimer = self.timers:add(self.timeOfNextHandshake, function() self:sendHandshake() end)\n        end\n        return\n    end\n    \n    local GUID = UnitGUID(\"player\")\n    if not self.members[GUID] then\n        return -- This may happen when rejoining a group after login, so ignore this attempt to send a handshake\n    end\n\n    specInfo = specInfo or self.members[GUID].specInfo\n    local specID = specInfo.specID or 0\n    local talents = specInfo.talents or \"\"\n    local isInitial = self.hasSentHandshake and 0 or 1\n    local message = string.format(\"%d:H:%s:%d:%s:%d:%d\", self.protocolVersion, GUID, specID, talents, isInitial, self.spellsVersion)\n    sendMessage(message)\n    \n    self.hasSentHandshake = true\n    self.timeOfNextHandshake = time + self.timeBetweenHandshakes\n    if self.handshakeTimer then\n        self.timers:cancel(self.handshakeTimer)\n        self.handshakeTimer = nil\n    end\nend\n\nfunction ZT:sendCDUpdate(watchInfo, ignoreRateLimit)\n    local spellID = watchInfo.spellInfo.spellID\n    local time = GetTime()\n\n    local timer = self.updateTimers[spellID]\n    if ignoreRateLimit then\n        if timer then\n            self.timers:cancel(timer)\n            self.updateTimers[spellID] = nil\n        end\n    elseif timer then\n        return\n    else\n        local timeOfNextCDUpdate = self.timeOfNextCDUpdate[spellID]\n        if timeOfNextCDUpdate and (time < timeOfNextCDUpdate) then\n            self.updateTimers[spellID] = self.timers:add(timeOfNextCDUpdate, function() self:sendCDUpdate(watchInfo, true) end)\n            return\n        end\n    end\n    \n    local GUID = watchInfo.member.GUID\n    local duration = watchInfo.duration\n    local remaining = watchInfo.expiration - time\n    if remaining < 0 then\n        remaining = 0\n    end\n    local charges = watchInfo.charges and tostring(watchInfo.charges) or \"-\"\n    local message = string.format(\"%d:U:%s:%d:%0.2f:%0.2f:%s\", self.protocolVersion, GUID, spellID, duration, remaining, charges)\n    sendMessage(message)\n    \n    self.timeOfNextCDUpdate[spellID] = time + self.timeBetweenCDUpdates\nend\n\nfunction ZT:handleHandshake(mGUID, specID, talents, isInitial, spellsVersion)\n    specID = tonumber(specID)\n    if specID == 0 then\n        specID = nil\n    end\n    \n    local talentsMap = {}\n    if talents ~= \"\" then\n        for index in talents:gmatch(\"%d%d\") do\n            index = tonumber(index)\n            talentsMap[index] = true\n        end\n    else\n        talents = nil\n    end\n    \n    -- Protocol V2: Assume false if not present\n    if isInitial == \"1\" then\n        isInitial = true\n    else\n        isInitial = false\n    end\n    \n    -- Protocol V2: Assume spellsVersion is 1 if not present\n    if spellsVersion then\n        spellsVersion = tonumber(spellsVersion)\n        if not spellsVersion then\n            spellsVersion = 1\n        end\n    else\n        spellsVersion = 1\n    end\n    \n    local memberInfo = {\n        GUID = mGUID,\n        specInfo = {\n            specID = specID,\n            talents = talents,\n            talentsMap = talentsMap,\n        },\n        tracking = \"Sharing\",\n        spellsVersion = spellsVersion,\n    }\n    \n    self:addOrUpdateMember(memberInfo)\n    if isInitial then\n        self:sendHandshake()\n    end\nend\n\nfunction ZT:handleCDUpdate(mGUID, spellID, duration, remaining, charges)\n    local member = self.members[mGUID]\n    if not member or not member.isReady then\n        return\n    end\n    \n    spellID = tonumber(spellID)\n    duration = tonumber(duration)\n    remaining = tonumber(remaining)\n    if not spellID or not duration or not remaining then\n        return\n    end\n    \n    local sources = self.watching[spellID]\n    if sources then\n        local watchInfo = sources[member.GUID]\n        if not watchInfo or watchInfo.ignoreSharing then\n            return\n        end\n       \n        -- Protocol V3: Ignore charges if not present\n        -- (Note that this shouldn't happen because of spell list version handling)\n        if charges then\n            charges = tonumber(charges)\n            if charges then\n                watchInfo.charges = charges\n            end\n        end\n\n        watchInfo.duration = duration\n        watchInfo.expiration = GetTime() + remaining\n        watchInfo:sendTriggerEvent()\n    end\nend\n\nfunction ZT:handleMessage(message)\n    local protocolVersion, type, mGUID, arg1, arg2, arg3, arg4, arg5 = strsplit(\":\", message)\n    \n    -- Ignore any messages sent by the player\n    if mGUID == UnitGUID(\"player\") then\n        return\n    end\n    \n    prdebug(DEBUG_MESSAGE, \"Received message '\"..message..\"'\")\n    \n    if type == \"H\" then     -- Handshake\n        self:handleHandshake(mGUID, arg1, arg2, arg3, arg4, arg5)\n    elseif type == \"U\" then -- CD Update\n        self:handleCDUpdate(mGUID, arg1, arg2, arg3, arg4, arg5)\n    else\n        return\n    end\nend\n\nif not C_ChatInfo.RegisterAddonMessagePrefix(\"ZenTracker\") then\n    prerror(\"Could not register addon message prefix. Defaulting to local-only cooldown tracking.\")\nend\n\n--##############################################################################\n-- Callback functions for libGroupInspecT for updating/removing members\n\nZT.delayedUpdates = {}\n\nfunction ZT:libInspectUpdate(event, GUID, unit, info)\n    local specID = info.global_spec_id\n    if specID == 0 then\n        specID = nil\n    end\n    \n    local talents = nil\n    local talentsMap = {}\n    if info.talents then\n        for _,talentInfo in pairs(info.talents) do\n            local index = (talentInfo.tier * 10) + talentInfo.column\n            if not talents then\n                talents = \"\"..index\n            else\n                talents = talents..\",\"..index\n            end\n            \n            talentsMap[index] = true\n        end\n    end\n    \n    local memberInfo = {\n        GUID = GUID,\n        specInfo = {\n            specID = specID,\n            talents = talents,\n            talentsMap = talentsMap,\n        },\n    }\n    \n    if not self.delayedUpdates then\n        self:addOrUpdateMember(memberInfo)\n    else\n        self.delayedUpdates[#self.delayedUpdates + 1] = memberInfo\n    end\nend\n\nfunction ZT:libInspectRemove(event, GUID)\n    local member = self.members[GUID]\n    if not member then\n        return\n    end\n    \n    for _,watchInfo in pairs(member.watching) do\n        self:unwatch(watchInfo.spellInfo, member)\n    end\n    self.members[GUID] = nil\nend\n\nfunction ZT:handleDelayedUpdates()\n    if self.delayedUpdates then\n        for _,memberInfo in ipairs(self.delayedUpdates) do\n            self:addOrUpdateMember(memberInfo)\n        end\n        self.delayedUpdates = nil\n    end\nend\n\nZT.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\", true)\n\nif ZT.inspectLib then\n    WeakAurasSaved[\"ZenTracker_AuraEnv\"] = nil -- Flushing out past garbage :)\n\n    local prevZT = _G[\"ZenTracker_AuraEnv\"]\n    if prevZT then\n        ZT.inspectLib.UnregisterAllCallbacks(prevZT)\n        if prevZT.timers then\n            prevZT.timers.heap = {}\n        end\n    end\n    _G[\"ZenTracker_AuraEnv\"] = ZT\n\n    -- If prevZT exists, we know it wasn't a login or reload. If it doesn't exist,\n    -- it still might not be a login or reload if the user is installing ZenTracker\n    -- for the first time. IsLoginFinished() takes care of the second case.\n    if prevZT or WeakAuras.IsLoginFinished() then\n        ZT.delayedUpdates = nil\n    end\n    \n    ZT.inspectLib.RegisterCallback(ZT, \"GroupInSpecT_Update\", \"libInspectUpdate\")\n    ZT.inspectLib.RegisterCallback(ZT, \"GroupInSpecT_Remove\", \"libInspectRemove\")\n\n    for unit in WA_IterateGroupMembers() do\n        local GUID = UnitGUID(unit)\n        if GUID then\n            local info = ZT.inspectLib:GetCachedInfo(GUID)\n            if info then\n                ZT:libInspectUpdate(\"Init\", GUID, unit, info)\n            else\n                ZT.inspectLib:Rescan(GUID)\n            end\n        end\n    end\nelse\n    prerror(\"LibGroupInSpecT-1.1 not found\")\nend\n",
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
						["custom"] = "function(event,...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local _, eventType, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID = ...\n        aura_env.eventHandlers:handle(eventType, spellID, sourceGUID)\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
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
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 68,
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
				["faction"] = {
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
				["pvptalent"] = {
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["_table"] = "d",
			["preferToUpdate"] = false,
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["shadowYOffset"] = -1,
			["semver"] = "1.1.13",
			["tocversion"] = 80200,
			["id"] = "ZenTracker (ZT) Main",
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
					["text"] = "You may add custom entries to the spell list here. The format consists of a Lua table with mandatory entries of type, spellID, baseCD and optional entries of class, specs, race, mods, modTalents, reqTalents. You can look at how such values are defined in the Actions tab 'OnInit' code.",
					["width"] = 2,
				}, -- [2]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "Example: {type=\"INTERRUPT\", spellID=183752, class=DH, baseCD=15}",
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
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "Ignore List",
					["width"] = 2,
				}, -- [22]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "You can provide a list of player names here whose cooldowns should be ignored.",
					["width"] = 2,
				}, -- [23]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "Example: {\"Zenlia\", \"Cistara\"}",
					["width"] = 2,
				}, -- [24]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [25]
				{
					["type"] = "input",
					["key"] = "ignoreList",
					["useLength"] = false,
					["name"] = "",
					["length"] = 10,
					["default"] = "",
					["width"] = 2,
				}, -- [26]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [27]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [28]
			},
			["frameStrata"] = 1,
			["width"] = 6.9999642372131,
			["uid"] = "ejYTBRnd5n5",
			["config"] = {
				["custom2"] = "",
				["custom8"] = "",
				["custom15"] = "",
				["custom5"] = "",
				["custom6"] = "",
				["custom4"] = "",
				["custom1"] = "",
				["custom7"] = "",
				["custom14"] = "",
				["custom13"] = "",
				["custom12"] = "",
				["ignoreList"] = "",
				["custom11"] = "",
				["custom9"] = "",
				["custom3"] = "",
				["custom10"] = "",
			},
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["automaticWidth"] = "Auto",
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
		["Horrific Visions - Chest Zone 2"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone2\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Spirits\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Dwarven\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone2\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Spirits\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Dwarven\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 2)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 2)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 2)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 CHEST_FOUND ",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CHEST_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest\" and message == 2 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 2 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 2 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["zoom"] = 0,
			["url"] = "https://wago.io/VisionCounter/29",
			["regionType"] = "icon",
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
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 2",
			["width"] = 70,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "qClTapAg03I",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["icon"] = true,
			["desaturate"] = false,
		},
		["Horrific Visions - Crystal Zone 5"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone5\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Honor\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Mage\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone5\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Honor\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Mage\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 5)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 5)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 5)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["names"] = {
						},
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 5 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 5 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 5 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["zoom"] = 0,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["url"] = "https://wago.io/VisionCounter/29",
			["selfPoint"] = "CENTER",
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["uid"] = "SlEnrdSnDDd",
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 5",
			["width"] = 70,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 80,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["icon"] = true,
		},
		["Green"] = {
			["color"] = {
				0.23529411764706, -- [1]
				0.78823529411765, -- [2]
				0.062745098039216, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = 106,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"黑\"\nelse\n    aura_env.kind={\n        \"|cff6A84BCPoison|r\",\n        \"|cffFF7373Breath Fire|r\",\n        \"|cffFFAA6CHealing|r\",\n        \"|cff6CFFFDDefensive|r\",\n        \"|cffF0FF00Sanity|r\",\n    }\n    aura_env.color=\"Black\"\nend\nif not aura_env.button then \n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    \n    local function createHighlightTexture(self)\n        local texture = self:CreateTexture(nil, \"OVERLAY\")\n        self.highlight = texture\n        texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n        texture:SetBlendMode(\"ADD\")\n        texture:SetAllPoints(self)\n        texture:SetAlpha(.4)\n        return texture\n    end\n    \n    local function onButtonEnter(self)\n        if not self.highlight then\n            createHighlightTexture(self)\n        end\n        self.highlight:Show()\n        self:SetBackdropBorderColor(1, 1, 1)\n    end\n    \n    local function onButtonLeave(self)\n        if self.highlight then\n            self.highlight:Hide()\n        end\n        self:SetBackdropBorderColor(0, 0, 0)\n    end\n    \n    b:RegisterForClicks(\"LeftButtonDown\")\n    \n    b:SetScript(\"OnClick\", function()\n            \n            WeakAuras.ScanEvents(\"OrgColor\",2)\n    end)\n    \n    b:SetScript(\"OnEnter\", onButtonEnter)\n    b:SetScript(\"OnLeave\", onButtonLeave)\n    \n    aura_env.button = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["use_unit"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "OrgColor",
						["custom"] = "function(_,id)\n    if id == 1 then\n        aura_env.text=aura_env.kind[5]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[1]\n    elseif id ==3 then\n        aura_env.text=aura_env.kind[2]\n    elseif id ==4 then\n        aura_env.text=aura_env.kind[3]\n    elseif id ==5 then\n        aura_env.text=aura_env.kind[4]\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2",
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
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["xOffset"] = -573,
			["regionType"] = "icon",
			["desaturate"] = false,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["icon"] = true,
			["conditions"] = {
			},
			["uid"] = "426zhODp8kO",
			["semver"] = "1.0.9",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Green",
			["width"] = 80,
			["alpha"] = 0.9,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/23q54wiYR/10",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
		},
		["Dungeon - Targeted Spells"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Targeted Spells", -- [1]
				"Sound when targeted by a boss", -- [2]
			},
			["xOffset"] = 8,
			["preferToUpdate"] = false,
			["groupIcon"] = 1033497,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/BFADungeonTargetedSpells/65",
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
			["tocversion"] = 80300,
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
			["internalVersion"] = 33,
			["useLimit"] = true,
			["align"] = "CENTER",
			["version"] = 65,
			["subRegions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["gridType"] = "RD",
			["justify"] = "LEFT",
			["radius"] = 200,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["authorOptions"] = {
			},
			["borderSize"] = 2,
			["anchorPerUnit"] = "UNITFRAME",
			["displayText"] = "%p",
			["uid"] = "zSrl30KxJ6i",
			["yOffset"] = 0,
			["sort"] = "none",
			["borderInset"] = 1,
			["space"] = 1,
			["semver"] = "3.0.3",
			["frameStrata"] = 6,
			["id"] = "Dungeon - Targeted Spells",
			["selfPoint"] = "CENTER",
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 3,
			["rotation"] = 0,
			["customTextUpdate"] = "update",
			["outline"] = "OUTLINE",
			["conditions"] = {
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
			["background"] = "None",
		},
		["Tosh ZT Party Offensives Icons"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
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
			["url"] = "https://wago.io/PartyCDs/24",
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
				["use_ingroup"] = true,
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
				["role"] = {
					["multi"] = {
					},
				},
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
			["borderBackdrop"] = "Solid",
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
			["displayTextLeft"] = "%n",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["textSize"] = 12,
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
						["events"] = "ZT_ADD, ZT_TRIGGER, ZT_REMOVE,  GROUP_ROSTER_UPDATE",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["custom"] = "function(allstates, event, type, watchID, ...)\n    if event == \"ZT_ADD\" then\n        local member, spellID, duration, charges = ...\n        \n        -- If this WA was just loaded\n        if not type then\n            -- Since there is no unload event, hooking into region:Collapse() which\n            -- is called from WeakAuras.UnloadDisplays(...)\n            aura_env.region.ZTRegTypes = aura_env.regTypes\n            aura_env.region.ZTRegSpells = aura_env.regSpells\n            \n            if not aura_env.region.ZTCollapse then\n                aura_env.region.ZTCollapse = aura_env.region.Collapse\n            end\n            \n            function aura_env.region:Collapse(...)\n                if self.ZTRegTypes and (not WeakAuras.loaded[self.id]) then\n                    WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.regTypes, self.id)\n                    WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.regSpells, self.id)\n                    self.ZTRegTypes = nil\n                    self.ZTRegSpells = nil\n                end\n                \n                self.ZTCollapse(self, ...)\n            end\n            \n            -- Register for all types/spells\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regTypes, aura_env.region.id)\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regSpells, aura_env.region.id)\n        else\n            local isTypeReg = aura_env.types[type]\n            local isSpellReg = aura_env.spells[spellID]\n            local isInterested = (isTypeReg and not isSpellReg) or (not isTypeReg and isSpellReg)\n            if not allstates[watchID]\n            and isInterested\n            and (not member.isPlayer or aura_env.config[\"reg\"][\"type\"][\"showOwn\"..type])\n            then\n                local unit\n                for u in WA_IterateGroupMembers() do\n                    if UnitName(u) == member.name then unit = u end\n                end\n                \n                local state = {}\n                state.show = true\n                state.changed = true\n                state.autoHide = false\n                state.resort = false\n                \n                state.progressType = 'timed'\n                state.duration = duration\n                state.expirationTime = GetTime()\n                \n                state.ID = watchID\n                state.type = type\n                state.spellId = spellID\n                state.stacks = charges\n                state.member = member\n                state.unit = unit\n                \n                state.name = member.name\n                state.icon = select(3, GetSpellInfo(spellID))\n                \n                allstates[watchID] = state\n                \n                return true\n            end\n        end\n    elseif event == \"ZT_TRIGGER\" then\n        local duration, expiration, charges = ...\n        \n        local state = allstates[watchID]\n        if state then\n            state.changed = true\n            state.duration = duration\n            state.expirationTime = expiration \n            state.stacks = charges\n            \n            return true\n        end\n    elseif event == \"ZT_REMOVE\" then\n        local state = allstates[watchID]\n        if state then\n            state.show = false\n            state.changed = true\n            return true\n        end\n    elseif event == \"GROUP_ROSTER_UPDATE\" then\n        local now = GetTime()\n        if not aura_env.last or aura_env.last < now - 1 then\n            aura_env.last = now\n            local aura_env = aura_env\n            C_Timer.After(0.5, function() \n                    WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \n            end)            \n        end\n    end\nend\n",
						["unevent"] = "timed",
						["customVariables"] = "{\n    expirationTime = true,\n    duration = true,\n    stacks = true,\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["rotateText"] = "NONE",
			["internalVersion"] = 33,
			["desc"] = "Requires ZenTracker (ZT) backend https://wago.io/r14U746B7",
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
			["stickyDuration"] = false,
			["anchorFrameType"] = "SCREEN",
			["textFlags"] = "OUTLINE",
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
			["xOffset"] = 0,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["id"] = "Tosh ZT Party Offensives Icons",
			["sparkOffsetX"] = 0,
			["timerSize"] = 12,
			["stacksFont"] = "Accidental Presidency",
			["sparkRotationMode"] = "AUTO",
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["spark"] = false,
			["borderSize"] = 1,
			["backgroundColor"] = {
				0.21176470588235, -- [1]
				0.21176470588235, -- [2]
				0.21176470588235, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderInFront"] = true,
			["sparkHeight"] = 30,
			["height"] = 28,
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
							["13750"] = false,
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
							["288613"] = false,
							["1122"] = false,
							["113860"] = false,
							["106951"] = false,
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
							["201430"] = false,
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
						["IMMUNITY"] = {
							["45438"] = false,
							["642"] = false,
							["196555"] = false,
							["31224"] = false,
							["186265"] = false,
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
						["RAIDCD"] = {
							["97462"] = false,
							["31821"] = false,
							["98008"] = false,
							["62618"] = false,
							["196718"] = false,
							["204150"] = false,
							["207399"] = false,
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
			["semver"] = "1.0.16",
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["useAdjustededMax"] = false,
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
		["Automatic Chest/Crystal Counter - Horrific Visions"] = {
			["controlledChildren"] = {
				"Horrific Visions - Chest Text", -- [1]
				"Horrific Visions - Crystal Text", -- [2]
				"Crystal/Chest/Zone Handler", -- [3]
				"Horrific Visions - Chest Zone 1", -- [4]
				"Horrific Visions - Chest Zone 2", -- [5]
				"Horrific Visions - Chest Zone 3", -- [6]
				"Horrific Visions - Chest Zone 4", -- [7]
				"Horrific Visions - Chest Zone 5", -- [8]
				"Horrific Visions - Crystal Zone 1", -- [9]
				"Horrific Visions - Crystal Zone 2", -- [10]
				"Horrific Visions - Crystal Zone 3", -- [11]
				"Horrific Visions - Crystal Zone 4", -- [12]
				"Horrific Visions - Crystal Zone 5", -- [13]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 1304.3349609375,
			["preferToUpdate"] = false,
			["yOffset"] = -316.8324584960938,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/VisionCounter/29",
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
			["internalVersion"] = 33,
			["selfPoint"] = "BOTTOMLEFT",
			["version"] = 29,
			["subRegions"] = {
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
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 1,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["uid"] = "Zgkd9VzyjS)",
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
		["Horrific Visions - Crystal Text"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 83.000061035156,
			["displayText"] = "Crystals",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/29",
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
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 29,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
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
			["fontSize"] = 18,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["preferToUpdate"] = false,
			["fixedWidth"] = 200,
			["shadowYOffset"] = -1,
			["automaticWidth"] = "Auto",
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Text",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "tCuBUWq6lEV",
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
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
		},
		["Horrific Visions - Chest Text"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 1.0000610351563,
			["displayText"] = "Chests",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/29",
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
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 29,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
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
			["fontSize"] = 18,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["preferToUpdate"] = false,
			["fixedWidth"] = 200,
			["shadowYOffset"] = -1,
			["automaticWidth"] = "Auto",
			["justify"] = "LEFT",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "YXSiqTYRak2",
			["semver"] = "1.0.28",
			["authorOptions"] = {
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
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
			["selfPoint"] = "BOTTOM",
		},
		["Horrific Visions - Chest Zone 4"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone4\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Drag\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Trade\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone4\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Drag\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Trade\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 4)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 4)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 4)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["names"] = {
						},
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 CHEST_FOUND ",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CHEST_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest\" and message == 4 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 4 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 4 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/VisionCounter/29",
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 4",
			["width"] = 70,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["uid"] = "QVDiqhhkLf1",
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
		},
		["Encounter/Combat Time"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "[%c]",
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return \"00:00\" end    \n    local runningClock\n    \n    if aura_env.activate == nil then return \"00:00\" end\n    if aura_env.activate == true then        \n        if not aura_env.startTime then aura_env.startTime = GetTime() end\n        runningClock = GetTime() - aura_env.startTime\n    elseif aura_env.activate == false then \n        runningClock = aura_env.endTime - aura_env.startTime \n        \n    end\n    \n    return format(\"%02.f:%02.f\", floor(runningClock / 60) , floor(runningClock % 60))\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "TOP",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/rJ45xv4rm/1",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.region.myBackground:Show()",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.region.myBackground:Hide()",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "if not aura_env.region.myBackground then    \n    aura_env.region.myBackground = CreateFrame(\"Frame\",nil,UIParent)\n    aura_env.region.myBackground:SetBackdrop({\n            bgFile = [[Interface/Buttons/WHITE8X8]], \n            edgeFile = [[Interface/Buttons/WHITE8X8]], \n            edgeSize = 1, \n    })\n    aura_env.region.myBackground:SetBackdropColor(19/255, 19/255, 19/255, 1)\n    aura_env.region.myBackground:SetBackdropBorderColor(0, 0, 0)\nend\naura_env.region.myBackground:SetFrameStrata(\"LOW\")\naura_env.region.myBackground:SetFrameLevel(1)\n\naura_env.region.myBackground:SetPoint(\"TOPLEFT\",aura_env.region,\"TOPLEFT\",0,0)\naura_env.region.myBackground:SetPoint(\"BOTTOMRIGHT\",aura_env.region,\"BOTTOMRIGHT\",0,0)",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["custom_hide"] = "custom",
						["type"] = "custom",
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["names"] = {
						},
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["custom"] = "function(e) \n    \n    if e == \"ENCOUNTER_START\" then\n        if not InCombatLockdown() then\n            aura_env.startTime = GetTime()\n            aura_env.activate = true\n            return true\n        end        \n    end\n    \n    if e == \"PLAYER_REGEN_DISABLED\" then\n        if not WeakAuras.CurrentEncounter then\n            aura_env.startTime = GetTime()\n            aura_env.activate = true\n            return true\n        end\n    end\n    \n    --fixes login into combat\n    if e == \"PLAYER_ENTERING_WORLD\" and InCombatLockdown() then\n        aura_env.startTime = GetTime()\n        aura_env.activate = true\n        return true\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["unit"] = "player",
						["check"] = "event",
						["events"] = "PLAYER_ENTERING_WORLD ENCOUNTER_START ENCOUNTER_END PLAYER_REGEN_ENABLED PLAYER_REGEN_DISABLED",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["custom"] = "function(e)\n    \n    if e == \"ENCOUNTER_END\" then        \n        if not InCombatLockdown() then\n            aura_env.endTime = GetTime()        \n            aura_env.activate = false\n            return true\n        end\n        \n    end\n    \n    if e == \"PLAYER_REGEN_ENABLED\" then\n        if not WeakAuras.CurrentEncounter then\n            aura_env.endTime = GetTime()\n            aura_env.activate = false\n            return true\n        end        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["selfPoint"] = "TOP",
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 15.000045776367,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 25,
			["shadowXOffset"] = 1,
			["anchorFrameFrame"] = "ElvUF_Player",
			["regionType"] = "text",
			["preferToUpdate"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["semver"] = "1.0.0",
			["justify"] = "CENTER",
			["wordWrap"] = "WordWrap",
			["id"] = "Encounter/Combat Time",
			["shadowYOffset"] = -1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "S9ruAXK2uX4",
			["config"] = {
			},
			["width"] = 38.000019073486,
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
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 58,
			["automaticWidth"] = "Auto",
			["xOffset"] = 0,
		},
		["Purple"] = {
			["xOffset"] = -573,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = 13,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/23q54wiYR/10",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"黑\"\nelse\n    aura_env.kind={\n        \"|cff6A84BCPoison|r\",\n        \"|cffFF7373Breath Fire|r\",\n        \"|cffFFAA6CHealing|r\",\n        \"|cff6CFFFDDefensive|r\",\n        \"|cffF0FF00Sanity|r\",\n    }\n    aura_env.color=\"Black\"\nend\nif not aura_env.button then \n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    \n    local function createHighlightTexture(self)\n        local texture = self:CreateTexture(nil, \"OVERLAY\")\n        self.highlight = texture\n        texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n        texture:SetBlendMode(\"ADD\")\n        texture:SetAllPoints(self)\n        texture:SetAlpha(.4)\n        return texture\n    end\n    \n    local function onButtonEnter(self)\n        if not self.highlight then\n            createHighlightTexture(self)\n        end\n        self.highlight:Show()\n        self:SetBackdropBorderColor(1, 1, 1)\n    end\n    \n    local function onButtonLeave(self)\n        if self.highlight then\n            self.highlight:Hide()\n        end\n        self:SetBackdropBorderColor(0, 0, 0)\n    end\n    \n    b:RegisterForClicks(\"LeftButtonDown\")\n    \n    b:SetScript(\"OnClick\", function()\n            \n            WeakAuras.ScanEvents(\"OrgColor\",5)\n    end)\n    \n    b:SetScript(\"OnEnter\", onButtonEnter)\n    b:SetScript(\"OnLeave\", onButtonLeave)\n    \n    aura_env.button = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
						["events"] = "OpenShowCardGM",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["duration"] = "1",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "OrgColor",
						["custom"] = "function(_,id)\n    if id == 1 then\n        aura_env.text=aura_env.kind[2]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[3]\n    elseif id ==3 then\n        aura_env.text=aura_env.kind[4]\n    elseif id ==4 then\n        aura_env.text=aura_env.kind[5]\n    elseif id ==5 then\n        aura_env.text=aura_env.kind[1]\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2",
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
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["desaturate"] = false,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["icon"] = true,
			["conditions"] = {
			},
			["config"] = {
			},
			["alpha"] = 0.9,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Purple",
			["width"] = 80,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.9",
			["uid"] = "SN1I30xW3s1",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["color"] = {
				0.73725490196078, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["internalVersion"] = 33,
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["animate"] = false,
			["limit"] = 3,
			["scale"] = 1,
			["rowSpace"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["useLimit"] = true,
			["gridType"] = "RD",
			["constantFactor"] = "RADIUS",
			["rotation"] = 0,
			["borderOffset"] = 4,
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["id"] = "Tosh ZT Party Defensives",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "RIGHT",
			["config"] = {
			},
			["uid"] = "5J(nNDJR5qt",
			["grow"] = "LEFT",
			["conditions"] = {
			},
			["useAnchorPerUnit"] = true,
			["anchorPerUnit"] = "UNITFRAME",
		},
		["Horrific Visions - Chest Zone 3"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone3\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Wisdom\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"OldTown\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone3\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Wisdom\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"OldTown\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 3)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 3)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 3)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["unit"] = "player",
						["names"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 CHEST_FOUND ",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CHEST_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest\" and message == 3 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 3 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 3 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/VisionCounter/29",
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 3",
			["width"] = 70,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["uid"] = "5caV9Q3y6b1",
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
		},
		["Sound when targeted by a boss"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = " ",
			["yOffset"] = -40,
			["anchorPoint"] = "TOP",
			["url"] = "https://wago.io/BFADungeonTargetedSpells/65",
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
			["tocversion"] = 80300,
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
			["internalVersion"] = 33,
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
			["version"] = 65,
			["height"] = 102.63238525391,
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["cooldownEdge"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["selfPoint"] = "TOP",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["threatUnit"] = "target",
						["event"] = "Threat Situation",
						["use_threatUnit"] = true,
						["custom"] = "function(states, event, unit)\n    if unit == \"boss1\"\n    or unit == \"boss2\"\n    or unit == \"boss3\"\n    or unit == \"boss4\"\n    or unit == \"boss5\"\n    then\n        if UnitIsUnit(\"player\", unit..\"target\") then\n            states[\"\"] = {\n                show = true,\n                changed = true,\n            }\n        else\n            local state = states[\"\"]\n            if state then\n                state.show = false\n                state.changed = true \n            end\n        end\n    end\n    return true\nend",
						["events"] = "UNIT_TARGET:boss",
						["spellIds"] = {
						},
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
			["anchorFrameType"] = "SELECTFRAME",
			["text2"] = "%p",
			["text1"] = " ",
			["anchorFrameParent"] = false,
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "3.0.3",
			["justify"] = "LEFT",
			["text1Point"] = "BOTTOMRIGHT",
			["id"] = "Sound when targeted by a boss",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["width"] = 100.44454956055,
			["xOffset"] = 0,
			["uid"] = "VCMkmT9LnOU",
			["inverse"] = false,
			["anchorFrameFrame"] = "UIParent",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["parent"] = "Dungeon - Targeted Spells",
			["preferToUpdate"] = false,
		},
		["Targeted Spells"] = {
			["text2Point"] = "CENTER",
			["auto"] = true,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.stacks and aura_env.state.stacks > 1 then\n        return aura_env.state.stacks\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
					["custom"] = "-- update 25/04/20 -- by Buds - https://wago.io/BFADungeonTargetedSpells\n\n-- Spell list\naura_env.spells = {}\nfor i, v in ipairs(aura_env.config.spells) do\n    if v.spellId ~= 0 then\n        local opt = v.options\n        aura_env.spells[v.spellId] = { icon = opt[1], glow = opt[2], nameplate = opt[3], sound = opt[4], bigIcon = opt[5] }\n    end\nend\n\n\n-- TODO move this in aura_env.config\naura_env.blacklist_npc = {\n    [120651] = true, -- explosive orb affix\n}\naura_env.blacklist_spell = {\n    \n}\n\n-- DO NOT EDIT BELOW --\n\naura_env.loaded = false\n\naura_env.isBlackListed = function(spellId, unit)\n    local guid = UnitGUID(unit)\n    local npc_id= select(6,strsplit(\"-\",guid))\n    return aura_env.blacklist_spell[spellId] or aura_env.blacklist_npc[npc_id]\nend\n\naura_env.allcasts = {}\n\n-- Nameplates Text\nlocal fonts = {}\nlocal subtext = WeakAuras.GetData(aura_env.id).subRegions[2]\nlocal SharedMedia = LibStub(\"LibSharedMedia-3.0\")\n\naura_env.addFontToNameplate = function(unit, target)\n    local nameplate = C_NamePlate.GetNamePlateForUnit(unit)\n    if nameplate then\n        local nameplateUnit = nameplate.namePlateUnitToken or nameplate.unitFrame and nameplate.unitFrame.unit\n        if nameplateUnit then\n            local font = fonts[nameplateUnit]\n            if not font then\n                fonts[nameplateUnit] = UIParent:CreateFontString(nil, \"OVERLAY\")\n                font = fonts[nameplateUnit]\n                local fontPath = SharedMedia:Fetch(\"font\", subtext.text_font)\n                font:SetFont(fontPath or STANDARD_TEXT_FONT, subtext.text_fontSize or 20, subtext.text_fontType or \"OUTLINE\")\n                font:SetShadowColor(unpack(subtext.text_shadowColor))\n                font:SetShadowOffset(subtext.text_shadowXOffset, subtext.text_shadowYOffset)\n            end\n            font:ClearAllPoints()\n            local selfPoint = subtext.text_selfPoint == \"AUTO\" and \"CENTER\" or subtext.text_selfPoint\n            local anchorPoint = subtext.text_anchorPoint:gsub(\"%OUTER_\", \"\"):gsub(\"%INNER_\", \"\")\n            font:SetPoint(selfPoint, nameplate, anchorPoint, subtext.text_anchorXOffset, subtext.text_anchorYOffset)\n            font:SetText(WA_ClassColorName(target))\n            font:Show()\n            return nameplateUnit\n        end\n    end\n    return true\nend\n\naura_env.removeFontFromNameplate = function(unit)\n    local font = fonts[unit]\n    if font then\n        font:Hide()\n    end\nend\n\n\naura_env.loaded = true",
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
						["spellIds"] = {
						},
						["events"] = "NAME_PLATE_UNIT_ADDED NAME_PLATE_UNIT_REMOVED UNIT_SPELLCAST_CHANNEL_START UNIT_SPELLCAST_CHANNEL_STOP UNIT_SPELLCAST_CHANNEL_UPDATE UNIT_SPELLCAST_DELAYED UNIT_SPELLCAST_FAILED UNIT_SPELLCAST_FAILED_QUIET UNIT_SPELLCAST_INTERRUPTED UNIT_SPELLCAST_START UNIT_SPELLCAST_STOP UNIT_TARGET ENCOUNTER_END",
						["custom"] = "function(allstates, event, sourceUnit)\n    if not aura_env.loaded then return false end\n    if event == \"ENCOUNTER_END\" then\n        -- reset aura state to avoid ghost icons between pulls\n        for _,cast in pairs(aura_env.allcasts) do\n            if cast.nameplate then\n                aura_env.removeFontFromNameplate(cast.nameplate)\n            end\n        end\n        aura_env.allcasts = {}\n        for _,state in pairs(allstates) do\n            state.show = false\n            state.changed = true\n        end\n        return true\n    end\n    if sourceUnit and UnitIsEnemy(sourceUnit, \"player\") then\n        local allcasts = aura_env.allcasts\n        local sourceGUID = UnitGUID(sourceUnit)\n        local iconChanged = false\n        local cast = allcasts[sourceGUID]\n        \n        if event == \"UNIT_SPELLCAST_START\"\n        or event == \"UNIT_SPELLCAST_DELAYED\" \n        or event == \"UNIT_SPELLCAST_CHANNEL_START\"\n        or event == \"UNIT_SPELLCAST_CHANNEL_UPDATE\"\n        or event == \"UNIT_TARGET\"\n        then\n            if not cast then\n                -- check if unit is casting\n                local castType\n                local name,_,texture,castStart,castEnd,_,_,notInterruptible,spellId = UnitCastingInfo(sourceUnit)\n                if name then\n                    castType = \"cast\"\n                else\n                    name,_,texture,castStart,castEnd,_,notInterruptible,spellId = UnitChannelInfo(sourceUnit)\n                    if name then\n                        castType = \"channel\"\n                    end\n                end\n                \n                if spellId and not aura_env.isBlackListed(spellId, sourceUnit) then\n                    local spellInList = aura_env.spells[spellId]\n                    -- find npc's target\n                    local targetUnit = sourceUnit..\"target\"\n                    if UnitExists(targetUnit) then\n                        for groupmember in WA_IterateGroupMembers() do\n                            if UnitIsUnit(targetUnit, groupmember) then\n                                local targetGUID = UnitGUID(groupmember)\n                                local targeted = targetGUID == WeakAuras.myGUID\n                                local showIcon = (spellInList and spellInList.icon) or (not spellInList and aura_env.config.icon.enable)\n                                local showGlow = spellInList and spellInList.glow\n                                local showNameplate\n                                if aura_env.config.nameplate.enable == 1 then\n                                    showNameplate = true\n                                elseif aura_env.config.nameplate.enable == 2 then\n                                    showNameplate = (spellInList and spellInList.nameplate) or (not spellInList)\n                                elseif aura_env.config.nameplate.enable == 3 then\n                                    showNameplate = spellInList and spellInList.nameplate\n                                elseif aura_env.config.nameplate.enable == 4 then\n                                    showNameplate = false\n                                end\n                                local playSound = targeted and spellInList and spellInList.sound\n                                local bigIcon = targeted and spellInList and spellInList.bigIcon\n                                allcasts[sourceGUID] = {\n                                    name = name,\n                                    icon = texture,\n                                    start = castStart/1000,\n                                    expirationTime = castEnd/1000,\n                                    spellId = spellId,\n                                    target = groupmember,\n                                    targetGUID = targetGUID,\n                                    targeted = targeted,\n                                    spellInList = spellInList,\n                                    notInterruptible = notInterruptible,\n                                    castType = castType,\n                                    showIcon = showIcon,\n                                    showGlow = showGlow,\n                                    bigIcon = bigIcon,\n                                    showNameplate = showNameplate,\n                                    nameplate = showNameplate and aura_env.addFontToNameplate(\n                                        sourceUnit,\n                                        groupmember\n                                    ),\n                                    playSound = playSound\n                                }\n                                iconChanged = true\n                                break\n                            end\n                        end\n                    end\n                end\n            else\n                if UnitExists(sourceUnit) then\n                    if event == \"UNIT_SPELLCAST_DELAYED\" \n                    or event == \"UNIT_SPELLCAST_CHANNEL_UPDATE\"\n                    or event == \"UNIT_SPELLCAST_CHANNEL_START\"\n                    then\n                        local castType\n                        local name,_,_,castStart,castEnd,_,_,notInterruptible,spellId = UnitCastingInfo(sourceUnit)\n                        if name then\n                            castType = \"cast\"\n                        else\n                            name,_,_,castStart,castEnd,_,notInterruptible,spellId = UnitChannelInfo(sourceUnit)\n                            if name then\n                                castType = \"channel\"\n                            end\n                        end\n                        if spellId then\n                            cast.notInterruptible = notInterruptible\n                            cast.castType = castType\n                            cast.start = castStart/1000\n                            cast.expirationTime = castEnd/1000\n                            cast.changed = true\n                            iconChanged = true\n                        end\n                    elseif event == \"UNIT_TARGET\" then\n                        local targetUnit = sourceUnit..\"target\"\n                        if UnitExists(targetUnit) then\n                            for groupmember in WA_IterateGroupMembers() do\n                                if UnitIsUnit(targetUnit, groupmember) then\n                                    if cast.nameplate then\n                                        aura_env.removeFontFromNameplate(cast.nameplate)\n                                    end\n                                    \n                                    local targetGUID = UnitGUID(groupmember)\n                                    local targeted = targetGUID == WeakAuras.myGUID\n                                    local spellId = cast.spellId\n                                    cast.changed = true\n                                    cast.target = groupmember\n                                    cast.targetGUID = targetGUID\n                                    cast.targeted = targeted\n                                    \n                                    if cast.showNameplate then\n                                        cast.nameplate = aura_env.addFontToNameplate(\n                                            sourceUnit,\n                                            groupmember\n                                        )\n                                    end\n                                    \n                                    iconChanged = true\n                                    break\n                                end\n                            end\n                        end\n                    end\n                end\n            end\n        elseif cast then\n            if event == \"UNIT_SPELLCAST_STOP\" --  or event == \"UNIT_SPELLCAST_SUCCEEDED\"\n            or event == \"UNIT_SPELLCAST_INTERRUPTED\"\n            or event == \"UNIT_SPELLCAST_FAILED\"\n            or event == \"UNIT_SPELLCAST_FAILED_QUIET\"\n            or event == \"UNIT_SPELLCAST_CHANNEL_STOP\"\n            then\n                if cast.nameplate then\n                    aura_env.removeFontFromNameplate(cast.nameplate)\n                end\n                allcasts[sourceGUID] = nil\n                iconChanged = true\n            elseif event == \"NAME_PLATE_UNIT_REMOVED\" then\n                if cast.nameplate then\n                    aura_env.removeFontFromNameplate(cast.nameplate)\n                end\n            elseif event == \"NAME_PLATE_UNIT_ADDED\" then\n                if cast.showNameplate then\n                    cast.nameplate = aura_env.addFontToNameplate(\n                        sourceUnit,\n                        cast.target\n                    )\n                end\n            end\n        end\n        \n        if iconChanged then\n            local change = false\n            -- update allstates from allcasts\n            for sourceGUID, cast in pairs(allcasts) do\n                -- index for allstates is \"spellId_targetGUID\"\n                local index = (\"%s_%s\"):format(cast.spellId, cast.targetGUID)\n                \n                local state = allstates[index]\n                \n                if state and state.show then\n                    state.casts[sourceGUID] = true\n                    if cast.expirationTime > state.expirationTime then\n                        state.expirationTime = cast.expirationTime\n                        state.changed = true\n                        change = true\n                    end\n                else\n                    allstates[index] = {\n                        show = true,\n                        name = cast.name,\n                        icon = cast.icon,\n                        changed = true,\n                        autoHide = true,\n                        progressType = \"timed\",\n                        duration = cast.expirationTime - cast.start,\n                        expirationTime = cast.expirationTime,\n                        spellId = cast.spellId,\n                        castType = cast.castType,\n                        notInterruptible = cast.notInterruptible,\n                        target = cast.target,\n                        unit = cast.showIcon and cast.target,\n                        targetGUID = cast.targetGUID,\n                        frame = WeakAuras.GetUnitFrame(cast.target),\n                        casts = {\n                            [sourceGUID] = true\n                        },\n                        targeted = cast.targeted,\n                        showGlow = cast.showGlow,\n                        playSound = cast.playSound,\n                        bigIcon = cast.bigIcon,\n                        showIcon = cast.showIcon,\n                    }\n                    change = true\n                end\n            end\n            \n            -- count how much of the same cast is showing each icon\n            -- remove casts stopped from state.casts\n            -- remove state if state.casts is empty\n            for index, state in pairs(allstates) do \n                if state.show and state.showIcon then\n                    local countcasts = 0\n                    for sourceGUID,_ in pairs(state.casts) do\n                        local cast = allcasts[sourceGUID]\n                        if not cast\n                        or (cast and cast.targetGUID ~= state.targetGUID)\n                        then\n                            state.casts[sourceGUID] = nil\n                        else \n                            countcasts = countcasts + 1\n                        end\n                    end\n                    if state.stacks ~= countcasts then\n                        state.stacks = countcasts\n                        state.changed = true\n                        change = true\n                    end\n                    -- hide if no cast\n                    if countcasts == 0 then\n                        state.show = false \n                        state.changed = true\n                        change = true\n                    end\n                end\n            end\n            if change then\n                return true \n            end\n        end\n    end\nend",
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
			["url"] = "https://wago.io/BFADungeonTargetedSpells/65",
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
			["xOffset"] = 0,
			["icon"] = true,
			["internalVersion"] = 33,
			["stickyDuration"] = false,
			["config"] = {
				["nameplate"] = {
					["enable"] = 1,
				},
				["spells"] = {
					{
						["spellId"] = 259832,
						["options"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
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
							true, -- [5]
						},
						["desc"] = "Mind Flay",
					}, -- [57]
				},
				["icon"] = {
					["enable"] = true,
				},
			},
			["text1Point"] = "BOTTOM",
			["version"] = 65,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 20,
			["alpha"] = 1,
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
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = false,
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
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "Nameplate Font Settings",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
			},
			["text2Containment"] = "INSIDE",
			["parent"] = "Dungeon - Targeted Spells",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "3.0.3",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownTextDisabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["text1Enabled"] = true,
			["text1"] = "%c",
			["anchorFrameFrame"] = "UIParent",
			["text2"] = "%p",
			["zoom"] = 0,
			["useGlowColor"] = true,
			["tocversion"] = 80300,
			["id"] = "Targeted Spells",
			["text1Containment"] = "OUTSIDE",
			["frameStrata"] = 6,
			["width"] = 20,
			["desaturate"] = false,
			["uid"] = "pWfZPrRiJzV",
			["inverse"] = false,
			["glowParticules"] = 4,
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
							["desc"] = "Show cast's target on nameplate",
							["type"] = "select",
							["default"] = 1,
							["name"] = "Show",
							["values"] = {
								"Always show", -- [1]
								"Show by default (overide with \"actions > init\" list)", -- [2]
								"Disabled by default (overide with \"actions > init\" list)", -- [3]
								"Disabled", -- [4]
							},
							["useDesc"] = true,
							["key"] = "enable",
							["width"] = 2,
						}, -- [1]
						{
							["type"] = "description",
							["text"] = "Nameplate font, shadow, shadow color, size and offsets settings are now in the \"Display\" tab",
							["fontSize"] = "medium",
							["width"] = 2,
						}, -- [2]
					},
					["type"] = "group",
					["width"] = 2,
					["useCollapse"] = true,
					["name"] = "Target Name on Nameplates",
					["key"] = "nameplate",
					["limitType"] = "none",
					["groupType"] = "simple",
					["collapse"] = false,
					["size"] = 10,
				}, -- [2]
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
							["name"] = "Description",
							["default"] = "",
							["multiline"] = false,
							["length"] = 10,
							["key"] = "desc",
							["useLength"] = false,
						}, -- [2]
						{
							["type"] = "multiselect",
							["name"] = "Options",
							["default"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
								true, -- [4]
								true, -- [5]
							},
							["values"] = {
								"Icon", -- [1]
								"Glow", -- [2]
								"Nameplate", -- [3]
								"Sound", -- [4]
								"Big Icon", -- [5]
							},
							["useDesc"] = false,
							["key"] = "options",
							["width"] = 1,
						}, -- [3]
					},
					["hideReorder"] = false,
					["useDesc"] = false,
					["nameSource"] = 2,
					["width"] = 1,
					["useCollapse"] = true,
					["type"] = "group",
					["key"] = "spells",
					["collapse"] = false,
					["limitType"] = "none",
					["groupType"] = "array",
					["name"] = "Spells",
					["size"] = 10,
				}, -- [3]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 10,
					["width"] = 2,
					["useHeight"] = true,
				}, -- [4]
			},
		},
		["Horrific Visions - Crystal Zone 3"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/29",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone3\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Wisdom\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"OldTown\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone3\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Wisdom\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"OldTown\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 3)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 3)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 3)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["use_unit"] = true,
						["duration"] = "1",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 3 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 3 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 3 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["cooldownTextDisabled"] = false,
			["xOffset"] = 80,
			["regionType"] = "icon",
			["desaturate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["uid"] = "A8uqpwl1hVj",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 3",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
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
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["cooldownEdge"] = false,
			["icon"] = true,
		},
		["Tosh ZT Interrupts bar"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "None",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function(expirationTime, duration, progress, formatedDuration, name, icon, stacks)\n    local state = aura_env.state\n    if not state then\n        return progress\n    end\n\n    local now = GetTime()\n    if not state.last or state.last < now - 0.1 then\n        state.last = now\n        local region = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId)\n        \n        if expirationTime < now then\n            region.bar.bg:SetVertexColor(0,1,0,1) -- CHANGE ME!\n            state.customProgress = \"|cFF00FF00Ready|r\"\n        else \n            region.bar.bg:SetVertexColor(1,0,0,1) -- CHANGE ME!\n            state.customProgress = progress\n        end\n    end\n\n    return state.customProgress\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/ReAEVfksT/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "timed",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, ...) -- ZT_ADD, ZT_TRIGGER, ZT_REMOVE, COMBAT_LOG_EVENT_UNFILTERED\n    if event == \"ZT_ADD\" then\n        local type, watchID, member, spellID = ...\n        \n        -- If this WA was just loaded\n        if not type then\n            -- Since there is no unload event, hooking into region:Collapse() which\n            -- is called from WeakAuras.UnloadDisplays(...)\n            aura_env.region.ZTTypes = aura_env.types\n            \n            if not aura_env.region.ZTCollapse then\n                aura_env.region.ZTCollapse = aura_env.region.Collapse\n            end\n            \n            function aura_env.region:Collapse(...)\n                if self.ZTTypes and (not WeakAuras.loaded[self.id]) then\n                    for t,isTracked in pairs(self.ZTTypes) do\n                        if isTracked then\n                            WeakAuras.ScanEvents(\"ZT_UNREGISTER\", t, self.id)\n                        end\n                    end\n                    self.ZTTypes = nil\n                end\n                \n                self.ZTCollapse(self, ...)\n            end\n            \n            WeakAuras.ScanEvents(\"ZT_REGISTER\", \"INTERRUPT\", aura_env.region.id)\n        elseif type == \"INTERRUPT\" then\n            local state = {}\n            state.show = true\n            state.changed = true\n            state.progressType = 'timed'\n            state.autoHide = false\n            state.resort = false\n            state.value = 0\n            state.total = 0\n            state.duration = 0\n            state.expirationTime = GetTime()\n            state.index = aura_env.computeSortIndex(type, spellID, member)\n            \n            state.name = member.name\n            state.icon = select(3,GetSpellInfo(spellID))\n            state.classColor = member.classColor\n            state.guid = member.GUID\n            state.spellid = spellID\n\n            -- Custom Vars\n            state.isplayer = aura_env:IsPlayer(member)\n            \n            allstates[watchID] = state\n            aura_env.watches[state.guid][state.spellid] = watchID\n            \n            return true\n        end\n\n    elseif event == \"ZT_TRIGGER\" then\n        local type, watchID, duration, expiration = ...\n        \n        local state = allstates[watchID]\n        if type == \"INTERRUPT\" and state then\n            state.changed = true\n            state.duration = duration\n            state.expirationTime = expiration\n            if expiration > GetTime() then\n                print(\"cast\", watchID)\n                if state.interrupted == nil then\n                    state.interrupted = false\n                end\n            else\n                state.interrupted = nil\n            end\n            return true\n        end\n\n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subevent = select(2,...)\n        if subevent ~= \"SPELL_INTERRUPT\" then return end\n      \n        local sourceGUID = aura_env.owner(select(4,...))\n        local spellId = select(12,...)\n      \n        local watchID = aura_env.watches[sourceGUID][spellId]\n        if not watchID then return end\n        \n        print(\"interrupt\", watchID)\n      \n        local state = allstates[watchID]\n        if not state then\n          print(\"state not found\", watchID)\n          for i, s in pairs(allstates) do\n            print(\"state\", i, s.name, s.interrupted or \"nil\")\n          end\n          return\n        end\n      \n        state.interrupted = true\n        state.changed = true\n      \n        return true\n\n    elseif event == \"ZT_REMOVE\" then\n        local type, watchID = ...\n        local state = allstates[watchID]\n        if state then\n            state.show = false\n            state.changed = true\n            aura_env.watches[state.guid][state.spellid] = nil\n            return true\n        end\n    end\nend\n",
						["events"] = "ZT_ADD, ZT_TRIGGER, ZT_REMOVE,COMBAT_LOG_EVENT_UNFILTERED",
						["check"] = "event",
						["names"] = {
						},
						["custom_type"] = "stateupdate",
						["customVariables"] = "{\n    interrupted = {\n        display = \"successfully interrupted\",\n        type = \"bool\",\n    },\n    isplayer = {\n        display = \"is player\",\n        type = \"bool\",\n    }\n}\n",
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
			["internalVersion"] = 33,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["auto"] = true,
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
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
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
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
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
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
				}, -- [4]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_offset"] = 0,
				}, -- [5]
			},
			["height"] = 22,
			["parent"] = "Tosh ZT Interrupts",
			["load"] = {
				["use_size"] = false,
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
						["arena"] = true,
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
			["stickyDuration"] = false,
			["version"] = 1,
			["customTextUpdate"] = "update",
			["uid"] = "Xd3Z8jVbZJv",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "LEFT",
			["alpha"] = 0.8,
			["sparkHeight"] = 30,
			["texture"] = "ElvUI Norm",
			["id"] = "Tosh ZT Interrupts bar",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["sparkOffsetX"] = 0,
			["sparkHidden"] = "NEVER",
			["semver"] = "1.0.0",
			["frameStrata"] = 1,
			["width"] = 200,
			["backgroundColor"] = {
				0.062745098039216, -- [1]
				0.062745098039216, -- [2]
				0.062745098039216, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = true,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.watches = setmetatable({}, {\n  __index = function(t, k)\n    t[k] = {}\n    return t[k]\n  end,\n})\n\nfunction aura_env.computeSortIndex(type, spellID, member)\n  return (\n    ((\"%06d\"):format(spellID))..\n    ((\"%02d\"):format(member.classID))..\n    ((\"%-12s\"):format(member.name))\n  )\nend\n\naura_env.playerGUID = UnitGUID(\"player\")\nfunction aura_env:IsPlayer(member)\n  return member.GUID == self.playerGUID\nend\n\nfunction aura_env.owner(guid)\n  local type = strsplit(\"-\",guid)\n  if type == \"Pet\" then\n      for unit in WA_IterateGroupMembers() do\n          if UnitGUID(unit..\"pet\") == guid then\n              return UnitGUID(unit)\n          end\n      end\n  end\n  return guid\nend\n",
					["do_custom"] = true,
				},
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "isplayer",
						["value"] = 0,
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
						["variable"] = "interrupted",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.17254901960784, -- [1]
								0.86666666666667, -- [2]
								0.094117647058824, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [1]
						{
							["value"] = {
								0.17254901960784, -- [1]
								0.86666666666667, -- [2]
								0.094117647058824, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "interrupted",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.86666666666667, -- [1]
								0.17254901960784, -- [2]
								0.094117647058824, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [1]
						{
							["value"] = {
								0.86666666666667, -- [1]
								0.17254901960784, -- [2]
								0.094117647058824, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [2]
					},
				}, -- [3]
			},
			["useAdjustededMax"] = false,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = 0,
					["use_color"] = true,
					["easeStrength"] = 3,
					["colorFunc"] = "function()\n  if aura_env.state then\n      local color = aura_env.state.classColor\n      if color then\n          aura_env.region:Color(color.r, color.g, color.b, color.a)\n      end\n  end\nend\n",
					["rotate"] = 0,
					["colorType"] = "custom",
					["duration_type"] = "seconds",
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
		["Crystal/Chest/Zone Handler"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "\n",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.curmad = 0\naura_env.curzone = 0\naura_env.curemote = 0\naura_env.lastzone = 0\n\n\naura_env.madness = {\n    [\"316707\"] = 1, -- Starting Zone Promised Power\n    [\"311344\"] = 1, -- Starting Zone Bloodthirsty\n    [\"306413\"] = 1, -- Starting Zone Desynchronized \n    [\"You've entered a Corrupted Area\"] = 2, -- Entering T2\n    [\"306241\"] = 2, -- T2 Scorched Feet\n    [\"306954\"] = 2, -- T2 Dark Delusions\n    [\"311389\"] = 2, -- T2 Entomophobia\n    [\"You've entered a Lost Area\"] = 3, -- Entering T3\n    [\"306531\"] = 3, -- T3 Haunting Shadows\n    [\"306579\"] = 3, -- T3 Leaden Foot\n    [\"316557\"] = 3, -- T3 Split Personality\n    [\"Vision exploration concluded.\"] = 4,\n}\n\n\naura_env.emotes = {\n    \n    [\"Champions! We be needin'\"] = 2, -- Spirits\n    [\"You don't have to do this!\"] = 2, --Dwarven\n    [\"Set these explosives around\"] = 2, \n    [\"That's all of them.\"] = 2, \n    [\"The false son of Durotan\"] = 3, -- Wisdom Voicelines\n    [\"Why... no smash\"] = 3,\n    [\"The Void calls to you!\"] = 3,\n    [\"What do you mean Valeera\"] = 3, -- Old Town\n    [\"Champion... Shaw's\"] = 3,\n    [\"Valeera! You can't hide from me!\"] = 3,\n    [\"None can hide from N'Zoth!\"] = 3,\n    [\"Kill the orc and scour the Drag!\"] = 4, -- Garona Voicelines\n    [\"I had things under control\"] = 4,\n    [\"Let's search the Drag\"] = 4,\n    [\"Help! Snang's gone\"] = 4,\n    [\"See if there's anyone here\"]= 4,\n    [\"This isn't good\"] = 4,\n    [\"I... will never... forsake\"] = 4, -- Trade District\n    [\"Foolish paladin. The Light has\"] = 4,\n    [\"You dare pilfer my greatest prize?\"] = 4,\n    [\"Thank the Light!\"] = 4,\n    [\"They've all gone mad!\"] = 4,\n    [\"You are but meat before\"] = 5, -- Rexxar voicelines\n    [\"Your flesh will feed my beasts\"] = 5,\n    [\"We... outnumber... the stars\"] = 5,\n    [\"Open the portals! Usher\"] = 5, -- Mage Quarter\n    [\"The Void will consume this city!\"] = 5,\n    [\"You... cannot... stop us...\"] = 5,\n    [\"I see we have guests. Come\"] = 5,\n    \n}\n\naura_env.index = {\n    [1] = 1,\n    [2] = 2,\n    [3] = 3,\n    [4] = 2,\n    [5] = 3,\n    \n}",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["custom_type"] = "status",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["events"] = "NAME_PLATE_UNIT_ADDED UNIT_SPELLCAST_SUCCEEDED:player:party1:party2:party3:party4 RAID_BOSS_WHISPER CHAT_MSG_MONSTER_YELL  CHAT_MSG_MONSTER_SAY CHAT_MSG_RAID_BOSS_WHISPER",
						["names"] = {
						},
						["check"] = "event",
						["custom"] = "function(event, message, unit, spellID)\n    -- function(allstates, event, unit, ...)\n    if event == \"NAME_PLATE_UNIT_ADDED\" then\n        if message then\n            local GUID = UnitGUID(message)\n            if select(6,strsplit(\"-\", GUID)) == \"153130\" and C_Map.GetBestMapForUnit(\"player\") == 1469 then\n                if aura_env.curzone ~= aura_env.lastzone then\n                    aura_env.lastzone = aura_env.curzone\n                end\n                aura_env.curzone = 2\n                WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 2)\n            end\n        end\n        \n    elseif event == \"UNIT_SPELLCAST_SUCCEEDED\" then\n        if spellID == 143394 then\n            WeakAuras.ScanEvents(\"CRYSTAL_FOUND\")\n        elseif spellID == 306608 and message == \"player\" then\n            WeakAuras.ScanEvents(\"CHEST_FOUND\")\n        end\n    elseif message then\n        for k, v in pairs(aura_env.madness) do\n            if string.find(message, k) then\n                aura_env.curmad = v\n                if v == aura_env.index[aura_env.curemote] then -- checking if madness fits the last seen emote\n                    if aura_env.curzone ~= aura_env.curemote then\n                        aura_env.lastzone = aura_env.curzone\n                    end\n                    aura_env.curzone = aura_env.curemote\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", aura_env.curemote)\n                elseif v == 1 then -- starting zone\n                    aura_env.lastzone = aura_env.curzone\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 1)\n                elseif v == aura_env.index[aura_env.lastzone] then -- checking if madness fits the last zone you were in (going back from T3 to T2 when no emote fires)\n                    local store = aura_env.lastzone\n                    aura_env.lastzone = aura_env.curzone\n                    aura_env.curzone = store\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", aura_env.curzone)\n                elseif v == 4 then -- end of vision run\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 6)\n                end\n                break\n            end\n        end\n        \n        \n        for k, v in pairs(aura_env.emotes) do -- iterating through monster yells/says\n            if string.find(message, k) then\n                aura_env.curemote = v -- setting last seen emote to the zone number\n                if aura_env.index[v] == aura_env.curmad then -- checking if current madnesses fits the emote found\n                    if aura_env.curzone ~= v then -- preventing double triggers\n                        aura_env.lastzone = aura_env.curzone\n                    end\n                    aura_env.curzone = v\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", v)\n                end\n                break\n            end\n        end\n    end\n    \n    --[[ if GetTime() >= aura_env.last+7 then\n        if GameTooltip:NumLines() == 0 or GameTooltip:NumLines() > 1 then\n            return false\n        end\n        if _G[\"GameTooltipTextLeft1\"]:GetText() == aura_env.crystal then\n            \n            WeakAuras.ScanEvents(\"CRYSTAL_FOUND\")\n            aura_env.last = GetTime()\n        end\n    end]]\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 29,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zonegroupId"] = false,
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
			["fontSize"] = 18,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["preferToUpdate"] = false,
			["conditions"] = {
			},
			["shadowYOffset"] = -1,
			["authorOptions"] = {
			},
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Crystal/Chest/Zone Handler",
			["xOffset"] = 83.000061035156,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "5MFgKRxV0aY",
			["url"] = "https://wago.io/VisionCounter/29",
			["justify"] = "LEFT",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
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
			["wordWrap"] = "WordWrap",
		},
		["Red"] = {
			["xOffset"] = -573,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = 75,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"黑\"\nelse\n    aura_env.kind={\n        \"|cff6A84BCPoison|r\",\n        \"|cffFF7373Breath Fire|r\",\n        \"|cffFFAA6CHealing|r\",\n        \"|cff6CFFFDDefensive|r\",\n        \"|cffF0FF00Sanity|r\",\n    }\n    aura_env.color=\"Black\"\nend\nif not aura_env.button then \n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    \n    local function createHighlightTexture(self)\n        local texture = self:CreateTexture(nil, \"OVERLAY\")\n        self.highlight = texture\n        texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n        texture:SetBlendMode(\"ADD\")\n        texture:SetAllPoints(self)\n        texture:SetAlpha(.4)\n        return texture\n    end\n    \n    local function onButtonEnter(self)\n        if not self.highlight then\n            createHighlightTexture(self)\n        end\n        self.highlight:Show()\n        self:SetBackdropBorderColor(1, 1, 1)\n    end\n    \n    local function onButtonLeave(self)\n        if self.highlight then\n            self.highlight:Hide()\n        end\n        self:SetBackdropBorderColor(0, 0, 0)\n    end\n    \n    b:RegisterForClicks(\"LeftButtonDown\")\n    \n    b:SetScript(\"OnClick\", function()\n            \n            WeakAuras.ScanEvents(\"OrgColor\",3)\n        end)\n        \n        b:SetScript(\"OnEnter\", onButtonEnter)\n        b:SetScript(\"OnLeave\", onButtonLeave)\n        \n        aura_env.button = b\n    end",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["use_unit"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "OrgColor",
						["custom"] = "function(_,id)\n    if id == 1 then\n       aura_env.text=aura_env.kind[4]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[5]\n    elseif id ==3 then\n          aura_env.text=aura_env.kind[1]\n    elseif id ==4 then\n       aura_env.text=aura_env.kind[2]\n    elseif id ==5 then\n       aura_env.text=aura_env.kind[3]\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2",
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
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["color"] = {
				0.95294117647059, -- [1]
				0.019607843137255, -- [2]
				0.03921568627451, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["uid"] = "UhSXd03PNAl",
			["alpha"] = 0.9,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Red",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 80,
			["semver"] = "1.0.9",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["url"] = "https://wago.io/23q54wiYR/10",
			["selfPoint"] = "CENTER",
		},
		["Gift of the titans"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    local str \n    if aura_env.expirationTime > GetTime() then\n        str = \"in progress\"\n    elseif aura_env.expirationTime + 60 > GetTime() then\n        str = \"on CD\"\n    else\n        str = \"Available\"\n    end\n    return str\nend\n\n\n",
			["yOffset"] = 110.4248046875,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/23q54wiYR/10",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.expirationTime = 0",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"313698", -- [1]
						},
						["useExactSpellId"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = "313698",
						["auranames"] = {
						},
						["matchesShowOn"] = "showAlways",
						["names"] = {
						},
						["destUnit"] = "player",
						["duration"] = "60",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["subeventSuffix"] = "_AURA_APPLIED",
						["auraspellids"] = {
						},
						["events"] = "GIFT_OFF",
						["custom"] = "function()\nreturn true\nend",
						["event"] = "Combat Log",
						["unit"] = "player",
						["unevent"] = "timed",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["custom_type"] = "event",
						["use_destUnit"] = true,
						["sourceUnit"] = "player",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["desc"] = "擎天柱丨@丽丽（四川）黑我钥匙",
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "Available",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90196078431373, -- [2]
						0.13333333333333, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = -10,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "On CD",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90196078431373, -- [2]
						0.13333333333333, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = -10,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "In Progress",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90196078431373, -- [2]
						0.13333333333333, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_anchorYOffset"] = -10,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
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
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 40,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [4]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowScale"] = 1.5,
					["glowXOffset"] = 0,
					["glowLength"] = 10,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [5]
			},
			["height"] = 80,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["config"] = {
			},
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["xOffset"] = -490.5791015625,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.text_visible",
						}, -- [1]
						{
							["property"] = "sub.2.text_visible",
						}, -- [2]
						{
							["property"] = "sub.3.text_visible",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.38039215686275, -- [1]
								0.4, -- [2]
								0.4078431372549, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [2]
						{
							["property"] = "sub.1.text_visible",
						}, -- [3]
						{
							["value"] = false,
							["property"] = "sub.3.text_visible",
						}, -- [4]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.5.glow",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["property"] = "sub.2.text_visible",
						}, -- [3]
						{
							["property"] = "sub.1.text_visible",
						}, -- [4]
						{
							["property"] = "color",
						}, -- [5]
					},
				}, -- [3]
			},
			["icon"] = true,
			["semver"] = "1.0.9",
			["width"] = 80,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Gift of the titans",
			["frameStrata"] = 4,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["uid"] = "wBpFYJHm2xC",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = "2000853",
			["cooldown"] = false,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
		},
		["Sickening Potion(Defensive)"] = {
			["xOffset"] = -638.16662597656,
			["preferToUpdate"] = false,
			["yOffset"] = 75.500091552734,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"315849", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["desaturate"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "Def",
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
						0.43137254901961, -- [1]
						0.27450980392157, -- [2]
						0.17254901960784, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["type"] = "subglow",
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 49,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["zoom"] = 0,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["url"] = "https://wago.io/23q54wiYR/10",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["auto"] = true,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.9",
			["tocversion"] = 80300,
			["id"] = "Sickening Potion(Defensive)",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 49,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "Uhl0aTHlSKc",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
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
						["op"] = "<",
						["value"] = "10",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
		},
		["Sanity loss from hits"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    return \"Sanity loss from hits:  \" .. (aura_env.lostToHits or 0)\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/23q54wiYR/10",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.reset()\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.reset()",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "local SanityFromCloak = {\n    [6272]=.20,\n    [6273]=.20,\n    [6274]=.25,\n    [6275]=.25,\n    [6276]=.40,\n    [6277]=.40,\n    [6278]=.40,\n    [6279]=.45,\n    [6280]=.45,\n    [6281]=.50,\n    [6282]=.65,\n    [6283]=.65,\n    [6284]=.70,\n    [6285]=.75,\n    [6286]=.80,\n    [6577]=.80,\n    [6580]=.80,\n    [6581]=.80,\n    [6582]=.80,\n    [6583]=.80,\n    [6584]=.80,\n    [6585]=.80,\n    [6586]=.80,\n    [6587]=.80,\n    [6588]=.80,\n    [6589]=.80,\n    [6590]=.80,\n    [6591]=.80,\n    [6592]=.80,\n    [6593]=.80,\n    [6594]=.80,\n    [6595]=.80,\n    [6596]=.80,\n    [6597]=.80,\n    [6598]=.80,\n    [6599]=.80,\n    [6600]=.80,\n    [6601]=.80,\n    [6602]=.80,\n    [6603]=.80\n}\n\nlocal PossibleDrainLevels = {\n    6,\n    8,\n    12\n}\n\nfunction aura_env.secondsToClock(seconds)\n    local seconds = tonumber(seconds)\n    local secs, mins \n    if seconds <= 0 then\n        return \"00:00:00\";\n    else\n        mins = string.format(\"%02.f\", math.floor(seconds/60));\n        secs = string.format(\"%02.f\", math.floor(seconds - mins *60));\n        return mins..\":\"..secs\n    end\nend\n\nfunction aura_env.round(num, numDecimalPlaces)\n    local mult = 10^(numDecimalPlaces or 0)\n    return math.floor(num * mult + 0.5) / mult\nend\n\nfunction aura_env.getItemSplit(itemLink)\n    local itemString = string.match(itemLink, \"item:([%-?%d:]+)\")\n    local itemSplit = {}\n    \n    -- Split data into a table\n    for _, v in ipairs({strsplit(\":\", itemString)}) do\n        if v == \"\" then\n            itemSplit[#itemSplit + 1] = 0\n        else\n            itemSplit[#itemSplit + 1] = tonumber(v)\n        end\n    end\n    \n    return itemSplit\nend\n\n\nfunction aura_env.getCloakResistance()\n    local itemLink = GetInventoryItemLink(\"player\", 15)\n    if (itemLink) then\n        local itemSplit = aura_env.getItemSplit(itemLink)\n        local bonuses = {}\n        for index=1, itemSplit[13] do\n            bonuses[#bonuses + 1] = itemSplit[13 + index]\n        end\n        \n        \n        for _, bonus in pairs(bonuses) do\n            if (SanityFromCloak[bonus]) then\n                return SanityFromCloak[bonus]\n            end\n        end \n    end\nend\n\nfunction aura_env.getEffectiveDrain(diff)\n    local realDrain = diff / (1 - aura_env.sanityReduction)\n    local minDiff = math.huge\n    local closestLevel = 5\n    for _, level in ipairs(PossibleDrainLevels) do\n        local drainDiff = math.abs(realDrain - level)\n        if drainDiff < minDiff then\n            minDiff = drainDiff\n            closestLevel = level\n        end\n    end\n    return closestLevel * (1 - aura_env.sanityReduction)\nend\n\nfunction aura_env.getCacheAverage()\n    local sum = 0\n    local totalTicks = 0\n    for i, tick in pairs(aura_env.tickCache) do\n        if (tick and tick > 0) then\n            sum = sum + tick\n        end\n        totalTicks = totalTicks + 1\n    end\n    return sum / totalTicks\nend\n\nfunction aura_env.resetCache()\n    aura_env.tickCache = {}\nend\n\n\nfunction aura_env.reset()\n    aura_env.lastBigHit = 0\n    aura_env.lostToHits = 0\n    aura_env.remainingTime = \"N/A\"\n    aura_env.sanityReduction = aura_env.getCloakResistance()\n    aura_env.tickCache = {}\n    aura_env.ticks = 1\nend\n\naura_env.reset()",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["events"] = "UNIT_POWER_FREQUENT, SCENARIO_UPDATE",
						["custom"] = "function(event, ...)\n    if (event == \"UNIT_POWER_FREQUENT\") then\n        local unit, powerType = ...\n        if (unit == \"player\" and powerType == \"ALTERNATE\") then\n            local power = UnitPower(unit, 10, true)\n            if (aura_env.lastPower) then\n                local diff = aura_env.lastPower - power\n                if (diff <= 12 and diff ~= 0) then -- tick\n                    local rollingAverage = aura_env.getCacheAverage()\n                    if (math.abs(diff - rollingAverage) > 1) then\n                        aura_env.resetCache()\n                    end\n                    aura_env.tickCache[10 - aura_env.ticks % 10] = diff\n                    aura_env.ticks = aura_env.ticks + 1\n                    local rollingAverage = aura_env.getCacheAverage()\n                    \n                    local drain = aura_env.getEffectiveDrain(rollingAverage)\n                    aura_env.remainingTime = aura_env.secondsToClock(power / drain)\n                elseif (diff > 12) then -- big hit\n                    aura_env.lastBigHit = diff\n                    aura_env.lostToHits = aura_env.lostToHits + diff\n                end\n            end\n            aura_env.lastPower = power\n        end\n    elseif (event == \"SCENARIO_UPDATE\") then\n        local scenario = ...\n        if (not scenario) then\n            aura_env.reset()\n        end\n        \n    end\nend\n\n\n",
						["custom_type"] = "event",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Alternate Power",
						["unit"] = "player",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 33,
			["selfPoint"] = "LEFT",
			["font"] = "PT Sans Narrow",
			["version"] = 10,
			["subRegions"] = {
			},
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 16,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["preferToUpdate"] = false,
			["fixedWidth"] = 268,
			["wordWrap"] = "WordWrap",
			["xOffset"] = -530,
			["semver"] = "1.0.9",
			["tocversion"] = 80300,
			["id"] = "Sanity loss from hits",
			["automaticWidth"] = "Auto",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "aHEQN1849U6",
			["config"] = {
			},
			["yOffset"] = 6,
			["justify"] = "LEFT",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
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
		},
		["Spicy Potion(Fire Breath)"] = {
			["xOffset"] = -638.16662597656,
			["preferToUpdate"] = false,
			["yOffset"] = 125.50009155273,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["auraspellids"] = {
							"315817", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "Breath",
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
						0.36862745098039, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 49,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
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
			["url"] = "https://wago.io/23q54wiYR/10",
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
			["authorOptions"] = {
			},
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["auto"] = true,
			["config"] = {
			},
			["zoom"] = 0,
			["semver"] = "1.0.9",
			["tocversion"] = 80300,
			["id"] = "Spicy Potion(Fire Breath)",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 49,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "Cz)IWIJl0Tu",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
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
						["op"] = "<",
						["value"] = "10",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["Sanity"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.99607843137255, -- [2]
				0.96470588235294, -- [3]
				1, -- [4]
			},
			["displayText"] = "Sanity: %p",
			["yOffset"] = 39,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/23q54wiYR/10",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["sound"] = "Interface\\AddOns\\ElvUI\\Media\\Sounds\\AwwCrap.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["power"] = "5000",
						["power_operator"] = "<=",
						["duration"] = "1",
						["event"] = "Alternate Power",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_power"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 33,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "bounce",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["font"] = "PT Sans Narrow",
			["version"] = 10,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 16,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "value",
						["value"] = "500",
					},
					["changes"] = {
						{
							["value"] = {
								0.58039215686275, -- [1]
								1, -- [2]
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
						["op"] = "<=",
						["variable"] = "value",
						["value"] = "400",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.84705882352941, -- [2]
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
						["op"] = "<=",
						["variable"] = "value",
						["value"] = "300",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.66666666666667, -- [2]
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
						["op"] = "<=",
						["variable"] = "value",
						["value"] = "200",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.37254901960784, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "value",
						["value"] = "100",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.015686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [5]
			},
			["preferToUpdate"] = false,
			["displayText_format_p_time_dynamic"] = false,
			["displayText_format_p_time_precision"] = 1,
			["xOffset"] = -530,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["authorOptions"] = {
			},
			["semver"] = "1.0.9",
			["tocversion"] = 80300,
			["id"] = "Sanity",
			["uid"] = "iBmVyxixF08",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["shadowYOffset"] = -1,
			["config"] = {
			},
			["justify"] = "LEFT",
			["automaticWidth"] = "Auto",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["selfPoint"] = "LEFT",
			["wordWrap"] = "WordWrap",
		},
		["8.3 Horrific Visions Chinese edition translated"] = {
			["controlledChildren"] = {
				"Spicy Potion(Fire Breath)", -- [1]
				"Sickening Potion(Defensive)", -- [2]
				"Sluggish Potion(Heal)", -- [3]
				"Cheat death", -- [4]
				"Gift of the titans", -- [5]
				"Gift CD Event", -- [6]
				"Sanity", -- [7]
				"Time left", -- [8]
				"Sanity loss from hits", -- [9]
				"Black", -- [10]
				"Green", -- [11]
				"Red", -- [12]
				"Blue", -- [13]
				"Purple", -- [14]
				"Emergency Cranial Defibrillation by SnowElysium", -- [15]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 72.66754150390625,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/23q54wiYR/10",
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
			["internalVersion"] = 33,
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
			["desc"] = "Proper URL for English version: https://wago.io/23q54wiYR made by Wardensun translated and edited slightly by Fatpala-Draenor(EU)",
			["version"] = 10,
			["subRegions"] = {
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
			["semver"] = "1.0.9",
			["tocversion"] = 80300,
			["id"] = "8.3 Horrific Visions Chinese edition translated",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 1,
			["config"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["xOffset"] = -758.8175659179688,
			["conditions"] = {
			},
			["groupIcon"] = "1357795",
			["uid"] = "Lc)SwFLmMeO",
		},
		["Horrific Visions - Chest Zone 1"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone1\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Strength\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Cathedral\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone1\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Strength\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Cathedral\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 1)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 1)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 1)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["names"] = {
						},
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 CHEST_FOUND ",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CHEST_FOUND\" and states[\"\"].zone and aura_env.count < 4 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest\" and message == 1 and aura_env.count < 4 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 1 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 1 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 4",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/VisionCounter/29",
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "4",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 1",
			["width"] = 70,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["uid"] = "93Km4P4M1CS",
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
		},
		["Emergency Cranial Defibrillation by SnowElysium"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.023529411764706, -- [3]
				1, -- [4]
			},
			["displayText"] = "Cheat death used!",
			["yOffset"] = -12.166412353516,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/23q54wiYR/10",
			["actions"] = {
				["start"] = {
					["custom"] = "WeakAuras.ScanEvents(\"SnowCheatDead\",1)",
					["do_sound"] = false,
					["do_custom"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Idiot.ogg",
					["do_message"] = false,
				},
				["finish"] = {
					["custom"] = "WeakAuras.ScanEvents(\"SnowCheatDead\",-1)",
					["do_custom"] = true,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"304816", -- [1]
							"317865", -- [2]
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom"] = "function(_,ID)\n    if ID>0 then\n        return true\n    else\n        return false\n    end\nend",
						["custom_type"] = "event",
						["events"] = "SnowCheatDead",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function(_,ID)\n    if ID<0 then\n        return true\n    else\n        return false\n    end\nend",
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[2] or t[1] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["justify"] = "LEFT",
			["font"] = "Accidental Presidency",
			["version"] = 10,
			["subRegions"] = {
			},
			["height"] = 40,
			["authorOptions"] = {
			},
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["xOffset"] = -458.33288574219,
			["fontSize"] = 23,
			["automaticWidth"] = "Auto",
			["displayIcon"] = 236225,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = false,
					["type"] = "custom",
					["easeType"] = "none",
					["use_color"] = false,
					["alpha"] = 0,
					["duration_type"] = "seconds",
					["y"] = 0,
					["colorType"] = "straightColor",
					["scaley"] = 1,
					["rotate"] = 0,
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["easeStrength"] = 3,
					["x"] = 0,
					["colorB"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["regionType"] = "text",
			["uid"] = "n)x58lrIMhT",
			["conditions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.9",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Emergency Cranial Defibrillation by SnowElysium",
			["cooldownEdge"] = false,
			["frameStrata"] = 1,
			["width"] = 40,
			["wordWrap"] = "WordWrap",
			["config"] = {
			},
			["inverse"] = false,
			["preferToUpdate"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["cooldown"] = false,
			["shadowYOffset"] = -1,
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 33,
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorPerUnit"] = "UNITFRAME",
			["animate"] = false,
			["limit"] = 3,
			["scale"] = 1,
			["useLimit"] = true,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["arcLength"] = 360,
			["useAnchorPerUnit"] = true,
			["constantFactor"] = "RADIUS",
			["uid"] = "S)1hgAq(aZR",
			["borderOffset"] = 4,
			["config"] = {
			},
			["selfPoint"] = "LEFT",
			["id"] = "Tosh ZT Party Offensives",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["borderInset"] = 1,
			["rotation"] = 0,
			["anchorPoint"] = "RIGHT",
			["conditions"] = {
			},
			["space"] = 2,
			["radius"] = 200,
		},
		["Horrific Visions - Crystal Zone 1"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/29",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone1\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Strength\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Cathedral\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
					["do_message"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone1\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Strength\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Cathedral\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 1)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 1)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 1)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["custom_type"] = "event",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 1 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 1 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 1 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend\n\n\n\n",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_encounterid"] = false,
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["cooldownTextDisabled"] = false,
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["alpha"] = 1,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 1",
			["width"] = 70,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.28",
			["uid"] = "Ac5gQCit4(g",
			["inverse"] = false,
			["xOffset"] = 80,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
		},
		["Black"] = {
			["xOffset"] = -573,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend",
			["yOffset"] = 137,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"黑\"\nelse\n    aura_env.kind={\n        \"|cff6A84BCPoison|r\",\n        \"|cffFF7373Breath Fire|r\",\n        \"|cffFFAA6CHealing|r\",\n        \"|cff6CFFFDDefensive|r\",\n        \"|cffF0FF00Sanity|r\",\n    }\n    aura_env.color=\"Black\"\nend\nif not aura_env.button then \n    local b = CreateFrame(\"Button\", nil, WeakAuras.regions[aura_env.id].region)\n    b:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n    \n    local function createHighlightTexture(self)\n        local texture = self:CreateTexture(nil, \"OVERLAY\")\n        self.highlight = texture\n        texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n        texture:SetBlendMode(\"ADD\")\n        texture:SetAllPoints(self)\n        texture:SetAlpha(.4)\n        return texture\n    end\n    \n    local function onButtonEnter(self)\n        if not self.highlight then\n            createHighlightTexture(self)\n        end\n        self.highlight:Show()\n        self:SetBackdropBorderColor(1, 1, 1)\n    end\n    \n    local function onButtonLeave(self)\n        if self.highlight then\n            self.highlight:Hide()\n        end\n        self:SetBackdropBorderColor(0, 0, 0)\n    end\n    \n    b:RegisterForClicks(\"LeftButtonDown\")\n    \n    b:SetScript(\"OnClick\", function()\n            \n            WeakAuras.ScanEvents(\"OrgColor\",1)\n    end)\n    \n    b:SetScript(\"OnEnter\", onButtonEnter)\n    b:SetScript(\"OnLeave\", onButtonLeave)\n    \n    aura_env.button = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["names"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "OrgColor",
						["custom"] = "function(_,id)\n    if id == 1 then\n        aura_env.text=aura_env.kind[1]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[2]\n    elseif id ==3 then\n        aura_env.text=aura_env.kind[3]\n    elseif id ==4 then\n        aura_env.text=aura_env.kind[4]\n    elseif id ==5 then\n        aura_env.text=aura_env.kind[5]\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2",
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
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["zoom"] = 0,
			["url"] = "https://wago.io/23q54wiYR/10",
			["regionType"] = "icon",
			["desaturate"] = false,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
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
			["conditions"] = {
			},
			["uid"] = "NjAPh8YIHsf",
			["alpha"] = 0.9,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Black",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 80,
			["semver"] = "1.0.9",
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				0.4156862745098, -- [1]
				0.4156862745098, -- [2]
				0.4156862745098, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["authorOptions"] = {
			},
			["icon"] = true,
		},
		["Time left"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    return \"Time left:  \" .. (aura_env.remainingTime or 0) \nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/23q54wiYR/10",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.reset()\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.reset()",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "local SanityFromCloak = {\n    [6272]=.20,\n    [6273]=.20,\n    [6274]=.25,\n    [6275]=.25,\n    [6276]=.40,\n    [6277]=.40,\n    [6278]=.40,\n    [6279]=.45,\n    [6280]=.45,\n    [6281]=.50,\n    [6282]=.65,\n    [6283]=.65,\n    [6284]=.70,\n    [6285]=.75,\n    [6286]=.80,\n    [6577]=.80,\n    [6580]=.80,\n    [6581]=.80,\n    [6582]=.80,\n    [6583]=.80,\n    [6584]=.80,\n    [6585]=.80,\n    [6586]=.80,\n    [6587]=.80,\n    [6588]=.80,\n    [6589]=.80,\n    [6590]=.80,\n    [6591]=.80,\n    [6592]=.80,\n    [6593]=.80,\n    [6594]=.80,\n    [6595]=.80,\n    [6596]=.80,\n    [6597]=.80,\n    [6598]=.80,\n    [6599]=.80,\n    [6600]=.80,\n    [6601]=.80,\n    [6602]=.80,\n    [6603]=.80\n}\n\nlocal PossibleDrainLevels = {\n    6,\n    8,\n    12\n}\n\nfunction aura_env.secondsToClock(seconds)\n    local seconds = tonumber(seconds)\n    local secs, mins \n    if seconds <= 0 then\n        return \"00:00:00\";\n    else\n        mins = string.format(\"%02.f\", math.floor(seconds/60));\n        secs = string.format(\"%02.f\", math.floor(seconds - mins *60));\n        return mins..\":\"..secs\n    end\nend\n\nfunction aura_env.round(num, numDecimalPlaces)\n    local mult = 10^(numDecimalPlaces or 0)\n    return math.floor(num * mult + 0.5) / mult\nend\n\nfunction aura_env.getItemSplit(itemLink)\n    local itemString = string.match(itemLink, \"item:([%-?%d:]+)\")\n    local itemSplit = {}\n    \n    -- Split data into a table\n    for _, v in ipairs({strsplit(\":\", itemString)}) do\n        if v == \"\" then\n            itemSplit[#itemSplit + 1] = 0\n        else\n            itemSplit[#itemSplit + 1] = tonumber(v)\n        end\n    end\n    \n    return itemSplit\nend\n\n\nfunction aura_env.getCloakResistance()\n    local itemLink = GetInventoryItemLink(\"player\", 15)\n    if (itemLink) then\n        local itemSplit = aura_env.getItemSplit(itemLink)\n        local bonuses = {}\n        for index=1, itemSplit[13] do\n            bonuses[#bonuses + 1] = itemSplit[13 + index]\n        end\n        \n        \n        for _, bonus in pairs(bonuses) do\n            if (SanityFromCloak[bonus]) then\n                return SanityFromCloak[bonus]\n            end\n        end \n    end\nend\n\nfunction aura_env.getEffectiveDrain(diff)\n    local realDrain = diff / (1 - aura_env.sanityReduction)\n    local minDiff = math.huge\n    local closestLevel = 5\n    for _, level in ipairs(PossibleDrainLevels) do\n        local drainDiff = math.abs(realDrain - level)\n        if drainDiff < minDiff then\n            minDiff = drainDiff\n            closestLevel = level\n        end\n    end\n    return closestLevel * (1 - aura_env.sanityReduction)\nend\n\nfunction aura_env.getCacheAverage()\n    local sum = 0\n    local totalTicks = 0\n    for i, tick in pairs(aura_env.tickCache) do\n        if (tick and tick > 0) then\n            sum = sum + tick\n        end\n        totalTicks = totalTicks + 1\n    end\n    return sum / totalTicks\nend\n\nfunction aura_env.resetCache()\n    aura_env.tickCache = {}\nend\n\n\nfunction aura_env.reset()\n    aura_env.lastBigHit = 0\n    aura_env.lostToHits = 0\n    aura_env.remainingTime = \"N/A\"\n    aura_env.sanityReduction = aura_env.getCloakResistance()\n    aura_env.tickCache = {}\n    aura_env.ticks = 1\nend\n\naura_env.reset()",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["spellIds"] = {
						},
						["events"] = "UNIT_POWER_FREQUENT, SCENARIO_UPDATE",
						["custom_type"] = "event",
						["unit"] = "player",
						["custom"] = "function(event, ...)\n    if (event == \"UNIT_POWER_FREQUENT\") then\n        local unit, powerType = ...\n        if (unit == \"player\" and powerType == \"ALTERNATE\") then\n            local power = UnitPower(unit, 10, true)\n            if (aura_env.lastPower) then\n                local diff = aura_env.lastPower - power\n                if (diff <= 12 and diff ~= 0) then -- tick\n                    local rollingAverage = aura_env.getCacheAverage()\n                    if (math.abs(diff - rollingAverage) > 1) then\n                        aura_env.resetCache()\n                    end\n                    aura_env.tickCache[10 - aura_env.ticks % 10] = diff\n                    aura_env.ticks = aura_env.ticks + 1\n                    local rollingAverage = aura_env.getCacheAverage()\n                    \n                    local drain = aura_env.getEffectiveDrain(rollingAverage)\n                    aura_env.remainingTime = SecondsToClock(power / drain)\n                elseif (diff > 12) then -- big hit\n                    aura_env.lastBigHit = diff\n                    aura_env.lostToHits = aura_env.lostToHits + diff\n                end\n            end\n            aura_env.lastPower = power\n        end\n    elseif (event == \"SCENARIO_UPDATE\") then\n        local scenario = ...\n        if (not scenario) then\n            aura_env.reset()\n        end\n        \n    end\nend\n\n\n",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Alternate Power",
						["unit"] = "player",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 33,
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
			["font"] = "PT Sans Narrow",
			["version"] = 10,
			["subRegions"] = {
			},
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 16,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
			["preferToUpdate"] = false,
			["fixedWidth"] = 268,
			["automaticWidth"] = "Auto",
			["selfPoint"] = "LEFT",
			["semver"] = "1.0.9",
			["tocversion"] = 80300,
			["id"] = "Time left",
			["xOffset"] = -530,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "8tu6vnVb32C",
			["yOffset"] = 23,
			["justify"] = "LEFT",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["wordWrap"] = "WordWrap",
		},
		["Sluggish Potion(Heal)"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 25.500091552734,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["auraspellids"] = {
							"315845", -- [1]
							"316100", -- [2]
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
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
			["desaturate"] = false,
			["version"] = 10,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "Heal",
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
						0.10196078431373, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 49,
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zonegroupId"] = false,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["url"] = "https://wago.io/23q54wiYR/10",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["xOffset"] = -638.16662597656,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["semver"] = "1.0.9",
			["config"] = {
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "Sluggish Potion(Heal)",
			["width"] = 49,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "oAEWVsqqjRx",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
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
						["op"] = "<",
						["value"] = "10",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["parent"] = "8.3 Horrific Visions Chinese edition translated",
		},
		["Break shield"] = {
			["sparkWidth"] = 5,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.tooltip1 then\n        return AbbreviateNumbers(aura_env.state.tooltip1)\n    end\nend",
			["yOffset"] = 143,
			["anchorPoint"] = "CENTER",
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/rvZktayYg/2",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["message"] = "%1.unitName",
					["message_format_1.unitName_format"] = "none",
					["do_sound"] = true,
					["sound_repeat"] = 4,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Break.ogg",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
					["custom"] = "aura_env.p3 = false",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.cnt = aura_env.cnt + 1",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"316847", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["auraspellids"] = {
							"316847", -- [1]
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["use_spell"] = true,
						["use_unit"] = true,
						["custom_type"] = "event",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START",
						["custom"] = "function(event, unit, ...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subevent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID, spellName, spellschool, extraspellID, extraspellName = ...\n        if subevent == \"SPELL_CAST_SUCCESS\" and spellName == \"Infinite Darkness\" then\n            aura_env.p3 = true\n            print(\"on\")\n        end\n    elseif event == \"ENCOUNTER_START\" then\n        aura_env.p3 = false\n        print(\"off\")\n    end\nend\n\n\n",
						["unit"] = "boss",
						["event"] = "Chat Message",
						["duration"] = "1",
						["unevent"] = "timed",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["unit"] = "boss",
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] and aura_env.p3\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 33,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["icon"] = true,
			["barColor"] = {
				0, -- [1]
				0.46274509803922, -- [2]
				0.47450980392157, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["sparkRotationMode"] = "AUTO",
			["fontFlags"] = "OUTLINE",
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["border_color"] = {
					},
					["type"] = "aurabar_bar",
				}, -- [1]
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
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "ArchivoNarrow-Bold",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = " BREAK (%c)",
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
					["text_font"] = "ArchivoNarrow-Bold",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowThickness"] = 4,
					["glowYOffset"] = 2,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 2,
					["glowLength"] = 11,
					["glow_anchor"] = "bar",
					["glowScale"] = 1,
					["glowLines"] = 20,
					["glowBorder"] = false,
				}, -- [4]
			},
			["height"] = 45,
			["useAdjustededMax"] = false,
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
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
						["HUNTER"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
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
				["race"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2337",
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["desaturate"] = false,
			["sparkColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["uid"] = "(1rWam(YY0x",
			["version"] = 2,
			["width"] = 330,
			["frameStrata"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["semver"] = "1.0.1",
			["icon_side"] = "LEFT",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 87,
			["texture"] = "Smooth v2",
			["spark"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "Break shield",
			["color"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "\n\n",
					["use_alpha"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["duration"] = "0",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["duration_type"] = "seconds",
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
			["inverse"] = false,
			["backgroundColor"] = {
				0.46274509803922, -- [1]
				0.47843137254902, -- [2]
				0.47058823529412, -- [3]
				0.89758960157633, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["xOffset"] = 0,
			["borderBackdrop"] = "Blizzard Tooltip",
		},
		["Horrific Visions - Chest Zone 5"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/29",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone5\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Honor\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Mage\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone5\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Honor\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Mage\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 5)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 5)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 5)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 CHEST_FOUND ",
						["custom_hide"] = "timed",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CHEST_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest\" and message == 5 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 5 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 5 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 33,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 29,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
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
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_text_format_c1_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
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
					["text_anchorPoint"] = "CENTER",
					["text_text_format_c2_format"] = "none",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
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
			["zoom"] = 0,
			["cooldownEdge"] = false,
			["regionType"] = "icon",
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
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["uid"] = "mjXDJ(7r87n",
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.28",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 5",
			["width"] = 70,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["icon"] = true,
			["desaturate"] = false,
		},
		["Tosh ZT Party Defensives Icons"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
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
			["url"] = "https://wago.io/PartyCDs/24",
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
				["race"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
				["role"] = {
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
			["sparkOffsetX"] = 0,
			["parent"] = "Tosh ZT Party Defensives",
			["cooldownTextDisabled"] = false,
			["customText"] = "",
			["preferToUpdate"] = false,
			["uid"] = "3H33I1Zmbo2",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
						["events"] = "ZT_ADD, ZT_TRIGGER, ZT_REMOVE,  GROUP_ROSTER_UPDATE",
						["custom"] = "function(allstates, event, type, watchID, ...)\n    if event == \"ZT_ADD\" then\n        local member, spellID, duration, charges = ...\n        \n        -- If this WA was just loaded\n        if not type then\n            -- Since there is no unload event, hooking into region:Collapse() which\n            -- is called from WeakAuras.UnloadDisplays(...)\n            aura_env.region.ZTRegTypes = aura_env.regTypes\n            aura_env.region.ZTRegSpells = aura_env.regSpells\n            \n            if not aura_env.region.ZTCollapse then\n                aura_env.region.ZTCollapse = aura_env.region.Collapse\n            end\n            \n            function aura_env.region:Collapse(...)\n                if self.ZTRegTypes and (not WeakAuras.loaded[self.id]) then\n                    WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.regTypes, self.id)\n                    WeakAuras.ScanEvents(\"ZT_UNREGISTER\", self.regSpells, self.id)\n                    self.ZTRegTypes = nil\n                    self.ZTRegSpells = nil\n                end\n                \n                self.ZTCollapse(self, ...)\n            end\n            \n            -- Register for all types/spells\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regTypes, aura_env.region.id)\n            WeakAuras.ScanEvents(\"ZT_REGISTER\", aura_env.regSpells, aura_env.region.id)\n        else\n            local isTypeReg = aura_env.types[type]\n            local isSpellReg = aura_env.spells[spellID]\n            local isInterested = (isTypeReg and not isSpellReg) or (not isTypeReg and isSpellReg)\n            if not allstates[watchID]\n            and isInterested\n            and (not member.isPlayer or aura_env.config[\"reg\"][\"type\"][\"showOwn\"..type])\n            then\n                local unit\n                for u in WA_IterateGroupMembers() do\n                    if UnitName(u) == member.name then unit = u end\n                end\n                \n                local state = {}\n                state.show = true\n                state.changed = true\n                state.autoHide = false\n                state.resort = false\n                \n                state.progressType = 'timed'\n                state.duration = duration\n                state.expirationTime = GetTime()\n                \n                state.ID = watchID\n                state.type = type\n                state.spellId = spellID\n                state.stacks = charges\n                state.member = member\n                state.unit = unit\n                \n                state.name = member.name\n                state.icon = select(3, GetSpellInfo(spellID))\n                \n                allstates[watchID] = state\n                \n                return true\n            end\n        end\n    elseif event == \"ZT_TRIGGER\" then\n        local duration, expiration, charges = ...\n        \n        local state = allstates[watchID]\n        if state then\n            state.changed = true\n            state.duration = duration\n            state.expirationTime = expiration \n            state.stacks = charges\n            \n            return true\n        end\n    elseif event == \"ZT_REMOVE\" then\n        local state = allstates[watchID]\n        if state then\n            state.show = false\n            state.changed = true\n            return true\n        end\n    elseif event == \"GROUP_ROSTER_UPDATE\" then\n        local now = GetTime()\n        if not aura_env.last or aura_env.last < now - 1 then\n            aura_env.last = now\n            local aura_env = aura_env\n            C_Timer.After(0.5, function() \n                    WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \n            end)            \n        end\n    end\nend\n",
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
			["internalVersion"] = 33,
			["rotateText"] = "NONE",
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
					["x"] = 0,
					["scalex"] = 1,
					["rotate"] = 0,
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    if aura_env.state and aura_env.state.member then\n        local colors = RAID_CLASS_COLORS[aura_env.state.member.classID]\n        if colors then\n            return colors.r, colors.g, colors.b, 1\n        end\n    end\nend\n",
					["easeStrength"] = 3,
					["colorB"] = 1,
					["colorType"] = "custom",
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
					["x"] = 0,
					["scalex"] = 1,
					["rotate"] = 0,
					["colorFunc"] = "function()\n    if aura_env.state then\n        local c = aura_env.state.classColor\n        if c then\n            return c.r, c.g, c.b, 1\n        end\n    end\nend",
					["easeStrength"] = 3,
					["colorB"] = 1,
					["colorType"] = "custom",
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
					["x"] = 0,
					["scalex"] = 1,
					["rotate"] = 0,
					["colorFunc"] = "\n\n",
					["easeStrength"] = 3,
					["colorB"] = 1,
					["colorType"] = "custom",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkRotation"] = 0,
			["stickyDuration"] = false,
			["width"] = 28,
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
			["sparkHidden"] = "NEVER",
			["semver"] = "1.0.16",
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
						["enabledTANK"] = false,
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
						["showOwnTANK"] = false,
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
							["13750"] = false,
							["201430"] = false,
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
							["106951"] = false,
							["1122"] = false,
							["288613"] = false,
							["113860"] = false,
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
						["IMMUNITY"] = {
							["45438"] = false,
							["642"] = false,
							["196555"] = false,
							["31224"] = false,
							["186265"] = false,
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
			["spark"] = false,
			["sparkRotationMode"] = "AUTO",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["borderBackdrop"] = "Solid",
			["id"] = "Tosh ZT Party Defensives Icons",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["displayTextLeft"] = "%n",
			["zoom"] = 0.3,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -1079.164672851563,
		["width"] = 829.9998779296875,
		["height"] = 665,
		["yOffset"] = -84.995849609375,
	},
	["editor_theme"] = "Monokai",
}
