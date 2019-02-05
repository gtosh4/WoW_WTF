
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["minimap"] = {
		["minimapPos"] = 285.444860106683,
		["hide"] = true,
	},
	["frame"] = {
		["xOffset"] = -242.40380859375,
		["width"] = 1144.02453613281,
		["height"] = 987.019958496094,
		["yOffset"] = -111.655639648438,
	},
	["displays"] = {
		["Tosh RaidCDs"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Tosh RaidCDs bar", -- [1]
			},
			["xOffset"] = -614.062622070313,
			["yOffset"] = 560.068298339844,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
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
						["type"] = "aura",
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
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["version"] = 8,
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
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["semver"] = "1.0.0-8",
			["uid"] = "k)k0yM84OEu",
			["id"] = "Tosh RaidCDs",
			["url"] = "https://wago.io/rJ3tSWjdX/8",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["internalVersion"] = 11,
			["backgroundInset"] = 0,
			["conditions"] = {
			},
			["selfPoint"] = "TOP",
			["rotation"] = 0,
		},
		["04 Earthen Roots"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284664",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["auranames"] = {
							"284817", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["name"] = "Incandescence",
						["debuffType"] = "HARMFUL",
						["use_spellId"] = true,
						["spellIds"] = {
							284817, -- [1]
						},
						["unit"] = "player",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Earthen Roots", -- [1]
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "KA(dTW0SGKG",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text2Font"] = "Arial Narrow",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "+%tooltip1%% DPS",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2"] = "%s%c",
			["auto"] = true,
			["icon"] = true,
			["id"] = "04 Earthen Roots",
			["url"] = "https://wago.io/bfaraid2/112",
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["07 Plague of Toads"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
				},
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1802889,
			["url"] = "https://wago.io/bfaraid2/112",
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["text1Font"] = "Arial Narrow",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Toads Inc",
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "07 Plague of Toads",
			["text1Enabled"] = true,
			["text2Enabled"] = false,
			["width"] = 80,
			["frameStrata"] = 1,
			["uid"] = "M4TE6m25HGT",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284933,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Plague of Toads",
						["use_spellId"] = true,
						["spellIds"] = {
							284168, -- [1]
						},
						["names"] = {
							"Shrunk", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["04 Quickened Pulse"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135822,
			["cooldownEdge"] = false,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["unit"] = "player",
						["auranames"] = {
							"284519", -- [1]
						},
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							284519, -- [1]
						},
						["event"] = "Cast",
						["debuffType"] = "HARMFUL",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["names"] = {
							"Quickened Pulse", -- [1]
						},
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Buffed",
			["internalVersion"] = 11,
			["glow"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1Font"] = "Arial Narrow",
			["id"] = "04 Quickened Pulse",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["alpha"] = 1,
			["width"] = 80,
			["frameStrata"] = 1,
			["uid"] = "jaRY71jGBYy",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["04 Liquid Gold"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["semver"] = "2.0.43",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["unit"] = "player",
						["auranames"] = {
							"287072", -- [1]
						},
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							287072, -- [1]
						},
						["event"] = "Cast",
						["debuffType"] = "HARMFUL",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["names"] = {
							"Liquid Gold", -- [1]
						},
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 135822,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Enabled"] = true,
			["url"] = "https://wago.io/bfaraid2/112",
			["config"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				0.9921568627451, -- [1]
				0.95686274509804, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["stickyDuration"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["auto"] = true,
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Drops Pool",
			["frameStrata"] = 1,
			["text1Font"] = "Arial Narrow",
			["text2"] = "%s",
			["useGlowColor"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "04 Liquid Gold",
			["desaturate"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["uid"] = "69D6qf4vYHq",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["06 Shrunk"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["xOffset"] = 0,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1698700,
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Containment"] = "OUTSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["text1Enabled"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Enter Robot",
			["text2Font"] = "Arial Narrow",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "06 Shrunk",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "4YFhCcdEe(3",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["auranames"] = {
							"284168", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
							"Shrunk", -- [1]
						},
						["use_tooltip"] = false,
						["spellIds"] = {
							284168, -- [1]
						},
						["type"] = "aura2",
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["01 Call to Arms"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Adds.ogg",
					["do_sound"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 283662,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Call to Arms",
						["use_spellId"] = true,
						["spellIds"] = {
							283598, -- [1]
						},
						["names"] = {
							"Wave of Light", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 236362,
			["cooldownTextEnabled"] = true,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "QT(WhSnu2ur",
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Adds Inc",
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "01 Call to Arms",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["useglowColor"] = false,
		},
		["Tosh HealerMana"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Tosh HealerMana bar", -- [1]
			},
			["xOffset"] = 1,
			["yOffset"] = 0,
			["anchorPoint"] = "TOPRIGHT",
			["space"] = 2,
			["url"] = "https://wago.io/H19CraC_7/7",
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
						["type"] = "aura",
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
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "LEFT",
			["stagger"] = 0,
			["version"] = 7,
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
			["border"] = "None",
			["anchorFrameFrame"] = "WeakAuras:Tosh RaidCDs",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["uid"] = "J7e12IyLwGS",
			["borderOffset"] = 16,
			["semver"] = "1.0.0-7",
			["selfPoint"] = "TOPLEFT",
			["id"] = "Tosh HealerMana",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["rotation"] = 0,
			["config"] = {
			},
			["background"] = "None",
			["backgroundInset"] = 0,
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["anchorFrameParent"] = false,
		},
		["05 Loa's Pact"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = true,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = true,
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["combineMode"] = "showLowest",
						["group_count"] = "0",
						["auranames"] = {
							"282079", -- [1]
						},
						["group_countOperator"] = ">",
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnActive",
						["useName"] = true,
						["event"] = "Cast",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "boss",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							282079, -- [1]
						},
						["use_unit"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Loa's Pact", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["glow"] = false,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Boss-99%",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "05 Loa's Pact",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "fCbusg3tTD6",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["09 Prismatic Image"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 288747,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Freezing Blast",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1041232,
			["glow"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg",
					["do_sound"] = true,
				},
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "7kM9SAC1UgO",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Add Inc",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["useglowColor"] = false,
			["id"] = "09 Prismatic Image",
			["text1Containment"] = "OUTSIDE",
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["09 Set Charge"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Collect.ogg",
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
						["spellId"] = "285725",
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["type"] = "custom",
						["use_unit"] = true,
						["subeventSuffix"] = "_SUMMON",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["custom"] = "function(event, ...)\n    if not WeakAuras.triggerState[aura_env.id].triggers[1] then\n        if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n            local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n            if subEvent == \"SPELL_SUMMON\" and spellID == 285725 then\n                return true\n            end\n        end\n    end\nend",
						["event"] = "Combat Log",
						["name"] = "Set Charge",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "timed",
						["use_specific_unit"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 252176,
			["text2Font"] = "Arial Narrow",
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "gP3xBHif(k0",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["affixes"] = {
				},
				["encounterid"] = "2281",
				["use_role"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["icon"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["xOffset"] = 0,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Collect",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "09 Set Charge",
			["url"] = "https://wago.io/bfaraid2/112",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
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
		["09 Frost Nova Cast"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284262,
						["use_absorbMode"] = true,
						["names"] = {
							"Searing Waves", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["dynamicDuration"] = false,
						["custom_hide"] = "timed",
						["unit"] = "player",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["name"] = "Voltaic Flash",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 289219 and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 289219 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "",
						["use_spellId"] = false,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["spellIds"] = {
							285280, -- [1]
						},
						["check"] = "event",
						["unevent"] = "auto",
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["cooldownTextEnabled"] = true,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Frost Nova",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["semver"] = "2.0.43",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "09 Frost Nova Cast",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["icon"] = true,
			["uid"] = "wFj0q)OLdzm",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["useglowColor"] = false,
		},
		["04 Grossly Incandescent!"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Buff.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284664",
						["auranames"] = {
							"284798", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Cast",
						["useName"] = true,
						["spellIds"] = {
							284798, -- [1]
						},
						["use_specific_unit"] = false,
						["name"] = "Incandescence",
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Grossly Incandescent!", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["icon"] = true,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "oU)eQyA)Znk",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Buffs allies",
			["internalVersion"] = 11,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1Font"] = "Arial Narrow",
			["id"] = "04 Grossly Incandescent!",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["frameStrata"] = 1,
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
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Opulence Diamond Depleted"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["yOffset"] = 400,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["auto"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/imlz-ng6S/2",
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
						["useName"] = true,
						["auranames"] = {
							"Depleted Diamond", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "OUTSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "OPULENCE",
			["cooldownEdge"] = false,
			["xOffset"] = -64,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["stickyDuration"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useglowColor"] = false,
			["uid"] = "DYTQzHWxnL(",
			["cooldownTextEnabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Font"] = "Friz Quadrata TT",
			["glow"] = false,
			["text2FontSize"] = 24,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["zoom"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["alpha"] = 1,
			["id"] = "Opulence Diamond Depleted",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["width"] = 64,
			["icon"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Enabled"] = true,
		},
		["02 Apetagonizer 3000"] = {
			["text2Point"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "265212",
						["duration"] = "3.5",
						["genericShowOn"] = "showOnMissing",
						["names"] = {
							"Gestate", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "custom",
						["type"] = "custom",
						["custom_type"] = "event",
						["unevent"] = "timed",
						["spellIds"] = {
							265212, -- [1]
						},
						["custom"] = "function(event, ...)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then\n        local unit, castGUID, spellID = ...\n        if (spellID == 282247 or spellID == 282526) then\n            return true\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["event"] = "Combat Log",
						["name"] = "Gestate",
						["customDuration"] = "function()\nreturn 4, 4 + GetTime()\nend",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_SUCCEEDED, INSTANCE_ENCOUNTER_ENGAGE_UNIT",
						["dynamicDuration"] = false,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_AURA_APPLIED",
						["use_specific_unit"] = false,
						["unit"] = "group",
					},
					["untrigger"] = {
						["custom"] = "function(event)\n    if event == \"INSTANCE_ENCOUNTER_ENGAGE_UNIT\" then\n        return true\n    end\nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound_path"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound_path"] = "",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg",
					["do_sound"] = true,
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 1141394,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["color"] = {
				0.98823529411765, -- [1]
				1, -- [2]
				0.96078431372549, -- [3]
				1, -- [4]
			},
			["uid"] = "evliJh2Fah(",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["icon"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
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
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["twenty"] = true,
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["animations"] = {
				["start"] = {
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Add Inc",
			["text1FontFlags"] = "OUTLINE",
			["desaturate"] = false,
			["text2"] = "%s%c",
			["auto"] = false,
			["cooldownTextEnabled"] = true,
			["id"] = "02 Apetagonizer 3000",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 80,
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["06 Tampering!"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 2115322,
			["xOffset"] = 0,
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auranames"] = {
							"286105", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
							"Shrunk", -- [1]
						},
						["use_tooltip"] = false,
						["spellIds"] = {
							284168, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "HDW)zQ)xivN",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Time Left",
			["glow"] = false,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "06 Tampering!",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Enabled"] = true,
		},
		["Opulence Hex of Lethargy"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 300,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/imlz-ng6S/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Hex of Lethargy", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["authorOptions"] = {
			},
			["glow"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["cooldownEdge"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
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
			["stickyDuration"] = false,
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "STOP MOVING",
			["auto"] = true,
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["parent"] = "OPULENCE",
			["id"] = "Opulence Hex of Lethargy",
			["text1Font"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "qBO43u(gzXM",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["T23 Battle of Dazar'alor Auras"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"T23 Co-Tank Auras (Custom Options!)", -- [1]
				"01 Sacred Blade (Tank Only)", -- [2]
				"01 Blinding Faith", -- [3]
				"01 Call to Arms", -- [4]
				"01 Divine Mallet", -- [5]
				"01 Seal of Retribution", -- [6]
				"01 Seal of Reckoning", -- [7]
				"01 Judgment: Reckoning", -- [8]
				"01 Judgment: Righteousness", -- [9]
				"01 Wave of Light", -- [10]
				"02 Crushed (Tank Only)", -- [11]
				"02 Rending Bite (Tank Only)", -- [12]
				"02 Bestial Throw (Tank Only)", -- [13]
				"02 Bestial Throw Target", -- [14]
				"02 Reverberating Slam [Horde]", -- [15]
				"02 Deathly Slam [Alliance]", -- [16]
				"02 Shaken / Death Touched", -- [17]
				"02 High Energy [Horde]", -- [18]
				"02 High Energy [Alliance]", -- [19]
				"02 Apetagonizer 3000", -- [20]
				"02 Discharge Shadow/Apetagonizer Core", -- [21]
				"03 Rising Flames On You (Tank Only)", -- [22]
				"03 Roll (Tank Only)", -- [23]
				"03 Prismatic Shield", -- [24]
				"03 Xuen Spawn", -- [25]
				"03 Stalking You", -- [26]
				"03 Magma Trap", -- [27]
				"03 Searing Embers", -- [28]
				"03 Force Orb", -- [29]
				"03 Post Multi-Sided Strike Buff", -- [30]
				"04 Depleted Diamond", -- [31]
				"04 Creeping Blaze", -- [32]
				"04 Consuming Flame", -- [33]
				"04 Flames of Punishment", -- [34]
				"04 Crush", -- [35]
				"04 Coin Shower", -- [36]
				"04 Liquid Gold", -- [37]
				"04 Chaotic Displacement", -- [38]
				"04 Protected from Dance", -- [39]
				"04 Volatile Charge", -- [40]
				"04 Hex of Lethargy", -- [41]
				"04 Deadly Hex", -- [42]
				"04 Spirits of Gold", -- [43]
				"04 High Energy", -- [44]
				"04 Wail of Greed Channel", -- [45]
				"04 Incandescence", -- [46]
				"04 Grossly Incandescent!", -- [47]
				"04 Earthen Roots", -- [48]
				"04 Thief's Bane", -- [49]
				"04 Opal of Unleashed Rage", -- [50]
				"04 Soothin Breeze", -- [51]
				"04 Flames of Punishment Dot", -- [52]
				"04 Pulse-quickening Toxin", -- [53]
				"04 Quickened Pulse", -- [54]
				"05 Hastening Winds (Tank Only)", -- [55]
				"05 Lacerating Claws (Tank)", -- [56]
				"05 Gift of Wind Cast (Mage Only)", -- [57]
				"05 Gift of Wind Buff On You (Mage Only)", -- [58]
				"05 Paku's Wrath", -- [59]
				"05 Paku's Wrath Duration", -- [60]
				"05 Krag'wa's Wrath", -- [61]
				"05 Crawling Hex", -- [62]
				"05 Akunda's Wrath", -- [63]
				"05 Kimbul's Wrath", -- [64]
				"05 Thundering Storm", -- [65]
				"05 Bwonsamdi's Wrath", -- [66]
				"05 Pack Hunter", -- [67]
				"05 Loa's Pact", -- [68]
				"06 Electroshock Amplification", -- [69]
				"06 Buster Cannon", -- [70]
				"06 Wormhole Generator", -- [71]
				"06 Gigavolt Charge", -- [72]
				"06 Blast Off", -- [73]
				"06 Critter Explosion", -- [74]
				"06 World Enlarger", -- [75]
				"06 Shrunk", -- [76]
				"06 Tampering!", -- [77]
				"06 Buster Cannon Dot", -- [78]
				"06 Enormous", -- [79]
				"06 Gigavolt Blast", -- [80]
				"06 Radiation Zone", -- [81]
				"06 Sheep Shrapnel", -- [82]
				"07 Scorching Detonation (Tank Only)", -- [83]
				"07 Focused Demise", -- [84]
				"07 Focused Demise On You", -- [85]
				"07 Meteor Leap /  On You", -- [86]
				"07 Inevitable End", -- [87]
				"07 Seal of Purification", -- [88]
				"07 Death's Door", -- [89]
				"07 Zombie Dust Totem", -- [90]
				"07 Plague of Toads", -- [91]
				"07 Deathly Withering", -- [92]
				"07 Plague of Fire", -- [93]
				"07 Toad Toxin", -- [94]
				"07 Serpent's Breath", -- [95]
				"07 Crushed (Tank-Only)", -- [96]
				"07 Seal of Bwonsamdi", -- [97]
				"07 Bwonsamdi's Boon", -- [98]
				"07 Caress of Death", -- [99]
				"07 Necrotic Smash", -- [100]
				"08 Kel-Wrapped (Tank Only)", -- [101]
				"08 Tempting Song", -- [102]
				"08 Sea Storm", -- [103]
				"08 Sea Swell", -- [104]
				"08 Sea Swell (Mythic)", -- [105]
				"08 Storm's Wail", -- [106]
				"08 Ire of the Deep", -- [107]
				"08 Voltaic Flash", -- [108]
				"08 Thunderous Boom", -- [109]
				"08 Tidal Shroud", -- [110]
				"08 Electric Shroud", -- [111]
				"08 Sea's Temptation", -- [112]
				"08 Energized Storm", -- [113]
				"09 Avalanche", -- [114]
				"09 Orb of Frost", -- [115]
				"09 Broadside", -- [116]
				"09 Siegebreaker Blast", -- [117]
				"09 Icefall", -- [118]
				"09 Kul Tiran Corsair", -- [119]
				"09 Heart of Frost", -- [120]
				"09 Burning Explosion", -- [121]
				"09 Burning Explosion (Mythic)", -- [122]
				"09 Warmth", -- [123]
				"09 Freezing Blast", -- [124]
				"09 Glacial Ray", -- [125]
				"09 Frost Nova", -- [126]
				"09 Frost Nova Cast", -- [127]
				"09 Freezing Blood", -- [128]
				"09 Ring of Frost", -- [129]
				"09 Chilling Touch", -- [130]
				"09 Ice Shard (Tank Only)", -- [131]
				"09 Marked Target", -- [132]
				"09 Arctic Armor", -- [133]
				"09 Searing Pitch", -- [134]
				"09 Set Charge", -- [135]
				"09 Prismatic Image", -- [136]
			},
			["xOffset"] = 195.91235351562,
			["yOffset"] = 66.669799804688,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
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
						["type"] = "aura",
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
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["version"] = 112,
			["load"] = {
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
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["hybridPosition"] = "hybridFirst",
			["sort"] = "hybrid",
			["authorOptions"] = {
			},
			["hybridSortMode"] = "descending",
			["constantFactor"] = "RADIUS",
			["backgroundInset"] = 0,
			["borderOffset"] = 16,
			["semver"] = "2.0.43",
			["radius"] = 200,
			["id"] = "T23 Battle of Dazar'alor Auras",
			["selfPoint"] = "LEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "oooQJ56mGyg",
			["rotation"] = 0,
			["sortHybridTable"] = {
				["04 Incandescence"] = false,
				["03 Prismatic Shield"] = true,
				["04 Depleted Diamond"] = true,
				["09 Siegebreaker Blast"] = true,
				["04 Consuming Flame"] = true,
				["04 Liquid Gold"] = true,
				["04 High Energy"] = true,
				["04 Spirits of Gold"] = true,
				["04 Soothin Breeze"] = true,
				["09 Set Charge"] = true,
				["02 Bestial Throw (Tank Only)"] = true,
				["01 Judgment: Reckoning"] = true,
				["05 Kimbul's Wrath"] = true,
				["T23 Co-Tank Auras (Custom Options!)"] = true,
				["04 Wail of Greed Channel"] = true,
				["01 Divine Mallet"] = true,
				["07 Scorching Detonation (Tank Only)"] = true,
				["02 Rending Bite (Tank Only)"] = true,
				["05 Paku's Wrath Duration"] = true,
				["05 Krag'wa's Wrath"] = true,
				["08 Thunderous Boom"] = false,
				["03 Rising Flames On You (Tank Only)"] = true,
				["04 Creeping Blaze"] = true,
				["08 Sea Swell"] = true,
				["03 Xuen Spawn"] = true,
				["09 Burning Explosion"] = true,
				["02 Bestial Throw Target"] = true,
				["03 Roll (Tank Only)"] = true,
				["07 Meteor Leap /  On You"] = true,
				["06 Electroshock Amplification"] = true,
				["06 Wormhole Generator"] = true,
				["09 Icefall"] = true,
				["06 Critter Explosion"] = true,
				["06 Buster Cannon"] = true,
				["08 Tempting Song"] = true,
				["02 Crushed (Tank Only)"] = false,
				["08 Voltaic Flash"] = true,
				["02 High Energy [Horde]"] = true,
				["09 Orb of Frost"] = true,
				["02 Deathly Slam [Alliance]"] = true,
				["08 Ire of the Deep"] = true,
				["09 Freezing Blast"] = true,
				["09 Warmth"] = true,
				["02 Reverberating Slam [Horde]"] = true,
				["02 High Energy [Alliance]"] = true,
				["08 Storm's Wail"] = true,
				["09 Glacial Ray"] = true,
				["07 Focused Demise On You"] = true,
				["08 Kel-Wrapped (Tank Only)"] = true,
				["05 Akunda's Wrath"] = true,
				["01 Sacred Blade (Tank Only)"] = true,
				["05 Gift of Wind Cast (Mage Only)"] = false,
				["01 Seal of Retribution"] = true,
				["01 Blinding Faith"] = true,
				["06 Gigavolt Charge"] = true,
				["09 Ring of Frost"] = true,
				["09 Avalanche"] = true,
				["06 Blast Off"] = false,
				["07 Focused Demise"] = true,
				["07 Inevitable End"] = true,
				["08 Tidal Shroud"] = true,
				["04 Crush"] = true,
				["08 Electric Shroud"] = true,
				["04 Flames of Punishment"] = true,
				["04 Coin Shower"] = true,
				["05 Gift of Wind Buff On You (Mage Only)"] = false,
				["01 Judgment: Righteousness"] = true,
				["04 Volatile Charge"] = true,
				["01 Seal of Reckoning"] = true,
				["06 Tampering!"] = false,
				["04 Chaotic Displacement"] = true,
				["08 Sea's Temptation"] = true,
				["05 Hastening Winds (Tank Only)"] = true,
				["08 Sea Storm"] = true,
				["05 Lacerating Claws (Tank)"] = true,
				["09 Broadside"] = true,
				["07 Seal of Purification"] = true,
			},
			["conditions"] = {
			},
			["expanded"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
		},
		["05 Kimbul's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "282834",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useExactSpellId"] = true,
						["spellIds"] = {
							282834, -- [1]
						},
						["event"] = "Cast",
						["names"] = {
							"Kimbul's Wrath", -- [1]
						},
						["auraspellids"] = {
							"282834", -- [1]
						},
						["use_spellId"] = true,
						["name"] = "Kimbul's Wrath",
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = true,
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 135854,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "5J5SlBK5aKw",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				0, -- [2]
				0.058823529411765, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "OUTSIDE",
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Targeted",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["useGlowColor"] = false,
			["text2"] = "%s",
			["auto"] = true,
			["text2Enabled"] = false,
			["id"] = "05 Kimbul's Wrath",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Opulence Tailwind"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 400,
			["anchorPoint"] = "CENTER",
			["zoom"] = 0,
			["cooldownSwipe"] = true,
			["text2Point"] = "CENTER",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["parent"] = "OPULENCE",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Tailwinds", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["internalVersion"] = 11,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["text1Enabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["text1Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["useGlowColor"] = false,
			["text1"] = "Stacks: %s",
			["auto"] = true,
			["authorOptions"] = {
			},
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["alpha"] = 1,
			["id"] = "Opulence Tailwind",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["width"] = 64,
			["icon"] = true,
			["uid"] = "1tRPDih)630",
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["url"] = "https://wago.io/imlz-ng6S/2",
		},
		["T23 Co-Tank Auras (Custom Options!)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["displayText"] = "sfafadfdsf",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "local r = aura_env.region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)",
					["do_sound"] = false,
					["do_custom"] = false,
					["sound"] = " custom",
				},
				["init"] = {
					["custom"] = "aura_env.convert = {\n    [\"BUFF\"] = \"HELPFUL\",\n    [\"DEBUFF\"] = \"HARMFUL\",\n}\n--to convert auraType (BUFF/DEBUFF) from CLEU payload\n\naura_env.sound = {\n    [1] = \"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Taunt.ogg\",\n    [2] = \"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\Taunt.ogg\",\n    [3] = \"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\RingingPhone.ogg\",\n    [4] = \"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\AirHorn.ogg\",\n}\n-- bully rivers doesn't want to add sound option to custom options\n\naura_env.associatedDebuff = {\n    [285874] = 285875, --Rending Bite\n    [282083] = 285671, --Bestial Smash / Crushed    \n}\n\n--[[\ndebuff that's associated with a certain cast\nleft the cast's spellID that causes the debuff\nright the debuff's spellID\nthis is used for tank-combo-cast mechanics such as grong/aggramar]]",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_message"] = false,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "TANK",
				},
				["use_never"] = false,
				["encounterid"] = "2263,2265,2266,2268,2271,2272,2276,2280,2281,2284,2285",
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["glowType"] = "buttonOverlay",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Enabled"] = true,
			["config"] = {
				["287993slider"] = 0,
				["286646"] = true,
				["284831dropdown"] = 2,
				["288151"] = false,
				["285945"] = true,
				["284168dropdown"] = 1,
				["285195"] = true,
				["289699slider"] = 0,
				["285253slider"] = 0,
				["285000slider"] = 0,
				["282037slider"] = 0,
				["282444"] = true,
				["289292dropdown"] = 2,
				["enableSound"] = 1,
				["282083"] = true,
				["282037"] = true,
				["284168"] = true,
				["289292"] = true,
				["282444slider"] = 0,
				["286646dropdown"] = 1,
				["284831"] = true,
				["285875"] = false,
				["287993"] = true,
				["284546"] = true,
				["285195slider"] = 0,
				["289699"] = true,
				["289858"] = false,
				["285254"] = true,
				["specifiedSound"] = 1,
				["283573"] = false,
				["283573slider"] = 0,
				["285945slider"] = 0,
				["289858dropdown"] = 2,
				["285253"] = false,
				["285254dropdown"] = 1,
				["285671"] = false,
				["285874"] = true,
				["285000"] = true,
				["284546dropdown"] = 2,
			},
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["version"] = 112,
			["height"] = 80,
			["fontSize"] = 57,
			["text2Containment"] = "INSIDE",
			["uid"] = "YPFe0Za5Pf6",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["wordWrap"] = "WordWrap",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownTextEnabled"] = true,
			["text2Font"] = "Arial Narrow",
			["cooldownEdge"] = false,
			["icon"] = true,
			["width"] = 80,
			["text1"] = "%name",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["customVariables"] = "{\n    spellID = \"number\",\n    stacks = true,\n    name = \"string\",\n    expirationTime = true,\n}",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["duration"] = "5",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, ...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID,_,_, auraType, amount = ...\n        if (subEvent == \"SPELL_AURA_APPLIED\" or subEvent == \"SPELL_AURA_APPLIED_DOSE\" or subEvent == \"SPELL_AURA_REMOVED_DOSE\" or subEvent == \"SPELL_AURA_REFRESH\") then\n            --checks for buff/debuff applied to co-tanks based on auraType\n            \n            if UnitGroupRolesAssigned(destName) == \"TANK\" and UnitIsVisible(destName) and UnitIsPlayer(destName) and destGUID~=WeakAuras.myGUID\n            then\n                if aura_env.config[\"enableSound\"] == 1 and (amount and amount > 0 and aura_env.config[spellID..\"slider\"] == amount or aura_env.config[spellID..\"dropdown\"] == 1) then\n                    PlaySoundFile(aura_env.sound[aura_env.config[\"specifiedSound\"]], \"MASTER\")\n                end\n                if aura_env.config[tostring(spellID)] then\n                    local _, spellicon, stackcount, _, dur, expTime  = WA_GetUnitAura(destName, spellID, aura_env.convert[auraType])\n                    allstates[spellID..destGUID] = {\n                        show = true,\n                        changed = true,\n                        progressType = \"timed\",\n                        duration = dur,\n                        expirationTime = expTime,\n                        autoHide = true,\n                        name = WA_ClassColorName(destName),\n                        icon = spellicon,\n                        stacks = stackcount,\n                        spellID = spellID,\n                    } \n                end\n            end\n            if (strsplit(\"-\", destGUID) == \"Creature\" or strsplit(\"-\", destGUID) == \"Vehicle\") and auraType == \"BUFF\" then\n                --checks for buff applied to boss1-5 and returns bossX target's name\n                for i = 1,5 do \n                    local unit = \"boss\"..i\n                    if (UnitGUID(unit) == destGUID) and not UnitIsUnit(unit..\"target\", \"player\") then\n                        if aura_env.config[\"enableSound\"] == 1 and (amount and amount > 0 and aura_env.config[spellID..\"slider\"] == amount or aura_env.config[spellID..\"toggle\"] == 1) then\n                            PlaySoundFile(aura_env.sound[aura_env.config[\"specifiedSound\"]], \"MASTER\")\n                        end\n                        if aura_env.config[tostring(spellID)] then\n                            local _, spellicon, stackcount, _, dur, expTime  = WA_GetUnitAura(unit, spellID, aura_env.convert[auraType])\n                            allstates[spellID..destGUID] = {\n                                show = true,\n                                changed = true,\n                                progressType = \"timed\",\n                                duration = dur,\n                                expirationTime = expTime,\n                                autoHide = true,\n                                name = WA_ClassColorName(unit..\"target\"),\n                                icon = spellicon,\n                                stacks = stackcount,\n                                spellID = spellID,\n                            } \n                            break \n                        end\n                    end\n                end\n            end\n        elseif subEvent == \"SPELL_CAST_START\" and aura_env.config[tostring(spellID)] then\n            --checks for started casts then if player no debuff while co-tank debuff then it shows\n            for i = 1,5 do \n                local unit = \"boss\"..i\n                if (UnitGUID(unit) == sourceGUID) and not UnitIsUnit(unit..\"target\", \"player\") then\n                    if WA_GetUnitAura(unit..\"target\", aura_env.associatedDebuff[spellID], \"HARMFUL\") then\n                        local buffname, spellicon, stackcount, _, dur, expTime  = WA_GetUnitAura(\"player\", aura_env.associatedDebuff[spellID], \"HARMFUL\")\n                        local name, text, texture, startTimeMS, endTimeMS = UnitCastingInfo(unit)\n                        if (expTime and (expTime-GetTime()) < (endTimeMS/1000-GetTime())) or not buffname then\n                            PlaySoundFile(aura_env.sound[aura_env.config[\"specifiedSound\"]], \"MASTER\")\n                            allstates[sourceGUID..spellID] = {\n                                show = true,\n                                changed = true,\n                                progressType = \"timed\",\n                                duration = endTimeMS / 1000 - GetTime(),\n                                expirationTime = endTimeMS / 1000,\n                                autoHide = true,\n                                name = \"Taunt\",\n                                icon = texture,\n                                spellID = spellID,\n                            }\n                        break end\n                    end\n                end\n            end\n        elseif subEvent == \"SPELL_AURA_REMOVED\" then\n            if allstates[spellID..destGUID] then\n                allstates[spellID..destGUID].changed = true\n                allstates[spellID..destGUID].show = false\n            end\n        end\n    end\n    return true\nend",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["font"] = "Friz Quadrata TT",
			["justify"] = "LEFT",
			["semver"] = "2.0.43",
			["alpha"] = 1,
			["id"] = "T23 Co-Tank Auras (Custom Options!)",
			["useGlowColor"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["text2"] = "%s%c",
			["inverse"] = false,
			["text1Containment"] = "OUTSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "spellID",
								["value"] = "282083",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["variable"] = "spellID",
								["value"] = "285874",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [1]
						{
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
				{
					["type"] = "description",
					["text"] = "Enable Taunt Sound?",
					["fontSize"] = "medium",
					["width"] = 0.8,
				}, -- [1]
				{
					["type"] = "select",
					["values"] = {
						"Yes", -- [1]
						"No", -- [2]
					},
					["default"] = 1,
					["key"] = "enableSound",
					["name"] = "",
					["width"] = 0.4,
				}, -- [2]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 0.8,
				}, -- [3]
				{
					["type"] = "select",
					["key"] = "specifiedSound",
					["default"] = 1,
					["values"] = {
						"Taunt (from SharedMedia_Causese)", -- [1]
						"Taunt (from WeakAuras)", -- [2]
						"Ringing Phone (from WeakAuras)", -- [3]
						"Airhorn (from WeakAuras)", -- [4]
					},
					["name"] = "Specify a sound",
					["width"] = 1.3,
				}, -- [4]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [5]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "|TInterface\\Icons\\ability_paladin_blindinglight:16:16:0:+2|t |cFFFF8800Champion of the Light|r",
					["width"] = 2,
				}, -- [6]
				{
					["type"] = "toggle",
					["name"] = "Show Sacred Blade",
					["default"] = false,
					["key"] = "283573",
					["width"] = 1.2,
				}, -- [7]
				{
					["type"] = "range",
					["useDesc"] = false,
					["max"] = 20,
					["step"] = 1,
					["width"] = 0.8,
					["min"] = 0,
					["name"] = "Sound at x stacks",
					["key"] = "283573slider",
					["default"] = 0,
				}, -- [8]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [9]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_grong:16:16:0:+2|t |cFFFF8800Grong|r",
					["width"] = 2,
				}, -- [10]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [11]
				{
					["type"] = "toggle",
					["name"] = "Show Crushed",
					["default"] = false,
					["key"] = "285671",
					["width"] = 2,
				}, -- [12]
				{
					["type"] = "toggle",
					["name"] = "Show Rending Bite",
					["default"] = false,
					["key"] = "285875",
					["width"] = 2,
				}, -- [13]
				{
					["type"] = "toggle",
					["name"] = "Show Bestial Throw",
					["default"] = true,
					["key"] = "289292",
					["width"] = 1.2,
				}, -- [14]
				{
					["type"] = "select",
					["name"] = "",
					["default"] = 2,
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["key"] = "289292dropdown",
					["width"] = 0.8,
				}, -- [15]
				{
					["type"] = "toggle",
					["name"] = "Combohelper (Bestial Smash)",
					["default"] = true,
					["key"] = "282083",
					["width"] = 2,
				}, -- [16]
				{
					["type"] = "toggle",
					["name"] = "Combohelper (Rending Bite)",
					["default"] = true,
					["key"] = "285874",
					["width"] = 1,
				}, -- [17]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [18]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [19]
				{
					["type"] = "description",
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_manceroy_mestrah:16:16:0:+2|t |cFFFF8800Jadefire Masters|r",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [20]
				{
					["type"] = "toggle",
					["name"] = "Show Rising Flames",
					["default"] = true,
					["key"] = "282037",
					["width"] = 1.2,
				}, -- [21]
				{
					["min"] = 0,
					["type"] = "range",
					["key"] = "282037slider",
					["default"] = 0,
					["max"] = 20,
					["name"] = "Sound at x stacks",
					["step"] = 1,
					["width"] = 0.8,
				}, -- [22]
				{
					["type"] = "toggle",
					["name"] = "Show Tested",
					["default"] = false,
					["key"] = "288151",
					["width"] = 2,
				}, -- [23]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [24]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_treasuregolem:16:16:0:+2|t |cFFFF8800Opulence|r",
					["width"] = 2,
				}, -- [25]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [26]
				{
					["type"] = "toggle",
					["name"] = "Show Depleted Diamond",
					["default"] = true,
					["key"] = "284546",
					["width"] = 1.2,
				}, -- [27]
				{
					["type"] = "select",
					["name"] = "",
					["default"] = 2,
					["key"] = "284546dropdown",
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["width"] = 0.8,
				}, -- [28]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [29]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_loacouncil:16:16:0:+2|t |cFFFF8800Conclave of the Chosen|r",
					["width"] = 2,
				}, -- [30]
				{
					["type"] = "toggle",
					["name"] = "Show Hastening Winds",
					["default"] = true,
					["key"] = "285945",
					["width"] = 1.2,
				}, -- [31]
				{
					["min"] = 0,
					["type"] = "range",
					["key"] = "285945slider",
					["default"] = 0,
					["max"] = 50,
					["name"] = "Sound at x stacks",
					["step"] = 1,
					["width"] = 0.8,
				}, -- [32]
				{
					["type"] = "toggle",
					["name"] = "Show Lacerating Claws",
					["default"] = true,
					["key"] = "282444",
					["width"] = 1.2,
				}, -- [33]
				{
					["min"] = 0,
					["type"] = "range",
					["key"] = "282444slider",
					["default"] = 0,
					["max"] = 20,
					["name"] = "Sound at x stacks",
					["step"] = 1,
					["width"] = 0.8,
				}, -- [34]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_mekkatorque:16:16:0:+2|t |cFFFF8800High Tinker Mekkatorque|r",
					["width"] = 2,
				}, -- [35]
				{
					["type"] = "toggle",
					["name"] = "Show Elec. Amplification",
					["default"] = true,
					["key"] = "289699",
					["width"] = 1.2,
				}, -- [36]
				{
					["min"] = 0,
					["type"] = "range",
					["key"] = "289699slider",
					["default"] = 0,
					["max"] = 50,
					["name"] = "Sound at x stacks",
					["step"] = 1,
					["width"] = 0.8,
				}, -- [37]
				{
					["type"] = "toggle",
					["name"] = "Show Gigavolt Charge",
					["default"] = true,
					["key"] = "286646",
					["width"] = 1.2,
				}, -- [38]
				{
					["type"] = "select",
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["default"] = 1,
					["key"] = "286646dropdown",
					["name"] = "",
					["width"] = 0.8,
				}, -- [39]
				{
					["type"] = "toggle",
					["name"] = "Show Shrunk",
					["default"] = true,
					["key"] = "284168",
					["width"] = 1.2,
				}, -- [40]
				{
					["type"] = "select",
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["default"] = 1,
					["key"] = "284168dropdown",
					["name"] = "",
					["width"] = 0.8,
				}, -- [41]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [42]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_rastakhan:16:16:0:+2|t |cFFFF8800King Rastakhan|r",
					["width"] = 2,
				}, -- [43]
				{
					["type"] = "toggle",
					["name"] = "Show Deathy Withering",
					["default"] = true,
					["key"] = "285195",
					["width"] = 1.2,
				}, -- [44]
				{
					["min"] = 0,
					["type"] = "range",
					["key"] = "285195slider",
					["default"] = 0,
					["max"] = 100,
					["name"] = "Sound at x stacks",
					["step"] = 1,
					["width"] = 0.8,
				}, -- [45]
				{
					["type"] = "toggle",
					["name"] = "Show Scorching Detonation",
					["default"] = true,
					["key"] = "284831",
					["width"] = 1,
				}, -- [46]
				{
					["type"] = "select",
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["default"] = 2,
					["key"] = "284831dropdown",
					["name"] = "",
					["width"] = 1,
				}, -- [47]
				{
					["type"] = "toggle",
					["name"] = "Show Crushed",
					["default"] = false,
					["key"] = "289858",
					["width"] = 1,
				}, -- [48]
				{
					["type"] = "select",
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["default"] = 2,
					["name"] = "",
					["key"] = "289858dropdown",
					["width"] = 1,
				}, -- [49]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [50]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_blockade:16:16:0:+2|t |cFFFF8800Stormwall Blockade|r",
					["width"] = 2,
				}, -- [51]
				{
					["type"] = "toggle",
					["name"] = "Show Kelp Wrapped",
					["default"] = true,
					["key"] = "285000",
					["width"] = 1.2,
				}, -- [52]
				{
					["min"] = 0,
					["type"] = "range",
					["key"] = "285000slider",
					["default"] = 0,
					["max"] = 20,
					["name"] = "Sound at x stacks",
					["step"] = 1,
					["width"] = 0.8,
				}, -- [53]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_jaina:16:16:0:+2|t |cFFFF8800Lady Jaina Proudmoore|r",
					["width"] = 2,
				}, -- [54]
				{
					["type"] = "toggle",
					["name"] = "Show Chilling Touch",
					["default"] = true,
					["key"] = "287993",
					["width"] = 1.2,
				}, -- [55]
				{
					["min"] = 0,
					["type"] = "range",
					["key"] = "287993slider",
					["default"] = 0,
					["max"] = 20,
					["name"] = "Sound at x stacks",
					["step"] = 1,
					["width"] = 0.8,
				}, -- [56]
				{
					["type"] = "toggle",
					["key"] = "285253",
					["default"] = false,
					["name"] = "Show Ice Shard",
					["width"] = 1.2,
				}, -- [57]
				{
					["min"] = 0,
					["type"] = "range",
					["name"] = "Sound at x stacks",
					["default"] = 0,
					["max"] = 50,
					["key"] = "285253slider",
					["step"] = 1,
					["width"] = 0.8,
				}, -- [58]
				{
					["type"] = "toggle",
					["name"] = "Show Avalanche",
					["default"] = true,
					["key"] = "285254",
					["width"] = 1.2,
				}, -- [59]
				{
					["type"] = "select",
					["name"] = "",
					["default"] = 1,
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["key"] = "285254dropdown",
					["width"] = 0.8,
				}, -- [60]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [61]
				{
					["type"] = "description",
					["text"] = "*Don't touch Author Mode",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [62]
			},
		},
		["03 Magma Trap"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284374",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Magma Trap", -- [1]
						},
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useExactSpellId"] = true,
						["name"] = "Magma Trap",
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"284374", -- [1]
						},
						["use_spellId"] = true,
						["spellIds"] = {
							284374, -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 841379,
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/bfaraid2/112",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
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
				["use_difficulty"] = false,
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Can't Soak",
			["internalVersion"] = 11,
			["text1Containment"] = "OUTSIDE",
			["zoom"] = 0.3,
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "03 Magma Trap",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["frameStrata"] = 1,
			["uid"] = "CNofCtoJX9d",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["useglowColor"] = false,
		},
		["01 Divine Mallet"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dance.ogg",
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
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = "287439",
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["dynamicDuration"] = true,
						["subeventPrefix"] = "SPELL",
						["duration"] = "2",
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["use_cloneId"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "event",
						["unevent"] = "timed",
						["custom_type"] = "event",
						["spellIds"] = {
							282939, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Combat Log",
						["use_specific_unit"] = true,
						["castType"] = "cast",
						["use_spellId"] = true,
						["events"] = "",
						["name"] = "Divine Mallet",
						["remOperator"] = "<=",
						["custom_hide"] = "timed",
						["use_unit"] = true,
						["unit"] = "boss1",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 613955,
			["xOffset"] = 0,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["size"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
				},
				["use_difficulty"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dance",
			["url"] = "https://wago.io/bfaraid2/112",
			["desaturate"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "01 Divine Mallet",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "mYuHykvhLYk",
			["inverse"] = false,
			["icon"] = true,
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
		["09 Frost Nova"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2"] = "%energy",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\High Energy.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.guids = {\n    [\"149144\"] = true,\n}",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["fullscan"] = true,
						["use_unit"] = true,
						["names"] = {
							"Broadside", -- [1]
						},
						["use_tooltip"] = false,
						["duration"] = "1",
						["use_absorbMode"] = true,
						["auranames"] = {
						},
						["name"] = "Broadside",
						["auraspellids"] = {
						},
						["debuffType"] = "HARMFUL",
						["custom_type"] = "stateupdate",
						["type"] = "custom",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["spellIds"] = {
							288212, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Combat Log",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_spellId"] = true,
						["custom"] = "function(allstates, e, u)\n    --might be relevant if you have to massdispel melees or if melees have to run 12y\n    if e == \"INSTANCE_ENCOUNTER_ENGAGE_UNIT\" then\n        for _, state in pairs(allstates) do\n            state.show = false;\n            state.changed = true;\n        end\n        for i = 1, 5 do\n            local unit = \"boss\"..i\n            if unit and UnitGUID(unit) and aura_env.guids[select(6, strsplit(\"-\", UnitGUID(unit)))] then\n                local current = UnitPower(unit)\n                if (current >= 85 and current < 100) then\n                    allstates[UnitGUID(unit)] = {\n                        show = true,\n                        changed = true,\n                        progressType = \"static\",\n                        energy = current,\n                    }\n                end\n            end\n        end\n    end\n    if e == \"UNIT_POWER_UPDATE\" then\n        if u and allstates[UnitGUID(u)] and UnitGUID(u) then\n            local current = UnitPower(u)\n            local guid = UnitGUID(u)\n            allstates[guid].energy = current\n            allstates[guid].changed = true\n            if (current == 100 or current <= 85) then\n                allstates[guid].show = false\n                allstates[guid].changed = true\n            end\n        end\n    end\n    if e == \"UNIT_POWER_UPDATE\" then\n        if u and UnitGUID(u) and not allstates[UnitGUID(u)] and aura_env.guids[select(6, strsplit(\"-\", UnitGUID(u)))] then\n            local current = UnitPower(u)\n            if (current >= 85 and current < 100) then\n                allstates[UnitGUID(u)] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"static\",\n                    energy = current,\n                }\n            end\n        end\n    end\n    return true\nend",
						["events"] = "INSTANCE_ENCOUNTER_ENGAGE_UNIT, UNIT_POWER_UPDATE",
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownTextEnabled"] = true,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Enabled"] = true,
			["load"] = {
				["use_never"] = false,
				["use_encounterid"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["icon"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.086274509803922, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["text2FontSize"] = 35,
			["auto"] = false,
			["text1"] = "Nova Inc",
			["text1FontFlags"] = "OUTLINE",
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.43",
			["url"] = "https://wago.io/bfaraid2/112",
			["id"] = "09 Frost Nova",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "wBBCbsCy3jS",
			["inverse"] = false,
			["desaturate"] = true,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["useglowColor"] = false,
		},
		["07 Caress of Death"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["names"] = {
							"Caress of Death", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["event"] = "Cast",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_spellId"] = false,
						["spellIds"] = {
							285213, -- [1]
						},
						["name"] = "Plague of Toads",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"285213", -- [1]
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1802889,
			["glow"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "kupU2KlQyZU",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "No Heal",
			["internalVersion"] = 11,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["id"] = "07 Caress of Death",
			["stickyDuration"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["08 Sea Swell (Mythic)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["semver"] = "2.0.43",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["spellId"] = "290694",
						["duration"] = "2",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["type"] = "event",
						["use_unit"] = true,
						["unevent"] = "timed",
						["names"] = {
							"Sea Swell", -- [1]
						},
						["use_absorbMode"] = true,
						["event"] = "Combat Log",
						["events"] = "",
						["spellIds"] = {
							285118, -- [1]
						},
						["use_spellId"] = true,
						["name"] = "Sea Swell",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 135861,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["scaleFunc"] = "function(progress, startX, startY, scaleX, scaleY)\n    local angle = (progress * 8 * math.pi) - (math.pi / 2)\n    return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\nend\n\n\n",
					["scalex"] = 1.05,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scaleType"] = "custom",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local prog\n    if(progress < 0.25) then\n        prog = progress * 4\n    elseif(progress < .75) then\n        prog = 2 - (progress * 4)\n    else\n        prog = (progress - 1) * 4\n    end\n    return startX + (prog * deltaX), startY + (prog * deltaY)\nend\n\n\n",
					["scaley"] = 1.1,
					["alpha"] = 0,
					["use_scale"] = false,
					["y"] = 10,
					["x"] = 0,
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["translateType"] = "custom",
					["rotate"] = 0,
					["type"] = "none",
					["colorA"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["glow"] = false,
			["text1Enabled"] = true,
			["uid"] = "PMNr8V77vt(",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["cooldownEdge"] = false,
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["desaturate"] = false,
			["useGlowColor"] = true,
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Pools",
			["selfPoint"] = "CENTER",
			["text2Enabled"] = false,
			["text2"] = "%s",
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "08 Sea Swell (Mythic)",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["07 Scorching Detonation (Tank Only)"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["useGlowColor"] = false,
			["useglowColor"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"284831", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["custom_type"] = "event",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Scorching Detonation", -- [1]
						},
						["event"] = "Chat Message",
						["unevent"] = "auto",
						["events"] = "",
						["useName"] = true,
						["spellIds"] = {
							284831, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["subeventSuffix"] = "_CAST_START",
						["dynamicDuration"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = 284831,
						["use_absorbMode"] = true,
						["unit"] = "multi",
						["destUnit"] = "player",
						["custom_hide"] = "timed",
						["type"] = "custom",
						["unevent"] = "auto",
						["use_unit"] = true,
						["dynamicDuration"] = false,
						["event"] = "Cast",
						["duration"] = "1",
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["use_spellId"] = true,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284831 and UnitIsUnit(unitID..\"target\", \"player\") \n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284831 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["use_destUnit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "multi",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 460698,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
					["sound_path"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["alpha"] = 1,
			["load"] = {
				["ingroup"] = {
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
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["glow"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["semver"] = "2.0.43",
			["text2FontSize"] = 24,
			["zoom"] = 0.3,
			["text1"] = "Move Far",
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["text2"] = "%p",
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "07 Scorching Detonation (Tank Only)",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["width"] = 80,
			["cooldownEdge"] = false,
			["uid"] = "kn4HEXpm1N9",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["06 Gigavolt Blast"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1698700,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"288806", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Gigavolt Blast", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							283411, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text2Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dot",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "06 Gigavolt Blast",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "9bj9I(lXa3E",
			["inverse"] = false,
			["icon"] = true,
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
		["Combat Time"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = -555.027587890625,
			["displayText"] = "%c",
			["customText"] = "-- [Encounter Time] %c (Every Frame)\nfunction()\n    local A = aura_env\n    if A.combatStart then\n        local combatTime = GetTime() - A.combatStart\n        return string.format(\"[%02d:%02d]\", combatTime/60, combatTime%60)\n    else\n        return \"[12:05]\"\n    end\nend",
			["yOffset"] = 616.019714355469,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/ry2wJDZOb/1",
			["actions"] = {
				["start"] = {
					["sound_channel"] = "Master",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.mp3",
					["do_message"] = false,
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
						["type"] = "custom",
						["custom_hide"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
						["customDuration"] = "",
						["customName"] = "",
						["custom"] = "--! [Encounter Time] Trigger (Enter/Exit Combat)\nfunction()\n    local A = aura_env\n    if (UnitExists(\"boss1\") and UnitIsDeadOrGhost(\"player\")) or UnitAffectingCombat(\"player\") or InCombatLockdown() then\n        A.combatStart = A.combatStart or GetTime()\n        return true\n    else\n        A.combatStart = nil\n        return false\n    end\nend",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["events"] = "INSTANCE_ENCOUNTER_ENGAGE_UNIT, PLAYER_REGEN_DISABLED, PLAYER_REGEN_ENABLED",
						["genericShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return true\nend\n\n\n\n\n\n\n\n",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
			["wordWrap"] = "WordWrap",
			["font"] = "consolab",
			["version"] = 1,
			["height"] = 33.999992370605,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 2,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
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
				["class"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 34,
			["regionType"] = "text",
			["semver"] = "1.0.0",
			["justify"] = "LEFT",
			["selfPoint"] = "TOPRIGHT",
			["id"] = "Combat Time",
			["automaticWidth"] = "Auto",
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				0.87843137254902, -- [1]
				0.274509803921569, -- [2]
				0.223529411764706, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["width"] = 123,
			["fixedWidth"] = 200,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["authorOptions"] = {
			},
		},
		["05 Krag'wa's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\n    return aura_env.counter\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["zoom"] = 0.3,
			["cooldownSwipe"] = true,
			["text2Font"] = "Arial Narrow",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.counter = 3\naura_env.successCount = 0",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "3",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "function()\n    return aura_env.duration, aura_env.expirationTime + GetTime()\nend",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED, KRAG_WA, ENCOUNTER_START",
						["dynamicDuration"] = true,
						["custom"] = "function(event, ...)\n    if event == \"KRAG_WA\" and aura_env.counter >= 1 then\n        local aura_env = aura_env\n        C_Timer.After(3, function() aura_env.counter = aura_env.counter - 1 WeakAuras.ScanEvents(\"KRAG_WA\") end)\n        return true\n    end\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n        if subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 282636 then\n            aura_env.successCount = aura_env.successCount + 1\n            if not WeakAuras.triggerState[aura_env.id].triggers[1] then\n                if aura_env.successCount <4 then\n                    aura_env.counter = 3                \n                    aura_env.duration = 3\n                    aura_env.expirationTime = 3\n                    local aura_env = aura_env\n                    C_Timer.After(3, function() aura_env.counter = aura_env.counter - 1 WeakAuras.ScanEvents(\"KRAG_WA\") end)\n                    return true\n                else\n                    aura_env.successCount = 0\n                end\n            end\n        end\n    end\n    if event == \"ENCOUNTER_START\" then\n        aura_env.successCount = 0\n    end\nend",
						["names"] = {
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 1802889,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Containment"] = "OUTSIDE",
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
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
				["use_difficulty"] = false,
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["config"] = {
			},
			["cooldownTextEnabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Avoid",
			["glow"] = false,
			["internalVersion"] = 11,
			["text2"] = "%c",
			["auto"] = false,
			["icon"] = true,
			["id"] = "05 Krag'wa's Wrath",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownEdge"] = false,
			["uid"] = "Xsm7)izBwDo",
			["inverse"] = false,
			["desaturate"] = false,
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
		["09 Broadside"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["semver"] = "2.0.43",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"288212", -- [1]
						},
						["type"] = "aura2",
						["unevent"] = "auto",
						["useExactSpellId"] = true,
						["use_absorbMode"] = true,
						["names"] = {
							"Broadside", -- [1]
						},
						["event"] = "Cast",
						["spellIds"] = {
							288212, -- [1]
						},
						["unit"] = "player",
						["use_spellId"] = true,
						["name"] = "Broadside",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"288212", -- [1]
						},
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 132620,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["xOffset"] = 0,
			["config"] = {
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.003921568627451, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text2Enabled"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "ACShine",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Arial Narrow",
			["auto"] = true,
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Go Barrel",
			["cooldownEdge"] = false,
			["text1Font"] = "Arial Narrow",
			["text2"] = "%s",
			["useGlowColor"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "09 Broadside",
			["text1Containment"] = "OUTSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "Ot8wCBLkO8r",
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["04 Creeping Blaze"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.name then\n        return aura_env.state.name\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 524795,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "MWdRWTU5wrh",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["glow"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["internalVersion"] = 11,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "%c",
			["alpha"] = 1,
			["text1Enabled"] = true,
			["text2"] = "%c",
			["auto"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["id"] = "04 Creeping Blaze",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.room = {\n    [1] = \"Flame Room\",\n    [2] = \"Laser Room\",\n    [3] = \"Dot Room\",\n    [4] = \"Laser Room\",\n    [5] = \"Flame Room\",\n    [6] = \"Collect\",\n    [7] = \"Final Room\", \n}\naura_env.counter = 0",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "285632",
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["names"] = {
							"Stalking", -- [1]
						},
						["dynamicDuration"] = false,
						["unit"] = "player",
						["custom_hide"] = "timed",
						["check"] = "event",
						["events"] = "UNIT_SPELLCAST_CHANNEL_START, UNIT_SPELLCAST_CHANNEL_STOP, ROOM_COUNTER",
						["debuffType"] = "HARMFUL",
						["name"] = "Stalking",
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_AURA_APPLIED",
						["unevent"] = "timed",
						["use_unit"] = true,
						["event"] = "Combat Log",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "",
						["use_spellId"] = true,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_CHANNEL_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 286541 and IsItemInRange(32825, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitChannelInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[UnitGUID(unitID)] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                    name = aura_env.room[aura_env.counter],\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_CHANNEL_STOP\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 286541 and allstates[UnitGUID(unitID)] then\n            allstates[UnitGUID(unitID)].changed = true\n            allstates[UnitGUID(unitID)].show = false\n        end\n    end\n    if event == \"ROOM_COUNTER\" then\n        aura_env.counter = ...\n    end\n    return true\nend",
						["spellIds"] = {
							285632, -- [1]
						},
						["remOperator"] = "<=",
						["use_destUnit"] = false,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["08 Sea Swell"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownEdge"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = false,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 135861,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["scaleFunc"] = "function(progress, startX, startY, scaleX, scaleY)\n    local angle = (progress * 8 * math.pi) - (math.pi / 2)\n    return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\nend\n\n\n",
					["scalex"] = 1.05,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scaleType"] = "custom",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local prog\n    if(progress < 0.25) then\n        prog = progress * 4\n    elseif(progress < .75) then\n        prog = 2 - (progress * 4)\n    else\n        prog = (progress - 1) * 4\n    end\n    return startX + (prog * deltaX), startY + (prog * deltaY)\nend\n\n\n",
					["scaley"] = 1.1,
					["alpha"] = 0,
					["use_scale"] = false,
					["y"] = 10,
					["x"] = 0,
					["colorA"] = 1,
					["translateType"] = "custom",
					["type"] = "none",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["colorR"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["config"] = {
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["stickyDuration"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Pools",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["auto"] = false,
			["text2"] = "%s",
			["useGlowColor"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "08 Sea Swell",
			["cooldownTextEnabled"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Enabled"] = true,
			["uid"] = "3neGACO6rrs",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "custom",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["event"] = "Cast",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 285118 and string.match(unitID, \"boss\") then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 285118 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["custom_type"] = "stateupdate",
						["use_spellId"] = false,
						["name"] = "Sea Swell",
						["spellIds"] = {
							285118, -- [1]
						},
						["check"] = "event",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Sea Swell", -- [1]
						},
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
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
		["03 Xuen Spawn"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Adds.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 620832,
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
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
				["use_difficulty"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Containment"] = "OUTSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["icon"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Adds",
			["text2Font"] = "Arial Narrow",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "03 Xuen Spawn",
			["cooldownEdge"] = false,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "SFVxkcDCdOC",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "285632",
						["group_role"] = "TANK",
						["duration"] = "2.5",
						["unit"] = "player",
						["use_unit"] = true,
						["names"] = {
							"Stalking", -- [1]
						},
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "custom",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["subeventSuffix"] = "_AURA_APPLIED",
						["custom"] = "function(event, unit, castGUID, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 285645 then \n            return true\n        end\n    end\nend\n\n\n",
						["spellIds"] = {
							285632, -- [1]
						},
						["event"] = "Combat Log",
						["use_specific_unit"] = false,
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Stalking",
						["custom_type"] = "event",
						["remOperator"] = "<=",
						["use_destUnit"] = false,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["BFA Talents\\Items\\Azerite Traits (current setup)  "] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 15,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    if aura_env.state then\n        if aura_env.state.plvl then\n            return aura_env.state.plvl .. \"|n\" .. aura_env.state.ilvl, aura_env.state.name\n        elseif aura_env.state.ilvl then\n            return aura_env.state.ilvl, aura_env.state.name\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -340.021087646484,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/TalentSetup/32",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["glow_action"] = "show",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:Talents\\Items",
				},
				["init"] = {
					["custom"] = "aura_env.LCG = LibStub(\"LibCustomGlow-1.0\")\n\naura_env.tips = {}\nlocal aura_env = aura_env\naura_env.sortAndOffset = function()\n    local spacing = aura_env.config[\"spacing\"] or 1\n    \n    local test = 0\n    local count = 0\n    local t = {}\n    local tc = {} \n    local list = {}\n    \n    for k, v in pairs(WeakAuras.clones[aura_env.id]) do\n        if v.state and v.state.count and v.state.show then\n            table.insert(t, v)\n        end\n    end\n    table.sort(t, function(a,b) return a.state.count < b.state.count end)\n    \n    for i, region in pairs(t) do\n        if region.toShow then\n            if aura_env.config[\"compact\"] then --COMPACT MODE\n                local xOffset, yOffset = 0, 0\n                local distance = region.width + spacing\n                if aura_env.config[\"direction\"] == 1 then --from RIGHT to LEFT\n                    xOffset = 0 - (distance * count)\n                    \n                elseif aura_env.config[\"direction\"] == 2 then --from LEFT to RIGHT\n                    xOffset = 0 + (distance * count)\n                    \n                elseif aura_env.config[\"direction\"] == 3 then --FROM TOP to BOTTOM\n                    yOffset = 0 - (distance * count)\n                    \n                elseif aura_env.config[\"direction\"] == 4 then --FROM BOTTOM to TOP\n                    yOffset = 0 + (distance * count)\n                end\n                \n                if region.state.itemSlot and not tc[region.state.itemSlot] then\n                    local X, Y = 0, 0\n                    if aura_env.config[\"direction\"] == 1 then --from RIGHT to LEFT\n                        local side = (aura_env.config[\"side\"] == 1 or aura_env.config[\"side\"] == 2) and aura_env.config[\"side\"] or 1\n                        if side == 1 then\n                            X = 0 - (distance * test)\n                            Y = 0 + (distance)\n                        elseif side == 2 then\n                            X = 0 - (distance * test)\n                            Y = 0 - (distance)\n                        end\n                    elseif aura_env.config[\"direction\"] == 2 then --from LEFT TO RIGHT\n                        local side = (aura_env.config[\"side\"] == 1 or aura_env.config[\"side\"] == 2) and aura_env.config[\"side\"] or 1\n                        if side == 1 then\n                            X = 0 + (distance * test)\n                            Y = 0 + (distance)\n                        elseif side == 2 then\n                            X = 0 + (distance * test)\n                            Y = 0 - (distance)\n                        end\n                    elseif aura_env.config[\"direction\"] == 3 then --from TOP TO BOTTOM\n                        local side = (aura_env.config[\"side\"] == 3 or aura_env.config[\"side\"] == 4) and aura_env.config[\"side\"] or 4\n                        if side == 3 then\n                            X = 0 - (distance)\n                            Y = 0 - (distance * test)\n                        elseif side == 4 then\n                            X = 0 + (distance)\n                            Y = 0 - (distance * test)\n                        end\n                    elseif aura_env.config[\"direction\"] == 4 then --FROM BOTTOM TO TOP\n                        local side = (aura_env.config[\"side\"] == 3 or aura_env.config[\"side\"] == 4) and aura_env.config[\"side\"] or 4\n                        if side == 3 then\n                            X = 0 - (distance)\n                            Y = 0 + (distance * test)\n                        elseif side == 4 then\n                            X = 0 + (distance)\n                            Y = 0 + (distance * test)\n                        end\n                    end\n                    \n                    \n                    region:ClearAllPoints()\n                    region:SetPoint(\"CENTER\" , WeakAuras.regions[aura_env.id].region, \"CENTER\", X, Y)\n                    \n                    if aura_env.config[\"showTooltips\"] and not region.state.hideMe then\n                        region:SetScript(\"OnEnter\", function() GameTooltip:SetOwner(UIParent, \"ANCHOR_CURSOR\")\n                                if region.state.link then\n                                    GameTooltip:SetHyperlink(region.state.link)\n                                else\n                                    GameTooltip:AddDoubleLine(region.state.name, region.state.spellid, 1, 1, 1, 1, 1, 1)\n                                end\n                                GameTooltip:AddLine(region.state.description, nil, nil, nil, true)\n                                GameTooltip:Show()\n                        end)\n                        region:SetScript(\"OnLeave\", function() GameTooltip:Hide() end)\n                    end\n                    \n                    tc[region.state.itemSlot] = {}\n                    list[region.state.itemSlot] = aura_env.config[\"showGear\"] and 1 or 2\n                    local point, relativeTo, relativePoint, xOfs, yOfs = region:GetPoint()\n                    tc[region.state.itemSlot] = {point, relativeTo, relativePoint, xOfs, yOfs}\n                    test = test + 1\n                elseif region.state.relativeTo and list[region.state.relativeTo] then\n                    local point, relativeTo, relativePoint, xOfs, yOfs = unpack(tc[region.state.relativeTo])\n                    \n                    if aura_env.config[\"direction\"] == 1 or aura_env.config[\"direction\"] == 2 then --from RIGHT to LEFT\n                        local side = (aura_env.config[\"side\"] == 1 or aura_env.config[\"side\"] == 2) and aura_env.config[\"side\"] or 1\n                        if side == 1 then\n                            yOfs = 0 + (distance * list[region.state.relativeTo])\n                        elseif side == 2 then\n                            yOfs = 0 - (distance * list[region.state.relativeTo])\n                        end\n                    elseif aura_env.config[\"direction\"] == 3 or aura_env.config[\"direction\"] == 4 then --FROM TOP to BOTTOM\n                        local side = (aura_env.config[\"side\"] == 3 or aura_env.config[\"side\"] == 4) and aura_env.config[\"side\"] or 4\n                        if side == 3 then\n                            xOfs = 0 - (distance * list[region.state.relativeTo])\n                        elseif side == 4 then\n                            xOfs = 0 + (distance * list[region.state.relativeTo])\n                        end\n                    end\n                    \n                    region:ClearAllPoints()\n                    region:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs)\n                    \n                    if aura_env.config[\"showTooltips\"] and not region.state.hideMe then\n                        region:SetScript(\"OnEnter\", function() GameTooltip:SetOwner(UIParent, \"ANCHOR_CURSOR\")\n                                GameTooltip:AddDoubleLine(region.state.name, region.state.spellid, 1, 1, 1, 1, 1, 1)\n                                GameTooltip:AddLine(region.state.description, nil, nil, nil, true)\n                                GameTooltip:Show()\n                        end)\n                        region:SetScript(\"OnLeave\", function() GameTooltip:Hide() end)\n                    end\n                    \n                    list[region.state.relativeTo] = list[region.state.relativeTo] + 1\n                else\n                    region:ClearAllPoints()\n                    region:SetPoint(\"CENTER\" , WeakAuras.regions[aura_env.id].region, \"CENTER\", xOffset, yOffset)\n                    \n                    if aura_env.config[\"showTooltips\"] and not region.state.hideMe then\n                        region:SetScript(\"OnEnter\", function() GameTooltip:SetOwner(UIParent, \"ANCHOR_CURSOR\")\n                                if region.state.link then\n                                    GameTooltip:SetHyperlink(region.state.link)\n                                else\n                                    GameTooltip:AddDoubleLine(region.state.name, region.state.spellid, 1, 1, 1, 1, 1, 1)\n                                end\n                                GameTooltip:AddLine(region.state.description, nil, nil, nil, true)\n                                GameTooltip:Show()\n                        end)\n                        region:SetScript(\"OnLeave\", function() GameTooltip:Hide() end)\n                    end\n                    \n                    count = count + 1\n                end\n            else --NORMAL MODE\n                local xOffset, yOffset = 0, 0\n                local distance = region.width + spacing\n                if aura_env.config[\"direction\"] == 1 then --from RIGHT to LEFT\n                    xOffset = 0 - (distance * count)\n                    \n                elseif aura_env.config[\"direction\"] == 2 then --from LEFT to RIGHT\n                    xOffset = 0 + (distance * count)\n                    \n                elseif aura_env.config[\"direction\"] == 3 then --FROM TOP to BOTTOM\n                    yOffset = 0 - (distance * count)\n                    \n                elseif aura_env.config[\"direction\"] == 4 then --FROM BOTTOM to TOP\n                    yOffset = 0 + (distance * count)\n                end\n                \n                if region.state.itemSlot and not tc[region.state.itemSlot] then\n                    region:ClearAllPoints()\n                    region:SetPoint(\"CENTER\" , WeakAuras.regions[aura_env.id].region, \"CENTER\", xOffset, yOffset)\n                    \n                    if aura_env.config[\"showTooltips\"] and not region.state.hideMe then\n                        region:SetScript(\"OnEnter\", function() GameTooltip:SetOwner(UIParent, \"ANCHOR_CURSOR\")\n                                if region.state.link then\n                                    GameTooltip:SetHyperlink(region.state.link)\n                                else\n                                    GameTooltip:AddDoubleLine(region.state.name, region.state.spellid, 1, 1, 1, 1, 1, 1)\n                                end\n                                GameTooltip:AddLine(region.state.description, nil, nil, nil, true)\n                                GameTooltip:Show()\n                        end)\n                        region:SetScript(\"OnLeave\", function() GameTooltip:Hide() end)\n                    end\n                    \n                    tc[region.state.itemSlot] = {}\n                    list[region.state.itemSlot] = aura_env.config[\"showGear\"] and 0 or 1\n                    local point, relativeTo, relativePoint, xOfs, yOfs = region:GetPoint()\n                    tc[region.state.itemSlot] = {point, relativeTo, relativePoint, xOfs, yOfs}\n                    count = count + 1\n                elseif region.state.relativeTo and list[region.state.relativeTo] then\n                    local point, relativeTo, relativePoint, xOfs, yOfs = unpack(tc[region.state.relativeTo])\n                    \n                    if aura_env.config[\"direction\"] == 1 or aura_env.config[\"direction\"] == 2 then --from RIGHT to LEFT\n                        local side = (aura_env.config[\"side\"] == 1 or aura_env.config[\"side\"] == 2) and aura_env.config[\"side\"] or 1\n                        if side == 1 then\n                            yOfs = 0 + (distance * list[region.state.relativeTo])\n                        elseif side == 2 then\n                            yOfs = 0 - (distance * list[region.state.relativeTo])\n                        end\n                    elseif aura_env.config[\"direction\"] == 3 or aura_env.config[\"direction\"] == 4 then --FROM TOP to BOTTOM\n                        local side = (aura_env.config[\"side\"] == 3 or aura_env.config[\"side\"] == 4) and aura_env.config[\"side\"] or 4\n                        if side == 3 then\n                            xOfs = 0 - (distance * list[region.state.relativeTo])\n                        elseif side == 4 then\n                            xOfs = 0 + (distance * list[region.state.relativeTo])\n                        end\n                    end\n                    \n                    region:ClearAllPoints()\n                    region:SetPoint(point, relativeTo, relativePoint, xOfs, yOfs)\n                    \n                    if aura_env.config[\"showTooltips\"] and not region.state.hideMe then\n                        region:SetScript(\"OnEnter\", function() GameTooltip:SetOwner(UIParent, \"ANCHOR_CURSOR\")\n                                GameTooltip:AddDoubleLine(region.state.name, region.state.spellid, 1, 1, 1, 1, 1, 1)\n                                GameTooltip:AddLine(region.state.description, nil, nil, nil, true)\n                                GameTooltip:Show()\n                        end)\n                        region:SetScript(\"OnLeave\", function() GameTooltip:Hide() end)\n                    end\n                    \n                    list[region.state.relativeTo] = list[region.state.relativeTo] + 1\n                else\n                    region:ClearAllPoints()\n                    region:SetPoint(\"CENTER\" , WeakAuras.regions[aura_env.id].region, \"CENTER\", xOffset, yOffset)\n                    \n                    if aura_env.config[\"showTooltips\"] and not region.state.hideMe then\n                        region:SetScript(\"OnEnter\", function() GameTooltip:SetOwner(UIParent, \"ANCHOR_CURSOR\")\n                                if region.state.link then\n                                    GameTooltip:SetHyperlink(region.state.link)\n                                else\n                                    GameTooltip:AddDoubleLine(region.state.name, region.state.spellid, 1, 1, 1, 1, 1, 1)\n                                end\n                                GameTooltip:AddLine(region.state.description, nil, nil, nil, true)\n                                GameTooltip:Show()\n                        end)\n                        region:SetScript(\"OnLeave\", function() GameTooltip:Hide() end)\n                    end\n                    \n                    count = count + 1\n                end\n            end\n            \n        end\n    end\nend\n\naura_env.findKeystone = function()\n    local key = C_MythicPlus.GetOwnedKeystoneLevel()\n    if key and key > 0 then\n        local name = C_ChallengeMode.GetMapUIInfo(C_MythicPlus.GetOwnedKeystoneChallengeMapID()) .. \" (\" .. key .. \")\" \n        return name\n    end\n    \n    return \"NO KEY\"\nend\n\naura_env.clones = {}\n\nif not aura_env.region.hook then\n    hooksecurefunc(WeakAuras, \"OpenOptions\", function()\n            for _, cloneRegion in pairs(aura_env.clones) do\n                aura_env.LCG.PixelGlow_Stop(cloneRegion)\n                cloneRegion:SetScript(\"OnEnter\", nil)\n                cloneRegion:SetScript(\"OnLeave\", nil)\n            end\n    end)\nend\naura_env.region.hook = true",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.LCG.PixelGlow_Stop(aura_env.region)\naura_env.region:SetScript(\"OnEnter\", nil)\naura_env.region:SetScript(\"OnLeave\", nil)",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["frameStrata"] = 1,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "\n\n",
					["use_translate"] = true,
					["use_alpha"] = false,
					["type"] = "custom",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    if aura_env.state and aura_env.state.canSelect then\n        aura_env.LCG.PixelGlow_Start(\n            aura_env.region, --Frame\n            {0, 1, 1, 1}, --Color\n            8, --N of lines\n            0.25, --Frequency\n            8, --LLength of lines\n            2, --Thickness of lines\n            0, --xOffset\n            0, --yOffset\n            true, --Border\n            nil --Key\n        )\n    else\n        aura_env.LCG.PixelGlow_Stop(aura_env.region)\n    end\n    if aura_env.flag then\n        aura_env.flag = false\n        aura_env.LCG.PixelGlow_Stop(aura_env.region)\n        aura_env.sortAndOffset()\n    end\n    if aura_env.gather then\n        aura_env.gather = false\n        local count = 0\n        for _, region in pairs(WeakAuras.clones[aura_env.id]) do\n            count = count + 1\n            aura_env.clones[count] = region\n        end\n    end\n    return startX, startY\nend\n\n\n\n",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
					["rotate"] = 0,
					["duration"] = "1",
					["translateType"] = "custom",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1Containment"] = "INSIDE",
			["glow"] = false,
			["icon"] = true,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "LEFT",
			["version"] = 32,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 38,
			["displayIcon"] = "Interface\\addons\\WeakAuras\\Media\\Textures\\icon.blp",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "000 PFSquareSansPro-Medium",
			["authorOptions"] = {
				{
					["type"] = "description",
					["text"] = "DISPLAY OPTIONS",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "showKeystone",
					["desc"] = "Toggle on/off display of M+ keystone",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Display M+ keystone",
					["width"] = 2,
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "showChest",
					["desc"] = "Toggle on/off display of weekly chest level/reward",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Display weekly chest level",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "showTalents",
					["desc"] = "Toggle on/off display of talents",
					["default"] = true,
					["useDesc"] = true,
					["name"] = "Display talents",
					["width"] = 2,
				}, -- [4]
				{
					["type"] = "toggle",
					["key"] = "showWarmode",
					["desc"] = "Toggle on/off display of Warmode status",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Display warmode status",
					["width"] = 2,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "showPvP",
					["desc"] = "Toggle on/off display of PvP talents",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Display PvP talents",
					["width"] = 2,
				}, -- [6]
				{
					["type"] = "toggle",
					["key"] = "showTrinkets",
					["desc"] = "Toggle on/off display of trinkets",
					["default"] = true,
					["useDesc"] = true,
					["name"] = "Display trinkets",
					["width"] = 2,
				}, -- [7]
				{
					["type"] = "toggle",
					["key"] = "showAmulet",
					["desc"] = "Toggle on/off display of necklace",
					["default"] = true,
					["useDesc"] = true,
					["name"] = "Display Heart of Azeroth",
					["width"] = 2,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "showAzeriteEmpoweredItems",
					["desc"] = "Toggle on/off display of azerite empowered items",
					["default"] = true,
					["useDesc"] = true,
					["name"] = "Display azerite empowered items",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "toggle",
					["key"] = "showGear",
					["default"] = false,
					["name"] = "Display traits without gear",
					["width"] = 1,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "showLegendaries",
					["desc"] = "Toggle on/off display of legendaries",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Display legendaries",
					["width"] = 2,
				}, -- [11]
				{
					["type"] = "toggle",
					["key"] = "showTooltips",
					["desc"] = "Toggle on/off display of tooltip on mouseover",
					["default"] = true,
					["useDesc"] = true,
					["name"] = "Display tooltip on mouseover",
					["width"] = 2,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "showUpgrade",
					["desc"] = "Toggle on/off display of last azerite trait",
					["default"] = true,
					["useDesc"] = true,
					["name"] = "Display +5 ilvl upgrade tier",
					["width"] = 2,
				}, -- [13]
				{
					["type"] = "number",
					["useDesc"] = true,
					["max"] = 1000000,
					["step"] = 1,
					["width"] = 2,
					["min"] = 1,
					["name"] = "+5 ilvl upgrade trait icon id",
					["desc"] = "texture of +5 ilvl upgrade trait. Must be icon number found on wowhead",
					["key"] = "upgradeTexture",
					["default"] = 950989,
				}, -- [14]
				{
					["softMin"] = -1,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 5,
					["step"] = 1,
					["width"] = 2,
					["min"] = -1,
					["name"] = "Maximum amount of trait tiers to display",
					["desc"] = "0 = show all tiers. -1 = hide all tiers. Pick number",
					["softMax"] = 5,
					["useDesc"] = true,
					["key"] = "showMaxTiers",
					["default"] = 0,
				}, -- [15]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [16]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [17]
				{
					["type"] = "description",
					["text"] = "POSITION OPTIONS",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [18]
				{
					["type"] = "description",
					["text"] = "\"LEFT\" ←\n\"RIGHT\" →\n\"BOTTOM\" ↓\n\"TOP\" ↑",
					["fontSize"] = "medium",
					["width"] = 1,
				}, -- [19]
				{
					["type"] = "select",
					["name"] = "Pick icons growth direction",
					["default"] = 2,
					["key"] = "direction",
					["useDesc"] = false,
					["values"] = {
						"LEFT", -- [1]
						"RIGHT", -- [2]
						"BOTTOM", -- [3]
						"TOP", -- [4]
					},
					["width"] = 0.4,
				}, -- [20]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [21]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [22]
				{
					["type"] = "description",
					["text"] = "PICK \"TOP / BOTTOM\" for \"LEFT\" and \"RIGHT\" directions\nPICK \"LEFT / RIGHT\" for \"TOP and \"BOTTOM\" directions",
					["fontSize"] = "medium",
					["width"] = 1,
				}, -- [23]
				{
					["type"] = "select",
					["values"] = {
						"TOP", -- [1]
						"BOTTOM", -- [2]
						"LEFT", -- [3]
						"RIGHT", -- [4]
					},
					["default"] = 1,
					["key"] = "side",
					["useDesc"] = false,
					["name"] = "Pick traits position relative to talents",
					["width"] = 0.4,
				}, -- [24]
				{
					["softMin"] = 0,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 10,
					["step"] = 1,
					["width"] = 2,
					["min"] = 0,
					["name"] = "Icon spacing",
					["desc"] = "Space between icons in pixels",
					["softMax"] = 10,
					["useDesc"] = true,
					["key"] = "spacing",
					["default"] = 1,
				}, -- [25]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [26]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [27]
				{
					["type"] = "description",
					["text"] = "COMPACT MODE",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [28]
				{
					["type"] = "toggle",
					["key"] = "compact",
					["default"] = false,
					["name"] = "Toggle compact mode",
					["width"] = 1,
				}, -- [29]
			},
			["config"] = {
				["upgradeTexture"] = 950989,
				["direction"] = 2,
				["showWarmode"] = false,
				["showTrinkets"] = true,
				["showUpgrade"] = false,
				["showMaxTiers"] = 0,
				["spacing"] = 1,
				["showAzeriteEmpoweredItems"] = true,
				["showTalents"] = true,
				["side"] = 1,
				["compact"] = true,
				["showLegendaries"] = false,
				["showTooltips"] = true,
				["showGear"] = true,
				["showPvP"] = false,
				["showChest"] = false,
				["showKeystone"] = false,
				["showAmulet"] = true,
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "000 PFSquareSansPro-Medium",
			["text1Enabled"] = false,
			["width"] = 38,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["alpha"] = 1,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 12,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = " ",
			["semver"] = "2.0.12",
			["zoom"] = 0,
			["text2"] = "%c",
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "BFA Talents\\Items\\Azerite Traits (current setup)  ",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["uid"] = "8UpaElHlebR",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "desaturate",
						["value"] = 1,
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
						["variable"] = "hideMe",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "notWorking",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_hide"] = "timed",
						["custom_type"] = "stateupdate",
						["customVariables"] = "{\n    desaturate = {\n        display = \"desaturate\",\n        type = \"bool\",\n        \n    },\n    hideMe = {\n        display = \"hideMe\",\n        type = \"bool\",\n        \n    },\n    notWorking = {\n        display = \"NOT avialibe for spec\",\n        type = \"bool\",\n    },\n}\n\n\n\n",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["event"] = "Health",
						["events"] = "WA_DELAYED_PLAYER_ENTERING_WORLD ACTIVE_TALENT_GROUP_CHANGED PLAYER_TALENT_UPDATE PLAYER_EQUIPMENT_CHANGED AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED AZERITE_ITEM_POWER_LEVEL_CHANGED CHALLENGE_MODE_START CHALLENGE_MODE_RESET CHALLENGE_MODE_COMPLETED PLAYER_FLAGS_CHANGED UPDATE_WEEKLY",
						["spellIds"] = {
						},
						["custom"] = "function(states, event)\n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"CHALLENGE_MODE_COMPLETED\" or event == \"CHALLENGE_MODE_START\" or event == \"CHALLENGE_MODE_RESET\" then\n        for k,v in pairs(states) do\n            if v.header == \"keystone\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        \n        if aura_env.config[\"showKeystone\"] then --creating keystone\n            local count = 1\n            local key = C_MythicPlus.GetOwnedKeystoneLevel()\n            local affixes = \"\"\n            local thisWeek = C_MythicPlus.GetCurrentAffixes()\n            if thisWeek and thisWeek[1] then\n                for _, affix in pairs(thisWeek) do \n                    if affix.id then\n                        local info = C_ChallengeMode.GetAffixInfo(affix.id)\n                        affixes = affixes .. info .. \"|n\"\n                    end\n                end\n                local name = aura_env.findKeystone()\n                if key then\n                    states[count] = {\n                        header = \"keystone\",\n                        name = name,\n                        icon = 525134,\n                        count = count,\n                        spellid = \"\",\n                        description = affixes,\n                        ilvl = \"|cFF00ff00\"..key..\"|r\",\n                        changed = true,\n                        show = true,\n                    }\n                else\n                    states[count] = {\n                        header = \"keystone\",\n                        name = name,\n                        icon = 525134,\n                        count = count,\n                        spellid = \"\",\n                        description = affixes,\n                        desaturate = true,\n                        ilvl = \"\",\n                        changed = true,\n                        show = true,\n                    }\n                end\n            end\n        end\n    end\n    \n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"CHALLENGE_MODE_COMPLETED\" then\n        C_MythicPlus.RequestRewards()\n        C_Timer.After(5, function() WeakAuras.ScanEvents(\"UPDATE_WEEKLY\") end)\n    end\n    \n    if event == \"UPDATE_WEEKLY\" then\n        for k,v in pairs(states) do\n            if v.header == \"chest\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        \n        if aura_env.config[\"showChest\"] then --creating weekly chest\n            local count = 2\n            local reward = C_MythicPlus.IsWeeklyRewardAvailable()\n            local level, rewardLvl = C_MythicPlus.GetWeeklyChestRewardLevel()\n            if reward then\n                states[count] = {\n                    header = \"chest\",\n                    name = \"Weekly best M+\",\n                    icon = 1001978,\n                    count = count,\n                    spellid = \"\",\n                    description = \"Get your reward!\",\n                    ilvl = \"|cFF00ff00loot!|r\",\n                    changed = true,\n                    show = true,\n                }\n            elseif level > 0 then\n                states[count] = {\n                    header = \"chest\",\n                    name = \"Weekly best M+\",\n                    icon = 1001978,\n                    count = count,\n                    spellid = \"\",\n                    description = \"Your weekly best key level is: \" .. level .. \"|nYour weekly reward item level is: \" .. rewardLvl,\n                    ilvl = \"|cFF00ff00\"..level..\"|r\",\n                    changed = true,\n                    show = true,\n                }\n            elseif level == 0 then\n                states[count] = {\n                    header = \"chest\",\n                    name = \"Weekly best M+\",\n                    icon = 1001978,\n                    count = count,\n                    spellid = \"\",\n                    description = \"You haven't completed any M+ this week\",\n                    desaturate = true,\n                    ilvl = \"\",\n                    changed = true,\n                    show = true,\n                }\n            end\n        end\n    end\n    \n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"ACTIVE_TALENT_GROUP_CHANGED\" or event == \"PLAYER_TALENT_UPDATE\" then\n        for k,v in pairs(states) do\n            if v.header == \"talent\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        if aura_env.config[\"showTalents\"] then --creating talents\n            local count = 3\n            for i = 1, 7 do -- talents\n                for j = 1, 3 do\n                    local talentID, name, texture, selected, available, spellID, unknown, row, column, known, byRing = GetTalentInfo(i, j, 1)\n                    if talentID and (known or byRing) then\n                        states[count] = {\n                            header = \"talent\",\n                            name = name,\n                            icon = texture,\n                            count = count,\n                            spellid = spellID,\n                            description = GetSpellDescription(spellID),\n                            ilvl = \"|cFFbbbbbbT\"..i..\"|r\",\n                            changed = true,\n                            show = true,\n                        }\n                        count = count + 1\n                    end\n                end\n            end\n        end\n    end\n    \n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"PLAYER_FLAGS_CHANGED\" then\n        for k,v in pairs(states) do\n            if v.header == \"warmode\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        \n        if aura_env.config[\"showWarmode\"] then --creating PvP talents\n            local count = 15\n            local warMode = UnitIsWarModeDesired(\"player\")\n            if warMode then\n                states[count] = {\n                    header = \"warmode\",\n                    name = \"Warmode: ON\",\n                    icon = GetSpellTexture(282559),\n                    count = count,\n                    spellid = \"\",\n                    description = \"+\" .. C_PvP.GetWarModeRewardBonus() .. \"%\",\n                    ilvl = \"|cFFbbbbbbON|r\",\n                    changed = true,\n                    show = true,\n                }\n            else\n                states[count] = {\n                    header = \"warmode\",\n                    name = \"Warmode: OFF\",\n                    icon = GetSpellTexture(282559),\n                    count = count,\n                    spellid = \"\",\n                    description = \"+\" .. C_PvP.GetWarModeRewardBonus() .. \"%\",\n                    desaturate = true,\n                    ilvl = \"|cFFbbbbbbOFF|r\",\n                    changed = true,\n                    show = true,\n                }\n            end\n        end\n    end\n    \n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"ACTIVE_TALENT_GROUP_CHANGED\" or event == \"PLAYER_TALENT_UPDATE\" then\n        for k,v in pairs(states) do\n            if v.header == \"PvPtalent\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        \n        if aura_env.config[\"showPvP\"] then --creating PvP talents\n            local count = 16\n            for i=1, 4 do\n                local slot = C_SpecializationInfo.GetPvpTalentSlotInfo(i)\n                if slot.enabled and slot.selectedTalentID then\n                    local talentID, name, texture, selected, available, spellID = GetPvpTalentInfoByID(slot.selectedTalentID)\n                    states[count] = {\n                        header = \"PvPtalent\",\n                        name = name,\n                        icon = texture,\n                        count = count,\n                        spellid = spellID,\n                        description = GetSpellDescription(spellID),\n                        ilvl = \"|cFFbbbbbbPvP\"..i..\"|r\",\n                        changed = true,\n                        show = true,\n                    }\n                    count = count + 1\n                end\n            end\n        end\n    end\n    \n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"PLAYER_EQUIPMENT_CHANGED\" then\n        for k,v in pairs(states) do\n            if v.header == \"legendary\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        \n        if aura_env.config[\"showLegendaries\"] then --creating legendaries\n            local count = 20\n            for i = 1, 15 do\n                local itemID = GetInventoryItemLink(\"player\", i)\n                if itemID then\n                    local name, _, quality, ilvl = GetItemInfo(itemID)\n                    local icon = GetItemIcon(itemID)\n                    if quality == 5 and name then\n                        states[count] = {\n                            header = \"legendary\",\n                            name = ITEM_QUALITY_COLORS[quality].hex..name..\"|r\",\n                            icon = icon,\n                            count = count,\n                            link = itemID,\n                            description = \"\",\n                            ilvl = ITEM_QUALITY_COLORS[quality].hex..ilvl..\"|r\",\n                            changed = true,\n                            show = true,\n                        }\n                        count = count + 1\n                    end\n                end\n            end\n        end\n    end\n    \n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"PLAYER_EQUIPMENT_CHANGED\" then\n        for k,v in pairs(states) do\n            if v.header == \"trinket\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        \n        if aura_env.config[\"showTrinkets\"] then --creating trinkets\n            local count = 40\n            for i = 1, 2 do\n                local trinketSlot = 12 + i\n                \n                local itemID = GetInventoryItemLink(\"player\", trinketSlot)\n                if itemID then\n                    local name, _, quality, ilvl = GetItemInfo(itemID)\n                    local icon = GetItemIcon(itemID)\n                    if quality ~= 5 and name then\n                        states[count] = {\n                            header = \"trinket\",\n                            name = ITEM_QUALITY_COLORS[quality].hex..name..\"|r\",\n                            icon = icon,\n                            count = count,\n                            link = itemID,\n                            ilvl = ITEM_QUALITY_COLORS[quality].hex..ilvl..\"|r\",\n                            description = \"\",\n                            changed = true,\n                            show = true,\n                        }\n                        count = count + 1\n                    end\n                end\n            end\n        end\n    end\n    \n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"PLAYER_EQUIPMENT_CHANGED\" or event == \"AZERITE_ITEM_POWER_LEVEL_CHANGED\" then\n        for k,v in pairs(states) do\n            if v.header == \"heart\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        \n        if aura_env.config[\"showAmulet\"] then  --creating azerite amulet\n            local count = 45\n            local HeartOfAzeroth = C_AzeriteItem.FindActiveAzeriteItem()\n            if HeartOfAzeroth then\n                local azeritePowerLevel = C_AzeriteItem.GetPowerLevel(HeartOfAzeroth)\n                --local specID = GetSpecializationInfo(GetSpecialization())\n                local itemSlot = HeartOfAzeroth.equipmentSlotIndex\n                local itemID = GetInventoryItemLink(\"player\", itemSlot)\n                if itemID then\n                    local name, _, quality, ilvl = GetItemInfo(itemID)\n                    local icon = GetItemIcon(itemID)\n                    if name then\n                        states[count] = {\n                            header = \"heart\",\n                            name = ITEM_QUALITY_COLORS[quality].hex..name..\"|r\",\n                            icon = icon,\n                            count = count,\n                            link = itemID,\n                            description = \"\",\n                            ilvl = ITEM_QUALITY_COLORS[quality].hex..ilvl..\"|r\",\n                            plvl = ITEM_QUALITY_COLORS[quality].hex..\"[\"..azeritePowerLevel..\"]|r\",\n                            changed = true,\n                            show = true,\n                        }\n                    end\n                end\n            end\n        end\n    end\n    \n    if event == \"WA_DELAYED_PLAYER_ENTERING_WORLD\" or event == \"PLAYER_EQUIPMENT_CHANGED\" or event == \"AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED\" then\n        for k,v in pairs(states) do\n            if v.header == \"trait\" then\n                local region = WeakAuras.GetRegion(aura_env.id, k)\n                region:SetScript(\"OnEnter\", nil)\n                region:SetScript(\"OnLeave\", nil)\n                v.show = false\n                v.changed = true\n            end\n        end\n        \n        if aura_env.config[\"showAzeriteEmpoweredItems\"] then --creating azerite armor talents\n            local count = 50\n            local specID = GetSpecializationInfo(GetSpecialization())\n            for _, slot in next, {1,3,5} do\n                local item = Item:CreateFromEquipmentSlot(slot)\n                if (not item:IsItemEmpty()) then\n                    local itemLocation = item:GetItemLocation()\n                    if (C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItem(itemLocation)) then\n                        local itemID = GetInventoryItemLink(\"player\", slot)\n                        local name, _, quality, ilvl = GetItemInfo(itemID)\n                        name = name or \"\"\n                        ilvl = ilvl or 1\n                        quality = quality or 2\n                        local icon = GetItemIcon(itemID)\n                        local itemSlot = slot == 1 and \"HEAD\" or slot == 3 and \"SHOULDERS\" or slot == 5 and \"CHEST\"\n                        states[count] = {\n                            header = \"trait\",\n                            name = aura_env.config[\"showGear\"] and \"\" or ITEM_QUALITY_COLORS[quality].hex..name..\"|r\",\n                            icon = icon,\n                            count = count,\n                            link = itemID,\n                            description = \"\",\n                            hideMe = aura_env.config[\"showGear\"],\n                            ilvl = aura_env.config[\"showGear\"] and \"\" or ITEM_QUALITY_COLORS[quality].hex..ilvl..\"|r\",\n                            itemSlot = itemSlot,\n                            changed = true,\n                            show = true,\n                        }\n                        count = count + 1\n                        if aura_env.config[\"showMaxTiers\"] > -1 then\n                            local circle = 1\n                            local tierInfo = C_AzeriteEmpoweredItem.GetAllTierInfo(itemLocation)\n                            for tier, info in next, tierInfo do\n                                if aura_env.config[\"showMaxTiers\"] == 0 or tier <= aura_env.config[\"showMaxTiers\"] then\n                                    for _, powerID in next, info.azeritePowerIDs do\n                                        local powerInfo = C_AzeriteEmpoweredItem.GetPowerInfo(powerID)\n                                        local id = name..powerInfo.spellID\n                                        local spellName, _, spellIcon = GetSpellInfo(powerInfo.spellID)\n                                        if powerInfo.spellID == 263978 then\n                                            spellIcon = aura_env.config[\"upgradeTexture\"]\n                                        end\n                                        local description = GetSpellDescription(powerInfo.spellID)\n                                        local canSelect = C_AzeriteEmpoweredItem.CanSelectPower(itemLocation, powerID)\n                                        if powerID and specID and (C_AzeriteEmpoweredItem.IsPowerSelected(itemLocation, powerID) or canSelect) then\n                                            if powerInfo.spellID == 263978 and not canSelect then\n                                                if aura_env.config[\"showUpgrade\"] and aura_env.config[\"showMaxTiers\"] == 0 then\n                                                    states[id] = {\n                                                        header = \"trait\",\n                                                        name = spellName,\n                                                        icon = spellIcon,\n                                                        spellid = powerInfo.spellID,\n                                                        count = count,\n                                                        description = description,\n                                                        notWorking = not C_AzeriteEmpoweredItem.IsPowerAvailableForSpec(powerID, specID),\n                                                        ilvl = \"|cFFbbbbbbT\"..circle..\"|r\",\n                                                        canSelect = canSelect,\n                                                        relativeTo = itemSlot,\n                                                        changed = true,\n                                                        show = true,\n                                                    }\n                                                end\n                                            else\n                                                states[id] = {\n                                                    header = \"trait\",\n                                                    name = spellName,\n                                                    icon = spellIcon,\n                                                    spellid = powerInfo.spellID,\n                                                    count = count,\n                                                    description = description,\n                                                    notWorking = not C_AzeriteEmpoweredItem.IsPowerAvailableForSpec(powerID, specID),\n                                                    ilvl = \"|cFFbbbbbbT\"..circle..\"|r\",\n                                                    canSelect = canSelect,\n                                                    relativeTo = itemSlot,\n                                                    changed = true,\n                                                    show = true,\n                                                }\n                                                count = count + 1\n                                            end\n                                        end\n                                    end\n                                end\n                                circle = circle + 1\n                            end\n                        end\n                    end\n                end\n            end\n        end\n    end\n    \n    aura_env.flag = true\n    aura_env.gather = true\n    return true\nend",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = -1699.10645866394,
		},
		["05 Pack Hunter"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["glow"] = false,
			["cooldownTextEnabled"] = true,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = ")ClDKQPh7ZM",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "282209",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Mark of Prey", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "timed",
						["useExactSpellId"] = true,
						["spellIds"] = {
							282209, -- [1]
						},
						["event"] = "Health",
						["use_unit"] = true,
						["auraspellids"] = {
							"282209", -- [1]
						},
						["use_spellId"] = true,
						["name"] = "Mark of Prey",
						["subeventSuffix"] = "_AURA_APPLIED",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Fixated",
			["text1Containment"] = "OUTSIDE",
			["internalVersion"] = 11,
			["zoom"] = 0.3,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "05 Pack Hunter",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Plague of Fire"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["sound"] = " custom",
					["custom"] = "",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 132095,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285346", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Deathly Withering", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["use_unit"] = true,
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_spellId"] = false,
						["spellIds"] = {
							285195, -- [1]
						},
						["name"] = "Plague of Toads",
						["unevent"] = "auto",
						["combineMatches"] = "showLowest",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["glow"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Spread",
			["desaturate"] = false,
			["alpha"] = 1,
			["text2"] = "%s",
			["auto"] = true,
			["icon"] = true,
			["id"] = "07 Plague of Fire",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "O)X6RpAVN)y",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Freezing Blood"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["use_color"] = false,
					["colorB"] = 1,
					["scalex"] = 1,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return WeakAuras.GetHSVTransition(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["scaley"] = 1,
					["colorType"] = "straightHSV",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 538564,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Wsj6w7tid4j",
			["load"] = {
				["affixes"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
				},
				["role"] = {
				},
				["encounterid"] = "2281",
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
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["url"] = "https://wago.io/bfaraid2/112",
			["text2Font"] = "Arial Narrow",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Stack",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "09 Freezing Blood",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["auranames"] = {
							"289387", -- [1]
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["spellIds"] = {
							288212, -- [1]
						},
						["custom_type"] = "event",
						["event"] = "Cast",
						["names"] = {
							"Broadside", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Broadside",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["09 Icefall"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["zoom"] = 0.35,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "10",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["type"] = "custom",
						["use_unit"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["event"] = "Cast",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["custom"] = "function(event, unit, _, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 288441 then\n            return true \n        end \n    end \nend",
						["use_spellId"] = false,
						["name"] = "Icefall",
						["spellIds"] = {
							285215, -- [1]
						},
						["custom_type"] = "event",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135851,
			["cooldownTextEnabled"] = true,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Avoid Arrow",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text2"] = "%s",
			["auto"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "09 Icefall",
			["glow"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "a96HgWeacTr",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Ice Shard (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = false,
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["authorOptions"] = {
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285253", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							285215, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["multi"] = {
						["TANK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["use_role"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text2Font"] = "Arial Narrow",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["desaturate"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "+Dmgtaken",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%s%c",
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "09 Ice Shard (Tank Only)",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["width"] = 80,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["uid"] = "Ac7wzK)MvAa",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["06 Critter Explosion"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dance.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 252172,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 287929,
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "custom",
						["names"] = {
							"Shrunk", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["custom"] = "function(event, ...)\n    if not WeakAuras.triggerState[aura_env.id].triggers[1] then\n        if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n            local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n            if subEvent == \"SPELL_CAST_START\" and spellID == 287877 then\n                return true\n            end\n        end\n    end\nend",
						["event"] = "Cast",
						["name"] = "Signal Exploding Sheep",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["spellIds"] = {
							284168, -- [1]
						},
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["duration"] = "3",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "TsK)Q(DVN6k",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["text1Containment"] = "OUTSIDE",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dance ",
			["internalVersion"] = 11,
			["selfPoint"] = "CENTER",
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "06 Critter Explosion",
			["icon"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
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
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Details! Boss Mods Group"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
			},
			["xOffset"] = 0,
			["yOffset"] = 370,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
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
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["radius"] = 200,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["rotation"] = 0,
			["height"] = 121.503601074219,
			["load"] = {
				["ingroup"] = {
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
				["spec"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
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
				["talent3"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = true,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "Details! Boss Mods Group",
			["backgroundInset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["config"] = {
			},
			["stagger"] = 0,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["width"] = 359.096801757813,
		},
		["01 Wave of Light"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.0.43",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["auranames"] = {
							"283617", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
							"Wave of Light", -- [1]
						},
						["use_tooltip"] = false,
						["spellIds"] = {
							283617, -- [1]
						},
						["type"] = "aura2",
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["url"] = "https://wago.io/bfaraid2/112",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["config"] = {
			},
			["authorMode"] = true,
			["text1Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2FontSize"] = 25,
			["internalVersion"] = 11,
			["text1"] = "Dot",
			["zoom"] = 0.3,
			["alpha"] = 1,
			["text2"] = "%s",
			["auto"] = true,
			["desaturate"] = true,
			["id"] = "01 Wave of Light",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "(QYsBFJj88z",
			["inverse"] = false,
			["text1Containment"] = "OUTSIDE",
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["02 Crushed (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "",
					["do_sound"] = false,
					["do_custom"] = false,
					["sound"] = " custom",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "TANK",
				},
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2263,2284",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "+Dmgtaken",
			["text2Enabled"] = true,
			["text1Enabled"] = true,
			["text2"] = "%s%c",
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "02 Crushed (Tank Only)",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "o7GwJj5Z3Rl",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285671", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Crushed", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							285671, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["CurrentSpecIcon"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["customText"] = "function()\n    \n    local specID = GetLootSpecialization();\n    \n    local id,name,_,icon = GetSpecializationInfo(GetSpecialization());\n    \n    if specID == 0 then specID = id;\n        _,_,_,icon = GetSpecializationInfoByID(specID);\n    end\n    \nreturn icon end",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["semver"] = "1.0.0-6",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/SJzvGvYd7/6",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local EasyMenu = EasyMenu\nlocal SPECIALIZATION = SPECIALIZATION\n\nlocal r = aura_env.region\n\nlocal menuList = {\n    { text = SPECIALIZATION, isTitle = true, notCheckable = true },\n}\n\nlocal function OnClick(self, button)\n    local specIndex = GetSpecialization();\n    if not specIndex then return end\n    \n    for index = 1, 4 do\n        local id, name, _, texture = GetSpecializationInfo(index);\n        if ( id ) then\n            menuList[index + 1] = {\n                text = format('|T%s:14:14:0:0:64:64:4:60:4:60|t  %s', texture, name),\n                func = function() SetSpecialization(index) end,\n                checked = (index == specIndex),\n            }\n        else\n            menuList[index + 1] = nil\n        end\n    end\n    \n    EasyMenu(menuList, r.menu, r.menu, 0, 0, \"MENU\", 2)\nend\n\nif not r.button then\n    r.button = CreateFrame(\"Button\", \"WA\"..aura_env.id..\"button\", r)\n    r.menu = CreateFrame(\"Frame\", \"WA\"..aura_env.id..\"menu\", r.button, \"UIDropDownMenuTemplate\")\nend\n\nr.button:SetAllPoints(r)\nr.button:RegisterForClicks(\"AnyDown\")\nr.button:SetScript(\"OnClick\", OnClick)\nr.menu:SetPoint(\"TOPLEFT\", r.button, \"TOPLEFT\")\nr.menu:Hide()",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "status",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["events"] = "PLAYER_ENTERING_WORLD,PLAYER_SPECIALIZATION_CHANGED",
						["customTexture"] = "\n\n",
						["custom"] = "function()\n    return true;\nend",
						["customIcon"] = "function()\n    \n    local id,name,_,icon = GetSpecializationInfo(GetSpecialization());\n\nreturn icon end\n\n\n",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function()\n    return true\nend\n\n\n\n\n\n\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["cooldownTextEnabled"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["parent"] = "LootSpecGroup",
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 6,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 30.000011444092,
			["useglowColor"] = false,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownEdge"] = false,
			["config"] = {
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text1FontFlags"] = "THICKOUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 24,
			["authorOptions"] = {
			},
			["text1"] = "C",
			["text2"] = "%p",
			["icon"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["text1Containment"] = "INSIDE",
			["id"] = "CurrentSpecIcon",
			["alpha"] = 1,
			["text2Enabled"] = false,
			["width"] = 30,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.70000001788139, -- [4]
			},
			["uid"] = "AS2blMiB22z",
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = "",
			["selfPoint"] = "TOPRIGHT",
			["glow"] = false,
		},
		["02 High Energy [Horde]"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["subeventSuffix"] = "_CAST_START",
						["percentpower"] = "85",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 136025,
			["cooldownEdge"] = false,
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["faction"] = {
					["single"] = "Horde",
				},
				["use_faction"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				0.94117647058824, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 35,
			["semver"] = "2.0.43",
			["text1"] = "Energy",
			["internalVersion"] = 11,
			["text1Enabled"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "02 High Energy [Horde]",
			["xOffset"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "8oPrgzFFrbd",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "0",
								["variable"] = "power",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "25",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0.054901960784314, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
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
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "25",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "power",
								["value"] = "50",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.9921568627451, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "50",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "75",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.72156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "75",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["variable"] = "power",
								["value"] = "100",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.023529411764706, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Opulence Soothing Breeze"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["yOffset"] = 400,
			["anchorPoint"] = "CENTER",
			["text2"] = "%p",
			["cooldownSwipe"] = true,
			["useglowColor"] = false,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["auranames"] = {
							"Soothing Breeze", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "OPULENCE",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["url"] = "https://wago.io/imlz-ng6S/2",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "vOtnu2L7rpZ",
			["internalVersion"] = 11,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Font"] = "Friz Quadrata TT",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["useGlowColor"] = false,
			["text1"] = "YOU'RE PIPING",
			["auto"] = true,
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["icon"] = true,
			["id"] = "Opulence Soothing Breeze",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 64,
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["text2Point"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Details! Aura Group"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
			},
			["xOffset"] = -678.999450683594,
			["yOffset"] = 212.765991210938,
			["anchorPoint"] = "CENTER",
			["space"] = 0,
			["background"] = "None",
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
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["radius"] = 200,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["rotation"] = 0,
			["height"] = 20,
			["load"] = {
				["ingroup"] = {
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
				["talent3"] = {
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
				["use_combat"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = true,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "Details! Aura Group",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 199.999969482422,
			["config"] = {
			},
			["stagger"] = 0,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["backgroundInset"] = 0,
			["internalVersion"] = 11,
		},
		["04 Pulse-quickening Toxin"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["glow"] = false,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["unit"] = "player",
						["auranames"] = {
							"284493", -- [1]
						},
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							284493, -- [1]
						},
						["event"] = "Cast",
						["debuffType"] = "HARMFUL",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["names"] = {
							"Pulse-quickening Toxin", -- [1]
						},
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135822,
			["useglowColor"] = false,
			["xOffset"] = 0,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "OUTSIDE",
			["icon"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dot",
			["internalVersion"] = 11,
			["text1Enabled"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Pulse-quickening Toxin",
			["desaturate"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "sdo5aVORq4m",
			["inverse"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["05 Lacerating Claws (Tank)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Mo2B50GpfFa",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["authorOptions"] = {
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Tank-Dot",
			["text2Enabled"] = true,
			["internalVersion"] = 11,
			["text2"] = "%s%c",
			["auto"] = true,
			["cooldownEdge"] = false,
			["id"] = "05 Lacerating Claws (Tank)",
			["icon"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"282444", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							282444, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["names"] = {
							"Lacerating Claws", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Kel-Wrapped (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["glow"] = false,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Slows Add",
			["text2Enabled"] = true,
			["internalVersion"] = 11,
			["text2"] = "%s%c",
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "08 Kel-Wrapped (Tank Only)",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "285000",
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["names"] = {
							"Kelp-Wrapped", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Cast",
						["unevent"] = "auto",
						["spellIds"] = {
							285000, -- [1]
						},
						["use_spellId"] = true,
						["name"] = "Kelp-Wrapped",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"285000", -- [1]
						},
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["uid"] = "0G3r1bY2PL7",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["04 Protected from Dance"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["auto"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["auranames"] = {
							"289383", -- [1]
						},
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"291146", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["name"] = "Flames of Punishment",
						["buffShowOn"] = "showOnActive",
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["castType"] = "cast",
						["use_spellId"] = true,
						["spellIds"] = {
							284519, -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Quickened Pulse", -- [1]
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 135822,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["internalVersion"] = 11,
			["uid"] = "8)Z4T2StBXe",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Font"] = "Arial Narrow",
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["encounterid"] = "2271",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Protected",
			["alpha"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2"] = "%s",
			["useGlowColor"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Protected from Dance",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["01 Sacred Blade (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.0.43",
			["cooldownSwipe"] = true,
			["glow"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Enabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["uid"] = "UZrmQZYAHgA",
			["authorMode"] = true,
			["text1Font"] = "Arial Narrow",
			["text2Containment"] = "INSIDE",
			["glowType"] = "ACShine",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 80,
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["text2FontSize"] = 25,
			["internalVersion"] = 11,
			["text1"] = "+Dmgtaken",
			["zoom"] = 0.3,
			["text2Enabled"] = true,
			["text2"] = "%s%c",
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "01 Sacred Blade (Tank Only)",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["auranames"] = {
							"283573", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
							"Sacred Blade", -- [1]
						},
						["use_tooltip"] = false,
						["spellIds"] = {
							283573, -- [1]
						},
						["type"] = "aura2",
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["05 Gift of Wind Cast (Mage Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = false,
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1850549,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "i(xyMAhQ49O",
			["load"] = {
				["use_class"] = true,
				["role"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spellsteal.ogg",
					["sound_channel"] = "Master",
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Spellsteal",
			["text2Enabled"] = false,
			["text2Font"] = "Arial Narrow",
			["text2"] = "%s",
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "05 Gift of Wind Cast (Mage Only)",
			["desaturate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "status",
						["spellId"] = 282098,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Cast",
						["names"] = {
						},
						["unit"] = "boss1",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["use_specific_unit"] = true,
						["name"] = "Gift of Wind",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282098,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["names"] = {
							"Blazing Phoenix", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_specific_unit"] = true,
						["event"] = "Cast",
						["name"] = "Gift of Wind",
						["castType"] = "cast",
						["use_spellId"] = true,
						["spellIds"] = {
							282040, -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["use_unit"] = true,
						["unit"] = "boss2",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "boss2",
						["use_specific_unit"] = true,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["01 Blinding Faith"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["useGlowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 283606,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["debuffType"] = "HARMFUL",
						["check"] = "event",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 283650 and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 283650 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["custom_hide"] = "timed",
						["name"] = "Crush",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["castType"] = "cast",
						["unit"] = "boss1",
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "function()\n    return aura_env.duration, aura_env.expirationTime\nend",
						["use_spellId"] = true,
						["spellIds"] = {
							282939, -- [1]
						},
						["custom_type"] = "stateupdate",
						["remOperator"] = "<=",
						["dynamicDuration"] = true,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 236247,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Enabled"] = true,
			["internalVersion"] = 11,
			["config"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["cooldownEdge"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Turn.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Turn",
			["glow"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2"] = "%s",
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "01 Blinding Faith",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "JE6KVO8QDh(",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["06 Gigavolt Charge"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"286646", -- [1]
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["event"] = "Cast",
						["unevent"] = "auto",
						["useGroup_count"] = false,
						["unit"] = "player",
						["spellIds"] = {
							283409, -- [1]
						},
						["names"] = {
							"Gigavolt Charge", -- [1]
						},
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldownSwipe"] = true,
			["glow"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Hide.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 1698700,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["text1Enabled"] = true,
			["config"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Hide (LoS)",
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["useGlowColor"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "06 Gigavolt Charge",
			["cooldownTextEnabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["uid"] = "0B2Osw75iZp",
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["09 Ring of Frost"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 285459,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Ring of Frost",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/bfaraid2/112",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 464484,
			["useglowColor"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Ring Inc",
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["icon"] = true,
			["id"] = "09 Ring of Frost",
			["desaturate"] = true,
			["alpha"] = 1,
			["width"] = 80,
			["frameStrata"] = 1,
			["uid"] = "Bgp5MZsrldQ",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["01 Seal of Retribution"] = {
			["text2Point"] = "CENTER",
			["auto"] = true,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["icon"] = true,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.power then\n        if aura_env.state.power > 90 then \n            return \"Buffs Add\"\n        else return \"Ignore Adds\"\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["use_specific_unit"] = true,
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "member",
						["auranames"] = {
							"284469", -- [1]
						},
						["spellIds"] = {
							284469, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Seal of Retribution", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "1",
						["unit"] = "boss1",
						["use_specific_unit"] = true,
						["percenthealth_operator"] = ">=",
						["type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = ">=",
						["percenthealth"] = "80",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["use_power"] = false,
						["power"] = "80",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_percenthealth"] = true,
						["percentpower"] = "80",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [2]
				["activeTriggerMode"] = 2,
			},
			["displayIcon"] = 1030099,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = true,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.007843137254902, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 35,
			["zoom"] = 0.3,
			["text1"] = "%c",
			["internalVersion"] = 11,
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["useGlowColor"] = false,
			["text1Font"] = "Arial Narrow",
			["id"] = "01 Seal of Retribution",
			["selfPoint"] = "CENTER",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["uid"] = "mVD2iu1rstI",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "90",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.003921568627451, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "glowColor",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [2]
						{
							["value"] = "Pixel",
							["property"] = "glowType",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [4]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["06 Blast Off"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 282205,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Blast Off",
						["use_spellId"] = true,
						["spellIds"] = {
							284168, -- [1]
						},
						["names"] = {
							"Shrunk", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 133031,
			["useglowColor"] = false,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["url"] = "https://wago.io/bfaraid2/112",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Avoid",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "06 Blast Off",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "1943(Wc)Whv",
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["07 Focused Demise"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["names"] = {
							"Focused Demise", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["event"] = "Cast",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_spellId"] = false,
						["spellIds"] = {
							286779, -- [1]
						},
						["name"] = "Plague of Toads",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"286779", -- [1]
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 571321,
			["glow"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "9qMQ0qF8anc",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Interrupt",
			["internalVersion"] = 11,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["id"] = "07 Focused Demise",
			["stickyDuration"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["04 Crush"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
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
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 283606,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["debuffType"] = "HARMFUL",
						["check"] = "event",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 289906 or spellID == 283606) and IsItemInRange(28767, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 289906 or spellID == 283606) and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["custom_hide"] = "timed",
						["name"] = "Crush",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["castType"] = "cast",
						["unit"] = "boss1",
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "",
						["use_spellId"] = true,
						["spellIds"] = {
							282939, -- [1]
						},
						["custom_type"] = "stateupdate",
						["remOperator"] = "<=",
						["dynamicDuration"] = false,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 236316,
			["internalVersion"] = 11,
			["icon"] = true,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "TUKM2IjS)eb",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Avoid",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["text2"] = "%s",
			["auto"] = false,
			["xOffset"] = 0,
			["id"] = "04 Crush",
			["glow"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["05 Bwonsamdi's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"284663", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							286060, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["names"] = {
							"Cry of the Fallen", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 135854,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["config"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Enabled"] = true,
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["role"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["stickyDuration"] = false,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["desaturate"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "No Heal",
			["text2Enabled"] = false,
			["auto"] = true,
			["text2"] = "%s",
			["useGlowColor"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "05 Bwonsamdi's Wrath",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["url"] = "https://wago.io/bfaraid2/112",
			["uid"] = "VpAURWR6EZh",
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["LayoutAnchors"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
					["do_message"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
					["custom"] = "",
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unit"] = "player",
						["custom_type"] = "event",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_unit"] = true,
						["custom"] = "function()\n  local grid = Grid2LayoutFrame\n  if not grid then return end\n\n  grid:ClearAllPoints()\n  grid:SetPoint(\"TOPLEFT\", UIParent, \"CENTER\", -1 * (100 * 2.5), -200)\n\n  local player = ElvUF_Player\n  if player then\n    player:ClearAllPoints()\n    player:SetPoint(\"TOPRIGHT\", grid, \"TOPLEFT\", -3, -7)\n  end\n\n  local cast = Quartz3CastBarPlayer\n  if cast then\n    cast:ClearAllPoints()\n    cast:SetPoint(\"BOTTOMLEFT\", grid, \"TOPLEFT\", 1, 0)\n  end\n\n  local bw = BigWigsAnchor\n  if bw then\n    bw:ClearAllPoints()\n    if player then\n      bw:SetPoint(\"TOPLEFT\", player, \"BOTTOMLEFT\", 0, -4)\n      bw:SetPoint(\"TOPRIGHT\", player, \"BOTTOMRIGHT\", 0, -4)\n    else\n      bw:SetPoint(\"TOPRIGHT\", grid, \"TOPLEFT\", -3, -7)\n    end\n  end\n\n  local aa = LibStub(\"AceAddon-3.0\"):GetAddon(\"AngryAssignments\")\n  if aa then\n    if bw then\n      aa.frame:ClearAllPoints()\n      aa.frame:SetPoint(\"TOPRIGHT\", bw, \"TOPLEFT\", -25, 0)\n    end\n  end\n\n  local hk = Hekili_PrimaryB1\n  if hk then\n    if cast then\n      hk:ClearAllPoints()\n      hk:SetPoint(\"BOTTOMLEFT\", cast, \"TOPLEFT\", 0, 1)\n    end\n  end\n\n  return true\nend\n",
						["spellIds"] = {
						},
						["events"] = "PLAYER_ENTERING_WORLD,ADDON_LOADED",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["selfPoint"] = "BOTTOM",
			["internalVersion"] = 11,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "LayoutAnchors",
			["conditions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "VZTmdD9aojx",
			["font"] = "Friz Quadrata TT",
			["anchorPoint"] = "CENTER",
			["config"] = {
			},
			["fixedWidth"] = 200,
			["load"] = {
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["04 Flames of Punishment"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["type"] = "custom",
					["scaley"] = 1,
					["preset"] = "alphaPulse",
					["colorA"] = 1,
					["duration_type"] = "seconds",
					["alpha"] = 0.39,
					["x"] = 0,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    local angle = (progress * 4 * math.pi) - (math.pi / 2)\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        return start + (((math.sin(angle) + 1)/2) * delta)\n    end\nend\n\n\n",
					["y"] = 0,
					["rotate"] = 0,
					["scalex"] = 1,
					["use_alpha"] = true,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["debuffType"] = "HARMFUL",
						["check"] = "event",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 282939 or spellID == 287659) and IsItemInRange(28767, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 282939 or spellID == 287659) and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["custom_hide"] = "timed",
						["name"] = "Flames of Punishment",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["castType"] = "cast",
						["unit"] = "boss1",
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "",
						["use_spellId"] = true,
						["spellIds"] = {
							282939, -- [1]
						},
						["custom_type"] = "stateupdate",
						["remOperator"] = "<=",
						["dynamicDuration"] = false,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["dynamicDuration"] = false,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "",
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_CHANNEL_START\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 282939 or spellID == 287659) and IsItemInRange(28767, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitChannelInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then \n                allstates[UnitGUID(unitID)] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_CHANNEL_STOP\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 282939 or spellID == 287659) and allstates[UnitGUID(unitID)] then\n            allstates[UnitGUID(unitID)].changed = true\n            allstates[UnitGUID(unitID)].show = false\n        end\n    end\n    return true\nend",
						["events"] = "UNIT_SPELLCAST_CHANNEL_START, UNIT_SPELLCAST_CHANNEL_STOP",
						["check"] = "event",
						["unit"] = "player",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135822,
			["text2Font"] = "Arial Narrow",
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "PkNWhIFSUGy",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["xOffset"] = 0,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dance",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Flames of Punishment",
			["desaturate"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dance.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["04 Chaotic Displacement"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["alpha"] = 1,
			["cooldownEdge"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 135822,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["config"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = false,
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Swap Inc",
			["text1Font"] = "Arial Narrow",
			["useGlowColor"] = true,
			["text2"] = "%s",
			["auto"] = true,
			["xOffset"] = 0,
			["id"] = "04 Chaotic Displacement",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["uid"] = "bZm4Qaw2Etl",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["auranames"] = {
							"289383", -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Quickened Pulse", -- [1]
						},
						["unevent"] = "auto",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["spellIds"] = {
							284519, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Cast",
						["use_unit"] = true,
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["auraspellids"] = {
							"289383", -- [1]
						},
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["08 Sea Storm"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["spellId"] = "284405",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Tempting Song", -- [1]
						},
						["use_tooltip"] = false,
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["use_absorbMode"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["event"] = "Cast",
						["use_unit"] = true,
						["name"] = "Tempting Song",
						["use_spellId"] = true,
						["spellIds"] = {
							284405, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["useExactSpellId"] = true,
						["combineMatches"] = "showLowest",
						["auraspellids"] = {
							"284361", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 1385912,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["config"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = true,
			["internalVersion"] = 11,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "Arial Narrow",
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Drops Pool",
			["text1Enabled"] = true,
			["auto"] = false,
			["text2"] = "%s",
			["useGlowColor"] = false,
			["text1Containment"] = "OUTSIDE",
			["id"] = "08 Sea Storm",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "WQFApVAOFeB",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["06 Sheep Shrapnel"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 514016,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "39laB((ki8y",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["url"] = "https://wago.io/bfaraid2/112",
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dot",
			["text2Enabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s%c",
			["auto"] = false,
			["icon"] = true,
			["id"] = "06 Sheep Shrapnel",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"287891", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							287891, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Sheep Shrapnel", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Seal of Purification"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "284662",
						["auranames"] = {
							"290450", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["buffShowOn"] = "showOnActive",
						["auraspellids"] = {
							"290450", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Seal of Purification", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["spellIds"] = {
							284662, -- [1]
						},
						["unit"] = "player",
						["use_spellId"] = true,
						["name"] = "Seal of Purification",
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1802889,
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "GEpw2i1lF7Z",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Beam.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Beam",
			["internalVersion"] = 11,
			["selfPoint"] = "CENTER",
			["zoom"] = 0.3,
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "07 Seal of Purification",
			["cooldownTextEnabled"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["03 Searing Embers"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "3JIMSks4vKX",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dot",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1Containment"] = "OUTSIDE",
			["id"] = "03 Searing Embers",
			["text2Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"286987", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Searing Embers", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							286987, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/112",
		},
		["07 Deathly Withering"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["names"] = {
							"Deathly Withering", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["event"] = "Cast",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_spellId"] = false,
						["spellIds"] = {
							285195, -- [1]
						},
						["name"] = "Plague of Toads",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"285195", -- [1]
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 132095,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "6xsmdym)dks",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text2Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dot",
			["text2Enabled"] = true,
			["url"] = "https://wago.io/bfaraid2/112",
			["text2"] = "%s%c",
			["auto"] = true,
			["authorOptions"] = {
			},
			["id"] = "07 Deathly Withering",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["04 Incandescence"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text2Font"] = "Arial Narrow",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Isolate",
			["icon"] = true,
			["text1Containment"] = "OUTSIDE",
			["text2"] = "%s%c",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "04 Incandescence",
			["xOffset"] = 0,
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "SKGyBEztG3x",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284664",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Incandescence", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useExactSpellId"] = true,
						["spellIds"] = {
							284664, -- [1]
						},
						["event"] = "Cast",
						["use_unit"] = true,
						["auraspellids"] = {
							"284664", -- [1]
						},
						["use_spellId"] = true,
						["name"] = "Incandescence",
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "95",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = "ACShine",
							["property"] = "glowType",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [3]
						{
							["value"] = {
								0.97647058823529, -- [1]
								1, -- [2]
								0.93725490196078, -- [3]
								1, -- [4]
							},
							["property"] = "glowColor",
						}, -- [4]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["02 Shaken / Death Touched"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "+Dmgtaken",
			["text2Enabled"] = true,
			["text1Enabled"] = true,
			["text2"] = "%s%c",
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "02 Shaken / Death Touched",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "d(pgt1tcFV1",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"282010", -- [1]
							"282415", -- [2]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Shattered", -- [1]
							"Death Touched", -- [2]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							282010, -- [1]
							282415, -- [2]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["Tosh ExternalCDs"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Tosh ExternalCDs bar", -- [1]
			},
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPLEFT",
			["space"] = 2,
			["url"] = "https://wago.io/rJ3tSWjdX/8",
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
						["type"] = "aura",
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
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["align"] = "RIGHT",
			["stagger"] = 0,
			["version"] = 8,
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
			["border"] = "None",
			["anchorFrameFrame"] = "WeakAuras:Tosh RaidCDs",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["background"] = "None",
			["borderOffset"] = 16,
			["semver"] = "1.0.0-8",
			["rotation"] = 0,
			["id"] = "Tosh ExternalCDs",
			["backgroundInset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["xOffset"] = -1,
			["uid"] = "k)k0yM84OEu",
			["selfPoint"] = "TOPRIGHT",
			["config"] = {
			},
			["conditions"] = {
			},
			["anchorFrameParent"] = false,
			["radius"] = 200,
		},
		["09 Siegebreaker Blast"] = {
			["text2Point"] = "BOTTOM",
			["text1Font"] = "Arial Narrow",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"288374", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 135189,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["internalVersion"] = 11,
			["config"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Containment"] = "OUTSIDE",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
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
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = true,
			["text2FontSize"] = 16,
			["zoom"] = 0.3,
			["text1"] = "Targeted",
			["frameStrata"] = 1,
			["semver"] = "2.0.43",
			["text2"] = "%c2",
			["auto"] = true,
			["text1Enabled"] = true,
			["id"] = "09 Siegebreaker Blast",
			["actions"] = {
				["start"] = {
					["sound_path"] = "",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["text2Enabled"] = false,
			["width"] = 80,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "custom",
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    local angle = (progress * 4 * math.pi) - (math.pi / 2)\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        aura_env.region.icon:SetDesaturation((math.sin(angle) + 1)/2)\n        return start\n    end\nend\n--ty asakawa",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["colorA"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["preset"] = "alphaPulse",
					["alpha"] = 0.42,
					["x"] = 140,
					["y"] = 0,
					["colorType"] = "custom",
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return r1 + (newProgress * (r2 - r1)),\n           g1 + (newProgress * (g2 - g1)),\n           b1 + (newProgress * (b2 - b1)),\n           a1 + (newProgress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["use_color"] = false,
					["scaley"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["uid"] = "ym)7Iut3mG0",
			["inverse"] = false,
			["glow"] = true,
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
		["02 Discharge Shadow/Apetagonizer Core"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285659", -- [1]
							"286433", -- [2]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Apetagonizer Core", -- [1]
							"Necrotic Core", -- [2]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							285659, -- [1]
							286433, -- [2]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["url"] = "https://wago.io/bfaraid2/112",
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Carrying",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "02 Discharge Shadow/Apetagonizer Core",
			["glow"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "3iN7nWbetkv",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["05 Thundering Storm"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["internalVersion"] = 11,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = false,
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 237589,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Containment"] = "OUTSIDE",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Arial Narrow",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Avoid",
			["alpha"] = 1,
			["auto"] = false,
			["text2"] = "%s",
			["useGlowColor"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "05 Thundering Storm",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "pIPKRlI3Hek",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 283606,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["dynamicDuration"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["debuffType"] = "HARMFUL",
						["remOperator"] = "<=",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 282411 and IsItemInRange(32321, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 282411 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["buffShowOn"] = "showOnActive",
						["name"] = "Crush",
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_CAST_START",
						["castType"] = "cast",
						["custom_hide"] = "timed",
						["event"] = "Chat Message",
						["unevent"] = "auto",
						["customDuration"] = "function()\n    return aura_env.duration, aura_env.expirationTime\nend",
						["use_spellId"] = true,
						["spellIds"] = {
							282939, -- [1]
						},
						["unit"] = "boss1",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
						["names"] = {
							"Flames of Punishment", -- [1]
						},
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["04 Volatile Charge"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284664",
						["auranames"] = {
							"283507", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["names"] = {
							"Volatile Charge", -- [1]
						},
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useName"] = true,
						["unit"] = "player",
						["event"] = "Cast",
						["name"] = "Incandescence",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["spellIds"] = {
							283507, -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["text2Font"] = "Arial Narrow",
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "G6CqGERzIKr",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = true,
			["xOffset"] = 0,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Drops Pool",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Volatile Charge",
			["desaturate"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["04 Spirits of Gold"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["glow"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 2101982,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["stop_sound"] = false,
					["do_sound"] = true,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Adds.ogg",
					["sound_channel"] = "Master",
				},
			},
			["url"] = "https://wago.io/bfaraid2/112",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Enabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Adds Inc",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "04 Spirits of Gold",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "pBPjkTpps04",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["spellId"] = 285995,
						["use_absorbMode"] = true,
						["use_specific_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_unit"] = true,
						["event"] = "Cast",
						["name"] = "Spirits of Gold",
						["castType"] = "channel",
						["use_spellId"] = true,
						["spellIds"] = {
							285280, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["names"] = {
							"Searing Waves", -- [1]
						},
						["unit"] = "boss1",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["07 Toad Toxin"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["names"] = {
							"Toad Toxin", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["event"] = "Cast",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_spellId"] = false,
						["spellIds"] = {
							285044, -- [1]
						},
						["name"] = "Plague of Toads",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"285044", -- [1]
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1802889,
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "cGneotxewRw",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Toad-Dot",
			["text1Font"] = "Arial Narrow",
			["internalVersion"] = 11,
			["text2"] = "%s%c",
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "07 Toad Toxin",
			["icon"] = true,
			["text2Enabled"] = true,
			["width"] = 80,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["04 Soothin Breeze"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284664",
						["auranames"] = {
							"290654", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["use_unit"] = true,
						["useGroup_count"] = false,
						["auraspellids"] = {
							"290654", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["names"] = {
							"Brilliant Aura", -- [1]
						},
						["name"] = "Incandescence",
						["event"] = "Cast",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
							284802, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["icon"] = true,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "w5oA()2zCbW",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Buffed",
			["internalVersion"] = 11,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1Font"] = "Arial Narrow",
			["id"] = "04 Soothin Breeze",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["frameStrata"] = 1,
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
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Opulence Topaz Stacks"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 400,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/imlz-ng6S/2",
			["icon"] = true,
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["auranames"] = {
							"Incandescence", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["glow"] = false,
			["parent"] = "OPULENCE",
			["text1Enabled"] = true,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMLEFT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_encounterid"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["xOffset"] = -64,
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["frameStrata"] = 1,
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["text1"] = "Stacks: %s",
			["semver"] = "1.0.1",
			["zoom"] = 0,
			["text2"] = "%p",
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Opulence Topaz Stacks",
			["text1Font"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 11,
			["uid"] = "k8lFM0X6vEi",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
		},
		["06 Enormous"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"289023", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							289023, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Enormous", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1698700,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
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
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["alpha"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["cooldownEdge"] = false,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Buffed",
			["internalVersion"] = 11,
			["text1Enabled"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "06 Enormous",
			["glow"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "ziMXP9CySkY",
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Tosh ExternalCDs bar"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/rJ3tSWjdX/8",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["sparkOffsetY"] = 0,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.7,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Tosh ExternalCDs",
			["customTextUpdate"] = "event",
			["displayTextLeft"] = "%sourceName",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "stateupdate",
						["spellIds"] = {
						},
						["events"] = "PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,PLAYER_SPECIALIZATION_CHANGED,TOSH_EXTERNAL_CD_COMPLETED,TOSH_EXTERNAL_CD_UPDATE",
						["custom"] = "function(allstates, event, ...)\n    if event == \"ENCOUNTER_END\" and aura_env.ShouldResetCDs() then\n        for k,v in pairs(allstates) do\n            v.expirationTime = nil\n        end\n        return true\n\n    elseif event == aura_env.events.completed then\n        local sourceGUID, spellId = ...\n        if not sourceGUID or not spellId then return end\n        local key = sourceGUID .. spellId\n        local state = allstates[key]\n        if not state then return end\n        local info = state.cdInfo\n        state.duration = info.cd\n        state.expirationTime = (state.duration - info.duration) + GetTime()\n        state.inverse = true\n        state.active = false\n        aura_env:setindex(state)\n        state.changed = true\n        return true\n\n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subevent = select(2,...)\n        if subevent == \"SPELL_CAST_SUCCESS\" then\n            local sourceGUID = aura_env.owner(select(4,...))\n            local spellId = select(12,...)\n            local key = sourceGUID .. spellId\n            local state = allstates[key]\n            if not state then\n                if spellId == 2050 or spellId == 34861 then -- Holy Word: Salvation CD reduction\n                    spellId = 265202\n                    key = sourceGUID .. spellId\n                    state = allstates[key]\n                    if state then\n                        if state.expirationTime and state.expirationTime < GetTime() then\n                            state.expirationTime = state.expirationTime - 30\n                        end\n                    end\n                elseif spellId == 121253 then --  Fortifying Brew\n                    spellId = 115203\n                    key = sourceGUID .. spellId\n                    state = allstates[key]\n                    if state then\n                        if state.expirationTime and state.expirationTime < GetTime() then\n                            state.expirationTime = state.expirationTime - 4\n                        end\n                    end\n                end\n                return\n            end\n            local info = state.cdInfo\n            if (info.duration or 0) > 0 then\n                state.duration = info.duration\n                state.inverse = false\n                state.active = true\n                aura_env:setindex(state)\n                local completed = aura_env.events.completed\n                C_Timer.After(info.duration, function() WeakAuras.ScanEvents(completed, sourceGUID, spellId) end)\n            else\n                state.duration = info.cd\n                state.inverse = true\n            end\n            state.expirationTime = state.duration + GetTime()\n            state.changed = true\n            return true\n        end\n\n    elseif event == \"PLAYER_ENTERING_WORLD\" or event == \"GROUP_ROSTER_UPDATE\" or event == \"RAID_ROSTER_UPDATE\" or event == \"PLAYER_SPECIALIZATION_CHANGED\" or event == aura_env.events.update then\n        for k,v in pairs(allstates) do\n            v.show = false\n            v.changed = true\n        end\n\n        local testbars = aura_env.config.testbars or 0\n        for i=1,testbars do\n            local tab = math.random(GetNumSpellTabs())\n            local slots = select(4, GetSpellTabInfo(tab))\n            local testSpell = GetSpellBookItemName(math.random(slots), BOOKTYPE_SPELL)\n            local _, _, icon, _, _, _, spellId = GetSpellInfo(testSpell)\n            allstates[i] = {\n                show = true,\n                changed = true,\n                sourceName = \"testbar\"..i,\n                progressType = \"timed\",\n                autoHide = false,\n                icon = icon,\n                spellId = spellId,\n                name = \"testbar\"..i,\n                duration = 10,\n                index = \"zzzz\"..i, -- sort last\n\n                -- Condition variables\n                active = false,\n                isplayer = false,\n                classid = select(2, UnitClass(\"player\")),\n            }\n        end\n\n        local playerguid = UnitGUID(\"player\")\n        for uid in WA_IterateGroupMembers() do\n            local info = UnitIsVisible(uid) and aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))\n            if info then\n                local cds = aura_env.specCDs[info.global_spec_id]\n                if cds then\n                    for spellId, cdInfo in pairs(cds) do\n                        if cdInfo.talent then\n                            cdInfo = cdInfo.talent(info.talents)\n                        end\n                        if cdInfo then\n                            spellId = cdInfo.spellId or spellId\n                            local key = info.guid .. spellId\n                            allstates[key] = {\n                                show = true,\n                                changed = true,\n                                sourceName = info.name,\n                                progressType = \"timed\",\n                                autoHide = false,\n                                icon = select(3, GetSpellInfo(spellId)),\n                                spellId = spellId,\n                                name = info.name .. spellId,\n                                sourceGUID = info.guid,\n                                duration = cdInfo.cd,\n\n                                info = info,\n                                cdInfo = cdInfo,\n\n                                -- Condition variables\n                                active = false,\n                                isplayer = (playerguid == info.guid),\n                                classid = info.class,\n                            }\n                            aura_env:setindex(allstates[key])\n                        end\n                    end\n                end\n            end\n        end\n        return true\n    end\nend",
						["check"] = "event",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["customVariables"] = "  {\n    expirationTime = true,\n    active = {\n        display = \"effect active\",\n        type = \"bool\",\n    },\n    isplayer = {\n        display = \"is player\",\n        type = \"bool\",\n    },\n    classid = {\n        display = \"Class\",\n        type = \"string\",\n    }\n  }",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "testbars",
					["desc"] = "",
					["useDesc"] = false,
					["name"] = "Test Mode",
					["default"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "Set this to configure test bars to help with alignment (note: these will only show with the options menu closed)",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "header",
					["useName"] = false,
					["text"] = "",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "select",
					["key"] = "sortMode",
					["values"] = {
						"active > class > player > spellId", -- [1]
						"class > player > spellId", -- [2]
						"class > spellId > player", -- [3]
					},
					["name"] = "Sort Mode",
					["default"] = 2,
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = false,
					["text"] = "",
					["width"] = 1,
				}, -- [5]
			},
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["scaley"] = 1,
					["colorType"] = "custom",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function()\n    if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    local c = aura_env.state.barColor\n    if not c then return 0,0,0,1 end\n    return c.r, c.g, c.b, 1\nend",
					["rotate"] = 0,
					["use_color"] = false,
					["x"] = 0,
				},
				["main"] = {
					["colorR"] = 1,
					["type"] = "none",
					["use_color"] = false,
					["colorType"] = "custom",
					["scalex"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["x"] = 0,
					["colorFunc"] = "",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["scaley"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["borderInset"] = 11,
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["version"] = 8,
			["spark"] = false,
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["stacksFont"] = "Friz Quadrata TT",
			["sparkBlendMode"] = "ADD",
			["authorMode"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 14,
			["width"] = 150,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,PLAYER_SPECIALIZATION_CHANGED,TOSH_EXTERNAL_CD_COMPLETED,TOSH_EXTERNAL_CD_UPDATE\nlocal events = {\n    completed = \"TOSH_EXTERNAL_CD_COMPLETED\",\n    update = \"TOSH_EXTERNAL_CD_UPDATE\",\n}\n\naura_env.specCDs = {\n    --Death Knight\n    [250] = { -- Blood\n    },\n    [251] = { -- Frost\n    },\n    [252] = { -- Unholy\n    },\n    -- Demon Hunter\n    [577] = { -- Havoc\n    },\n    [581] = { -- Vengeance\n    },\n    -- Druid\n    [102] = { -- Balance\n        [29166] = {\n            duration = 12,\n            cd = 180,\n        },\n    },\n    [103] = { -- Feral\n        [29166] = {\n            duration = 12,\n            cd = 180,\n        },\n    },\n    [104] = { -- Guardian\n    },\n    [105] = { -- Restoration\n        [102342] = { -- Ironbark\n            duration = 12,\n            cd = 60,\n        },\n    },\n    -- Hunter\n    [253] = { -- Beast Mastery\n    },\n    [254] = { -- Marksmanship\n    },\n    [255] = { -- Survival\n    },\n    -- Mage\n    [62] = { -- Arcane\n    },\n    [63] = { -- Fire\n    },\n    [64] = { -- Frost\n    },\n    -- Monk\n    [268] = { -- Brewmaster\n    },\n    [269] = { -- Windwalker\n    },\n    [270] = { -- Mistweaver\n        [116849] = { -- Life Cocoon\n            duration = 12,\n            cd = 120,\n        },\n    },\n    -- Paladin\n    [65] = { -- Holy\n        [6940] = { -- Blessing of Sacrifice\n            duration = 12,\n            cd = 120,\n        },\n        [1022] = { -- Blessing of Protection\n            duration = 10,\n            cd = 300,\n        },\n        [633] = { -- Lay on Hands\n            cd = 600,\n        },\n    },\n    [66] = { -- Protection\n        [6940] = { -- Blessing of Sacrifice\n            duration = 12,\n            cd = 120,\n        },\n        [1022] = { -- Blessing of Protection\n            talent = function(talents)\n                if not talents[22435] then\n                    return {\n                        duration = 10,\n                        cd = 300,\n                    }\n                end\n            end,\n        },\n        [204018] = { -- Blessing of Spellwarding\n            talent = function(talents)\n                if talents[22435] then\n                    return {\n                        duration = 10,\n                        cd = 180,\n                    }\n                end\n            end,\n        },\n        [633] = { -- Lay on Hands\n            cd = 600,\n        },\n    },\n    [70] = { -- Retribution\n        [1022] = { -- Blessing of Protection\n            duration = 10,\n            cd = 300,\n        },\n        [633] = { -- Lay on Hands\n            cd = 600,\n        },\n    },\n    -- Priest\n    [256] = { -- Discipline\n        [33206] = { -- Pain Suppression\n            duration = 8,\n            cd = 180,\n        },\n    },\n    [257] = { -- Holy\n        [47788] = { -- Guardian Spirit\n            duration = 10,\n            cd = 180,\n        },\n    },\n    [258] = { -- Shadow\n    },\n    -- Rogue\n    [259] = { -- Assassination\n    },\n    [260] = { -- Outlaw\n    },\n    [261] = { -- Subtlety\n    },\n    -- Shaman\n    [262] = { -- Elemental\n    },\n    [263] = { -- Enhancement\n    },\n    [264] = { -- Restoration\n    },\n    -- Warlock\n    [265] = { -- Affliction\n    },\n    [266] = { -- Demonology\n    },\n    [267] = { -- Destruction\n    },\n    -- Warrior\n    [71] = { -- Arms\n    },\n    [72] = { -- Fury\n    },\n    [73] = { -- Protection\n    },\n}\n\naura_env.events = events\n\naura_env.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)\n\nlocal inspectCallback = {\n    Update = function(self, guid, unit, info)\n        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)\n    end,\n    Remove = function(self, guid)\n        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)\n    end,\n}\naura_env.inspectLib.RegisterCallback(inspectCallback, \"GroupInSpecT_Update\", \"Update\")\naura_env.inspectLib.RegisterCallback(inspectCallback, \"GroupInSpecT_Remove\", \"Remove\")\n\nfunction aura_env.owner(guid)\n    local type = strsplit(\"-\",guid)\n    if type == \"Pet\" then\n        for unit in WA_IterateGroupMembers() do\n            if UnitGUID(unit..\"pet\") == guid then\n                return UnitGUID(unit)\n            end\n        end\n    end\n    return guid\nend\n\naura_env.sortModeFuncs = {\n    [1] = function(state) -- \"active > class > player > spellId\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = (active and \"active\" or \"inactive\")..\",\" ..class..\",\"..player..\",\"..spellId \n    end,\n    [2] = function(state) -- \"class > player > spellId\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = class..\",\"..player..\",\"..spellId \n    end,\n    [3] = function(state) -- \"class > spellId > player\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = class..\",\"..spellId..\",\"..player\n    end,\n}\n\n\nfunction aura_env:setindex(state)\n    self.sortModeFuncs[self.config.sortMode](state)\nend\n\nfunction aura_env.ShouldResetCDs()\n    local _,_,difficulty = GetInstanceInfo()\n    if difficulty == 3 or difficulty == 4 or difficulty == 5 or difficulty == 6 or difficulty == 7 or difficulty == 14 or difficulty == 15 or difficulty == 16 or difficulty == 17 then\n        return true\n    end\n    return false\nend",
					["do_custom"] = true,
				},
			},
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkHidden"] = "NEVER",
			["borderInFront"] = true,
			["rotateText"] = "NONE",
			["icon_side"] = "LEFT",
			["timerSize"] = 12,
			["sparkRotationMode"] = "AUTO",
			["sparkHeight"] = 30,
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0-8",
			["displayTextRight"] = "%p",
			["id"] = "Tosh ExternalCDs bar",
			["useAdjustededMax"] = false,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["inverse"] = false,
			["height"] = 18,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "isplayer",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "if not aura_env.state then return end\naura_env.state.sourceName = aura_env.state.sourceName..\" <\"",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "active",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [1]
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "timerColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "WARRIOR",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.78039215686274, -- [1]
								0.61176470588235, -- [2]
								0.43137254901961, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "PALADIN",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.96078431372549, -- [1]
								0.54901960784314, -- [2]
								0.72941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "HUNTER",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.67058823529412, -- [1]
								0.83137254901961, -- [2]
								0.45098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "ROGUE",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.96078431372549, -- [2]
								0.41176470588235, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "PRIEST",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "DEATHKNIGHT",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.76862745098039, -- [1]
								0.12156862745098, -- [2]
								0.23137254901961, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "SHAMAN",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								0.43921568627451, -- [2]
								0.87058823529412, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "MAGE",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.25098039215686, -- [1]
								0.78039215686274, -- [2]
								0.92156862745098, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [10]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "WARLOCK",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.52941176470588, -- [1]
								0.52941176470588, -- [2]
								0.92941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [11]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "MONK",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0.58823529411765, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [12]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "DRUID",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.49019607843137, -- [2]
								0.03921568627451, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [13]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "DEMONHUNTER",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.63921568627451, -- [1]
								0.18823529411765, -- [2]
								0.78823529411765, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [14]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["op"] = ">",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "active",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["value"] = "0",
								["op"] = ">",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0.4,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [15]
			},
			["uid"] = "Z3)S3BoYJlD",
			["config"] = {
				["testbars"] = false,
				["sortMode"] = 2,
			},
		},
		["01 Judgment: Reckoning"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Switch.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284474,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Judgment: Reckoning",
						["use_spellId"] = true,
						["spellIds"] = {
							283598, -- [1]
						},
						["names"] = {
							"Wave of Light", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 535593,
			["cooldownTextEnabled"] = true,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "mSYFRD5eGnI",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Raiddmg",
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "01 Judgment: Reckoning",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["useglowColor"] = false,
		},
		["04 Deadly Hex"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["auranames"] = {
							"284472", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["names"] = {
							"Hex of Lethargy", -- [1]
						},
						["use_tooltip"] = false,
						["unit"] = "player",
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["debuffType"] = "HARMFUL",
						["showClones"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["spellIds"] = {
							284470, -- [1]
						},
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["useGroup_count"] = false,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135822,
			["glow"] = false,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Color"] = {
				0.98039215686274, -- [1]
				0.95294117647059, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text2Enabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dot",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["text2"] = "%s%c",
			["auto"] = true,
			["icon"] = true,
			["id"] = "04 Deadly Hex",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "axx6eWgX)Gk",
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["DominosToggle"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["authorOptions"] = {
			},
			["stacksFlags"] = "None",
			["yOffset"] = -2,
			["anchorPoint"] = "TOPLEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "local bars = {\n  DominosFrame1,\n  DominosFrame2,\n  DominosFrame3,\n  DominosFrame4,\n  DominosFrame5,\n  DominosFrame6,\n}\n\nfunction aura_env:toggle()\n  self.state = not self.state\n  for _, df in ipairs(bars) do\n    if df then\n      if self.state then\n        df:Show()\n      else\n        df:Hide()\n      end\n    end\n  end\n  self.text = self.state and \">\" or \"<\"\nend\n\nlocal f = aura_env.region\nif not f.button then\n    f.button = CreateFrame(\"Button\", \"WAButton\"..aura_env.id, f)\n    f.button:SetAllPoints(f)\n    local aura_env = aura_env\n\n    aura_env.state = true\n    aura_env:toggle()\n    \n    f.button:SetScript(\"OnClick\", aura_env.toggle)\nend",
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "TOPRIGHT",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
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
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Expressway",
			["alpha"] = 1,
			["config"] = {
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["customText"] = "function() return aura_env.text end",
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["uid"] = "KP11ffnYpC8",
			["displayTextLeft"] = "%n",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = true,
			["height"] = 18,
			["timerFlags"] = "None",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["textFlags"] = "None",
			["borderInset"] = 11,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SELECTFRAME",
			["borderEdge"] = "None",
			["border"] = false,
			["anchorFrameFrame"] = "DominosFrame6",
			["xOffset"] = 0,
			["borderSize"] = 16,
			["id"] = "DominosToggle",
			["icon_side"] = "RIGHT",
			["customTextUpdate"] = "update",
			["displayTextRight"] = "%c",
			["anchorFrameParent"] = false,
			["sparkRotation"] = 0,
			["sparkHeight"] = 30,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 18,
			["auto"] = true,
			["sparkHidden"] = "NEVER",
			["borderInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 15,
			["backgroundColor"] = {
				0.0901960784313726, -- [1]
				0.0823529411764706, -- [2]
				0.0823529411764706, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["inverse"] = false,
			["icon"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["borderOffset"] = 5,
			["stacksFont"] = "Friz Quadrata TT",
		},
		["Tosh Soulstone"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Tosh Soulstone Icon", -- [1]
			},
			["xOffset"] = -340,
			["yOffset"] = 498,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
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
						["type"] = "aura",
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
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["rotation"] = 0,
			["version"] = 2,
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
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["semver"] = "1.0.0",
			["backgroundInset"] = 0,
			["id"] = "Tosh Soulstone",
			["selfPoint"] = "TOP",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stagger"] = 0,
			["config"] = {
			},
			["uid"] = "UNYQUkX7c8L",
			["url"] = "https://wago.io/B1S_4UQhX/2",
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["internalVersion"] = 11,
		},
		["04 Wail of Greed Channel"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound_channel"] = "Ambience",
					["do_sound"] = false,
					["sound"] = " custom",
					["stop_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1058933,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["spellId"] = 284941,
						["use_absorbMode"] = true,
						["use_specific_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["name"] = "Spirits of Gold",
						["castType"] = "channel",
						["use_spellId"] = true,
						["spellIds"] = {
							285280, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["names"] = {
							"Searing Waves", -- [1]
						},
						["unit"] = "boss1",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Raiddmg",
			["glow"] = false,
			["cooldownEdge"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["text2Font"] = "Arial Narrow",
			["id"] = "04 Wail of Greed Channel",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "S5Ra4ged4Kw",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["02 Bestial Throw (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"289292", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
						["event"] = "Cast",
						["auraspellids"] = {
							"289292", -- [1]
						},
						["unevent"] = "auto",
						["names"] = {
							"Rending Bite", -- [1]
						},
						["spellIds"] = {
							285875, -- [1]
						},
						["use_unit"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["icon"] = true,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["use_role"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
					},
				},
				["role"] = {
					["single"] = "TANK",
				},
				["encounterid"] = "2263,2284",
				["use_difficulty"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["xOffset"] = 0,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Throw",
			["text1Containment"] = "OUTSIDE",
			["url"] = "https://wago.io/bfaraid2/112",
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "02 Bestial Throw (Tank Only)",
			["text1Enabled"] = true,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "L0yApV82wQl",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["Opulence Brilliant Aura"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 300,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/imlz-ng6S/2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Brilliant Aura", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["stickyDuration"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["uid"] = "8nlcON)jj4Q",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["text1Containment"] = "OUTSIDE",
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["frameStrata"] = 1,
			["text2FontSize"] = 24,
			["icon"] = true,
			["text1"] = "100%% Crit",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["authorOptions"] = {
			},
			["id"] = "Opulence Brilliant Aura",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 64,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["parent"] = "OPULENCE",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["glow"] = false,
		},
		["Opulence Liquid Gold"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 300,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["auto"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/imlz-ng6S/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"Liquid Gold", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["useglowColor"] = false,
			["parent"] = "OPULENCE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["cooldownEdge"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "h1HOIhyjc7h",
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["cooldownTextEnabled"] = true,
			["text1"] = "GET TO THE EDGE",
			["zoom"] = 0,
			["authorOptions"] = {
			},
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["text1Containment"] = "OUTSIDE",
			["id"] = "Opulence Liquid Gold",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["width"] = 64,
			["text2Enabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["internalVersion"] = 11,
		},
		["Opulence Ruby Timer"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 400,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["auto"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
						["type"] = "aura2",
						["auranames"] = {
							"Ruby of Focused Animus", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "member",
						["specificUnit"] = "boss1",
						["auranames"] = {
							"Focused Animus", -- [1]
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = 2,
			},
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "OPULENCE",
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["icon"] = true,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
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
			["uid"] = "lqv)Wa48JiR",
			["xOffset"] = -64,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Enabled"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["text1Containment"] = "INSIDE",
			["text1"] = " ",
			["zoom"] = 0,
			["authorOptions"] = {
			},
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["frameStrata"] = 1,
			["id"] = "Opulence Ruby Timer",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 64,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/imlz-ng6S/2",
			["conditions"] = {
			},
			["cooldown"] = true,
			["useglowColor"] = false,
		},
		["03 Post Multi-Sided Strike Buff"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["icon"] = true,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Buffed",
			["alpha"] = 1,
			["glow"] = false,
			["text2"] = "%s%c",
			["auto"] = true,
			["text1Enabled"] = true,
			["id"] = "03 Post Multi-Sided Strike Buff",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "Mon9sYhF25d",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284089",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["names"] = {
							"Successful Defense", -- [1]
						},
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["spellIds"] = {
							284089, -- [1]
						},
						["use_specific_unit"] = false,
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"284089", -- [1]
						},
						["use_spellId"] = true,
						["name"] = "Successful Defense",
						["subeventSuffix"] = "_CAST_START",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subcountCount"] = 1,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["Dark Archangel"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 445.027770996094,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["alpha"] = 1,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["load"] = {
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
			["text1Containment"] = "INSIDE",
			["xOffset"] = -319.019775390625,
			["cooldownTextEnabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["text2FontSize"] = 24,
			["width"] = 64,
			["text1"] = "%p",
			["glow"] = true,
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "Dark Archangel",
			["stickyDuration"] = false,
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "BWsyqNbuxKk",
			["inverse"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["conditions"] = {
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
						["auranames"] = {
							"Dark Archangel", -- [1]
						},
						["unit"] = "player",
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
			["internalVersion"] = 11,
		},
		["09 Searing Pitch"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Broadside", -- [1]
						},
						["use_tooltip"] = false,
						["auranames"] = {
							"287365", -- [1]
						},
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["spellIds"] = {
							288212, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Broadside",
						["unevent"] = "auto",
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["cooldownTextEnabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "-stack/root",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["url"] = "https://wago.io/bfaraid2/112",
			["id"] = "09 Searing Pitch",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "q2Lt)fl(1fc",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["Water!!!"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/SkdWAvFuQ/1",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local r = aura_env.region\n\nif not r.button then\n    r.button = CreateFrame(\"Button\", \"WA\"..aura_env.id..\"button\", r, \"SecureActionButtonTemplate\")\nend\n\nr.button:SetAllPoints(r)\nr.button:SetAttribute(\"type1\", \"macro\")\nr.button:SetAttribute(\"macrotext1\", \"/script local n=GetItemInfo(163784); for i=1, GetMerchantNumItems() do local m=GetMerchantItemInfo(i); if n == m then BuyMerchantItem(i, GetMerchantItemMaxStack(i)); end; end\")",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1Font"] = "Friz Quadrata TT",
			["text2Font"] = "Friz Quadrata TT",
			["glow"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 1,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["cooldownTextEnabled"] = true,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 163784,
						["use_count"] = true,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Item Count",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["unit"] = "player",
						["count"] = "100",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_resting"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["duration"] = "1",
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = false,
			["text2FontSize"] = 24,
			["cooldownEdge"] = false,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["semver"] = "1.0.0",
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0,
			["id"] = "Water!!!",
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["width"] = 64,
			["stickyDuration"] = false,
			["uid"] = "rJZlIzacIZB",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["icon"] = true,
		},
		["02 Rending Bite (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["icon"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285875", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Rending Bite", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							285875, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "TANK",
				},
				["encounterid"] = "2263,2284",
				["faction"] = {
				},
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["internalVersion"] = 11,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Tank-Dot",
			["alpha"] = 1,
			["glow"] = false,
			["text2"] = "%s%c",
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "02 Rending Bite (Tank Only)",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "tsUn2ZjiAju",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["06 Radiation Zone"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_message"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"288939", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Gigavolt Blast", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							283411, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1698700,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
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
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["alpha"] = 1,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text2Enabled"] = true,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["url"] = "https://wago.io/bfaraid2/112",
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Pool-Dot",
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s%c",
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "06 Radiation Zone",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["desaturate"] = false,
			["uid"] = "CV618BxfyrZ",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["ZT - Nnogga's Party CD Front End"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["text1FontSize"] = 12,
			["xOffset"] = -5000,
			["stacksFlags"] = "OUTLINE",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/Hk8U8kanm/11",
			["actions"] = {
				["start"] = {
					["custom"] = "WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\")",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "--CHANGE HERE--\naura_env.maxAuraCount = 7\n---------------\n--contruct options from custom options\nlocal growDirections = {\n    [1] = {\"LEFT\",\"TOPRIGHT\",\"TOPLEFT\"},\n    [2] = {\"RIGHT\",\"TOPLEFT\",\"TOPRIGHT\"},\n    [3] = {\"TOP\",\"BOTTOMLEFT\",\"TOPLEFT\"},    \n    [4] = {\"BOTTOM\",\"TOPLEFT\",\"BOTTOMLEFT\"},\n}\n\n\nif aura_env.config.preserveRows then\n    growDirections[3] = {\"RIGHT\",\"BOTTOMLEFT\",\"TOPLEFT\"}   \n    growDirections[4] = {\"RIGHT\",\"TOPLEFT\",\"BOTTOMLEFT\"}\nend\n\n\n\naura_env.growdirection,aura_env.positionFrom,aura_env.positionTo = unpack(growDirections[aura_env.config.growDirection])\naura_env.spacing = aura_env.config.spacing\naura_env.xOffset = aura_env.config.xOffset\naura_env.yOffset = aura_env.config.yOffset\naura_env.ignorePlayer = not aura_env.config.showPlayer\n\naura_env.rows = {{},{}}\nlocal trackedTypes = {\n    [1] = \"DAMAGE\",\n    [2] = \"HEALING\",\n    [3] = \"IMMUNITY\",\n    [4] = \"PERSONAL\",\n    [5] = \"HARDCC\",\n    [6] = \"SOFTCC\",\n    [7] = \"EXTERNAL\",\n    [8] = \"UTILITY\", \n    [9] = \"DISPEL\", \n    [10]= \"INTERRUPT\",\n    [11]= \"STHARDCC\",\n    [12]= \"STSOFTCC\",\n    [13]= \"DEFMDISPEL\",\n    [14]= \"TANK\",\n}\n\nfor i=1,2 do\n    for j=1,#trackedTypes do\n        local key = \"row\"..i..j\n        if aura_env.config[key] then\n            tinsert(aura_env.rows[i],trackedTypes[j])\n        end        \n    end    \nend\n\n---------------\n\naura_env.types = {}\nfor rowIdx,row in ipairs(aura_env.rows) do\n    for priority,type in ipairs(row) do\n        aura_env.types[type] = true\n    end\nend\n\naura_env.auraCount = {}\n\n--credit to buds\n--https://wago.io/BFADungeonTargetedSpells\nlocal frame_priority = {\n    -- raid frames\n    [1] = \"^Vd1\", -- vuhdo\n    [2] = \"^Healbot\", -- healbot\n    [3] = \"^GridLayout\", -- grid\n    [4] = \"^Grid2Layout\", -- grid2\n    [5] = \"^ElvUF_RaidGroup\", -- elv\n    [6] = \"^oUF_bdGrid\", -- bdgrid\n    [7] = \"^oUF.*raid\", -- generic oUF\n    [8] = \"^LimeGroup\", -- lime\n    [9] = \"^SUFHeaderraid\", -- suf\n    [10] = \"^CompactRaid\", -- blizz\n    -- party frames\n    [11] = \"^SUFHeaderparty\", --suf\n    [12] = \"^ElvUF_PartyGroup\", -- elv\n    [13] = \"^oUF.*party\", -- generic oUF\n    [14] = \"^PitBull4_Groups_Party\", -- pitbull4\n    [15] = \"^CompactParty\", -- blizz\n    -- player frame\n    [16] = \"^SUFUnitplayer\",\n    [17] = \"^PitBull4_Frames_Player\",\n    [18] = \"^ElvUF_Player\",\n    [19] = \"^oUF.*player\",\n    [20] = \"^PlayerFrame\",\n}\n\nWA_GetFramesCache = WA_GetFramesCache or {}\nif not WA_GetFramesCacheListener then\n    WA_GetFramesCacheListener = CreateFrame(\"Frame\")\n    local f = WA_GetFramesCacheListener\n    f:RegisterEvent(\"PLAYER_REGEN_DISABLED\")\n    f:RegisterEvent(\"PLAYER_REGEN_ENABLED\")\n    f:RegisterEvent(\"GROUP_ROSTER_UPDATE\")\n    f:SetScript(\"OnEvent\", function(self, event, ...)\n            WA_GetFramesCache = {}\n    end)\nend\n\nlocal ignoredFrames = {    \n    [\"SUFUnitplayer\"]=true,\n    [\"PitBull4_Frames_Player\"]=true,\n    [\"PitBull4_Frames_Target\"]=true,\n    [\"PitBull4_Frames_TargetTarget\"]=true,\n    [\"ElvUF_Player\"]=true,\n    [\"ElvUF_Target\"]=true,\n    [\"ElvUF_TargetTarget\"]=true,\n    [\"oUF_TukuiPlayer\"]=true,\n    [\"oUF_TukuiTarget\"]=true,\n    [\"oUF_TukuiTargetTarget\"]=true,\n    [\"PlayerFrame\"]=true,\n    [\"TargetFrame\"]=true,\n    [\"TargetTargetFrame\"]=true,\n}\n\nlocal function GetFrames(target)\n    local function FindButtonsForUnit(frame, target)\n        local results = {}\n        if type(frame) == \"table\" and not frame:IsForbidden() then\n            local type = frame:GetObjectType()\n            if type == \"Frame\" or type == \"Button\" then\n                for _,child in ipairs({frame:GetChildren()}) do\n                    for _,v in pairs(FindButtonsForUnit(child, target)) do\n                        tinsert(results, v)                      \n                    end\n                end\n            end\n            if type == \"Button\" then\n                local unit = frame:GetAttribute('unit')\n                if unit and frame:IsVisible() and frame:GetName() then\n                    WA_GetFramesCache[frame] = unit\n                    if UnitIsUnit(unit, target) then\n                        tinsert(results, frame)\n                    end\n                end\n            end\n        end\n        return results\n    end\n    \n    if not UnitExists(target) then\n        if type(target) == \"string\" and target:find(\"Player\") then\n            target = select(6,GetPlayerInfoByGUID(target))\n        else\n            target = target:gsub(\" .*\", \"\")\n            if not UnitExists(target) then\n                return {}\n            end\n        end\n    end \n    \n    local results = {}\n    for frame, unit in pairs(WA_GetFramesCache) do\n        --print(\"from cache:\", frame:GetName())\n        if UnitIsUnit(unit, target) then\n            if frame:GetAttribute('unit') == unit then\n                tinsert(results, frame)\n            else\n                results = {}\n                break\n            end\n        end\n    end\n    \n    return #results > 0 and results or FindButtonsForUnit(UIParent, target)\nend\n\nlocal isElvUI = IsAddOnLoaded(\"ElvUI\")\nlocal function WhyElvWhy(frame)\n    if isElvUI and frame and frame:GetName():find(\"^ElvUF_\") and frame.Health then\n        return frame.Health\n    else\n        return frame\n    end\nend\n\n\nfunction aura_env.GetFrame(target)\n    local frames = GetFrames(target)\n    if not frames then return nil end\n    for i=1,#frame_priority do\n        for _,frame in pairs(frames) do\n            if (not ignoredFrames[frame:GetName()]) and (frame:GetName()):find(frame_priority[i]) then\n                return WhyElvWhy(frame)\n            end\n        end\n    end\n    if frames[1] and (not ignoredFrames[frames[1]:GetName()]) then\n        return WhyElvWhy(frames[1])\n    end    \nend\n\nlocal function setIconPosition(v,rowIdx)\n    local unit            \n    for u in WA_IterateGroupMembers() do\n        if UnitName(u) == v.name then unit = u end\n    end\n    if not unit then \n        v.show = false\n        v.changed = true\n    else\n        v.unit = unit\n        local region = WeakAuras.GetRegion(aura_env.id, v.ID)\n        local f = aura_env.GetFrame(v.unit)\n        if f and region --[[and region:IsVisible()]] then\n            aura_env.auraCount[v.unit] = aura_env.auraCount[v.unit] or {}\n            aura_env.auraCount[v.unit][rowIdx] = aura_env.auraCount[v.unit][rowIdx] or 0\n            \n            local order = aura_env.auraCount[v.unit][rowIdx]\n            local xoffset, yoffset = 0, 0\n            local height,width = region:GetHeight()+aura_env.spacing, region:GetWidth()+aura_env.spacing\n            if aura_env.growdirection == \"TOP\" then\n                yoffset = (order) * height\n                xoffset = xoffset + (rowIdx-1)*height\n            elseif aura_env.growdirection == \"BOTTOM\" then\n                yoffset = - (order) * height\n                xoffset = xoffset + (rowIdx-1)*height\n            elseif aura_env.growdirection == \"RIGHT\" then\n                xoffset = (order) * width\n                yoffset = yoffset - (rowIdx-1)*height\n            elseif aura_env.growdirection == \"LEFT\" then\n                xoffset = - (order) * width\n                yoffset = yoffset - (rowIdx-1)*height\n            elseif aura_env.growdirection == \"HORIZONTAL\" then\n                xoffset = (-((order) * width / 2)) + ((order - 1) * width)\n            elseif aura_env.growdirection == \"VERTICAL\" then\n                xoffset = (-((order) * width / 2)) + ((order - 1) * width)\n            end \n            if aura_env.auraCount[v.unit][rowIdx]+1 > aura_env.maxAuraCount then\n                xoffset = -3000\n            end\n            region:ClearAllPoints()\n            region:SetPoint(aura_env.positionFrom,f,aura_env.positionTo,xoffset+aura_env.xOffset,yoffset+aura_env.yOffset)                \n            aura_env.auraCount[v.unit][rowIdx] = aura_env.auraCount[v.unit][rowIdx] + 1 \n        else\n            region:ClearAllPoints()\n            region:SetPoint(aura_env.positionFrom,UIParent,aura_env.positionTo,-3000,0) \n        end        \n    end\nend\n\n\nfunction aura_env.updateFrames()\n    local allstates = aura_env.allstates\n    if not allstates then return end\n    table.wipe(aura_env.auraCount)    \n    for rowIdx,row in ipairs(aura_env.rows) do\n        for priority,type in ipairs(row) do            \n            for _, v in pairs(allstates) do\n                if v.type == type then\n                    setIconPosition(v,rowIdx)\n                end                \n            end            \n        end\n    end\nend",
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
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["uniqueId"] = "ZenTracker",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["talent2"] = {
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
				["use_never"] = false,
				["spec"] = {
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
			["glowType"] = "buttonOverlay",
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["stacks"] = true,
			["text2FontSize"] = 24,
			["sparkRotation"] = 0,
			["texture"] = "Blizzard Raid Bar",
			["textFont"] = "ArchivoNarrow-Bold",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["icon"] = true,
			["authorOptions"] = {
				{
					["desc"] = "Direction the icons should grow towards, relative to the raidframe.",
					["type"] = "select",
					["default"] = 1,
					["name"] = "Grow Direction",
					["key"] = "growDirection",
					["useDesc"] = true,
					["values"] = {
						"Left", -- [1]
						"Right", -- [2]
						"Top", -- [3]
						"Bottom", -- [4]
					},
					["width"] = 1,
				}, -- [1]
				{
					["softMin"] = 0,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 25,
					["step"] = 1,
					["desc"] = "Amount of pixels between icons.",
					["min"] = -10,
					["name"] = "Spacing",
					["width"] = 1,
					["softMax"] = 10,
					["useDesc"] = true,
					["key"] = "spacing",
					["default"] = 2,
				}, -- [2]
				{
					["type"] = "toggle",
					["name"] = "Force Horizontal",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "preserveRows",
					["width"] = 1,
				}, -- [3]
				{
					["softMin"] = -15,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 500,
					["step"] = 1,
					["desc"] = "Amount of pixels the display is offset horizontally. ",
					["min"] = -500,
					["name"] = "X-Offset",
					["width"] = 1,
					["softMax"] = 15,
					["useDesc"] = true,
					["key"] = "xOffset",
					["default"] = 0,
				}, -- [4]
				{
					["softMin"] = -15,
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 500,
					["step"] = 1,
					["desc"] = "Amount of pixels the display is offset vertically. ",
					["min"] = -500,
					["default"] = -1,
					["name"] = "Y-Offset",
					["softMax"] = 15,
					["width"] = 1,
					["key"] = "yOffset",
					["bigStep"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["useDesc"] = true,
					["width"] = 1,
					["key"] = "showPlayer",
					["name"] = "Show Player",
					["default"] = true,
					["desc"] = "Show your own spells",
				}, -- [6]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 1,
				}, -- [7]
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "Row 1:",
					["width"] = 2,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "row11",
					["default"] = true,
					["name"] = "Damage",
					["width"] = 0.5,
				}, -- [9]
				{
					["type"] = "toggle",
					["key"] = "row12",
					["default"] = true,
					["name"] = "Healing",
					["width"] = 0.5,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "row13",
					["default"] = true,
					["name"] = "Immunity",
					["width"] = 0.5,
				}, -- [11]
				{
					["type"] = "toggle",
					["key"] = "row14",
					["default"] = true,
					["name"] = "Personal",
					["width"] = 0.5,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "row15",
					["default"] = false,
					["name"] = "Hard CC",
					["width"] = 0.5,
				}, -- [13]
				{
					["type"] = "toggle",
					["key"] = "row16",
					["default"] = false,
					["name"] = "Soft CC",
					["width"] = 0.5,
				}, -- [14]
				{
					["type"] = "toggle",
					["key"] = "row17",
					["default"] = false,
					["name"] = "External",
					["width"] = 0.5,
				}, -- [15]
				{
					["type"] = "toggle",
					["key"] = "row18",
					["default"] = false,
					["name"] = "Utility",
					["width"] = 0.5,
				}, -- [16]
				{
					["type"] = "toggle",
					["key"] = "row19",
					["default"] = false,
					["name"] = "Dispel",
					["width"] = 0.5,
				}, -- [17]
				{
					["type"] = "toggle",
					["key"] = "row110",
					["default"] = false,
					["name"] = "Interrupt",
					["width"] = 0.5,
				}, -- [18]
				{
					["type"] = "toggle",
					["key"] = "row111",
					["default"] = false,
					["name"] = "ST Hard CC",
					["width"] = 0.5,
				}, -- [19]
				{
					["type"] = "toggle",
					["key"] = "row112",
					["default"] = false,
					["name"] = "ST Soft CC",
					["width"] = 0.5,
				}, -- [20]
				{
					["type"] = "toggle",
					["key"] = "row113",
					["default"] = false,
					["name"] = "Def Dispel",
					["width"] = 0.5,
				}, -- [21]
				{
					["type"] = "toggle",
					["name"] = "Tank",
					["key"] = "row114",
					["default"] = false,
					["width"] = 0.5,
				}, -- [22]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 1,
				}, -- [23]
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "Row 2",
					["width"] = 2,
				}, -- [24]
				{
					["type"] = "toggle",
					["key"] = "row21",
					["default"] = false,
					["name"] = "Damage",
					["width"] = 0.5,
				}, -- [25]
				{
					["type"] = "toggle",
					["key"] = "row22",
					["default"] = false,
					["name"] = "Healing",
					["width"] = 0.5,
				}, -- [26]
				{
					["type"] = "toggle",
					["key"] = "row23",
					["default"] = false,
					["name"] = "Immunity",
					["width"] = 0.5,
				}, -- [27]
				{
					["type"] = "toggle",
					["key"] = "row24",
					["default"] = false,
					["name"] = "Personal",
					["width"] = 0.5,
				}, -- [28]
				{
					["type"] = "toggle",
					["key"] = "row25",
					["default"] = true,
					["name"] = "Hard CC",
					["width"] = 0.5,
				}, -- [29]
				{
					["type"] = "toggle",
					["key"] = "row26",
					["default"] = true,
					["name"] = "Soft CC",
					["width"] = 0.5,
				}, -- [30]
				{
					["type"] = "toggle",
					["key"] = "row27",
					["default"] = true,
					["name"] = "External",
					["width"] = 0.5,
				}, -- [31]
				{
					["type"] = "toggle",
					["key"] = "row28",
					["default"] = true,
					["name"] = "Utility",
					["width"] = 0.5,
				}, -- [32]
				{
					["type"] = "toggle",
					["key"] = "row29",
					["default"] = true,
					["name"] = "Dispel",
					["width"] = 0.5,
				}, -- [33]
				{
					["type"] = "toggle",
					["key"] = "row210",
					["default"] = false,
					["name"] = "Interrupt",
					["width"] = 0.5,
				}, -- [34]
				{
					["type"] = "toggle",
					["key"] = "row211",
					["default"] = false,
					["name"] = "ST Hard CC",
					["width"] = 0.5,
				}, -- [35]
				{
					["type"] = "toggle",
					["key"] = "row212",
					["default"] = false,
					["name"] = "ST Soft CC",
					["width"] = 0.5,
				}, -- [36]
				{
					["type"] = "toggle",
					["key"] = "row213",
					["default"] = false,
					["name"] = "Def Dispel",
					["width"] = 0.5,
				}, -- [37]
				{
					["type"] = "toggle",
					["name"] = "Tank",
					["key"] = "row214",
					["default"] = false,
					["width"] = 0.5,
				}, -- [38]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 1,
				}, -- [39]
			},
			["timerFont"] = "ArchivoNarrow-Bold",
			["text2Enabled"] = false,
			["text2"] = "%p",
			["config"] = {
				["row12"] = true,
				["row214"] = false,
				["row28"] = true,
				["showPlayer"] = true,
				["yOffset"] = -1,
				["row25"] = true,
				["row21"] = false,
				["row114"] = true,
				["row16"] = false,
				["row27"] = true,
				["row18"] = false,
				["preserveRows"] = false,
				["row24"] = false,
				["row212"] = false,
				["row213"] = false,
				["row14"] = true,
				["row110"] = false,
				["spacing"] = 2,
				["row15"] = false,
				["row11"] = true,
				["row29"] = false,
				["row111"] = false,
				["row26"] = true,
				["row23"] = false,
				["row211"] = false,
				["row210"] = false,
				["row113"] = false,
				["xOffset"] = 0,
				["row112"] = false,
				["row19"] = false,
				["row13"] = true,
				["row17"] = false,
				["row22"] = false,
				["growDirection"] = 4,
			},
			["borderInset"] = 1,
			["borderOffset"] = 0,
			["stacksFont"] = "Accidental Presidency",
			["progressPrecision"] = 1,
			["width"] = 25,
			["uid"] = "fSAugr(0C2v",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "ZT - Nnogga's Party CD Front End",
			["sparkOffsetX"] = 0,
			["semver"] = "1.0.3",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["customText"] = "\n\n",
			["borderBackdrop"] = "Solid",
			["rotateText"] = "NONE",
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["names"] = {
						},
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["events"] = "ZT_ADD",
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, type, watchID, member, spellID)\n    if event ~= \"ZT_ADD\" then\n        return\n    end\n    \n    -- If this WA was just loaded\n    if not type then\n        -- Since there is no unload event, hooking into region:Collapse() which\n        -- is called from WeakAuras.UnloadDisplays(...)\n        aura_env.region.ZTTypes = aura_env.types\n        \n        if not aura_env.region.ZTCollapse then\n            aura_env.region.ZTCollapse = aura_env.region.Collapse\n        end\n        \n        function aura_env.region:Collapse(...)\n            if self.ZTTypes and (not WeakAuras.loaded[self.id]) then\n                for t,isTracked in pairs(self.ZTTypes) do\n                    if isTracked then\n                        WeakAuras.ScanEvents(\"ZT_UNREGISTER\", t, self.id)\n                    end\n                end\n                self.ZTTypes = nil\n            end\n            \n            self.ZTCollapse(self, ...)\n        end\n        \n        -- Register for all types tracked by this front-end WA\n        for t,isTracked in pairs(aura_env.types) do\n            if isTracked then\n                WeakAuras.ScanEvents(\"ZT_REGISTER\", t, aura_env.region.id)\n            end\n        end\n    end\n    \n    if aura_env.types[type] then\n        if watchID and (not aura_env.ignorePlayer or member.name~=WeakAuras.me)then\n            local state = {}\n            state.show = true\n            state.changed = true\n            state.progressType = 'timed'\n            state.autoHide = false\n            state.resort = false\n            state.value = 0\n            state.total = 0\n            state.duration = 0\n            state.expirationTime = GetTime() \n            state.ID = watchID\n            state.type = type\n            state.spellId = spellID\n            \n            state.name = member.name\n            state.icon = select(3,GetSpellInfo(spellID))\n            state.classColor = member.classColor\n            \n            allstates[watchID] = state\n            aura_env.allstates = allstates\n            return true\n        end\n    end\nend",
						["check"] = "event",
						["event"] = "Health",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZT_TRIGGER WA_PARTYCOOLDOWNS_UPDATE GROUP_ROSTER_UPDATE",
						["check"] = "event",
						["event"] = "Health",
						["custom"] = "function(allstates, event, type, watchID, duration, expiration)\n    \n    if event == \"WA_PARTYCOOLDOWNS_UPDATE\"then\n        aura_env.last = now\n        aura_env.updateFrames()\n        return true       \n    end\n    \n    if event == \"GROUP_ROSTER_UPDATE\" then\n        local now = GetTime()\n        if not aura_env.last or aura_env.last < now - 1 then\n            C_Timer.After(0.5,function() \n                    WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \n            end)\n        end\n        return\n    end\n    \n    if event ~= \"ZT_TRIGGER\" or not type then\n        return\n    end\n    \n    if aura_env.types[type] and aura_env.allstates[watchID] then\n        local state = aura_env.allstates[watchID]\n        \n        state.changed = true\n        state.duration = duration\n        state.expirationTime = expiration \n        return true\n    end\n    \n    \n    \nend",
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZT_REMOVE",
						["check"] = "event",
						["event"] = "Health",
						["custom"] = "function(allstates, event, type, watchID)\n    if event ~= \"ZT_REMOVE\" or not type then\n        return\n    end\n    \n    if aura_env.types[type] and aura_env.allstates[watchID] then\n        aura_env.allstates[watchID].show = false\n        aura_env.allstates[watchID].changed = true\n        return true\n    end\nend\n\n\n\n",
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["cooldownSwipe"] = true,
			["sparkHeight"] = 30,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["textSize"] = 12,
			["useglowColor"] = false,
			["auto"] = true,
			["internalVersion"] = 11,
			["cooldownTextEnabled"] = true,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["use_color"] = true,
					["scaley"] = 1,
					["colorB"] = 1,
					["scalex"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    if aura_env.state and aura_env.state.member then\n        local colors = RAID_CLASS_COLORS[aura_env.state.member.classID]\n        if colors then\n            return colors.r, colors.g, colors.b, 1\n        end\n    end\nend\n",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["x"] = 0,
				},
				["main"] = {
					["colorR"] = 1,
					["use_color"] = false,
					["scalex"] = 1,
					["colorB"] = 1,
					["scaley"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function()\n    if aura_env.state then\n        local c = aura_env.state.classColor\n        if c then\n            return c.r, c.g, c.b, 1\n        end\n    end\nend",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["x"] = 0,
				},
				["finish"] = {
					["colorR"] = 1,
					["use_color"] = false,
					["scaley"] = 1,
					["colorB"] = 1,
					["scalex"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "\n\n",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["x"] = 0,
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["glow"] = false,
			["stickyDuration"] = false,
			["displayTextLeft"] = "%n",
			["borderInFront"] = true,
			["version"] = 11,
			["height"] = 25,
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["borderEdge"] = "1 Pixel",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["border"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMax"] = false,
			["borderSize"] = 1,
			["text2Point"] = "CENTER",
			["icon_side"] = "LEFT",
			["text1Enabled"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["text1"] = "%s",
			["sparkRotationMode"] = "AUTO",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["desc"] = "Requires ZenTracker (ZT) backend https://wago.io/r14U746B7",
			["sparkHidden"] = "NEVER",
			["backgroundColor"] = {
				0.21176470588235, -- [1]
				0.21176470588235, -- [2]
				0.21176470588235, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["text1FontFlags"] = "OUTLINE",
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["cooldown"] = true,
			["sparkWidth"] = 10,
		},
		["Innervate"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["cooldownTextEnabled"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["internalVersion"] = 11,
			["load"] = {
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
			["desaturate"] = false,
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["width"] = 64,
			["alpha"] = 0.6,
			["text2FontSize"] = 24,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"29166", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["auranames"] = {
							"Innervate", -- [1]
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1"] = "%casterName",
			["frameStrata"] = 1,
			["auto"] = true,
			["text2"] = "%p",
			["useGlowColor"] = false,
			["zoom"] = 0,
			["id"] = "Innervate",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "erJbEcSo222",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = true,
		},
		["02 Reverberating Slam [Horde]"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 2101174,
			["cooldownTextEnabled"] = true,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["faction"] = {
					["single"] = "Horde",
				},
				["use_faction"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["icon"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Move",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "02 Reverberating Slam [Horde]",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 80,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "282179",
						["duration"] = "3.5",
						["subeventPrefix"] = "SPELL",
						["destUnit"] = "player",
						["buffShowOn"] = "showOnActive",
						["type"] = "event",
						["subeventSuffix"] = "_DAMAGE",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["event"] = "Combat Log",
						["spellIds"] = {
						},
						["use_itemSlot"] = true,
						["use_spellId"] = true,
						["name"] = "Reverberating Slam",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["use_destUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["uid"] = "pvxCQwoRPGR",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["08 Thunderous Boom"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 136050,
			["text2Font"] = "Arial Narrow",
			["icon"] = true,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "yQ52FL4F5s5",
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Silence",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["glow"] = false,
			["id"] = "08 Thunderous Boom",
			["cooldownTextEnabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284262,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["names"] = {
							"Searing Waves", -- [1]
						},
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "custom",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["custom"] = "function(event, unit, castGUID, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then\n        if spellID == 284106 and IsItemInRange(28767, unit) then\n            return true \n        end \n    end \nend \n\n",
						["event"] = "Chat Message",
						["unevent"] = "auto",
						["customDuration"] = "",
						["use_spellId"] = false,
						["name"] = "Voltaic Flash",
						["spellIds"] = {
							285280, -- [1]
						},
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["duration"] = "5",
						["dynamicDuration"] = false,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
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
		["Tosh HealerMana bar"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/H19CraC_7/7",
			["icon"] = false,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.30980392156863, -- [1]
				0.45098039215686, -- [2]
				0.63137254901961, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["sparkOffsetY"] = 0,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
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
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.6,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Tosh HealerMana",
			["customTextUpdate"] = "event",
			["displayTextLeft"] = "%display",
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["unit"] = "player",
						["powertype"] = 0,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["use_unit"] = true,
						["custom_type"] = "stateupdate",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["use_requirePowerType"] = false,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["events"] = "PLAYER_ENTERING_WORLD,UNIT_POWER_UPDATE",
						["custom"] = "function(allstates, ...)\n    for k,v in pairs(allstates) do\n        v.show = false\n        v.index = nil\n        v.changed = true\n    end\n\n    local sortby = aura_env.config.sortby\n    local playerguid = UnitGUID(\"player\")\n    for uid in WA_IterateGroupMembers() do\n        if UnitExists(uid) and UnitIsVisible(uid) and UnitPower(uid) and UnitPower(uid) > 0 then\n            local info = aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))\n            if info and aura_env.healSpecs[info.global_spec_id] then\n                local name = UnitName(uid)\n                local currMana, maxMana = UnitPower(uid), UnitPowerMax(uid)\n                local pct = math.floor((currMana / maxMana)*100)\n                local class = select(2, UnitClass(\"player\"))\n\n                local state = allstates[info.guid]\n                if not state then\n                    allstates[info.guid] = {\n                        progressType = \"static\",\n                        autoHide = false,\n                        display = WA_ClassColorName(uid),\n\n                        -- Condition variables\n                        classid = class,\n                        isplayer = (playerguid == info.guid),\n                    }\n                    state = allstates[info.guid]\n                end\n                state.show = true\n                state.value = currMana\n                state.total = maxMana\n                state.pct = pct\n                state.changed = true\n\n                if sortby == \"VALUE\" then\n                    state.index = aura_env.config.sortdir * pct or 0\n                    state.resort = true\n                elseif sortby == \"CLASS\" then\n                    state.index = class .. name\n                end\n            end\n        end\n    end\n\n    return true\nend",
						["unevent"] = "auto",
						["check"] = "event",
						["event"] = "Power",
						["subeventSuffix"] = "_CAST_START",
						["customVariables"] = "  {\n    isplayer = {\n        display = \"is player\",\n        type = \"bool\",\n    },\n    classid = {\n        display = \"Class\",\n        type = \"string\",\n    },\n    pct = {\n        display = \"Mana Percent\",\n        type = \"number\",\n    }\n  }",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["colorType"] = "custom",
					["scalex"] = 1,
					["x"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["use_color"] = false,
					["colorFunc"] = "function()\n    if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    local c = aura_env.state.barColor\n    if not c then return 0,0,0,1 end\n    return c.r, c.g, c.b, 1\nend",
					["rotate"] = 0,
					["scaley"] = 1,
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scaley"] = 1,
					["use_color"] = false,
					["colorType"] = "custom",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function()\n    if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    local c = aura_env.state.barColor\n    if not c then return 0,0,0,1 end\n    return c.r, c.g, c.b, 1\nend",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["stickyDuration"] = false,
			["sparkRotationMode"] = "AUTO",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["version"] = 7,
			["timer"] = true,
			["height"] = 18,
			["timerFlags"] = "OUTLINE",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["uid"] = "qKfiru4pdOu",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stacksFont"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotation"] = 0,
			["borderInFront"] = true,
			["id"] = "Tosh HealerMana bar",
			["icon_side"] = "LEFT",
			["displayTextRight"] = "%pct",
			["semver"] = "1.0.0-7",
			["sparkHeight"] = 30,
			["rotateText"] = "NONE",
			["spark"] = false,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 14,
			["zoom"] = 0,
			["sparkHidden"] = "NEVER",
			["borderSize"] = 16,
			["frameStrata"] = 1,
			["width"] = 180,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.config = {\n    sortby = \"VALUE\", -- or \"CLASS\"\n    sortdir = -1, --  -1 = ascending; 1 = descending. Only used for VALUE sorting\n}\n\naura_env.healSpecs = {\n    [105] = true, -- Restoration Druid\n    [270] = true, -- Mistweaver Monk\n    [65]  = true, -- Holy Paladin\n    [256] = true, -- Discipline Priest\n    [257] = true, -- Holy Priest\n    [264] = true, -- Restoration Shaman\n}\n\naura_env.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["textSize"] = 14,
			["inverse"] = false,
			["sparkWidth"] = 10,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "isplayer",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "if not aura_env.state then return end\naura_env.state.display = aura_env.state.display..\" <\"",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "pct",
						["op"] = "<=",
						["value"] = "40",
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["03 Rising Flames On You (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"282037", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							282037, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["names"] = {
							"Rising Flames", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "",
					["do_sound"] = false,
					["do_custom"] = false,
					["sound"] = " custom",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["text2Font"] = "Arial Narrow",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["affixes"] = {
				},
				["encounterid"] = "2266,2285",
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["url"] = "https://wago.io/bfaraid2/112",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Tank-Dot",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = true,
			["text2"] = "%s%c",
			["auto"] = true,
			["icon"] = true,
			["id"] = "03 Rising Flames On You (Tank Only)",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 11,
			["uid"] = "f(BQCNCmAZF",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
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
		["04 Hex of Lethargy"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dont Move.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["authorOptions"] = {
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135822,
			["text1Enabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "7pdPyfYoSlf",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["glow"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.98039215686274, -- [1]
				0.95294117647059, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["internalVersion"] = 11,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Don't Move",
			["text2Enabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s%c",
			["auto"] = true,
			["icon"] = true,
			["id"] = "04 Hex of Lethargy",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["unit"] = "player",
						["auranames"] = {
							"284470", -- [1]
						},
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["showClones"] = false,
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["names"] = {
							"Hex of Lethargy", -- [1]
						},
						["name"] = "Flames of Punishment",
						["event"] = "Cast",
						["debuffType"] = "HARMFUL",
						["castType"] = "cast",
						["use_spellId"] = true,
						["spellIds"] = {
							284470, -- [1]
						},
						["use_specific_unit"] = false,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Energized Storm"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["useGlowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["spellId"] = "285350",
						["auranames"] = {
							"285350", -- [1]
						},
						["use_absorbMode"] = true,
						["duration"] = "2",
						["names"] = {
							"Storm's Wail", -- [1]
						},
						["useGroup_count"] = true,
						["use_tooltip"] = false,
						["ignoreSelf"] = true,
						["debuffType"] = "HARMFUL",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["useName"] = true,
						["buffShowOn"] = "showOnActive",
						["showClones"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_AURA_REMOVED",
						["spellIds"] = {
							285350, -- [1]
						},
						["use_unit"] = true,
						["event"] = "Health",
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["name"] = "Storm's Wail",
						["unevent"] = "timed",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unit"] = "group",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg",
					["do_sound"] = true,
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = "1370984",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["selfPoint"] = "CENTER",
			["glow"] = false,
			["uid"] = "MNJkCubsp(w",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["cooldownEdge"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Font"] = "Arial Narrow",
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Add Inc",
			["internalVersion"] = 11,
			["stickyDuration"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "08 Energized Storm",
			["frameStrata"] = 1,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["03 Prismatic Shield"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function() \n    if aura_env.state and aura_env.state.tooltip1 then\n        return AbbreviateNumbers(aura_env.state.tooltip1)\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["text2Font"] = "Arial Narrow",
			["stickyDuration"] = false,
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "(iQn(6n1xKI",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["xOffset"] = 0,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.019607843137255, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Absorb Left",
			["glow"] = false,
			["alpha"] = 1,
			["text2"] = "%c",
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "03 Prismatic Shield",
			["cooldownEdge"] = false,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["matchesShowOn"] = "showOnActive",
						["rem"] = "4",
						["spellId"] = "286425",
						["useGroup_count"] = true,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["unit"] = "boss",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["subcount"] = true,
						["group_countOperator"] = ">",
						["specificUnit"] = "boss2",
						["group_count"] = "0",
						["useExactSpellId"] = true,
						["name"] = "Fire Shield",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"286425", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
							282040, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Blazing Phoenix", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["09 Burning Explosion"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 511713,
			["url"] = "https://wago.io/bfaraid2/112",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "GMhBFtn(J5M",
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["normal"] = true,
						["lfr"] = true,
						["heroic"] = true,
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
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Arial Narrow",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Clear/Rebuff",
			["glow"] = false,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["xOffset"] = 0,
			["id"] = "09 Burning Explosion",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "288221",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["duration"] = "15",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unevent"] = "timed",
						["custom_type"] = "event",
						["use_cloneId"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["auranames"] = {
							"288394", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = 1,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 2,
								["op"] = ">=",
								["value"] = "14",
								["variable"] = "expirationTime",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Clear.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["09 Warmth"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["auranames"] = {
							"288394", -- [1]
						},
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["unit"] = "player",
						["event"] = "Cast",
						["spellIds"] = {
							288212, -- [1]
						},
						["use_unit"] = true,
						["use_spellId"] = true,
						["name"] = "Broadside",
						["unevent"] = "auto",
						["names"] = {
							"Broadside", -- [1]
						},
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "yHvOXKcZskO",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Protected",
			["glow"] = false,
			["internalVersion"] = 11,
			["zoom"] = 0.3,
			["auto"] = true,
			["icon"] = true,
			["id"] = "09 Warmth",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
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
		["07 Necrotic Smash"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1802889,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "286742",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subcount"] = true,
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["spellIds"] = {
							283504, -- [1]
						},
						["auraspellids"] = {
							"286742", -- [1]
						},
						["use_spellId"] = true,
						["name"] = "Necrotic Smash",
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Suffering Spirits", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "0(D1vF)0WY2",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "-%tooltip1%% Heal",
			["glow"] = false,
			["text2Font"] = "Arial Narrow",
			["zoom"] = 0.3,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "07 Necrotic Smash",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["02 Bestial Throw Target"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"289307", -- [1]
						},
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["custom_type"] = "event",
						["dynamicDuration"] = false,
						["event"] = "Chat Message",
						["unevent"] = "auto",
						["names"] = {
						},
						["events"] = "",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound_path"] = "",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["glow"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 132937,
			["url"] = "https://wago.io/bfaraid2/112",
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
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
				["use_difficulty"] = false,
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["semver"] = "2.0.43",
			["text1"] = "Targeted",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "02 Bestial Throw Target",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "e9fZR387bsM",
			["inverse"] = false,
			["icon"] = true,
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
		["04 Opal of Unleashed Rage"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["xOffset"] = 0,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Yj4mTUqZipC",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["cooldownTextEnabled"] = true,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "+%tooltip1%% DPS",
			["text2Enabled"] = true,
			["glow"] = false,
			["text2"] = "%s%c",
			["auto"] = true,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "04 Opal of Unleashed Rage",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284883",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["auraspellids"] = {
							"284883", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["spellIds"] = {
							284883, -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["use_unit"] = true,
						["names"] = {
							"Opal of Unleashed Rage", -- [1]
						},
						["use_spellId"] = true,
						["name"] = "Opal of Unleashed Rage",
						["useExactSpellId"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["03 Roll (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = true,
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "285632",
						["group_role"] = "TANK",
						["duration"] = "1",
						["unit"] = "player",
						["names"] = {
							"Stalking", -- [1]
						},
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "custom",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["subeventSuffix"] = "_AURA_APPLIED",
						["custom"] = "function(event, unit, castGUID, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 286427 then \n            return true\n        end\n    end\nend\n\n\n",
						["spellIds"] = {
							285632, -- [1]
						},
						["event"] = "Combat Log",
						["use_specific_unit"] = false,
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Stalking",
						["custom_type"] = "event",
						["remOperator"] = "<=",
						["use_destUnit"] = false,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 606543,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = false,
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2266,2285",
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Arial Narrow",
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Roll",
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.31,
			["useGlowColor"] = false,
			["cooldownEdge"] = false,
			["id"] = "03 Roll (Tank Only)",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "X)HjyFqvei)",
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["05 Gift of Wind Buff On You (Mage Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound_channel"] = "Master",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1850549,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "oshSCCOHHZA",
			["load"] = {
				["use_class"] = true,
				["role"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["duration"] = "1",
						["names"] = {
						},
						["use_spellId"] = false,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"282098", -- [1]
						},
						["unevent"] = "auto",
						["name"] = "Gift of Wind",
						["use_unit"] = true,
						["useExactSpellId"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["glow"] = false,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "+%tooltip1%% Haste",
			["alpha"] = 1,
			["icon"] = true,
			["text2"] = "%s",
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "05 Gift of Wind Buff On You (Mage Only)",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["06 Electroshock Amplification"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 514016,
			["text2Font"] = "Arial Narrow",
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "(SxKddTuHzH",
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["authorOptions"] = {
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "OUTSIDE",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Targets you",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Enabled"] = true,
			["text2"] = "%s%c",
			["auto"] = true,
			["internalVersion"] = 11,
			["id"] = "06 Electroshock Amplification",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["unit"] = "member",
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Cast",
						["names"] = {
							"Sheep Shrapnel", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"289699", -- [1]
						},
						["spellIds"] = {
							287891, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_unitisunit"] = true,
						["use_status"] = true,
						["use_absorbMode"] = true,
						["unit"] = "boss1target",
						["use_specific_threatUnit"] = true,
						["status"] = 3,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Unit Characteristics",
						["use_threatUnit"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unitisunit"] = "player",
						["threatUnit"] = "boss1",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["use_specific_threatUnit"] = true,
						["threatUnit"] = "boss1",
						["unit"] = "boss1target",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(t)\nreturn t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["04 Depleted Diamond"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useglowColor"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"284546", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							284546, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["names"] = {
							"Depleted Diamond", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["text1Font"] = "Arial Narrow",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "On CD",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Depleted Diamond",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["stickyDuration"] = false,
			["uid"] = "Gqc3olAOfDI",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["06 Wormhole Generator"] = {
			["text2Point"] = "BOTTOM",
			["useGlowColor"] = true,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 287952,
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_specific_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["event"] = "Cast",
						["custom_type"] = "stateupdate",
						["spellIds"] = {
						},
						["use_spellId"] = true,
						["events"] = "",
						["unevent"] = "auto",
						["check"] = "event",
						["use_unit"] = true,
						["dynamicDuration"] = false,
						["names"] = {
						},
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"289023", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"284168", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"284168", -- [1]
						},
						["useExactSpellId"] = true,
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"284168", -- [1]
						},
						["event"] = "Health",
						["unit"] = "group",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["ignoreSelf"] = true,
						["auraspellids"] = {
							"284168", -- [1]
						},
						["group_count"] = "0",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["group_countOperator"] = ">",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1]\nend",
				["activeTriggerMode"] = 1,
			},
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound_path"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 465876,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["type"] = "none",
					["scaley"] = 1,
					["preset"] = "alphaPulse",
					["colorA"] = 1,
					["duration_type"] = "seconds",
					["alpha"] = 0.41,
					["x"] = 0,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["y"] = 0,
					["rotate"] = 0,
					["scalex"] = 1,
					["use_alpha"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["internalVersion"] = 11,
			["url"] = "https://wago.io/bfaraid2/112",
			["uid"] = "LGBaMkBMq7x",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
				["ingroup"] = {
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
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
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
				["use_difficulty"] = false,
				["encounterid"] = "2276",
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["semver"] = "2.0.43",
			["text2FontSize"] = 16,
			["zoom"] = 0.3,
			["text1"] = "Teleport",
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "06 Wormhole Generator",
			["xOffset"] = 0,
			["alpha"] = 1,
			["width"] = 80,
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 4,
								["op"] = ">",
								["variable"] = "unitCount",
								["value"] = "0",
							}, -- [3]
							{
								["trigger"] = 2,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dont Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
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
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 4,
								["op"] = "==",
								["variable"] = "unitCount",
								["value"] = "0",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dont Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["glow"] = true,
		},
		["ZenTracker (ZT) Main"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = " ",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/r14U746B7/49",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
					["do_message"] = false,
				},
				["init"] = {
					["custom"] = "local ZT = aura_env\n--------------------------------------------------------------------------------\n-- CONFIGURATION\n--\n-- The configuration options have moved to the \"Author Options\" tab as of\n-- WeakAuras Version 2.10. \n--\n-- DO NOT EDIT THIS CODE!\n--------------------------------------------------------------------------------\n\n-- Turns on/off debugging messages\nZT.DEBUG_EVENTS = false\nZT.DEBUG_MESSAGES = false\nZT.DEBUG_TRACKING = false\n\n-- Class/Spec ID List\nlocal DK = {ID=6, name=\"DEATHKNIGHT\", Blood=250, Frost=251, Unholy=252}\nlocal DH = {ID=12, name=\"DEMONHUNTER\", Havoc=577, Veng=581}\nlocal Druid = {ID=11, name=\"DRUID\", Balance=102, Feral=103, Guardian=104, Resto=105}\nlocal Hunter = {ID=3, name=\"HUNTER\", BM=253, MM=254, SV=255}\nlocal Mage = {ID=8, name=\"MAGE\", Arcane=62, Fire=63, Frost=64}\nlocal Monk = {ID=10, name=\"MONK\", BRM=268, WW=269, MW=270}\nlocal Paladin = {ID=2, name=\"PALADIN\", Holy=65, Prot=66, Ret=70}\nlocal Priest = {ID=5, name=\"PRIEST\", Disc=256, Holy=257, Shadow=258}\nlocal Rogue = {ID=4, name=\"ROGUE\", Sin=259, Outlaw=260, Sub=261}\nlocal Shaman = {ID=7, name=\"SHAMAN\", Ele=262, Enh=263, Resto=264}\nlocal Warlock = {ID=9, name=\"WARLOCK\", Affl=265, Demo=266, Destro=267}\nlocal Warrior = {ID=1, name=\"WARRIOR\", Arms=71, Fury=72, Prot=73}\n\nlocal AllClasses = {\n    [DK.name] = DK, [DH.name] = DH, [Druid.name] = Druid, [Hunter.name] = Hunter,\n    [Mage.name] = Mage, [Monk.name] = Monk, [Paladin.name] = Paladin,\n    [Priest.name] = Priest, [Rogue.name] = Rogue, [Shaman.name] = Shaman,\n    [Warlock.name] = Warlock, [Warrior.name] = Warrior\n}\n\n-- Local versions of commonly used functions\nlocal ipairs = ipairs\nlocal pairs = pairs\nlocal print = print\nlocal select = select\nlocal tonumber = tonumber\n\nlocal IsInGroup = IsInGroup\nlocal IsInRaid = IsInRaid\nlocal UnitGUID = UnitGUID\nlocal C_ChatInfo_SendAddonMessage = C_ChatInfo.SendAddonMessage\n\n--------------------------------------------------------------------------------\n-- BEGIN SPELL COOLDOWN MODIFIERS\n--------------------------------------------------------------------------------\n\nlocal function StaticMod(type, value)\n    return { type = \"Static\", [type] = value }\nend\n\nlocal function DynamicMod(handlers)\n    if not handlers[1] then\n        handlers = { handlers }\n    end\n    \n    return { type = \"Dynamic\", handlers = handlers }\nend\n\nlocal function EventDeltaMod(type, spellID, delta)\n    return DynamicMod({\n            type = type,\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateDelta(delta)\n            end\n    })\nend\n\nlocal function CastDeltaMod(spellID, delta)\n    return EventDeltaMod(\"SPELL_CAST_SUCCESS\", spellID, delta)\nend\n\nlocal function EventRemainingMod(type, spellID, remaining)\n    return DynamicMod({\n            type = type,\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateRemaining(remaining)\n            end\n    })\nend\n\nlocal function CastRemainingMod(spellID, remaining)\n    return EventRemainingMod(\"SPELL_CAST_SUCCESS\", spellID, remaining)\nend\n\n-- Shockwave: If 3+ targets hit then reduces by 15 seconds\nlocal modShockwave = DynamicMod({\n        {\n            type = \"SPELL_CAST_SUCCESS\", spellID = 46968,\n            handler = function(watchInfo)\n                watchInfo.numHits = 0\n            end\n        },\n        {\n            type = \"SPELL_AURA_APPLIED\", spellID = 132168,\n            handler = function(watchInfo)\n                watchInfo.numHits = watchInfo.numHits + 1\n                if watchInfo.numHits == 3 then\n                    watchInfo:updateDelta(-15)\n                end\n            end\n        }\n})\n\n-- Capacitor Totem: Each target hit reduces by 5 seconds (up to 4 targets hit)\nlocal modCapTotem = DynamicMod({\n        type = \"SPELL_SUMMON\", spellID = 192058,\n        handler = function(watchInfo)\n            watchInfo.numHits = 0\n            \n            if not watchInfo.totemHandler then\n                watchInfo.totemHandler = function(watchInfo)\n                    watchInfo.numHits = watchInfo.numHits + 1\n                    if watchInfo.numHits <= 4 then\n                        watchInfo:updateDelta(-5)\n                    end\n                end\n            end\n            \n            if watchInfo.totemGUID then\n                ZT:removeEventHandler(\"SPELL_AURA_APPLIED\", 118905, watchInfo.totemGUID, watchInfo.totemHandler)\n            end\n            \n            watchInfo.totemGUID = select(8, CombatLogGetCurrentEventInfo())\n            ZT:addEventHandler(\"SPELL_AURA_APPLIED\", 118905, watchInfo.totemGUID, watchInfo.totemHandler, watchInfo)\n        end\n})\n\n\n-- Guardian Spirit: If expires watchInfothout healing then reset to 60 seconds\nlocal modGuardianSpirit = DynamicMod({\n        {\n            type = \"SPELL_HEAL\", spellID = 48153,\n            handler = function(watchInfo)\n                watchInfo.spiritHeal = true\n            end\n        },\n        {\n            type = \"SPELL_AURA_REMOVED\", spellID = 47788,\n            handler = function(watchInfo)\n                if not watchInfo.spiritHeal then\n                    watchInfo:updateRemaining(60)\n                end\n                watchInfo.spiritHeal = false\n            end\n        }\n})\n\n-- Dispels: Go on cooldown only if a debuff is dispelled\nlocal function DispelMod(spellID)\n    return DynamicMod({\n            type = \"SPELL_DISPEL\",\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateRemaining(8)\n            end\n    })\nend\n\n-- Resource Spending: For every spender, reduce cooldown by (coefficient * cost) seconds\n--   Note: By default, I use minimum cost values as to not over-estimate the cooldown reduction\nlocal specIDToSpenderInfo = {\n    [DK.Blood] = {resourceType=\"RUNIC_POWER\", spells={[49998]=40, [61999]=30, [206940]=30}},\n}\n\nlocal function ResourceSpendingMods(specID, coefficient)\n    local handlers = {}\n    local spenderInfo = specIDToSpenderInfo[specID]\n    \n    for spellID,cost in pairs(spenderInfo.spells) do\n        local delta = -(coefficient * cost)\n        \n        handlers[#handlers+1] = {\n            type = \"SPELL_CAST_SUCCESS\",\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateDelta(delta)\n            end\n        }\n    end\n    \n    return DynamicMod(handlers)\nend\n\n--------------------------------------------------------------------------------\n-- END SPELL COOLDOWN MODIFIERS\n--------------------------------------------------------------------------------\n\n--------------------------------------------------------------------------------\n-- BEGIN TRACKED SPELLS\n--------------------------------------------------------------------------------\n\nZT.spellsVersion = 3\nZT.typeToTrackedSpells = {}\n\nZT.typeToTrackedSpells[\"INTERRUPT\"] = {\n    {spellID=183752, class=DH, baseCD=15}, -- Consume Magic\n    {spellID=47528, class=DK, baseCD=15}, -- Mind Freeze\n    {spellID=91802, specs={DK.Unholy}, baseCD=30}, -- Shambling Rush\n    {spellID=78675, specs={Druid.Balance}, baseCD=60}, -- Solar Beam\n    {spellID=106839, specs={Druid.Feral,Druid.Guardian}, baseCD=15}, -- Skull Bash\n    {spellID=147362, specs={Hunter.BM, Hunter.MM}, baseCD=24}, -- Counter Shot\n    {spellID=187707, specs={Hunter.SV}, baseCD=15}, -- Muzzle\n    {spellID=2139, class=Mage, baseCD=24}, -- Counter Spell\n    {spellID=116705, specs={Monk.WW, Monk.BRM}, baseCD=15}, -- Spear Hand Strike\n    {spellID=96231, specs={Paladin.Prot, Paladin.Ret}, baseCD=15}, -- Rebuke\n    {spellID=15487, specs={Priest.Shadow}, baseCD=45, modTalents={[41]=StaticMod(\"sub\", 15)}}, -- Silence\n    {spellID=1766, class=Rogue, baseCD=15}, -- Kick\n    {spellID=57994, class=Shaman, baseCD=12}, -- Wind Shear\n    {spellID=19647, class=Warlock, baseCD=24}, -- Spell Lock\n    {spellID=6552, class=Warrior, baseCD=15}, -- Pummel\n}\n\nZT.typeToTrackedSpells[\"HARDCC\"] = {\n    {spellID=179057, specs={DH.Havoc}, baseCD=60, modTalents={[61]=StaticMod(\"mul\", 0.666667)}}, -- Chaos Nova\n    {spellID=119381, class=Monk, baseCD=60, modTalents={[41]=StaticMod(\"sub\", 10)}}, -- Leg Sweep\n    {spellID=192058, class=Shaman, baseCD=60, modTalents={[33]=modCapTotem}}, -- Capacitor Totem\n    {spellID=30283, class=Warlock, baseCD=60, modTalents={[51]=StaticMod(\"sub\", 15)}}, -- Shadowfury\n    {spellID=46968, specs={Warrior.Prot}, baseCD=40, modTalents={[52]=modShockwave}}, -- Shockwave\n    {spellID=20549, race=\"Tauren\", baseCD=90}, -- War Stomp\n    {spellID=255654, race=\"HighmountainTauren\", baseCD=120}, -- Bull Rush\n}\n\nZT.typeToTrackedSpells[\"SOFTCC\"] = {\n    {spellID=202138, specs={DH.Veng}, baseCD=90, reqTalents={53}}, -- Sigil of Chains\n    {spellID=207684, specs={DH.Veng}, baseCD=90}, -- Sigil of Misery\n    {spellID=202137, specs={DH.Veng}, baseCD=60, modTalents={[52]=StaticMod(\"mul\", 0.8)}}, -- Sigil of Silence\n    {spellID=108199, specs={DK.Blood}, baseCD=120, modTalents={[52]=StaticMod(\"sub\", 30)}}, -- Gorefiend's Grasp\n    {spellID=207167, specs={DK.Frost}, baseCD=60, reqTalents={33}}, -- Blinding Sleet\n    {spellID=132469, class=Druid, baseCD=30, reqTalents={43}}, -- Typhoon\n    {spellID=102359, class=Druid, baseCD=30, reqTalents={42}}, -- Mass Entanglement\n    {spellID=99, specs={Druid.Guardian}, baseCD=30}, -- Incapacitating Roar\n    {spellID=236748, specs={Druid.Guardian}, baseCD=30, reqTalents={22}}, -- Intimidating Roar\n    {spellID=102793, specs={Druid.Guardian}, baseCD=60, reqTalents={22}}, -- Ursol's Vortex\n    {spellID=102793, specs={Druid.Resto}, baseCD=60}, -- Ursol's Vortex\n    {spellID=109248, class=Hunter, baseCD=30, reqTalents={53}}, -- Binding Shot\n    {spellID=116844, class=Monk, baseCD=45, reqTalents={43}}, -- Ring of Peace\n    {spellID=115750, class=Paladin, baseCD=90, reqTalents={33}, version=3}, -- Blinding Light\n    {spellID=8122, specs={Priest.Disc,Priest.Holy}, baseCD=60, modTalents={[41]=StaticMod(\"sub\", 30)}}, -- Psychic Scream\n    {spellID=8122, specs={Priest.Shadow}, baseCD=60}, -- Psychic Scream\n    {spellID=204263, specs={Priest.Disc,Priest.Holy}, baseCD=45, reqTalents={43}}, -- Shining Force\n    {spellID=51490, specs={Shaman.Ele}, baseCD=45}, -- Thunderstorm\n    {spellID=31661, specs={Mage.Fire}, baseCD=20, version=2}, -- Dragon's Breath\n}\n\nZT.typeToTrackedSpells[\"STHARDCC\"] = {\n    {spellID=211881, specs={DH.Havoc}, baseCD=30, reqTalents={63}}, -- Fel Eruption\n    {spellID=221562, specs={DK.Blood}, baseCD=45}, -- Asphyxiate\n    {spellID=108194, specs={DK.Unholy}, baseCD=45, reqTalents={33}}, -- Asphyxiate\n    {spellID=108194, specs={DK.FrostDK}, baseCD=45, reqTalents={32}}, -- Asphyxiate\n    {spellID=5211, class=Druid, baseCD=50, reqTalents={41}}, -- Mighty Bash\n    {spellID=19577, specs={Hunter.BM,Hunter.Surv}, baseCD=60}, -- Intimidation\n    {spellID=853, specs={Paladin.Holy}, baseCD=60, modTalents={[31]=CastDeltaMod(275773, -10)}}, -- Hammer of Justice\n    {spellID=853, specs={Paladin.Prot}, baseCD=60, modTalents={[31]=CastDeltaMod(275779, -6)}}, -- Hammer of Justice\n    {spellID=853, specs={Paladin.Ret}, baseCD=60}, -- Hammer of Justice\n    {spellID=88625, specs={Priest.Holy}, baseCD=60, reqTalents={42}, mods=CastDeltaMod(585, -4), modTalents={[71]=CastDeltaMod(585, -1.333333)}}, -- Holy Word: Chastise\n    {spellID=64044, specs={Priest.Shadow}, baseCD=45, reqTalents={43}}, -- Psychic Horror\n    {spellID=6789, class=Warlock, baseCD=45, reqTalents={52}}, -- Mortal Coil\n    {spellID=107570, specs={Warrior.Prot}, baseCD=30, reqTalents={53}}, -- Storm Bolt\n    {spellID=107570, specs={Warrior.Arms,Warrior.Fury}, baseCD=30, reqTalents={23}}, -- Storm Bolt\n}\n\nZT.typeToTrackedSpells[\"STSOFTCC\"] = {\n    {spellID=217832, class=DH, baseCD=45}, -- Imprison\n    {spellID=2094, specs={Rogue.Sin,Rogue.Sub}, baseCD=120}, -- Blind\n    {spellID=2094, specs={Rogue.Outlaw}, baseCD=120, modTalents={[52]=StaticMod(\"sub\", 30)}}, -- Blind\n    {spellID=115078, class=Monk, baseCD=45}, -- Paralysis\n    {spellID=187650, class=Hunter, baseCD=30}, -- Freezing Trap\n    {spellID=49576, specs={DK.Blood}, baseCD=15, version=2}, -- Death Grip\n    {spellID=49576, specs={DK.Frost,DK.Unholy}, baseCD=25, version=2}, -- Death Grip\n}\n\nZT.typeToTrackedSpells[\"DISPEL\"] = {\n    {spellID=202719, race=\"BloodElf\", class=DH, baseCD=120}, -- Arcane Torrent\n    {spellID=50613, race=\"BloodElf\", class=DK, baseCD=120}, -- Arcane Torrent\n    {spellID=80483, race=\"BloodElf\", class=Hunter, baseCD=120}, -- Arcane Torrent\n    {spellID=28730, race=\"BloodElf\", class=Mage, baseCD=120}, -- Arcane Torrent\n    {spellID=129597, race=\"BloodElf\", class=Monk, baseCD=120}, -- Arcane Torrent\n    {spellID=155145, race=\"BloodElf\", class=Paladin, baseCD=120}, -- Arcane Torrent\n    {spellID=232633, race=\"BloodElf\", class=Priest, baseCD=120}, -- Arcane Torrent\n    {spellID=25046, race=\"BloodElf\", class=Rogue, baseCD=120}, -- Arcane Torrent\n    {spellID=28730, race=\"BloodElf\", class=Warlock, baseCD=120}, -- Arcane Torrent\n    {spellID=69179, race=\"BloodElf\", class=Warrior, baseCD=120}, -- Arcane Torrent\n    {spellID=32375, class=Priest, baseCD=45}, -- Mass Dispel\n}\n\nZT.typeToTrackedSpells[\"DEFMDISPEL\"] = {\n    {spellID=88423, specs={Druid.Resto}, baseCD=8, mods=DispelMod(88423), ignoreCast=true}, -- Nature's Cure\n    {spellID=115450, specs={Monk.MW}, baseCD=8, mods=DispelMod(115450), ignoreCast=true}, -- Detox\n    {spellID=4987, specs={Paladin.Holy}, baseCD=8, mods=DispelMod(4987), ignoreCast=true}, -- Cleanse\n    {spellID=527, specs={Priest.Disc,Priest.Holy}, baseCD=8, mods=DispelMod(527), ignoreCast=true}, -- Purify\n    {spellID=77130, specs={Shaman.Resto}, baseCD=8, mods=DispelMod(77130), ignoreCast=true}, -- Purify Spirit\n}\n\nZT.typeToTrackedSpells[\"EXTERNAL\"] = {\n    {spellID=196718, specs={DH.Havoc}, baseCD=180}, -- Darkness\n    {spellID=102342, specs={Druid.Resto}, baseCD=60, modTalents={[62]=StaticMod(\"sub\", 15)}}, -- Ironbark\n    {spellID=116849, specs={Monk.MW}, baseCD=120}, -- Life Cocoon\n    {spellID=31821, specs={Paladin.Holy}, baseCD=180}, -- Aura Mastery\n    {spellID=6940, specs={Paladin.Holy,Paladin.Prot}, baseCD=120}, -- Blessing of Sacrifice\n    {spellID=1022, specs={Paladin.Holy,Paladin.Ret}, baseCD=300}, -- Blessing of Protection\n    {spellID=1022, specs={Paladin.Prot}, baseCD=300, reqTalents={41,42}}, -- Blessing of Protection\n    {spellID=204018, specs={Paladin.Prot}, baseCD=180, reqTalents={43}}, -- Blessing of Spellwarding\n    {spellID=62618, specs={Priest.Disc}, baseCD=180, reqTalents={71,73}}, -- Power Word: Barrier\n    {spellID=271466, specs={Priest.Disc}, baseCD=180, reqTalents={72}}, -- Luminous Barrier\n    {spellID=33206, specs={Priest.Disc}, baseCD=180}, -- Pain Supression\n    {spellID=47788, specs={Priest.Holy}, baseCD=180, modTalents={[32]=modGuardianSpirit}}, -- Guardian Spirit\n    {spellID=98008, specs={Shaman.Resto}, baseCD=180}, -- Spirit Link Totem\n    {spellID=97462, class=Warrior, baseCD=180}, -- Rallying Cry\n}\n\nZT.typeToTrackedSpells[\"HEALING\"] = {\n    {spellID=740, specs={Druid.Resto}, baseCD=180, modTalents={[61]=StaticMod(\"sub\", 60)}}, -- Tranquility\n    {spellID=115310, specs={Monk.MW}, baseCD=180}, -- Revival\n    {spellID=216331, specs={Paladin.Holy}, baseCD=120, reqTalents={62}}, -- Avenging Crusader\n    {spellID=105809, specs={Paladin.Holy}, baseCD=90, reqTalents={53}}, -- Holy Avenger\n    {spellID=633, specs={Paladin.Holy}, baseCD=600, modTalents={[21]=StaticMod(\"mul\", 0.7)}}, -- Lay on Hands\n    {spellID=633, specs={Paladin.Prot,Paladin.Ret}, baseCD=600, modTalents={[51]=StaticMod(\"mul\", 0.7)}}, -- Lay on Hands\n    {spellID=210191, specs={Paladin.Ret}, baseCD=60, reqTalents={63}}, -- Word of Glory\n    {spellID=47536, specs={Priest.Disc}, baseCD=90}, -- Rapture\n    {spellID=246287, specs={Priest.Disc}, baseCD=90, reqTalents={73}}, -- Evangelism\n    {spellID=64843, specs={Priest.Holy}, baseCD=180}, -- Divine Hymn\n    {spellID=200183, specs={Priest.Holy}, baseCD=120, reqTalents={72}}, -- Apotheosis\n    {spellID=265202, specs={Priest.Holy}, baseCD=720, reqTalents={73}, mods={CastDeltaMod(34861,-30), CastDeltaMod(2050,-30)}}, -- Holy Word: Salvation\n    {spellID=15286, specs={Priest.Shadow}, baseCD=120, modTalents={[22]=StaticMod(\"sub\", 45)}}, -- Vampiric Embrace\n    {spellID=108280, specs={Shaman.Resto}, baseCD=180}, -- Healing Tide Totem\n    {spellID=198838, specs={Shaman.Resto}, baseCD=60, reqTalents={42}}, -- Earthen Wall Totem\n    {spellID=207399, specs={Shaman.Resto}, baseCD=300, reqTalents={43}}, -- Ancestral Protection Totem\n    {spellID=114052, specs={Shaman.Resto}, baseCD=180, reqTalents={73}}, -- Ascendance\n}\n\nZT.typeToTrackedSpells[\"UTILITY\"] = {\n    {spellID=205636, specs={Druid.Balance}, baseCD=60, reqTalents={13}}, -- Force of Nature (Treants)\n    {spellID=73325, class=Priest, baseCD=90}, -- Leap of Faith\n    {spellID=114018, class=Rogue, baseCD=360}, -- Shroud of Concealment\n    {spellID=29166, specs={Druid.Balance,Druid.Resto}, baseCD=180}, -- Innervate\n    {spellID=64901, specs={Priest.Holy}, baseCD=300}, -- Symbol of Hope\n    {spellID=198103, class=Shaman, baseCD=300, version=2}, -- Earth Elemental\n    {spellID=192077, class=Shaman, baseCD=120, reqTalents={53}, version=2}, -- Wind Rush Totem\n    {spellID=106898, specs={Druid.Guardian}, baseCD=60, version=2}, -- Stampeding Roar\n    {spellID=106898, specs={Druid.Feral}, baseCD=120, version=2}, -- Stampeding Roar\n    {spellID=58984, race=\"NightElf\", baseCD=120, version=3}, -- Shadowmeld\n}\n\nZT.typeToTrackedSpells[\"PERSONAL\"] = {\n    {spellID=198589, specs={DH.Havoc}, baseCD=60, mods=EventRemainingMod(\"SPELL_AURA_APPLIED\", 212800, 60)}, -- Blur\n    {spellID=187827, specs={DH.Veng}, baseCD=180}, -- Metamorphosis\n    {spellID=48707, specs={DK.Blood}, baseCD=60, modTalents={[42]=StaticMod(\"sub\", 15)}}, -- Anti-Magic Shell\n    {spellID=48707, specs={DK.Frost,DK.Unholy}, baseCD=60}, -- Anti-Magic Shell\n    {spellID=48743, specs={DK.Frost,DK.Unholy}, baseCD=120, reqTalents={53}}, -- Death Pact\n    {spellID=48792, class=DK, baseCD=180}, -- Icebound Fortitude\n    {spellID=55233, specs={DK.Blood}, baseCD=90, modTalents={[72]=ResourceSpendingMods(DK.Blood, 0.1)}}, -- Vampiric Blood\n    {spellID=22812, specs={Druid.Balance,Druid.Guardian,Druid.Resto}, baseCD=60}, -- Barkskin\n    {spellID=61336, specs={Druid.Feral,Druid.Guardian}, baseCD=180}, -- Survival Instincts\n    {spellID=109304, class=Hunter, baseCD=120}, -- Exhilaration\n    {spellID=235219, specs={Mage.Frost}, baseCD=300}, -- Cold Snap\n    {spellID=122278, class=Monk, baseCD=120, reqTalents={53}}, -- Dampen Harm\n    {spellID=122783, specs={Monk.MW, Monk.WW}, baseCD=90, reqTalents={52}}, -- Diffuse Magic\n    {spellID=115203, specs={Monk.BRM}, baseCD=420}, -- Fortifying Brew\n    {spellID=115176, specs={Monk.BRM}, baseCD=300}, -- Zen Meditation\n    {spellID=243435, specs={Monk.MW}, baseCD=90}, -- Fortifying Brew\n    {spellID=122470, specs={Monk.WW}, baseCD=90}, -- Touch of Karma\n    {spellID=498, specs={Paladin.Holy}, baseCD=60}, -- Divine Protection\n    {spellID=31850, specs={Paladin.Prot}, baseCD=120}, -- Ardent Defender\n    {spellID=86659, specs={Paladin.Prot}, baseCD=300}, -- Guardian of the Ancient Kings\n    {spellID=184662, specs={Paladin.Ret}, baseCD=120}, -- Shield of Vengeance\n    {spellID=205191, specs={Paladin.Ret}, baseCD=60, reqTalents={53}}, -- Eye for an Eye\n    {spellID=19236, specs={Priest.Disc, Priest.Holy}, baseCD=90}, -- Desperate Prayer\n    {spellID=47585, specs={Priest.Shadow}, baseCD=120}, -- Dispersion\n    {spellID=5277, specs={Rogue.Sin, Rogue.Sub}, baseCD=120, version=2}, -- Evasion\n    {spellID=199754, specs={Rogue.Outlaw}, baseCD=120, version=2}, -- Riposte\n    {spellID=108271, class=Shaman, baseCD=90}, -- Astral Shift\n    {spellID=104773, class=Warlock, baseCD=180}, -- Unending Resolve\n    {spellID=118038, specs={Warrior.Arms}, baseCD=180}, -- Die by the Sword\n    {spellID=184364, specs={Warrior.Fury}, baseCD=120}, -- Enraged Regeneration\n    {spellID=12975, specs={Warrior.Prot}, baseCD=180, modTalents={[43]=StaticMod(\"sub\", 60)}}, -- Last Stand\n    {spellID=871, specs={Warrior.Prot}, baseCD=240}, -- Shield Wall\n}\n\nZT.typeToTrackedSpells[\"IMMUNITY\"] = {\n    {spellID=196555, specs={DH.Havoc}, baseCD=120, reqTalents={43}}, -- Netherwalk\n    {spellID=186265, class=Hunter, baseCD=180, modTalents={[51]=StaticMod(\"mul\", 0.8)}}, -- Aspect of the Turtle\n    {spellID=45438, specs={Mage.Arcane,Mage.Fire}, baseCD=240}, -- Ice Block\n    {spellID=45438, specs={Mage.Frost}, baseCD=240, mods=CastRemainingMod(235219, 0)}, -- Ice Block\n    {spellID=642, class=Paladin, baseCD=300}, -- Divine Shield\n    {spellID=31224, class=Rogue, baseCD=120}, -- Cloak of Shadows\n}\n\nZT.typeToTrackedSpells[\"DAMAGE\"] = {\n    {spellID=191427, specs={DH.Havoc}, baseCD=240}, -- Metamorphosis\n    {spellID=258925, specs={DH.Havoc}, baseCD=60, reqTalents={33}}, -- Fel Barrage\n    {spellID=206491, specs={DH.Havoc}, baseCD=120, reqTalents={73}}, -- Nemesis\n    {spellID=279302, specs={DK.Frost}, baseCD=180, reqTalents={63}}, -- Frostwyrm's Fury\n    {spellID=152279, specs={DK.Frost}, baseCD=120, reqTalents={73}}, -- Breath of Sindragosaa\n    {spellID=42650, specs={DK.Unholy}, baseCD=480}, -- Army of the Dead\n    {spellID=49206, specs={DK.Unholy}, baseCD=180, reqTalents={73}}, -- Summon Gargoyle\n    {spellID=207289, specs={DK.Unholy}, baseCD=75, reqTalents={72}}, -- Unholy Frenzy\n    {spellID=194223, specs={Druid.Balance}, baseCD=180, reqTalents={51,52}}, -- Celestial Alignment\n    {spellID=102560, specs={Druid.Balance}, baseCD=180, reqTalents={53}}, -- Incarnation: Chosen of Elune\n    {spellID=106951, specs={Druid.Feral}, baseCD=180, version=3}, -- Berserk\n    {spellID=102543, specs={Druid.Feral}, baseCD=180, reqTalents={53}}, -- Incarnation: King of the Jungle\n    {spellID=19574, specs={Hunter.BM}, baseCD=90}, -- Bestial Wrath\n    {spellID=193530, specs={Hunter.BM}, baseCD=120}, -- Aspect of the Wild\n    {spellID=201430, specs={Hunter.BM}, baseCD=180, reqTalents={63}}, -- Stampede\n    {spellID=288613, specs={Hunter.MM}, baseCD=120, version=3}, -- Trueshot\n    {spellID=266779, specs={Hunter.SV}, baseCD=120}, -- Coordinated Assault\n    {spellID=12042, specs={Mage.Arcane}, baseCD=90}, -- Arcane Power\n    {spellID=190319, specs={Mage.Fire}, baseCD=120}, -- Combustion\n    {spellID=12472, specs={Mage.Frost}, baseCD=180}, -- Icy Veins\n    {spellID=55342, class=Mage, baseCD=120, reqTalents={32}}, -- Mirror Image\n    {spellID=115080, specs={Monk.WW}, baseCD=120}, -- Touch of Death\n    {spellID=123904, specs={Monk.WW}, baseCD=180, reqTalents={63}}, -- Xuen\n    {spellID=137639, specs={Monk.WW}, baseCD=90, reqTalents={71, 72}}, -- Storm, Earth, and Fire\n    {spellID=152173, specs={Monk.WW}, baseCD=90, reqTalents={73}}, -- Serenity\n    {spellID=31884, specs={Paladin.Ret}, baseCD=120, reqTalents={71,73}}, -- Avenging Wrath\n    {spellID=231895, specs={Paladin.Ret}, baseCD=120, reqTalents={72}}, -- Crusade\n    {spellID=280711, specs={Priest.Shadow}, baseCD=60, reqTalents={72}}, -- Dark Ascension\n    {spellID=193223, specs={Priest.Shadow}, baseCD=180, reqTalents={73}}, -- Surrender to Madness\n    {spellID=79140, specs={Rogue.Sin}, baseCD=120}, -- Vendetta\n    {spellID=121471, specs={Rogue.Sub}, baseCD=180}, -- Shadow Blades\n    {spellID=13750, specs={Rogue.Outlaw}, baseCD=180}, -- Adrenaline Rush\n    {spellID=51690, specs={Rogue.Outlaw}, baseCD=120, reqTalents={73}}, -- Killing Spree\n    {spellID=114050, specs={Shaman.Ele}, baseCD=180, reqTalents={73}}, -- Ascendance\n    {spellID=192249, specs={Shaman.Ele}, baseCD=150, reqTalents={42}, version=3}, -- Storm Elemental\n    {spellID=191634, specs={Shaman.Ele}, baseCD=60, reqTalents={72}, version=3}, -- Stormkeeper\n    {spellID=114051, specs={Shaman.Enh}, baseCD=180, reqTalents={73}}, -- Ascendance\n    {spellID=205180, specs={Warlock.Affl}, baseCD=180}, -- Summon Darkglare\n    {spellID=113860, specs={Warlock.Affl}, baseCD=120, reqTalents={73}}, -- Dark Soul: Misery\n    {spellID=265187, specs={Warlock.Demo}, baseCD=90}, -- Summon Demonic Tyrant\n    {spellID=267217, specs={Warlock.Demo}, baseCD=180, reqTalents={73}}, -- Nether Portal\n    {spellID=113858, specs={Warlock.Destro}, baseCD=120, reqTalents={73}}, -- Dark Soul: Instability\n    {spellID=1122, specs={Warlock.Destro}, baseCD=180}, -- Summon Infernal\n    {spellID=227847, specs={Warrior.Arms}, baseCD=90}, -- Bladestorm\n    {spellID=107574, specs={Warrior.Arms}, baseCD=120, reqTalents={62}}, -- Avatar\n    {spellID=1719, specs={Warrior.Fury}, baseCD=90}, -- Recklessness\n    {spellID=46924, specs={Warrior.Fury}, baseCD=60, reqTalents={63}}, -- Bladestorm\n}\n\nZT.typeToTrackedSpells[\"TANK\"] = {\n    {spellID=49028, specs={DK.Blood}, baseCD=120}, -- Dancing Rune Weapon\n    {spellID=194679, specs={DK.Blood}, baseCD=25, reqTalents={43}}, -- Rune Tap\n    {spellID=194844, specs={DK.Blood}, baseCD=60, reqTalents={73}}, -- Bonestorm\n    {spellID=204021, specs={DH.Veng}, baseCD=60}, -- Fiery Brand\n    {spellID=1160, specs={Warrior.Prot}, baseCD=45}, -- Demoralizing Shout\n}\n\nZT.linkedSpellIDs = {\n    [19647]  = {119910, 132409, 115781}, -- Spell Lock\n    [132469] = {61391}, -- Typhoon\n    [191427] = {200166}, -- Metamorphosis\n    [106898] = {77761, 77764}, -- Stampeding Roar\n    [86659] = {212641}, -- Guardian of the Ancient Kings (+Glyph)\n}\n\nZT.specialLinkedSpellIDs = {\n    [86659] = {212641}, -- Guardian of the Ancient Kings (+Glyph)\n}\n\nZT.specialConfigSpellIDs = {\n    [202719] = \"ArcaneTorrent\",\n    [50613]  = \"ArcaneTorrent\",\n    [80483]  = \"ArcaneTorrent\",\n    [28730]  = \"ArcaneTorrent\",\n    [129597] = \"ArcaneTorrent\",\n    [155145] = \"ArcaneTorrent\",\n    [232633] = \"ArcaneTorrent\",\n    [25046]  = \"ArcaneTorrent\",\n    [28730]  = \"ArcaneTorrent\",\n    [69179]  = \"ArcaneTorrent\",\n    [221562] = \"Asphyxiate\",\n    [108194] = \"Asphyxiate\",\n    [5277]   = \"Evasion/Riposte\",\n    [199754] = \"Evasion/Riposte\",\n}\n\n-- Adding custom spells from the user to the table\nlocal spellConfigFuncHeader = \"return function(DK,DH,Druid,Hunter,Mage,Monk,Paladin,Priest,Rogue,Shaman,Warlock,Warrior,StaticMod,DynamicMod,EventDeltaMod,CastDeltaMod,EventRemainingMod,CastRemainingMod,DispelMod)\"\n\nlocal function trim(s) -- From PiL2 20.4\n  return (s:gsub(\"^%s*(.-)%s*$\", \"%1\"))\nend\n\nlocal function addCustomSpell(spellConfig, i)\n    if not spellConfig or type(spellConfig) ~= \"table\" then\n        print(\"[ZT] Custom Spell\", i, \"is not represented as a valid table\")\n        return\n    end\n\n    if type(spellConfig.type) ~= \"string\" then\n        print(\"[ZT] Custom Spell\", i, \"does not have a valid 'type' entry\")\n        return\n    end\n\n    if type(spellConfig.spellID) ~= \"number\" then\n        print(\"[ZT] Custom Spell\", i, \"does not have a valid 'spellID' entry\")\n        return\n    end\n\n    if type(spellConfig.baseCD) ~= \"number\" then\n        print(\"[ZT] Custom Spell\", i, \"does not have a valid 'baseCD' entry\")\n        return\n    end\n\n    spellConfig.version = 10000\n    spellConfig.isCustom = true\n\n    local spells = ZT.typeToTrackedSpells[spellConfig.type]\n    spells[#spells + 1] = spellConfig\nend\n\nfor i = 1,11 do\n    local spellConfig = ZT.config[\"custom\"..i]\n    if spellConfig then\n        spellConfig = trim(spellConfig)\n    end\n\n    if spellConfig and spellConfig ~= \"\" then\n        local spellConfigFuncStr = spellConfigFuncHeader..\" return \"..spellConfig..\" end\"\n        local spellConfigFunc = WeakAuras.LoadFunction(spellConfigFuncStr, \"ZenTracker Custom Spell \"..i)\n        if spellConfigFunc then\n            local spellConfig = spellConfigFunc(DK,DH,Druid,Hunter,Mage,Monk,Paladin,Priest,Rogue,Shaman,Warlock,Warrior,\n                StaticMod,DynamicMod,EventDeltaMod,CastDeltaMod,EventRemainingMod,CastRemainingMod,DispelMod)\n            addCustomSpell(spellConfig, i)\n        end\n    end\nend\n\n-- Building a complete list of tracked spells\nZT.spellIDToInfo = {}\n\nfor type,spells in pairs(ZT.typeToTrackedSpells) do\n    for _,spellInfo in ipairs(spells) do\n        spellInfo.type = type\n\n        -- If no version, assign version=1\n        if not spellInfo.version then\n            spellInfo.version = 1\n        end\n        \n        -- Creating a lookup map from list of valid specs\n        if spellInfo.specs then\n            local specsMap = {}\n            for _,specID in ipairs(spellInfo.specs) do\n                specsMap[specID] = true\n            end\n            spellInfo.specs = specsMap\n        end\n        \n        -- Placing single modifiers inside of a table (or creating an empty table if none)\n        if spellInfo.mods then\n            if spellInfo.mods.type then\n                spellInfo.mods = { spellInfo.mods }\n            end\n        else\n            spellInfo.mods = {}\n        end\n        \n        -- Placing single talent modifiers inside of a table (or creating an empty table if none)\n        if spellInfo.modTalents then\n            for talent,modifiers in pairs(spellInfo.modTalents) do\n                if modifiers.type then\n                    spellInfo.modTalents[talent] = { modifiers }\n                end\n            end\n        else\n            spellInfo.modTalents = {}\n        end\n        \n        local spellID = spellInfo.spellID\n        local allSpellInfo = ZT.spellIDToInfo[spellID]\n        if not allSpellInfo then\n            -- Checking if this spellID is blacklisted or whitelisted\n            local isBlacklisted = ZT.config[\"spell\"..spellID]\n            if isBlacklisted == nil then\n                local configSpellID = ZT.specialConfigSpellIDs[spellID]\n                if configSpellID then\n                    isBlacklisted = ZT.config[\"spell\"..configSpellID]\n                else\n                    isBlacklisted = (ZT.config[\"spellConfigType\"] == 2) -- If not in config, ignore whitelist/blacklist\n                    if not spellInfo.isCustom then\n                        print(\"[ZT] Config not present for spellID\", spellID)\n                    end\n                end\n            end\n            if ZT.config[\"spellConfigType\"] == 2 then\n                isBlacklisted = not isBlacklisted\n            end\n            \n            allSpellInfo = {\n                type = type,\n                variants = { spellInfo },\n                isBlacklisted = isBlacklisted,\n            }\n            ZT.spellIDToInfo[spellID] = allSpellInfo\n        else\n            local variants = allSpellInfo.variants\n            variants[#variants+1] = spellInfo\n        end\n    end\nend\n\n--------------------------------------------------------------------------------\n-- END TRACKED SPELLS\n--------------------------------------------------------------------------------\n\n-- Handling the sending of events to the front-end WAs\nlocal function sendFrontEndTrigger(watchInfo)\n    if watchInfo.isHidden then\n        return\n    end\n    if ZT.DEBUG_EVENTS then\n        print(\"[ZT] Sending ZT_TRIGGER\", watchInfo.spellInfo.type, watchInfo.watchID, watchInfo.duration, watchInfo.expiration)\n    end\n    WeakAuras.ScanEvents(\"ZT_TRIGGER\", watchInfo.spellInfo.type, watchInfo.watchID, watchInfo.duration, watchInfo.expiration)\nend\n\nlocal function sendFrontEndAdd(watchInfo)\n    if watchInfo.isHidden then\n        return\n    end\n    local spellInfo = watchInfo.spellInfo\n    if ZT.DEBUG_EVENTS then\n        print(\"[ZT] Sending ZT_ADD\", spellInfo.type, watchInfo.watchID, watchInfo.member.name, spellInfo.spellID)\n    end\n    WeakAuras.ScanEvents(\"ZT_ADD\", spellInfo.type, watchInfo.watchID, watchInfo.member, spellInfo.spellID)\n    \n    if watchInfo.expiration > GetTime() then\n        sendFrontEndTrigger(watchInfo)\n    end\nend\n\nlocal function sendFrontEndRemove(watchInfo)\n    if watchInfo.isHidden then\n        return\n    end\n    if ZT.DEBUG_EVENTS then\n        print(\"[ZT] Sending ZT_REMOVE\", watchInfo.spellInfo.type, watchInfo.watchID)\n    end\n    WeakAuras.ScanEvents(\"ZT_REMOVE\", watchInfo.spellInfo.type, watchInfo.watchID)\nend\n\n-- Handling combatlog and WeakAura events by invoking specified handler functions\nZT.eventHandlers = {}\n\nfunction ZT:addEventHandler(type, spellID, sourceGUID, handler, data)\n    local types = self.eventHandlers[spellID]\n    if not types then\n        types = {}\n        self.eventHandlers[spellID] = types\n    end\n    \n    local sources = types[type]\n    if not sources then\n        sources = {}\n        types[type] = sources\n    end\n    \n    local handlers = sources[sourceGUID]\n    if not handlers then\n        handlers = {}\n        sources[sourceGUID] = handlers\n    end\n    \n    handlers[handler] = data\nend\n\nfunction ZT:removeEventHandler(type, spellID, sourceGUID, handler)\n    local types = self.eventHandlers[spellID]\n    if types then\n        local sources = types[type]\n        if sources then\n            local handlers = sources[sourceGUID]\n            if handlers then\n                handlers[handler] = nil\n            end\n        end\n    end\nend\n\nfunction ZT:removeAllEventHandlers(sourceGUID)\n    for _,spells in pairs(self.eventHandlers) do\n        for _,sources in pairs(spells) do\n            for GUID,handlers in pairs(sources) do\n                if GUID == sourceGUID then\n                    wipe(handlers)\n                end\n            end\n        end\n    end\nend\n\nlocal function fixSourceGUID(sourceGUID) -- Based on https://wago.io/p/Nnogga\n    local type = strsplit(\"-\",sourceGUID)\n    if type == \"Pet\" then\n        for unit in WA_IterateGroupMembers() do\n            if UnitGUID(unit..\"pet\") == sourceGUID then\n                sourceGUID = UnitGUID(unit)\n                break\n            end\n        end\n    end\n    \n    return sourceGUID\nend\n\nfunction ZT:handleEvent(type, spellID, sourceGUID)\n    local types = self.eventHandlers[spellID]\n    if not types then\n        return\n    end\n    \n    local sources = types[type]\n    if not sources then\n        return\n    end\n    \n    local handlers = sources[sourceGUID]\n    if not handlers then\n        sourceGUID = fixSourceGUID(sourceGUID)\n        handlers = sources[sourceGUID]\n        if not handlers then\n            return\n        end\n    end\n    \n    for handler,data in pairs(handlers) do\n        handler(data)\n    end\nend\n\n-- Managing the set of (spellID,sourceGUID) pairs that are being watched\nZT.nextWatchID = 1\nZT.watching = {}\n\nlocal function WatchInfo_startCooldown(self)\n    self.expiration = GetTime() + self.duration\n    sendFrontEndTrigger(self)\nend\n\nlocal function WatchInfo_updateDelta(self, delta)\n    self.expiration = self.expiration + delta\n    sendFrontEndTrigger(self)\nend\n\nlocal function WatchInfo_updateRemaining(self, remaining)\n    self.expiration = GetTime() + remaining\n    sendFrontEndTrigger(self)\nend\n\nlocal function WatchInfo_update(self, ignoreIfReady, ignoreRateLimit)\n    local startTime, duration, enabled = GetSpellCooldown(self.spellInfo.spellID)\n    if enabled ~= 0 then\n        if startTime ~= 0 then\n            self.duration = duration\n            self.expiration = startTime + duration\n        else\n            self.expiration = GetTime()\n        end\n        \n        if (not ignoreIfReady) or (startTime ~= 0) then\n            sendFrontEndTrigger(self)\n            ZT:sendCDUpdate(self, ignoreRateLimit)\n        end\n    end\nend\n\nlocal function WatchInfo_handleStarted(self)\n    WatchInfo_update(self, false, true)\nend\n\nlocal function WatchInfo_handleChanged(self)\n    WatchInfo_update(self, false, false)\nend\n\nlocal function WatchInfo_handleReady(self)\n    self.expiration = GetTime()\n    sendFrontEndTrigger(self)\n    ZT:sendCDUpdate(self, true)\nend\n\nlocal function WatchInfo_hide(self)\n    sendFrontEndRemove(self)\n    self.isHidden = true\nend\n\nlocal function WatchInfo_unhide(self)\n    self.isHidden = false\n    sendFrontEndAdd(self)\nend\n\nfunction ZT:togglePlayerHandlers(watchInfo, enable)\n    local spellID = watchInfo.spellInfo.spellID\n    local toggleEventHandler = enable and self.addEventHandler or self.removeEventHandler\n    \n    if enable then\n        WeakAuras.WatchSpellCooldown(spellID)\n    end\n    toggleEventHandler(self, \"SPELL_COOLDOWN_STARTED\", spellID, 0, WatchInfo_handleStarted, watchInfo)\n    toggleEventHandler(self, \"SPELL_COOLDOWN_CHANGED\", spellID, 0, WatchInfo_handleChanged, watchInfo)\n    toggleEventHandler(self, \"SPELL_COOLDOWN_READY\", spellID, 0, WatchInfo_handleReady, watchInfo)\n\n    local links = self.specialLinkedSpellIDs[spellID]\n    if links then\n        for _,linkedSpellID in ipairs(links) do\n          if enable then\n              WeakAuras.WatchSpellCooldown(linkedSpellID)\n          end\n          toggleEventHandler(self, \"SPELL_COOLDOWN_STARTED\", linkedSpellID, 0, WatchInfo_handleStarted, watchInfo)\n          toggleEventHandler(self, \"SPELL_COOLDOWN_CHANGED\", linkedSpellID, 0, WatchInfo_handleChanged, watchInfo)\n          toggleEventHandler(self, \"SPELL_COOLDOWN_READY\", linkedSpellID, 0, WatchInfo_handleReady, watchInfo)\n        end\n    end\nend\n\nfunction ZT:toggleCombatLogHandlers(watchInfo, enable, specInfo)\n    local spellInfo = watchInfo.spellInfo\n    local spellID = spellInfo.spellID\n    local member = watchInfo.member\n    local toggleEventHandler = enable and self.addEventHandler or self.removeEventHandler\n    \n    if not spellInfo.ignoreCast then\n        toggleEventHandler(self, \"SPELL_CAST_SUCCESS\", spellID, member.GUID, WatchInfo_startCooldown, watchInfo)\n        \n        local links = self.linkedSpellIDs[spellID]\n        if links then\n            for _,linkedSpellID in ipairs(links) do\n                toggleEventHandler(self, \"SPELL_CAST_SUCCESS\", linkedSpellID, member.GUID, WatchInfo_startCooldown, watchInfo)\n            end\n        end\n    end\n    \n    for _,modifier in pairs(spellInfo.mods) do\n        if modifier.type == \"Dynamic\" then\n            for _,handlerInfo in ipairs(modifier.handlers) do\n                toggleEventHandler(self, handlerInfo.type, handlerInfo.spellID, member.GUID, handlerInfo.handler, watchInfo)\n            end\n        end\n    end\n    \n    for talent, modifiers in pairs(spellInfo.modTalents) do\n        if specInfo.talentsMap[talent] then\n            for _, modifier in pairs(modifiers) do\n                if modifier.type == \"Dynamic\" then\n                    for _,handlerInfo in ipairs(modifier.handlers) do\n                        toggleEventHandler(self, handlerInfo.type, handlerInfo.spellID, member.GUID, handlerInfo.handler, watchInfo)\n                    end\n                end\n            end\n        end\n    end\nend\n\nfunction ZT:watch(spellInfo, member, specInfo, isHidden)\n    specInfo = specInfo or member.specInfo\n    \n    local spellID = spellInfo.spellID\n    local spells = self.watching[spellID]\n    if not spells then\n        spells = {}\n        self.watching[spellID] = spells\n    end\n    \n    local watchInfo = spells[member.GUID]\n    local isNew = (watchInfo == nil)\n    \n    if not watchInfo then\n        watchInfo = {\n            watchID = self.nextWatchID,\n            member = member,\n            spellInfo = spellInfo,\n            duration = member:computeCooldown(spellInfo, specInfo),\n            expiration = GetTime(),\n            isHidden = isHidden,\n            startCooldown = WatchInfo_startCooldown,\n            update = WatchInfo_update,\n            updateDelta = WatchInfo_updateDelta,\n            updateRemaining = WatchInfo_updateRemaining,\n        }\n        self.nextWatchID = self.nextWatchID + 1\n        \n        spells[member.GUID] = watchInfo\n        member.watching[spellID] = watchInfo\n        \n        sendFrontEndAdd(watchInfo)\n    else\n        watchInfo.spellInfo = spellInfo\n        watchInfo.duration = member:computeCooldown(spellInfo, specInfo)\n        \n        if watchInfo.isHidden and not isHidden then\n            WatchInfo_unhide(watchInfo)\n        end\n    end\n    \n    if member.isPlayer then\n        watchInfo:update(true)\n    end\n    \n    if member.isPlayer then\n        if isNew then\n            self:togglePlayerHandlers(watchInfo, true)\n        end\n    elseif member.tracking == \"CombatLog\" or (member.tracking == \"Sharing\" and member.spellsVersion < spellInfo.version) then\n        if isNew then\n            self:toggleCombatLogHandlers(watchInfo, true, specInfo)\n        else\n            self:toggleCombatLogHandlers(watchInfo, false, member.specInfo)\n            self:toggleCombatLogHandlers(watchInfo, true, specInfo)\n        end\n    end\nend\n\nfunction ZT:unwatch(spellInfo, member, specInfo, keepHidden)\n    local spellID = spellInfo.spellID\n    local sources = self.watching[spellID]\n    if not sources then\n        return\n    end\n    \n    local watchInfo = sources[member.GUID]\n    if watchInfo then\n        if member.isPlayer then\n            if keepHidden then\n                WatchInfo_hide(watchInfo)\n                return\n            end\n            \n            self:togglePlayerHandlers(watchInfo, false)\n        elseif member.tracking == \"CombatLog\"  or (member.tracking == \"Sharing\" and member.spellsVersion < spellInfo.version) then\n            self:toggleCombatLogHandlers(watchInfo, false, specInfo or member.specInfo)\n        end\n        \n        self.watching[spellInfo.spellID][member.GUID] = nil\n        member.watching[spellID] = nil\n        \n        sendFrontEndRemove(watchInfo)\n    end\nend\n\n-- Tracking types registered by front-end WAs\nZT.registration = {}\n\nfunction ZT:isTypeRegistered(type)\n    return self.registration[type] and (next(self.registration[type], nil) ~= nil)\nend\n\nfunction ZT:rebroadcast(type)\n    for _,sources in pairs(self.watching) do\n        for _,watchInfo in pairs(sources) do\n            if (watchInfo.spellInfo.type == type) then\n                sendFrontEndAdd(watchInfo)\n            end\n        end\n    end\nend\n\nfunction ZT:registerFrontEnd(type, frontendID)\n    local frontends = self.registration[type]\n    if not frontends then\n        frontends = {}\n        self.registration[type] = frontends\n    end\n    \n    if not frontends[frontendID] then\n        local typeWasRegistered = self:isTypeRegistered(type)\n        self.registration[type][frontendID] = true\n        \n        if self.DEBUG_EVENTS then\n            print(\"[ZT] Received ZT_REGISTER\", type, frontendID, \" -> New\", typeWasRegistered and \"(Type Registered)\" or \"(Type Unregistered)\")\n        end\n        \n        if typeWasRegistered then\n            self:rebroadcast(type)\n        else\n            for _,member in pairs(self.members) do\n                if (not member.isPlayer) or (self.config[\"my\"..type]) then\n                    for _,allSpellInfo in pairs(self.spellIDToInfo) do\n                        if (not allSpellInfo.isBlacklisted) and (type == allSpellInfo.type) then\n                            for _,spellInfo in pairs(allSpellInfo.variants) do\n                                if member:checkSpellRequirements(spellInfo) then\n                                    self:watch(spellInfo, member, member.specInfo, member.isHidden)\n                                    break\n                                end\n                            end\n                        end\n                    end\n                end\n            end\n        end\n    else\n        if self.DEBUG_EVENTS then\n            print(\"[ZT] Received ZT_REGISTER\", type, frontendID, \" -> Existing\")\n        end\n        \n        self:rebroadcast(type)\n    end\nend\n\nfunction ZT:unregisterFrontEnd(type, frontendID)\n    self.registration[type][frontendID] = nil\n    \n    if not self:isTypeRegistered(type) then\n        if self.DEBUG_EVENTS then\n            print(\"[ZT] Received ZT_UNREGISTER\", type)\n        end\n        \n        for _,member in pairs(self.members) do\n            for spellID,watchInfo in pairs(member.watching) do\n                local spellInfo = watchInfo.spellInfo\n                if spellInfo.type == type then\n                    self:unwatch(spellInfo, member, member.specInfo, true)\n                end\n            end\n        end\n    end\nend\n\n-- Utility functions for operating over all spells available for a group member\nZT.members = {}\nZT.inEncounter = false\n\nlocal function Member_checkSpellRequirements(self, spellInfo, specInfo)\n    if not specInfo then\n        specInfo = self.specInfo\n    end\n    \n    if spellInfo.race and spellInfo.race ~= self.race then\n        return false\n    end\n    if spellInfo.class and spellInfo.class.ID ~= self.classID then\n        return false\n    end\n    if spellInfo.specs and (not specInfo.specID or not spellInfo.specs[specInfo.specID]) then\n        return false\n    end\n    \n    if spellInfo.reqTalents then\n        local talented = false\n        for _,t in ipairs(spellInfo.reqTalents) do\n            if specInfo.talentsMap[t] then\n                talented = true\n                break\n            end\n        end\n        \n        if not talented then\n            return false\n        end\n    end\n    \n    return true\nend\n\nlocal function Member_computeCooldown(self, spellInfo, specInfo)\n    if not specInfo then\n        specInfo = self.specInfo\n    end\n    \n    local cooldown = spellInfo.baseCD\n    if spellInfo.modTalents then\n        for talent,modifiers in pairs(spellInfo.modTalents) do\n            if specInfo.talentsMap[talent] then\n                for _,modifier in ipairs(modifiers) do\n                    if modifier.type == \"Static\" then\n                        if modifier.sub then\n                            cooldown = cooldown - modifier.sub\n                        elseif modifier.mul then\n                            cooldown = cooldown * modifier.mul\n                        end\n                    end\n                end\n            end\n        end\n    end\n    \n    return cooldown\nend\n\nlocal function Member_hide(self)\n    if not self.isHidden and not self.isPlayer then\n        self.isHidden = true\n        for _,watchInfo in pairs(self.watching) do\n            WatchInfo_hide(watchInfo)\n        end\n    end\nend\n\nlocal function Member_unhide(self)\n    if self.isHidden and not self.isPlayer then\n        self.isHidden = false\n        for _,watchInfo in pairs(self.watching) do\n            WatchInfo_unhide(watchInfo)\n        end\n    end\nend\n\nfunction ZT:addOrUpdateMember(memberInfo)\n    local member = self.members[memberInfo.GUID]\n    if not member then\n        member = memberInfo\n        member.watching = {}\n        member.tracking = member.tracking and member.tracking or \"CombatLog\"\n        member.isPlayer = (member.GUID == UnitGUID(\"player\"))\n        member.isHidden = (not member.isPlayer and self.inEncounter)\n        member.isReady = false\n        member.checkSpellRequirements = Member_checkSpellRequirements\n        member.computeCooldown = Member_computeCooldown\n        self.members[memberInfo.GUID] = member\n    end\n    \n    -- Gathering all necessary information about the member (if we don't have it already)\n    local justBecameReady = false\n    if not member.isReady then\n        local _,className,_,race,_,name = GetPlayerInfoByGUID(member.GUID)\n        member.name = name and gsub(name, \"%-[^|]+\", \"\") or nil\n        if self.DEBUG_TRACKING and (member.tracking == \"Sharing\") and member.name then\n            print(\"[ZT]\", member.name, \"is using ZenTracker ( SpellsVersion =\", member.spellsVersion, \")\")\n        end\n        member.class = className and AllClasses[className] or nil\n        member.classID = className and AllClasses[className].ID or nil\n        member.classColor = className and RAID_CLASS_COLORS[className] or nil\n        member.race = race\n        \n        member.isReady = (member.name ~= nil) and (member.classID ~= nil) and (member.race ~= nil)\n        justBecameReady = member.isReady\n    end\n    \n    local specInfo = memberInfo.specInfo\n    \n    -- Update if the member is now ready, or if they swapped specs/talents\n    local needsUpdate = justBecameReady\n    if specInfo.specID and specInfo.talents then\n        if (specInfo.specID ~= member.specInfo.specID) or (specInfo.talents ~= member.specInfo.talents) then\n            needsUpdate = true\n        end\n    end\n    \n    if needsUpdate then\n        -- If we are updating information about the player, send a handshake now\n        if member.isPlayer then\n            self:sendHandshake(specInfo)\n        end\n        \n        -- Watching/Unwatching relevant spell cooldowns\n        for spellID, allSpellInfo in pairs(self.spellIDToInfo) do\n            local isRegistered = self:isTypeRegistered(allSpellInfo.type)\n            local isBlacklisted = allSpellInfo.isBlacklisted\n            local hasSpell = false\n            \n            if member.isPlayer then -- If player, watch all possible spells (but some may be hidden)\n                for _,spellInfo in ipairs(allSpellInfo.variants) do\n                    hasSpell = member:checkSpellRequirements(spellInfo, specInfo)\n                    if hasSpell then\n                        local isHidden = (not isRegistered) or (not self.config[\"my\"..allSpellInfo.type]) or isBlacklisted\n                        self:watch(spellInfo, member, specInfo, isHidden)\n                        break\n                    end\n                end\n            elseif isRegistered and (not isBlacklisted) then -- Otherwise if group member, only watch relevant spells\n                for _,spellInfo in ipairs(allSpellInfo.variants) do\n                    hasSpell = member:checkSpellRequirements(spellInfo, specInfo)\n                    if hasSpell then\n                        self:watch(spellInfo, member, specInfo, member.isHidden)\n                        break\n                    end\n                end\n            end\n            \n            local prevWatchInfo = member.watching[spellID]\n            if not hasSpell and prevWatchInfo then\n                self:unwatch(prevWatchInfo.spellInfo, member)\n            end\n        end\n        \n        member.specInfo = specInfo\n    end\n    \n    -- If tracking changed from \"CombatLog\" to \"Sharing\", remove unnecessary event handlers and send a handshake/updates\n    if (member.tracking == \"CombatLog\") and (memberInfo.tracking == \"Sharing\") then\n        member.tracking = \"Sharing\"\n        member.spellsVersion = memberInfo.spellsVersion\n\n        if self.DEBUG_TRACKING and member.name then\n            print(\"[ZT]\", member.name, \"is using ZenTracker ( SpellsVersion =\", member.spellsVersion, \")\")\n        end\n        \n        for _,watchInfo in pairs(member.watching) do\n            if watchInfo.spellInfo.version <= member.spellsVersion then\n                self:toggleCombatLogHandlers(watchInfo, false, member.specInfo)\n            end\n        end\n\n        self:sendHandshake()\n        local time = GetTime()\n        for _,watchInfo in pairs(self.members[UnitGUID(\"player\")].watching) do\n            if watchInfo.expiration > time then\n                self:sendCDUpdate(watchInfo)\n            end\n        end\n    end\nend\n\nfunction ZT:resetEncounterCDs()\n    for _,member in pairs(self.members) do\n        if not member.isPlayer and member.tracking ~= \"Sharing\" then\n            for _,watchInfo in pairs(member.watching) do\n                if watchInfo.duration >= 180 then\n                    WatchInfo_updateRemaining(watchInfo, 0)\n                end\n            end\n        end\n    end\nend\n\nfunction ZT:startEncounter(event)\n    -- Note: This shouldn't happen, but in case it does...\n    if self.inEncounter then\n        for _,member in pairs(self.members) do\n            Member_unhide(member)\n        end\n    end\n    \n    self.inEncounter = true\n    local _,_,_,instanceID = UnitPosition(\"player\")\n    for _,member in pairs(self.members) do\n        local _,_,_,mInstanceID = UnitPosition(self.inspectLib:GuidToUnit(member.GUID))\n        if mInstanceID ~= instanceID then\n            Member_hide(member)\n        end\n    end\n    \n    if event == \"CHALLENGE_MODE_START\" then\n        self:resetEncounterCDs()\n    end\nend\n\nfunction ZT:endEncounter(event)\n    if self.inEncounter then\n        self.inEncounter = false\n        for _,member in pairs(self.members) do\n            Member_unhide(member)\n        end\n    end\n    \n    if event == \"ENCOUNTER_END\" then\n        self:resetEncounterCDs()\n    end\nend\n\n-- Message Format = <Protocol Version (%d)>:<Message Type (%s)>:<Member GUID (%s)>...\n--   Type = \"H\" (Handshake)\n--     ...:<Spec ID (%d)>:<Talents (%s)>:<IsInitial? (%d) [2]>:<Spells Version (%d) [2]>\n--   Type = \"U\" (CD Update)\n--     ...:<Spell ID (%d)>:<Duration (%f)>:<Remaining (%f)>\n\nZT.protocolVersion = 2\n\nZT.timeBetweenHandshakes = 5 --seconds\nZT.timeOfLastHandshake = 0\nZT.queuedHandshake = false\n\nZT.timeBetweenCDUpdates = 5 --seconds (per spellID)\nZT.timeOfLastCDUpdate = {}\nZT.queuedCDUpdates = {}\n\nlocal function sendMessage(message)\n    if not IsInGroup() and not IsInRaid() then\n        return\n    end\n    \n    if ZT.DEBUG_MESSAGES then\n        print(\"[ZT] Sending Message '\"..message..\"'\")\n    end\n    \n    local channel = IsInGroup(2) and \"INSTANCE_CHAT\" or \"RAID\"\n    C_ChatInfo_SendAddonMessage(\"ZenTracker\", message, channel)\nend\n\nZT.hasSentHandshake = false\nfunction ZT:sendHandshake(specInfo)\n    local time = GetTime()\n    local timeSinceLastHandshake = (time - self.timeOfLastHandshake)\n    if timeSinceLastHandshake < self.timeBetweenHandshakes then\n        if not self.queuedHandshake then\n            self.queuedHandshake = true\n            C_Timer.After(self.timeBetweenHandshakes - timeSinceLastHandshake, function() self:sendHandshake() end)\n        end\n        return\n    end\n    \n    local GUID = UnitGUID(\"player\")\n    specInfo = specInfo or self.members[GUID].specInfo\n    local specID = specInfo.specID or 0\n    local talents = specInfo.talents or \"\"\n    local isInitial = self.hasSentHandshake and 0 or 1\n    local message = string.format(\"%d:H:%s:%d:%s:%d:%d\", self.protocolVersion, GUID, specID, talents, isInitial, self.spellsVersion)\n    sendMessage(message)\n    \n    self.timeOfLastHandshake = time\n    self.queuedHandshake = false\n    self.hasSentHandshake = true\nend\n\nfunction ZT:sendCDUpdate(watchInfo, ignoreRateLimit, wasQueued)\n    local spellID = watchInfo.spellInfo.spellID\n    local time = GetTime()\n    local remaining = watchInfo.expiration - time\n    if remaining < 0 then\n        remaining = 0\n    end\n    \n    if not ignoreRateLimit then\n        local isQueued = self.queuedCDUpdates[spellID]\n        if wasQueued then\n            if not isQueued then\n                return -- Ignore since an update occured while this update was queued\n            end\n        else\n            if isQueued then\n                return -- Ignore since an update is already queued\n            else\n                local timeOfLastCDUpdate = self.timeOfLastCDUpdate[spellID]\n                if timeOfLastCDUpdate then\n                    local timeSinceLastCDUpdate = (time - self.timeOfLastCDUpdate[spellID])\n                    if timeSinceLastCDUpdate < self.timeBetweenCDUpdates then\n                        self.queuedCDUpdates[spellID] = true\n                        C_Timer.After(self.timeBetweenCDUpdates - timeSinceLastCDUpdate, function() self:sendCDUpdate(watchInfo, false, true) end)\n                        return -- Ignore since an update has now been queued\n                    end\n                end\n            end\n        end\n    end\n    \n    local GUID = watchInfo.member.GUID\n    local duration = watchInfo.duration\n    local message = string.format(\"%d:U:%s:%d:%0.2f:%0.2f\", self.protocolVersion, GUID, spellID, duration, remaining)\n    sendMessage(message)\n    \n    self.timeOfLastCDUpdate[spellID] = time\n    self.queuedCDUpdates[spellID] = false\nend\n\nfunction ZT:handleHandshake(mGUID, specID, talents, isInitial, spellsVersion)\n    specID = tonumber(specID)\n    if specID == 0 then\n        specID = nil\n    end\n    \n    local talentsMap = {}\n    if talents ~= \"\" then\n        for index in talents:gmatch(\"%d%d\") do\n            index = tonumber(index)\n            talentsMap[index] = true\n        end\n    else\n        talents = nil\n    end\n\n    -- Protocol V2: Assume false if not present\n    if isInitial == \"1\" then\n        isInitial = true\n    else\n        isInitial = false\n    end\n\n    -- Protocol V2: Assume spellsVersion is 1 if not present\n    if spellsVersion then\n        spellsVersion = tonumber(spellsVersion)\n        if not spellsVersion then\n            spellsVersion = 1\n        end\n    else\n        spellsVersion = 1\n    end\n    \n    local memberInfo = {\n        GUID = mGUID,\n        specInfo = {\n            specID = specID,\n            talents = talents,\n            talentsMap = talentsMap,\n        },\n        tracking = \"Sharing\",\n        spellsVersion = spellsVersion,\n    }\n    \n    self:addOrUpdateMember(memberInfo)\n    if isInitial then\n        self:sendHandshake()\n    end\nend\n\nfunction ZT:handleCDUpdate(mGUID, spellID, duration, remaining)\n    local member = self.members[mGUID]\n    if not member or not member.isReady then\n        return\n    end\n    \n    spellID = tonumber(spellID)\n    duration = tonumber(duration)\n    remaining = tonumber(remaining)\n    if not spellID or not duration or not remaining then\n        return\n    end\n    \n    local sources = self.watching[spellID]\n    if sources then\n        local watchInfo = sources[member.GUID]\n        if not watchInfo then\n            return\n        end\n        \n        watchInfo.duration = duration\n        watchInfo:updateRemaining(remaining)\n    end\nend\n\nfunction ZT:handleMessage(message)\n    local protocolVersion, type, mGUID, arg1, arg2, arg3, arg4, arg5 = strsplit(\":\", message)\n    protocolVersion = tonumber(protocolVersion)\n    \n    -- Ignore any messages sent by the player\n    if mGUID == UnitGUID(\"player\") then\n        return\n    end\n    \n    if ZT.DEBUG_MESSAGES then\n        print(\"[ZT] Received Message '\"..message..\"'\")\n    end\n    \n    if type == \"H\" then     -- Handshake\n        self:handleHandshake(mGUID, arg1, arg2, arg3, arg4, arg5)\n    elseif type == \"U\" then -- CD Update\n        self:handleCDUpdate(mGUID, arg1, arg2, arg3, arg4, arg5)\n    else\n        return\n    end\nend\n\nif not C_ChatInfo.RegisterAddonMessagePrefix(\"ZenTracker\") then\n    print(\"[ZT] Error: Could not register addon message prefix. Defaulting to local-only cooldown tracking.\")\nend\n\n-- Callback functions for libGroupInspecT for updating/removing members\nfunction ZT:libInspectUpdate(event, GUID, unit, info)\n    local specID = info.global_spec_id\n    if specID == 0 then\n        specID = nil\n    end\n    \n    local talents = nil\n    local talentsMap = {}\n    if info.talents then\n        for _,talentInfo in pairs(info.talents) do\n            local index = (talentInfo.tier * 10) + talentInfo.column\n            if not talents then\n                talents = \"\"..index\n            else\n                talents = talents..\",\"..index\n            end\n            \n            talentsMap[index] = true\n        end\n    end\n    \n    local memberInfo = {\n        GUID = GUID,\n        specInfo = {\n            specID = specID,\n            talents = talents,\n            talentsMap = talentsMap,\n        },\n    }\n    \n    self:addOrUpdateMember(memberInfo)\nend\n\nfunction ZT:libInspectRemove(event, GUID)\n    local member = self.members[GUID]\n    if not member then\n        return\n    end\n    \n    for _,watchInfo in pairs(member.watching) do\n        self:unwatch(watchInfo.spellInfo, member)\n    end\n    self.members[GUID] = nil\nend\n\nZT.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)\n\nif ZT.inspectLib then\n    WeakAurasSaved[\"ZenTracker_AuraEnv\"] = nil -- Flushing out past garbage :)\n    \n    if _G[\"ZenTracker_AuraEnv\"] then\n        ZT.inspectLib.UnregisterAllCallbacks(_G[\"ZenTracker_AuraEnv\"])\n    end\n    _G[\"ZenTracker_AuraEnv\"] = ZT\n    \n    ZT.inspectLib.RegisterCallback(ZT, \"GroupInSpecT_Update\", \"libInspectUpdate\")\n    ZT.inspectLib.RegisterCallback(ZT, \"GroupInSpecT_Remove\", \"libInspectRemove\")\n    for unit in WA_IterateGroupMembers() do\n        local GUID = UnitGUID(unit)\n        if GUID then\n            local info = ZT.inspectLib:GetCachedInfo(GUID)\n            if info then\n                ZT:libInspectUpdate(\"Init\", GUID, unit, info)\n            else\n                ZT.inspectLib:Rescan(GUID)\n            end\n        end\n    end\nelse\n    print(\"[ZT] Error: LibGroupInSpecT-1.1 not found\")\nend\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["custom"] = "function(event,...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local _, eventType, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID = ...\n        aura_env:handleEvent(eventType, spellID, sourceGUID)\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["event"] = "Health",
						["custom_type"] = "event",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["events"] = "SPELL_COOLDOWN_STARTED, SPELL_COOLDOWN_CHANGED, SPELL_COOLDOWN_READY",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["custom"] = "function (event, id)\n    aura_env:handleEvent(event, id, 0)\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
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
						["events"] = "ENCOUNTER_START,ENCOUNTER_END, CHALLENGE_MODE_START,CHALLENGE_MODE_COMPLETED,PLAYER_ENTERING_WORLD",
						["custom_type"] = "event",
						["custom"] = "function(event)\n    if event == \"ENCOUNTER_START\" or event == \"ENCOUNTER_END\" then\n        local _,instanceType = IsInInstance()\n        if instanceType ~= \"raid\" then\n            return\n        end\n    end\n    \n    if event == \"ENCOUNTER_START\" or event == \"CHALLENGE_MODE_START\" then\n        aura_env:startEncounter(event)\n    elseif event == \"ENCOUNTER_END\" or event == \"CHALLENGE_MODE_COMPLETED\" or event == \"PLAYER_ENTERING_WORLD\" then\n        aura_env:endEncounter(event)\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZT_REGISTER",
						["unevent"] = "auto",
						["custom"] = "function (event, type, frontendID)\n    aura_env:registerFrontEnd(type, frontendID)\nend",
						["use_unit"] = true,
						["custom_type"] = "event",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function (event, type, frontendID)\n    aura_env:unregisterFrontEnd(type, frontendID)\nend",
						["custom_type"] = "event",
						["events"] = "ZT_UNREGISTER",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["events"] = "CHAT_MSG_ADDON",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(event,prefix,message,type,sender)\n    if prefix == \"ZenTracker\" then\n        aura_env:handleMessage(message)\n    end\nend",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [6]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["events"] = "GROUP_JOINED",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["custom"] = "function()\n    aura_env:sendHandshake()\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [7]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["font"] = "Friz Quadrata TT",
			["version"] = 49,
			["height"] = 12.000001907349,
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
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
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
				["spec"] = {
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
				["affixes"] = {
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
			["regionType"] = "text",
			["uid"] = "ejYTBRnd5n5",
			["authorOptions"] = {
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = "Self-Tracked Types",
					["width"] = 2,
				}, -- [1]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "Configures whether to track your own spell cooldowns on a per-type basis",
					["width"] = 2,
				}, -- [2]
				{
					["type"] = "description",
					["fontSize"] = "small",
					["text"] = "(Note: This option is deprecated and will be removed in the future. This option should instead be provided by the front-end WAs.)",
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [4]
				{
					["type"] = "toggle",
					["key"] = "myDAMAGE",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "DAMAGE",
					["width"] = 0.65,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "myDEFMDISPEL",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "DEFMDISPEL",
					["width"] = 0.65,
				}, -- [6]
				{
					["type"] = "toggle",
					["key"] = "myDISPEL",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "DISPEL",
					["width"] = 0.65,
				}, -- [7]
				{
					["type"] = "toggle",
					["key"] = "myEXTERNAL",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "EXTERNAL",
					["width"] = 0.65,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "myHARDCC",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "HARDCC",
					["width"] = 0.65,
				}, -- [9]
				{
					["type"] = "toggle",
					["key"] = "myHEALING",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "HEALING",
					["width"] = 0.65,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "myIMMUNITY",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "IMMUNITY",
					["width"] = 0.65,
				}, -- [11]
				{
					["type"] = "toggle",
					["key"] = "myINTERRUPT",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "INTERRUPT",
					["width"] = 0.65,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "myPERSONAL",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "PERSONAL",
					["width"] = 0.65,
				}, -- [13]
				{
					["type"] = "toggle",
					["key"] = "mySOFTCC",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "SOFTCC",
					["width"] = 0.65,
				}, -- [14]
				{
					["type"] = "toggle",
					["key"] = "mySTHARDCC",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "STHARDCC",
					["width"] = 0.65,
				}, -- [15]
				{
					["type"] = "toggle",
					["key"] = "mySTSOFTCC",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "STSOFTCC",
					["width"] = 0.65,
				}, -- [16]
				{
					["type"] = "toggle",
					["key"] = "myTANK",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "TANK",
					["width"] = 0.65,
				}, -- [17]
				{
					["type"] = "toggle",
					["key"] = "myUTILITY",
					["default"] = true,
					["useDesc"] = false,
					["name"] = "UTILITY",
					["width"] = 0.65,
				}, -- [18]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [19]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [20]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = "Spell Configuration",
					["width"] = 2,
				}, -- [21]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "Configures the spell list to blacklist (or whitelist) certain spells",
					["width"] = 2,
				}, -- [22]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [23]
				{
					["type"] = "select",
					["values"] = {
						"Blacklist (Exclude Selected)", -- [1]
						"Whitelist (Only Selected)", -- [2]
					},
					["default"] = 1,
					["key"] = "spellConfigType",
					["useDesc"] = false,
					["name"] = "Configuration Type",
					["width"] = 1,
				}, -- [24]
				{
					["type"] = "space",
					["variableWidth"] = false,
					["width"] = 1,
				}, -- [25]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [26]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "DAMAGE",
					["width"] = 2,
				}, -- [27]
				{
					["type"] = "toggle",
					["key"] = "spell258925",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T2065580:0|t |cFFA330C9Fel Barrage|r",
					["width"] = 0.65,
				}, -- [28]
				{
					["type"] = "toggle",
					["key"] = "spell191427",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1247262:0|t |cFFA330C9Metamorphosis|r",
					["width"] = 0.65,
				}, -- [29]
				{
					["type"] = "toggle",
					["key"] = "spell206491",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236299:0|t |cFFA330C9Nemesis|r",
					["width"] = 0.65,
				}, -- [30]
				{
					["type"] = "toggle",
					["key"] = "spell42650",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237511:0|t |cFFC41F3BArmy of the Dead|r",
					["width"] = 0.65,
				}, -- [31]
				{
					["type"] = "toggle",
					["key"] = "spell152279",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1029007:0|t |cFFC41F3BBreath of Sindragosaa|r",
					["width"] = 0.65,
				}, -- [32]
				{
					["type"] = "toggle",
					["key"] = "spell279302",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T341980:0|t |cFFC41F3BFrostwyrm's Fury|r",
					["width"] = 0.65,
				}, -- [33]
				{
					["type"] = "toggle",
					["key"] = "spell49206",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T458967:0|t |cFFC41F3BSummon Gargoyle|r",
					["width"] = 0.65,
				}, -- [34]
				{
					["type"] = "toggle",
					["key"] = "spell207289",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136224:0|t |cFFC41F3BUnholy Frenzy|r",
					["width"] = 0.65,
				}, -- [35]
				{
					["type"] = "toggle",
					["key"] = "spell106951",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236149:0|t |cFFFF7D0ABerserk|r",
					["width"] = 0.65,
				}, -- [36]
				{
					["type"] = "toggle",
					["key"] = "spell194223",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136060:0|t |cFFFF7D0ACelestial Alignment|r",
					["width"] = 0.65,
				}, -- [37]
				{
					["type"] = "toggle",
					["key"] = "spell102560",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: Chosen of Elune|r",
					["width"] = 0.65,
				}, -- [38]
				{
					["type"] = "toggle",
					["key"] = "spell102543",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T571586:0|t |cFFFF7D0AIncarnation: King of the Jungle|r",
					["width"] = 0.65,
				}, -- [39]
				{
					["type"] = "toggle",
					["key"] = "spell193530",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136074:0|t |cFFABD473Aspect of the Wild|r",
					["width"] = 0.65,
				}, -- [40]
				{
					["type"] = "toggle",
					["key"] = "spell19574",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132127:0|t |cFFABD473Bestial Wrath|r",
					["width"] = 0.65,
				}, -- [41]
				{
					["type"] = "toggle",
					["key"] = "spell266779",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T2065565:0|t |cFFABD473Coordinated Assault|r",
					["width"] = 0.65,
				}, -- [42]
				{
					["type"] = "toggle",
					["key"] = "spell201430",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T461112:0|t |cFFABD473Stampede|r",
					["width"] = 0.65,
				}, -- [43]
				{
					["type"] = "toggle",
					["key"] = "spell288613",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132329:0|t |cFFABD473Trueshot|r",
					["width"] = 0.65,
				}, -- [44]
				{
					["type"] = "toggle",
					["key"] = "spell12042",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136048:0|t |cFF40C7EBArcane Power|r",
					["width"] = 0.65,
				}, -- [45]
				{
					["type"] = "toggle",
					["key"] = "spell190319",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135824:0|t |cFF40C7EBCombustion|r",
					["width"] = 0.65,
				}, -- [46]
				{
					["type"] = "toggle",
					["key"] = "spell12472",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135838:0|t |cFF40C7EBIcy Veins|r",
					["width"] = 0.65,
				}, -- [47]
				{
					["type"] = "toggle",
					["key"] = "spell55342",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135994:0|t |cFF40C7EBMirror Image|r",
					["width"] = 0.65,
				}, -- [48]
				{
					["type"] = "toggle",
					["key"] = "spell152173",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T988197:0|t |cFF00FF96Serenity|r",
					["width"] = 0.65,
				}, -- [49]
				{
					["type"] = "toggle",
					["key"] = "spell137639",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136038:0|t |cFF00FF96Storm, Earth, and Fire|r",
					["width"] = 0.65,
				}, -- [50]
				{
					["type"] = "toggle",
					["key"] = "spell115080",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T606552:0|t |cFF00FF96Touch of Death|r",
					["width"] = 0.65,
				}, -- [51]
				{
					["type"] = "toggle",
					["key"] = "spell123904",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T620832:0|t |cFF00FF96Xuen|r",
					["width"] = 0.65,
				}, -- [52]
				{
					["type"] = "toggle",
					["key"] = "spell31884",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135875:0|t |cFFF58CBAAvenging Wrath|r",
					["width"] = 0.65,
				}, -- [53]
				{
					["type"] = "toggle",
					["key"] = "spell231895",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236262:0|t |cFFF58CBACrusade|r",
					["width"] = 0.65,
				}, -- [54]
				{
					["type"] = "toggle",
					["key"] = "spell280711",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1711336:0|t |cFFFFFFFFDark Ascension|r",
					["width"] = 0.65,
				}, -- [55]
				{
					["type"] = "toggle",
					["key"] = "spell193223",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T254090:0|t |cFFFFFFFFSurrender to Madness|r",
					["width"] = 0.65,
				}, -- [56]
				{
					["type"] = "toggle",
					["key"] = "spell13750",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136206:0|t |cFFFFF569Adrenaline Rush|r",
					["width"] = 0.65,
				}, -- [57]
				{
					["type"] = "toggle",
					["key"] = "spell51690",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236277:0|t |cFFFFF569Killing Spree|r",
					["width"] = 0.65,
				}, -- [58]
				{
					["type"] = "toggle",
					["key"] = "spell121471",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T376022:0|t |cFFFFF569Shadow Blades|r",
					["width"] = 0.65,
				}, -- [59]
				{
					["type"] = "toggle",
					["key"] = "spell79140",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T458726:0|t |cFFFFF569Vendetta|r",
					["width"] = 0.65,
				}, -- [60]
				{
					["type"] = "toggle",
					["key"] = "spell114050",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
					["width"] = 0.65,
				}, -- [61]
				{
					["type"] = "toggle",
					["key"] = "spell114051",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
					["width"] = 0.65,
				}, -- [62]
				{
					["type"] = "toggle",
					["key"] = "spell192249",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T2065626:0|t |cFF0070DEStorm Elemental|r",
					["width"] = 0.65,
				}, -- [63]
				{
					["type"] = "toggle",
					["key"] = "spell191634",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T839977:0|t |cFF0070DEStormkeeper|r",
					["width"] = 0.65,
				}, -- [64]
				{
					["type"] = "toggle",
					["key"] = "spell113858",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T463286:0|t |cFF8787EDDark Soul: Instability|r",
					["width"] = 0.65,
				}, -- [65]
				{
					["type"] = "toggle",
					["key"] = "spell113860",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T463286:0|t |cFF8787EDDark Soul: Misery|r",
					["width"] = 0.65,
				}, -- [66]
				{
					["type"] = "toggle",
					["key"] = "spell267217",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T2065615:0|t |cFF8787EDNether Portal|r",
					["width"] = 0.65,
				}, -- [67]
				{
					["type"] = "toggle",
					["key"] = "spell205180",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1416161:0|t |cFF8787EDSummon Darkglare|r",
					["width"] = 0.65,
				}, -- [68]
				{
					["type"] = "toggle",
					["key"] = "spell265187",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T2065628:0|t |cFF8787EDSummon Demonic Tyrant|r",
					["width"] = 0.65,
				}, -- [69]
				{
					["type"] = "toggle",
					["key"] = "spell1122",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136219:0|t |cFF8787EDSummon Infernal|r",
					["width"] = 0.65,
				}, -- [70]
				{
					["type"] = "toggle",
					["key"] = "spell107574",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T613534:0|t |cFFC79C6EAvatar|r",
					["width"] = 0.65,
				}, -- [71]
				{
					["type"] = "toggle",
					["key"] = "spell227847",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236303:0|t |cFFC79C6EBladestorm|r",
					["width"] = 0.65,
				}, -- [72]
				{
					["type"] = "toggle",
					["key"] = "spell46924",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236303:0|t |cFFC79C6EBladestorm|r",
					["width"] = 0.65,
				}, -- [73]
				{
					["type"] = "toggle",
					["key"] = "spell1719",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T458972:0|t |cFFC79C6ERecklessness|r",
					["width"] = 0.65,
				}, -- [74]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [75]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "DEFMDISPEL",
					["width"] = 2,
				}, -- [76]
				{
					["type"] = "toggle",
					["key"] = "spell88423",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236288:0|t |cFFFF7D0ANature's Cure|r",
					["width"] = 0.65,
				}, -- [77]
				{
					["type"] = "toggle",
					["key"] = "spell115450",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T460692:0|t |cFF00FF96Detox|r",
					["width"] = 0.65,
				}, -- [78]
				{
					["type"] = "toggle",
					["key"] = "spell4987",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135949:0|t |cFFF58CBACleanse|r",
					["width"] = 0.65,
				}, -- [79]
				{
					["type"] = "toggle",
					["key"] = "spell527",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135894:0|t |cFFFFFFFFPurify|r",
					["width"] = 0.65,
				}, -- [80]
				{
					["type"] = "toggle",
					["key"] = "spell77130",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236288:0|t |cFF0070DEPurify Spirit|r",
					["width"] = 0.65,
				}, -- [81]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [82]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "DISPEL",
					["width"] = 2,
				}, -- [83]
				{
					["type"] = "toggle",
					["key"] = "spellArcaneTorrent",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136222:0|t |cFFBBBBBBArcane Torrent|r",
					["width"] = 0.65,
				}, -- [84]
				{
					["type"] = "toggle",
					["key"] = "spell32375",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135739:0|t |cFFFFFFFFMass Dispel|r",
					["width"] = 0.65,
				}, -- [85]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [86]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "EXTERNAL",
					["width"] = 2,
				}, -- [87]
				{
					["type"] = "toggle",
					["key"] = "spell196718",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1305154:0|t |cFFA330C9Darkness|r",
					["width"] = 0.65,
				}, -- [88]
				{
					["type"] = "toggle",
					["key"] = "spell102342",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T572025:0|t |cFFFF7D0AIronbark|r",
					["width"] = 0.65,
				}, -- [89]
				{
					["type"] = "toggle",
					["key"] = "spell116849",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T627485:0|t |cFF00FF96Life Cocoon|r",
					["width"] = 0.65,
				}, -- [90]
				{
					["type"] = "toggle",
					["key"] = "spell31821",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135872:0|t |cFFF58CBAAura Mastery|r",
					["width"] = 0.65,
				}, -- [91]
				{
					["type"] = "toggle",
					["key"] = "spell1022",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135964:0|t |cFFF58CBABlessing of Protection|r",
					["width"] = 0.65,
				}, -- [92]
				{
					["type"] = "toggle",
					["key"] = "spell6940",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135966:0|t |cFFF58CBABlessing of Sacrifice|r",
					["width"] = 0.65,
				}, -- [93]
				{
					["type"] = "toggle",
					["key"] = "spell204018",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135880:0|t |cFFF58CBABlessing of Spellwarding|r",
					["width"] = 0.65,
				}, -- [94]
				{
					["type"] = "toggle",
					["key"] = "spell47788",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237542:0|t |cFFFFFFFFGuardian Spirit|r",
					["width"] = 0.65,
				}, -- [95]
				{
					["type"] = "toggle",
					["key"] = "spell271466",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T537078:0|t |cFFFFFFFFLuminous Barrier|r",
					["width"] = 0.65,
				}, -- [96]
				{
					["type"] = "toggle",
					["key"] = "spell33206",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135936:0|t |cFFFFFFFFPain Supression|r",
					["width"] = 0.65,
				}, -- [97]
				{
					["type"] = "toggle",
					["key"] = "spell62618",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T253400:0|t |cFFFFFFFFPower Word: Barrier|r",
					["width"] = 0.65,
				}, -- [98]
				{
					["type"] = "toggle",
					["key"] = "spell98008",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237586:0|t |cFF0070DESpirit Link Totem|r",
					["width"] = 0.65,
				}, -- [99]
				{
					["type"] = "toggle",
					["key"] = "spell97462",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132351:0|t |cFFC79C6ERallying Cry|r",
					["width"] = 0.65,
				}, -- [100]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [101]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "HARDCC",
					["width"] = 2,
				}, -- [102]
				{
					["type"] = "toggle",
					["key"] = "spell179057",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135795:0|t |cFFA330C9Chaos Nova|r",
					["width"] = 0.65,
				}, -- [103]
				{
					["type"] = "toggle",
					["key"] = "spell119381",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T642414:0|t |cFF00FF96Leg Sweep|r",
					["width"] = 0.65,
				}, -- [104]
				{
					["type"] = "toggle",
					["key"] = "spell255654",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1723987:0|t |cFFBBBBBBBull Rush|r",
					["width"] = 0.65,
				}, -- [105]
				{
					["type"] = "toggle",
					["key"] = "spell20549",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132368:0|t |cFFBBBBBBWar Stomp|r",
					["width"] = 0.65,
				}, -- [106]
				{
					["type"] = "toggle",
					["key"] = "spell192058",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136013:0|t |cFF0070DECapacitor Totem|r",
					["width"] = 0.65,
				}, -- [107]
				{
					["type"] = "toggle",
					["key"] = "spell30283",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T607865:0|t |cFF8787EDShadowfury|r",
					["width"] = 0.65,
				}, -- [108]
				{
					["type"] = "toggle",
					["key"] = "spell46968",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236312:0|t |cFFC79C6EShockwave|r",
					["width"] = 0.65,
				}, -- [109]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [110]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "HEALING",
					["width"] = 2,
				}, -- [111]
				{
					["type"] = "toggle",
					["key"] = "spell740",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136107:0|t |cFFFF7D0ATranquility|r",
					["width"] = 0.65,
				}, -- [112]
				{
					["type"] = "toggle",
					["key"] = "spell115310",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1020466:0|t |cFF00FF96Revival|r",
					["width"] = 0.65,
				}, -- [113]
				{
					["type"] = "toggle",
					["key"] = "spell216331",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T589117:0|t |cFFF58CBAAvenging Crusader|r",
					["width"] = 0.65,
				}, -- [114]
				{
					["type"] = "toggle",
					["key"] = "spell105809",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T571555:0|t |cFFF58CBAHoly Avenger|r",
					["width"] = 0.65,
				}, -- [115]
				{
					["type"] = "toggle",
					["key"] = "spell633",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135928:0|t |cFFF58CBALay on Hands|r",
					["width"] = 0.65,
				}, -- [116]
				{
					["type"] = "toggle",
					["key"] = "spell210191",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T133192:0|t |cFFF58CBAWord of Glory|r",
					["width"] = 0.65,
				}, -- [117]
				{
					["type"] = "toggle",
					["key"] = "spell200183",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1060983:0|t |cFFFFFFFFApotheosis|r",
					["width"] = 0.65,
				}, -- [118]
				{
					["type"] = "toggle",
					["key"] = "spell64843",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237540:0|t |cFFFFFFFFDivine Hymn|r",
					["width"] = 0.65,
				}, -- [119]
				{
					["type"] = "toggle",
					["key"] = "spell246287",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135895:0|t |cFFFFFFFFEvangelism|r",
					["width"] = 0.65,
				}, -- [120]
				{
					["type"] = "toggle",
					["key"] = "spell265202",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T458225:0|t |cFFFFFFFFHoly Word: Salvation|r",
					["width"] = 0.65,
				}, -- [121]
				{
					["type"] = "toggle",
					["key"] = "spell47536",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237548:0|t |cFFFFFFFFRapture|r",
					["width"] = 0.65,
				}, -- [122]
				{
					["type"] = "toggle",
					["key"] = "spell15286",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136230:0|t |cFFFFFFFFVampiric Embrace|r",
					["width"] = 0.65,
				}, -- [123]
				{
					["type"] = "toggle",
					["key"] = "spell207399",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136080:0|t |cFF0070DEAncestral Protection Totem|r",
					["width"] = 0.65,
				}, -- [124]
				{
					["type"] = "toggle",
					["key"] = "spell114052",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135791:0|t |cFF0070DEAscendance|r",
					["width"] = 0.65,
				}, -- [125]
				{
					["type"] = "toggle",
					["key"] = "spell198838",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136098:0|t |cFF0070DEEarthen Wall Totem|r",
					["width"] = 0.65,
				}, -- [126]
				{
					["type"] = "toggle",
					["key"] = "spell108280",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T538569:0|t |cFF0070DEHealing Tide Totem|r",
					["width"] = 0.65,
				}, -- [127]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [128]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "IMMUNITY",
					["width"] = 2,
				}, -- [129]
				{
					["type"] = "toggle",
					["key"] = "spell196555",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T463284:0|t |cFFA330C9Netherwalk|r",
					["width"] = 0.65,
				}, -- [130]
				{
					["type"] = "toggle",
					["key"] = "spell186265",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132199:0|t |cFFABD473Aspect of the Turtle|r",
					["width"] = 0.65,
				}, -- [131]
				{
					["type"] = "toggle",
					["key"] = "spell45438",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135841:0|t |cFF40C7EBIce Block|r",
					["width"] = 0.65,
				}, -- [132]
				{
					["type"] = "toggle",
					["key"] = "spell642",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T524354:0|t |cFFF58CBADivine Shield|r",
					["width"] = 0.65,
				}, -- [133]
				{
					["type"] = "toggle",
					["key"] = "spell31224",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136177:0|t |cFFFFF569Cloak of Shadows|r",
					["width"] = 0.65,
				}, -- [134]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [135]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "INTERRUPT",
					["width"] = 2,
				}, -- [136]
				{
					["type"] = "toggle",
					["key"] = "spell183752",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1305153:0|t |cFFA330C9Consume Magic|r",
					["width"] = 0.65,
				}, -- [137]
				{
					["type"] = "toggle",
					["key"] = "spell47528",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237527:0|t |cFFC41F3BMind Freeze|r",
					["width"] = 0.65,
				}, -- [138]
				{
					["type"] = "toggle",
					["key"] = "spell91802",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237569:0|t |cFFC41F3BShambling Rush|r",
					["width"] = 0.65,
				}, -- [139]
				{
					["type"] = "toggle",
					["key"] = "spell106839",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236946:0|t |cFFFF7D0ASkull Bash|r",
					["width"] = 0.65,
				}, -- [140]
				{
					["type"] = "toggle",
					["key"] = "spell78675",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T252188:0|t |cFFFF7D0ASolar Beam|r",
					["width"] = 0.65,
				}, -- [141]
				{
					["type"] = "toggle",
					["key"] = "spell147362",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T249170:0|t |cFFABD473Counter Shot|r",
					["width"] = 0.65,
				}, -- [142]
				{
					["type"] = "toggle",
					["key"] = "spell187707",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1376045:0|t |cFFABD473Muzzle|r",
					["width"] = 0.65,
				}, -- [143]
				{
					["type"] = "toggle",
					["key"] = "spell2139",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135856:0|t |cFF40C7EBCounter Spell|r",
					["width"] = 0.65,
				}, -- [144]
				{
					["type"] = "toggle",
					["key"] = "spell116705",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T608940:0|t |cFF00FF96Spear Hand Strike|r",
					["width"] = 0.65,
				}, -- [145]
				{
					["type"] = "toggle",
					["key"] = "spell96231",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T523893:0|t |cFFF58CBARebuke|r",
					["width"] = 0.65,
				}, -- [146]
				{
					["type"] = "toggle",
					["key"] = "spell15487",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T458230:0|t |cFFFFFFFFSilence|r",
					["width"] = 0.65,
				}, -- [147]
				{
					["type"] = "toggle",
					["key"] = "spell1766",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132219:0|t |cFFFFF569Kick|r",
					["width"] = 0.65,
				}, -- [148]
				{
					["type"] = "toggle",
					["key"] = "spell57994",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136018:0|t |cFF0070DEWind Shear|r",
					["width"] = 0.65,
				}, -- [149]
				{
					["type"] = "toggle",
					["key"] = "spell19647",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136174:0|t |cFF8787EDSpell Lock|r",
					["width"] = 0.65,
				}, -- [150]
				{
					["type"] = "toggle",
					["key"] = "spell6552",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132938:0|t |cFFC79C6EPummel|r",
					["width"] = 0.65,
				}, -- [151]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [152]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "PERSONAL",
					["width"] = 2,
				}, -- [153]
				{
					["type"] = "toggle",
					["key"] = "spell198589",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1305150:0|t |cFFA330C9Blur|r",
					["width"] = 0.65,
				}, -- [154]
				{
					["type"] = "toggle",
					["key"] = "spell187827",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1247263:0|t |cFFA330C9Metamorphosis|r",
					["width"] = 0.65,
				}, -- [155]
				{
					["type"] = "toggle",
					["key"] = "spell48707",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136120:0|t |cFFC41F3BAnti-Magic Shell|r",
					["width"] = 0.65,
				}, -- [156]
				{
					["type"] = "toggle",
					["key"] = "spell48743",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136146:0|t |cFFC41F3BDeath Pact|r",
					["width"] = 0.65,
				}, -- [157]
				{
					["type"] = "toggle",
					["key"] = "spell48792",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237525:0|t |cFFC41F3BIcebound Fortitude|r",
					["width"] = 0.65,
				}, -- [158]
				{
					["type"] = "toggle",
					["key"] = "spell55233",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136168:0|t |cFFC41F3BVampiric Blood|r",
					["width"] = 0.65,
				}, -- [159]
				{
					["type"] = "toggle",
					["key"] = "spell22812",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136097:0|t |cFFFF7D0ABarkskin|r",
					["width"] = 0.65,
				}, -- [160]
				{
					["type"] = "toggle",
					["key"] = "spell61336",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236169:0|t |cFFFF7D0ASurvival Instincts|r",
					["width"] = 0.65,
				}, -- [161]
				{
					["type"] = "toggle",
					["key"] = "spell109304",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T461117:0|t |cFFABD473Exhilaration|r",
					["width"] = 0.65,
				}, -- [162]
				{
					["type"] = "toggle",
					["key"] = "spell235219",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135865:0|t |cFF40C7EBCold Snap|r",
					["width"] = 0.65,
				}, -- [163]
				{
					["type"] = "toggle",
					["key"] = "spell122278",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T620827:0|t |cFF00FF96Dampen Harm|r",
					["width"] = 0.65,
				}, -- [164]
				{
					["type"] = "toggle",
					["key"] = "spell122783",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T775460:0|t |cFF00FF96Diffuse Magic|r",
					["width"] = 0.65,
				}, -- [165]
				{
					["type"] = "toggle",
					["key"] = "spell115203",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T615341:0|t |cFF00FF96Fortifying Brew|r",
					["width"] = 0.65,
				}, -- [166]
				{
					["type"] = "toggle",
					["key"] = "spell243435",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1616072:0|t |cFF00FF96Fortifying Brew|r",
					["width"] = 0.65,
				}, -- [167]
				{
					["type"] = "toggle",
					["key"] = "spell122470",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T651728:0|t |cFF00FF96Touch of Karma|r",
					["width"] = 0.65,
				}, -- [168]
				{
					["type"] = "toggle",
					["key"] = "spell115176",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T642417:0|t |cFF00FF96Zen Meditation|r",
					["width"] = 0.65,
				}, -- [169]
				{
					["type"] = "toggle",
					["key"] = "spell31850",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135870:0|t |cFFF58CBAArdent Defender|r",
					["width"] = 0.65,
				}, -- [170]
				{
					["type"] = "toggle",
					["key"] = "spell498",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T524353:0|t |cFFF58CBADivine Protection|r",
					["width"] = 0.65,
				}, -- [171]
				{
					["type"] = "toggle",
					["key"] = "spell205191",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135986:0|t |cFFF58CBAEye for an Eye|r",
					["width"] = 0.65,
				}, -- [172]
				{
					["type"] = "toggle",
					["key"] = "spell86659",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135919:0|t |cFFF58CBAGuardian of the Ancient Kings|r",
					["width"] = 0.65,
				}, -- [173]
				{
					["type"] = "toggle",
					["key"] = "spell184662",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236264:0|t |cFFF58CBAShield of Vengeance|r",
					["width"] = 0.65,
				}, -- [174]
				{
					["type"] = "toggle",
					["key"] = "spell19236",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237550:0|t |cFFFFFFFFDesperate Prayer|r",
					["width"] = 0.65,
				}, -- [175]
				{
					["type"] = "toggle",
					["key"] = "spell47585",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237563:0|t |cFFFFFFFFDispersion|r",
					["width"] = 0.65,
				}, -- [176]
				{
					["type"] = "toggle",
					["key"] = "spellEvasion/Riposte",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136205:0|t |cFFFFF569Evasion|r",
					["width"] = 0.65,
				}, -- [177]
				{
					["type"] = "toggle",
					["key"] = "spell108271",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T538565:0|t |cFF0070DEAstral Shift|r",
					["width"] = 0.65,
				}, -- [178]
				{
					["type"] = "toggle",
					["key"] = "spell104773",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136150:0|t |cFF8787EDUnending Resolve|r",
					["width"] = 0.65,
				}, -- [179]
				{
					["type"] = "toggle",
					["key"] = "spell118038",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132336:0|t |cFFC79C6EDie by the Sword|r",
					["width"] = 0.65,
				}, -- [180]
				{
					["type"] = "toggle",
					["key"] = "spell184364",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132345:0|t |cFFC79C6EEnraged Regeneration|r",
					["width"] = 0.65,
				}, -- [181]
				{
					["type"] = "toggle",
					["key"] = "spell12975",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135871:0|t |cFFC79C6ELast Stand|r",
					["width"] = 0.65,
				}, -- [182]
				{
					["type"] = "toggle",
					["key"] = "spell871",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132362:0|t |cFFC79C6EShield Wall|r",
					["width"] = 0.65,
				}, -- [183]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [184]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "SOFTCC",
					["width"] = 2,
				}, -- [185]
				{
					["type"] = "toggle",
					["key"] = "spell202138",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1418286:0|t |cFFA330C9Sigil of Chains|r",
					["width"] = 0.65,
				}, -- [186]
				{
					["type"] = "toggle",
					["key"] = "spell207684",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1418287:0|t |cFFA330C9Sigil of Misery|r",
					["width"] = 0.65,
				}, -- [187]
				{
					["type"] = "toggle",
					["key"] = "spell202137",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1418288:0|t |cFFA330C9Sigil of Silence|r",
					["width"] = 0.65,
				}, -- [188]
				{
					["type"] = "toggle",
					["key"] = "spell207167",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135836:0|t |cFFC41F3BBlinding Sleet|r",
					["width"] = 0.65,
				}, -- [189]
				{
					["type"] = "toggle",
					["key"] = "spell108199",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T538767:0|t |cFFC41F3BGorefiend's Grasp|r",
					["width"] = 0.65,
				}, -- [190]
				{
					["type"] = "toggle",
					["key"] = "spell99",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132121:0|t |cFFFF7D0AIncapacitating Roar|r",
					["width"] = 0.65,
				}, -- [191]
				{
					["type"] = "toggle",
					["key"] = "spell236748",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132117:0|t |cFFFF7D0AIntimidating Roar|r",
					["width"] = 0.65,
				}, -- [192]
				{
					["type"] = "toggle",
					["key"] = "spell102359",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T538515:0|t |cFFFF7D0AMass Entanglement|r",
					["width"] = 0.65,
				}, -- [193]
				{
					["type"] = "toggle",
					["key"] = "spell132469",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T236170:0|t |cFFFF7D0ATyphoon|r",
					["width"] = 0.65,
				}, -- [194]
				{
					["type"] = "toggle",
					["key"] = "spell102793",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T571588:0|t |cFFFF7D0AUrsol's Vortex|r",
					["width"] = 0.65,
				}, -- [195]
				{
					["type"] = "toggle",
					["key"] = "spell109248",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T462650:0|t |cFFABD473Binding Shot|r",
					["width"] = 0.65,
				}, -- [196]
				{
					["type"] = "toggle",
					["key"] = "spell31661",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T134153:0|t |cFF40C7EBDragon's Breath|r",
					["width"] = 0.65,
				}, -- [197]
				{
					["type"] = "toggle",
					["key"] = "spell116844",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T839107:0|t |cFF00FF96Ring of Peace|r",
					["width"] = 0.65,
				}, -- [198]
				{
					["type"] = "toggle",
					["key"] = "spell115750",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T571553:0|t |cFFF58CBABlinding Light|r",
					["width"] = 0.65,
				}, -- [199]
				{
					["type"] = "toggle",
					["key"] = "spell8122",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136184:0|t |cFFFFFFFFPsychic Scream|r",
					["width"] = 0.65,
				}, -- [200]
				{
					["type"] = "toggle",
					["key"] = "spell204263",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T571554:0|t |cFFFFFFFFShining Force|r",
					["width"] = 0.65,
				}, -- [201]
				{
					["type"] = "toggle",
					["key"] = "spell51490",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237589:0|t |cFF0070DEThunderstorm|r",
					["width"] = 0.65,
				}, -- [202]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [203]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "STHARDCC",
					["width"] = 2,
				}, -- [204]
				{
					["type"] = "toggle",
					["key"] = "spell211881",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1118739:0|t |cFFA330C9Fel Eruption|r",
					["width"] = 0.65,
				}, -- [205]
				{
					["type"] = "toggle",
					["key"] = "spellAsphyxiate",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T538558:0|t |cFFC41F3BAsphyxiate|r",
					["width"] = 0.65,
				}, -- [206]
				{
					["type"] = "toggle",
					["key"] = "spell5211",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132114:0|t |cFFFF7D0AMighty Bash|r",
					["width"] = 0.65,
				}, -- [207]
				{
					["type"] = "toggle",
					["key"] = "spell19577",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132111:0|t |cFFABD473Intimidation|r",
					["width"] = 0.65,
				}, -- [208]
				{
					["type"] = "toggle",
					["key"] = "spell853",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135963:0|t |cFFF58CBAHammer of Justice|r",
					["width"] = 0.65,
				}, -- [209]
				{
					["type"] = "toggle",
					["key"] = "spell88625",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135886:0|t |cFFFFFFFFHoly Word: Chastise|r",
					["width"] = 0.65,
				}, -- [210]
				{
					["type"] = "toggle",
					["key"] = "spell64044",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237568:0|t |cFFFFFFFFPsychic Horror|r",
					["width"] = 0.65,
				}, -- [211]
				{
					["type"] = "toggle",
					["key"] = "spell6789",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T607853:0|t |cFF8787EDMortal Coil|r",
					["width"] = 0.65,
				}, -- [212]
				{
					["type"] = "toggle",
					["key"] = "spell107570",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T613535:0|t |cFFC79C6EStorm Bolt|r",
					["width"] = 0.65,
				}, -- [213]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [214]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "STSOFTCC",
					["width"] = 2,
				}, -- [215]
				{
					["type"] = "toggle",
					["key"] = "spell217832",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1380368:0|t |cFFA330C9Imprison|r",
					["width"] = 0.65,
				}, -- [216]
				{
					["type"] = "toggle",
					["key"] = "spell49576",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237532:0|t |cFFC41F3BDeath Grip|r",
					["width"] = 0.65,
				}, -- [217]
				{
					["type"] = "toggle",
					["key"] = "spell187650",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135834:0|t |cFFABD473Freezing Trap|r",
					["width"] = 0.65,
				}, -- [218]
				{
					["type"] = "toggle",
					["key"] = "spell115078",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T629534:0|t |cFF00FF96Paralysis|r",
					["width"] = 0.65,
				}, -- [219]
				{
					["type"] = "toggle",
					["key"] = "spell2094",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136175:0|t |cFFFFF569Blind|r",
					["width"] = 0.65,
				}, -- [220]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [221]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "TANK",
					["width"] = 2,
				}, -- [222]
				{
					["type"] = "toggle",
					["key"] = "spell204021",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T1344647:0|t |cFFA330C9Fiery Brand|r",
					["width"] = 0.65,
				}, -- [223]
				{
					["type"] = "toggle",
					["key"] = "spell194844",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T342917:0|t |cFFC41F3BBonestorm|r",
					["width"] = 0.65,
				}, -- [224]
				{
					["type"] = "toggle",
					["key"] = "spell49028",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135277:0|t |cFFC41F3BDancing Rune Weapon|r",
					["width"] = 0.65,
				}, -- [225]
				{
					["type"] = "toggle",
					["key"] = "spell194679",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T237529:0|t |cFFC41F3BRune Tap|r",
					["width"] = 0.65,
				}, -- [226]
				{
					["type"] = "toggle",
					["key"] = "spell1160",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132366:0|t |cFFC79C6EDemoralizing Shout|r",
					["width"] = 0.65,
				}, -- [227]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [228]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "UTILITY",
					["width"] = 2,
				}, -- [229]
				{
					["type"] = "toggle",
					["key"] = "spell205636",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132129:0|t |cFFFF7D0AForce of Nature (Treants)|r",
					["width"] = 0.65,
				}, -- [230]
				{
					["type"] = "toggle",
					["key"] = "spell29166",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136048:0|t |cFFFF7D0AInnervate|r",
					["width"] = 0.65,
				}, -- [231]
				{
					["type"] = "toggle",
					["key"] = "spell106898",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T464343:0|t |cFFFF7D0AStampeding Roar|r",
					["width"] = 0.65,
				}, -- [232]
				{
					["type"] = "toggle",
					["key"] = "spell58984",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T132089:0|t |cFFBBBBBBShadowmeld|r",
					["width"] = 0.65,
				}, -- [233]
				{
					["type"] = "toggle",
					["key"] = "spell73325",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T463835:0|t |cFFFFFFFFLeap of Faith|r",
					["width"] = 0.65,
				}, -- [234]
				{
					["type"] = "toggle",
					["key"] = "spell64901",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T135982:0|t |cFFFFFFFFSymbol of Hope|r",
					["width"] = 0.65,
				}, -- [235]
				{
					["type"] = "toggle",
					["key"] = "spell114018",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T635350:0|t |cFFFFF569Shroud of Concealment|r",
					["width"] = 0.65,
				}, -- [236]
				{
					["type"] = "toggle",
					["key"] = "spell198103",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T136024:0|t |cFF0070DEEarth Elemental|r",
					["width"] = 0.65,
				}, -- [237]
				{
					["type"] = "toggle",
					["key"] = "spell192077",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "|T538576:0|t |cFF0070DEWind Rush Totem|r",
					["width"] = 0.65,
				}, -- [238]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [239]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [240]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [241]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = "Custom Spell List",
					["width"] = 2,
				}, -- [242]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "You may add custom entries to the spell list here. The format consists of a Lua table with mandatory entries of type, spellID, baseCD and optional entries of class, specs, race, mods, modTalents, reqTalents. You can look at how such values are defined in the Actions tab 'OnInit' code.",
					["width"] = 2,
				}, -- [243]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "Example: {type=\"INTERRUPT\", spellID=183752, class=DH, baseCD=15}",
					["width"] = 2,
				}, -- [244]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [245]
				{
					["type"] = "input",
					["key"] = "custom1",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 1",
					["useLength"] = false,
				}, -- [246]
				{
					["type"] = "input",
					["key"] = "custom2",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 2",
					["useLength"] = false,
				}, -- [247]
				{
					["type"] = "input",
					["key"] = "custom3",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 3",
					["useLength"] = false,
				}, -- [248]
				{
					["type"] = "input",
					["key"] = "custom4",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 4",
					["useLength"] = false,
				}, -- [249]
				{
					["type"] = "input",
					["key"] = "custom5",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 5",
					["useLength"] = false,
				}, -- [250]
				{
					["type"] = "input",
					["key"] = "custom6",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 6",
					["useLength"] = false,
				}, -- [251]
				{
					["type"] = "input",
					["key"] = "custom7",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 7",
					["useLength"] = false,
				}, -- [252]
				{
					["type"] = "input",
					["key"] = "custom8",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 8",
					["useLength"] = false,
				}, -- [253]
				{
					["type"] = "input",
					["key"] = "custom9",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 9",
					["useLength"] = false,
				}, -- [254]
				{
					["type"] = "input",
					["key"] = "custom10",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 10",
					["useLength"] = false,
				}, -- [255]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [256]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [257]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = "WARNING: Do not click Enter Author Mode!",
					["width"] = 2,
				}, -- [258]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "Due to the many configuration options, attempting to edit the options will cause a large amount of lag and subsequently display absolutely nothing. Trust me, I tried :)",
					["width"] = 2,
				}, -- [259]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [260]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [261]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [262]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [263]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [264]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [265]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [266]
			},
			["justify"] = "LEFT",
			["width"] = 6.9999642372131,
			["id"] = "ZenTracker (ZT) Main",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
			},
			["config"] = {
				["spell280711"] = false,
				["spellArcaneTorrent"] = false,
				["custom4"] = "",
				["spell114051"] = false,
				["spell64044"] = false,
				["spell46924"] = false,
				["spell191427"] = false,
				["spell108199"] = false,
				["spell107570"] = false,
				["spell86659"] = false,
				["spell740"] = false,
				["spell196555"] = false,
				["spell64843"] = false,
				["spell265187"] = false,
				["custom6"] = "",
				["spell106839"] = false,
				["spell109248"] = false,
				["spell31661"] = false,
				["spell79140"] = false,
				["spell235219"] = false,
				["spell57994"] = false,
				["spell55342"] = false,
				["spell198589"] = false,
				["spell187707"] = false,
				["myDAMAGE"] = true,
				["spell1719"] = false,
				["spell206491"] = false,
				["myIMMUNITY"] = true,
				["spell217832"] = false,
				["custom5"] = "",
				["spellEvasion/Riposte"] = false,
				["spell198838"] = false,
				["spell122470"] = false,
				["spell267217"] = false,
				["spell633"] = false,
				["spell105809"] = false,
				["spell194223"] = false,
				["spell207289"] = false,
				["spell200183"] = false,
				["spell118038"] = false,
				["spell30283"] = false,
				["spell853"] = false,
				["spell179057"] = false,
				["spell47788"] = false,
				["spell116705"] = false,
				["spell186265"] = false,
				["spell98008"] = false,
				["spell46968"] = false,
				["spell255654"] = false,
				["spell32375"] = false,
				["custom1"] = "",
				["spell102359"] = false,
				["spell207399"] = false,
				["spell192058"] = false,
				["myDEFMDISPEL"] = true,
				["spell207684"] = false,
				["spell137639"] = false,
				["spell108280"] = false,
				["spell193530"] = false,
				["spell47585"] = false,
				["spell12975"] = false,
				["spell47536"] = false,
				["spell106951"] = false,
				["spell183752"] = false,
				["spell211881"] = false,
				["spell31821"] = false,
				["spell116844"] = false,
				["spell48707"] = false,
				["spell45438"] = false,
				["spell871"] = false,
				["spell19236"] = false,
				["spell29166"] = false,
				["spell1122"] = false,
				["spell6940"] = false,
				["spell102560"] = false,
				["spell13750"] = false,
				["spellConfigType"] = 1,
				["myPERSONAL"] = true,
				["spell97462"] = false,
				["spell12042"] = false,
				["spell99"] = false,
				["spell15286"] = false,
				["spell266779"] = false,
				["custom8"] = "",
				["spell231895"] = false,
				["spell114052"] = false,
				["spell55233"] = false,
				["mySTHARDCC"] = true,
				["spell48743"] = false,
				["spell216331"] = false,
				["spell20549"] = false,
				["spell184662"] = false,
				["spell115176"] = false,
				["spell196718"] = false,
				["spell115080"] = false,
				["spell201430"] = false,
				["spell91802"] = false,
				["spell204263"] = false,
				["spell210191"] = false,
				["spell108271"] = false,
				["spell51490"] = false,
				["spell119381"] = false,
				["spell236748"] = false,
				["spell109304"] = false,
				["spell116849"] = false,
				["spell1160"] = false,
				["spell187650"] = false,
				["spell77130"] = false,
				["mySTSOFTCC"] = true,
				["spell243435"] = false,
				["myHEALING"] = true,
				["spell187827"] = false,
				["spell123904"] = false,
				["spell31224"] = false,
				["spell12472"] = false,
				["spell51690"] = false,
				["spell58984"] = false,
				["custom2"] = "",
				["spell2094"] = false,
				["spell194679"] = false,
				["spell205636"] = false,
				["custom9"] = "",
				["spell115203"] = false,
				["spell204018"] = false,
				["spell49206"] = false,
				["spell78675"] = false,
				["spell204021"] = false,
				["spell4987"] = false,
				["myTANK"] = true,
				["spellAsphyxiate"] = false,
				["spell114050"] = false,
				["spell498"] = false,
				["spell19647"] = false,
				["spell192249"] = false,
				["spell96231"] = false,
				["spell198103"] = false,
				["spell15487"] = false,
				["custom7"] = "",
				["spell88625"] = false,
				["spell8122"] = false,
				["spell205180"] = false,
				["spell193223"] = false,
				["spell106898"] = false,
				["mySOFTCC"] = true,
				["spell64901"] = false,
				["custom10"] = "",
				["myHARDCC"] = true,
				["spell202137"] = false,
				["spell115310"] = false,
				["spell265202"] = false,
				["spell192077"] = false,
				["spell194844"] = false,
				["spell288613"] = false,
				["spell107574"] = false,
				["spell152173"] = false,
				["spell227847"] = false,
				["spell102543"] = false,
				["spell6789"] = false,
				["spell113858"] = false,
				["spell49576"] = false,
				["custom3"] = "",
				["spell205191"] = false,
				["spell113860"] = false,
				["spell184364"] = false,
				["myDISPEL"] = true,
				["spell61336"] = false,
				["spell1766"] = false,
				["spell121471"] = false,
				["spell47528"] = false,
				["spell527"] = false,
				["spell271466"] = false,
				["spell88423"] = false,
				["spell2139"] = false,
				["spell33206"] = false,
				["spell6552"] = false,
				["spell48792"] = false,
				["spell132469"] = false,
				["spell73325"] = false,
				["spell279302"] = false,
				["spell190319"] = false,
				["spell114018"] = false,
				["spell104773"] = false,
				["spell207167"] = false,
				["spell115450"] = false,
				["spell147362"] = false,
				["myINTERRUPT"] = true,
				["spell22812"] = false,
				["spell246287"] = false,
				["spell115078"] = false,
				["myEXTERNAL"] = true,
				["spell62618"] = false,
				["spell115750"] = false,
				["spell202138"] = false,
				["spell49028"] = false,
				["spell122783"] = false,
				["spell102793"] = false,
				["spell102342"] = false,
				["spell31850"] = false,
				["spell19574"] = false,
				["spell42650"] = false,
				["myUTILITY"] = true,
				["spell19577"] = false,
				["spell31884"] = false,
				["spell191634"] = false,
				["spell642"] = false,
				["spell1022"] = false,
				["spell122278"] = false,
				["spell258925"] = false,
				["spell152279"] = false,
				["spell5211"] = false,
			},
			["wordWrap"] = "WordWrap",
			["semver"] = "1.0.3-49",
			["fixedWidth"] = 200,
			["automaticWidth"] = "Auto",
			["selfPoint"] = "BOTTOM",
		},
		["06 Buster Cannon Dot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["matchesShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["use_unit"] = true,
						["spellIds"] = {
							282182, -- [1]
						},
						["auranames"] = {
							"282182", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Buster Cannon", -- [1]
						},
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1698700,
			["useglowColor"] = false,
			["desaturate"] = true,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "-%tooltip2%% Haste",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "06 Buster Cannon Dot",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "TN6toBzBa8a",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["OPULENCE"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Opulence Tailwind", -- [1]
				"Opulence Swapping", -- [2]
				"Opulence Soothing Breeze", -- [3]
				"Opulence Ruby Timer", -- [4]
				"Opulence Opal Stacks", -- [5]
				"Opulence Liquid Gold", -- [6]
				"Opulence Hex of Lethargy", -- [7]
				"Opulence Emerald Stacks", -- [8]
				"Opulence Topaz Stacks", -- [9]
				"Opulence Topaz Stacks Max", -- [10]
				"Opulence Brilliant Aura", -- [11]
				"Opulence Diamond Depleted", -- [12]
				"Opulence Diamond Active", -- [13]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -755.379089355469,
			["internalVersion"] = 11,
			["border"] = false,
			["yOffset"] = -68.773681640625,
			["regionType"] = "group",
			["borderSize"] = 16,
			["authorOptions"] = {
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["url"] = "https://wago.io/imlz-ng6S/2",
			["expanded"] = false,
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
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["semver"] = "1.0.1",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "OPULENCE",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOMLEFT",
			["uid"] = "Jf1Sg2GaO(9",
			["version"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["config"] = {
			},
			["conditions"] = {
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
			["borderInset"] = 11,
		},
		["Tosh Soulstone Icon"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["semver"] = "1.0.0",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/B1S_4UQhX/2",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.spellId = 20707\n\nfunction aura_env.checkRaid(allstates)\n    for k,v in pairs(allstates) do\n        v.show = false\n        v.changed = true\n    end\n    if not aura_env.warlocks then return end\n\n    local needs = {}\n    for _, wl in pairs(aura_env.warlocks) do\n        needs[wl] = true\n    end\n    for uid in WA_IterateGroupMembers() do\n        aura_env.checkUnit(needs, uid)\n    end\n    \n    local show = false\n    for wl in pairs(needs) do\n        show = true\n        allstates[wl] = {\n            show = true,\n            changed = true,\n            autoHide = false,\n            icon = select(3, GetSpellInfo(aura_env.spellId)),\n            spellId = aura_env.spellId,\n            name = UnitName(wl),\n        }\n    end\n    return show\nend\n\nfunction aura_env.checkUnit(needs, uid)\n    if not uid then return end\n    for i=1,40 do\n        local info = { UnitBuff(uid, i) }\n        if not info[1] then return end\n        if info[10] == aura_env.spellId then\n            for wl in pairs(needs) do\n                if UnitIsUnit(info[7], wl) then\n                    needs[wl] = nil\n                    return\n                end\n            end\n        end\n    end\nend",
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
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["events"] = "PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE",
						["check"] = "event",
						["custom"] = "function(allstates, event, ...)\n    for k,v in pairs(allstates) do\n        v.show = false\n        v.changed = true\n    end\n    aura_env.warlocks = {}\n    for uid in WA_IterateGroupMembers() do\n        if select(3, UnitClass(uid)) == 9 then\n            aura_env.warlocks[#aura_env.warlocks+1] = uid\n        end\n    end\n    return aura_env.checkRaid(allstates)\nend",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "UNIT_AURA",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["custom"] = "function(allstates, event, ...)\n    return aura_env.checkRaid(allstates)\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["desaturate"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Containment"] = "INSIDE",
			["load"] = {
				["use_never"] = false,
				["use_combat"] = false,
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
			["selfPoint"] = "CENTER",
			["uid"] = "CprJFjlmkNL",
			["cooldownEdge"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 64,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["cooldownTextEnabled"] = true,
			["text2FontSize"] = 24,
			["text1FontFlags"] = "OUTLINE",
			["text1"] = "%n",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["text2"] = "%p",
			["auto"] = true,
			["icon"] = true,
			["id"] = "Tosh Soulstone Icon",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "soulstone",
			["text1Enabled"] = true,
			["parent"] = "Tosh Soulstone",
		},
		["09 Arctic Armor"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135835,
			["glow"] = false,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "R3G0ZNfDJTD",
			["load"] = {
				["affixes"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
				},
				["role"] = {
				},
				["encounterid"] = "2281",
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
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Boss Immune",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "09 Arctic Armor",
			["url"] = "https://wago.io/bfaraid2/112",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["auranames"] = {
							"282841", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Broadside", -- [1]
						},
						["unit"] = "boss",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["specificUnit"] = "boss1",
						["group_count"] = "0",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["group_countOperator"] = ">",
						["name"] = "Broadside",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["auraspellids"] = {
						},
						["event"] = "Cast",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["spellIds"] = {
							288212, -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["useGroup_count"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
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
		["06 Buster Cannon"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dodge.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1717108,
			["authorOptions"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "79zRTffxGRC",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dodge",
			["icon"] = true,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["internalVersion"] = 11,
			["id"] = "06 Buster Cannon",
			["cooldownTextEnabled"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 282153,
						["use_absorbMode"] = true,
						["use_spell"] = false,
						["use_specific_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["event"] = "Cast",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["name"] = "Buster Cannon",
						["spellIds"] = {
							284168, -- [1]
						},
						["spell"] = "282153",
						["unevent"] = "auto",
						["names"] = {
							"Shrunk", -- [1]
						},
						["unit"] = "boss1",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["09 Heart of Frost"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Broadside", -- [1]
						},
						["use_tooltip"] = false,
						["auranames"] = {
							"289220", -- [1]
						},
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["spellIds"] = {
							288212, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Broadside",
						["unevent"] = "auto",
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["cooldownTextEnabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Spread",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["url"] = "https://wago.io/bfaraid2/112",
			["id"] = "09 Heart of Frost",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "A8)HFDmiJVN",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["Opulence Emerald Stacks"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 400,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/imlz-ng6S/2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Earthen Roots", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMLEFT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["stickyDuration"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -64,
			["text1Enabled"] = true,
			["uid"] = "nPAjommdm(n",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["frameStrata"] = 1,
			["text2FontSize"] = 24,
			["icon"] = true,
			["text1"] = "Stacks: %s",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["authorOptions"] = {
			},
			["id"] = "Opulence Emerald Stacks",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 64,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["parent"] = "OPULENCE",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["glow"] = false,
		},
		["04 Thief's Bane"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    return \"Not Protected\", \"Protected\"\nend \n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"287424", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Thief's Bane", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							287424, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["buffShowOn"] = "showAlways",
						["useName"] = true,
						["use_debuffClass"] = false,
						["auranames"] = {
							"284556", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
							"Shadow-Touched", -- [1]
						},
						["use_tooltip"] = false,
						["spellIds"] = {
							284556, -- [1]
						},
						["type"] = "aura2",
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = 1,
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "M3gx(wUylxL",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["cooldownTextEnabled"] = true,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1Enabled"] = true,
			["text2FontSize"] = 16,
			["semver"] = "2.0.43",
			["text1"] = "%c1",
			["text2Enabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%c2",
			["auto"] = true,
			["icon"] = true,
			["id"] = "04 Thief's Bane",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text1Color",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Tempting Song"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135861,
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["cooldownTextEnabled"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Targeted",
			["text2Enabled"] = false,
			["text1Containment"] = "OUTSIDE",
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "08 Tempting Song",
			["glow"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "P(FsgqzjiSe",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["spellId"] = "284405",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Tempting Song", -- [1]
						},
						["use_tooltip"] = false,
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["use_absorbMode"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["event"] = "Cast",
						["debuffType"] = "HARMFUL",
						["name"] = "Tempting Song",
						["use_spellId"] = true,
						["spellIds"] = {
							284405, -- [1]
						},
						["use_unit"] = true,
						["useExactSpellId"] = true,
						["combineMatches"] = "showLowest",
						["auraspellids"] = {
							"284405", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Meteor Leap /  On You"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["useGlowColor"] = false,
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/bfaraid2/112",
			["customText"] = "function()\n    if aura_env.state and aura_env.state.name then\n        return aura_env.state.name\nend end",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.spellIDs = {\n    [284686] = true,\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 236171,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 283606,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["use_unit"] = true,
						["events"] = "UNIT_TARGET, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED",
						["debuffType"] = "HARMFUL",
						["remOperator"] = "<=",
						["custom"] = "function(allstates, event, unit, castGUID, spellID)    \n    if event == \"UNIT_TARGET\" then\n        if UnitExists(unit) then\n            if UnitIsUnit(unit..\"target\", \"player\") then\n                local expirationTime = select(5, UnitCastingInfo(unit))\n                if expirationTime then\n                    local exp = expirationTime / 1000\n                    local dur = expirationTime / 1000 - GetTime()\n                    local spellicon = select(3, UnitCastingInfo(unit))\n                    local spellId = select(9, UnitCastingInfo(unit))\n                    local castGUID = select(7, UnitCastingInfo(unit))\n                    if aura_env.spellIDs[spellId] and not allstates[castGUID] then\n                        allstates[castGUID] = {\n                            show = true,\n                            changed =  true,\n                            progressType = \"timed\", \n                            duration = dur,\n                            expirationTime = exp,\n                            name = \"Dmgsplit\",\n                            icon = spellicon,\n                            autoHide = true,\n                        }\n                        return true\n                    end\n                end\n            end\n        end\n    elseif (event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_STOP\" or event == \"UNIT_SPELLCAST_FAILED\" or event == \"UNIT_SPELLCAST_INTERRUPTED\") then\n        if UnitExists(unit) and aura_env.spellIDs[spellID] then\n            if allstates[castGUID] then\n                allstates[castGUID].show = false\n                allstates[castGUID].changed = true\n                return true\n            end\n        end\n    end\nend",
						["buffShowOn"] = "showOnActive",
						["name"] = "Crush",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["castType"] = "cast",
						["custom_hide"] = "timed",
						["event"] = "Chat Message",
						["dynamicDuration"] = false,
						["customDuration"] = "",
						["use_spellId"] = true,
						["spellIds"] = {
							282939, -- [1]
						},
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "UNIT_TARGET, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(allstates, event, unit, castGUID, spellID)    \n    if event == \"UNIT_TARGET\" then\n        if UnitExists(unit) then\n            if not UnitIsUnit(unit..\"target\", \"player\") and UnitCanAttack(\"player\", unit) then\n                local expirationTime = select(5, UnitCastingInfo(unit))\n                if expirationTime then\n                    local exp = expirationTime / 1000\n                    local dur = expirationTime / 1000 - GetTime()\n                    local spellicon = select(3, UnitCastingInfo(unit))\n                    local spellId = select(9, UnitCastingInfo(unit))\n                    local castGUID = select(7, UnitCastingInfo(unit))\n                    if aura_env.spellIDs[spellId] and not allstates[castGUID] then\n                        allstates[castGUID] = {\n                            show = true,\n                            changed =  true,\n                            progressType = \"timed\", \n                            duration = dur,\n                            expirationTime = exp,\n                            name = WA_ClassColorName(unit..\"target\"),\n                            icon = spellicon,\n                            autoHide = true,\n                        }\n                        return true\n                    end\n                end\n            end\n        end\n    elseif (event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_STOP\" or event == \"UNIT_SPELLCAST_FAILED\" or event == \"UNIT_SPELLCAST_INTERRUPTED\") then\n        if UnitExists(unit) and aura_env.spellIDs[spellID] then\n            if allstates[castGUID] then\n                allstates[castGUID].show = false\n                allstates[castGUID].changed = true\n                return true\n            end\n        end\n    end\nend",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["uid"] = "sqZTmCyV5kT",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Containment"] = "OUTSIDE",
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["glow"] = false,
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "%c",
			["text2Font"] = "Arial Narrow",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "07 Meteor Leap /  On You",
			["desaturate"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    local angle = (progress * 4 * math.pi) - (math.pi / 2)\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        aura_env.region.icon:SetDesaturation((math.sin(angle) + 1)/2)\n        return start\n    end\nend\n--ty asakawa",
					["use_alpha"] = true,
					["type"] = "custom",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["colorType"] = "straightColor",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["use_color"] = false,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Stack.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
		},
		["08 Voltaic Flash"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dance.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 839983,
			["icon"] = true,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "5fquK1YFGpB",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dance",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "08 Voltaic Flash",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284262,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284262 and IsItemInRange(28767, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284262 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "",
						["use_spellId"] = false,
						["name"] = "Voltaic Flash",
						["spellIds"] = {
							285280, -- [1]
						},
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["dynamicDuration"] = false,
						["names"] = {
							"Searing Waves", -- [1]
						},
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["07 Crushed (Tank-Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useglowColor"] = false,
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["names"] = {
							"Toad Toxin", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["auranames"] = {
							"272868", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Cast",
						["useExactSpellId"] = true,
						["spellIds"] = {
							285044, -- [1]
						},
						["use_spellId"] = false,
						["name"] = "Plague of Toads",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["combineMatches"] = "showLowest",
						["auraspellids"] = {
							"289858", -- [1]
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownEdge"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 136040,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["cooldownTextEnabled"] = true,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "+Dmgtaken",
			["text1Enabled"] = true,
			["text2Enabled"] = true,
			["text2"] = "%s%c",
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "07 Crushed (Tank-Only)",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "ZYp55o411zk",
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["06 World Enlarger"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.spellIDs = {\n    [289537] = true,\n    [286693] = true,\n    [288041] = true,\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 667398,
			["glow"] = false,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Spread",
			["internalVersion"] = 11,
			["text1Enabled"] = true,
			["zoom"] = 0.3,
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "06 World Enlarger",
			["selfPoint"] = "CENTER",
			["text2Enabled"] = false,
			["width"] = 80,
			["frameStrata"] = 1,
			["uid"] = "NzRkFvmRmz2",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 283606,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["unit"] = "boss1",
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["debuffType"] = "HARMFUL",
						["check"] = "event",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if aura_env.spellIDs[spellID] and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if aura_env.spellIDs[spellID] and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["custom_hide"] = "timed",
						["name"] = "Crush",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["castType"] = "cast",
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "function()\n    return aura_env.duration, aura_env.expirationTime\nend",
						["use_spellId"] = true,
						["spellIds"] = {
							282939, -- [1]
						},
						["custom_type"] = "stateupdate",
						["remOperator"] = "<=",
						["dynamicDuration"] = true,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Avalanche"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["semver"] = "2.0.43",
			["useglowColor"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
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
						["spellId"] = 287565,
						["auranames"] = {
							"285254", -- [1]
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["event"] = "Cast",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = false,
						["spellIds"] = {
							285215, -- [1]
						},
						["auraspellids"] = {
							"285254", -- [1]
						},
						["name"] = "Avalanche",
						["unevent"] = "auto",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["useExactSpellId"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["displayIcon"] = 1033907,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/112",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				0, -- [2]
				0.098039215686274, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["cooldownTextEnabled"] = true,
			["load"] = {
				["role"] = {
					["multi"] = {
						["TANK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["useGlowColor"] = false,
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Keep Moving",
			["text1Enabled"] = true,
			["text1Font"] = "Arial Narrow",
			["text2"] = "%s",
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "09 Avalanche",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["uid"] = "g5w6q7N7Jez",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Zombie Dust Totem"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["useGlowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["names"] = {
							"Caress of Death", -- [1]
						},
						["use_tooltip"] = false,
						["use_unit"] = true,
						["duration"] = "2",
						["unit"] = "player",
						["custom"] = "function(event, unit, _,spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 285003 and IsItemInRange(32825, unit)\n        then return true \n        end \n    end \nend",
						["useName"] = true,
						["custom_hide"] = "timed",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["type"] = "custom",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"286695", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Cast",
						["unevent"] = "auto",
						["spellIds"] = {
							285213, -- [1]
						},
						["use_spellId"] = false,
						["name"] = "Plague of Toads",
						["custom_type"] = "event",
						["debuffType"] = "HARMFUL",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["glow"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Switch.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 136232,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownTextEnabled"] = true,
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Containment"] = "OUTSIDE",
			["load"] = {
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Kill Totem",
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["auto"] = true,
			["desaturate"] = false,
			["id"] = "07 Zombie Dust Totem",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["uid"] = "(4zWCLo50fr",
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = false,
			["xOffset"] = 0,
		},
		["Opulence Opal Stacks"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 400,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1FontFlags"] = "OUTLINE",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["xOffset"] = -64,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["auranames"] = {
							"Unleashed Rage", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/imlz-ng6S/2",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMLEFT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["cooldownTextEnabled"] = true,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glow"] = false,
			["text1Containment"] = "INSIDE",
			["uid"] = "45yTVVmNBgf",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "OPULENCE",
			["width"] = 64,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["desaturate"] = false,
			["text2FontSize"] = 24,
			["text1Font"] = "Friz Quadrata TT",
			["text1"] = "Stacks: %s",
			["auto"] = true,
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["authorOptions"] = {
			},
			["id"] = "Opulence Opal Stacks",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 11,
		},
		["02 Deathly Slam [Alliance]"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
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
						["spellId"] = "282543",
						["duration"] = "3.5",
						["subeventPrefix"] = "SPELL",
						["destUnit"] = "player",
						["buffShowOn"] = "showOnActive",
						["type"] = "event",
						["subeventSuffix"] = "_DAMAGE",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["event"] = "Combat Log",
						["spellIds"] = {
						},
						["use_itemSlot"] = true,
						["use_spellId"] = true,
						["name"] = "Deathly Slam",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["use_destUnit"] = true,
						["names"] = {
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/bfaraid2/112",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 607865,
			["useglowColor"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["faction"] = {
					["single"] = "Alliance",
				},
				["use_faction"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Move",
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["icon"] = true,
			["id"] = "02 Deathly Slam [Alliance]",
			["desaturate"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["frameStrata"] = 1,
			["uid"] = "Jeold5dtui3",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Ire of the Deep"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\n    return aura_env.soakamount\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["icon"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "",
					["do_sound"] = false,
					["do_custom"] = false,
					["sound"] = " custom",
				},
				["init"] = {
					["custom"] = "aura_env.initialCast = 0\naura_env.soakamount = 0",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 237371,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "5",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["custom"] = "function(event, ...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n        if subEvent == \"SPELL_CAST_START\" and spellID == 285017 then\n            if aura_env.initialCast < 4 then\n                aura_env.initialCast = aura_env.initialCast + 1\n            end\n            aura_env.soakamount = aura_env.initialCast\n        end\n        if subEvent == \"SPELL_CAST_START\" and spellID == 285040 then\n            local aura_env = aura_env \n            C_Timer.After(0.1, function() aura_env.soakamount = aura_env.soakamount - 1 PlaySoundFile(\"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Soak.ogg\", \"MASTER\") end)\n            return true\n        end\n    end\n    if event == \"ENCOUNTER_START\" then\n        aura_env.initialCast = 0\n        aura_env.soakamount = 0\n    end\nend",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text2Color"] = {
				1, -- [1]
				0.96078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["text2Font"] = "Arial Narrow",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Soak",
			["text2Enabled"] = true,
			["internalVersion"] = 11,
			["text2"] = "%c",
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "08 Ire of the Deep",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "8XPSlusi3XA",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["07 Serpent's Breath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"272868", -- [1]
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["names"] = {
							"Toad Toxin", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Cast",
						["useExactSpellId"] = true,
						["spellIds"] = {
							285044, -- [1]
						},
						["use_spellId"] = false,
						["name"] = "Plague of Toads",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["combineMatches"] = "showLowest",
						["auraspellids"] = {
							"272868", -- [1]
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 136040,
			["internalVersion"] = 11,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "hAv0rYFQiSm",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["icon"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dot",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["xOffset"] = 0,
			["id"] = "07 Serpent's Breath",
			["glow"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/112",
		},
		["05 Akunda's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["useGlowColor"] = true,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["useglowColor"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282597,
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["unit"] = "player",
						["auranames"] = {
							"286811", -- [1]
						},
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["names"] = {
							"Akunda's Wrath", -- [1]
						},
						["spellIds"] = {
							286811, -- [1]
						},
						["event"] = "Cast",
						["debuffType"] = "HARMFUL",
						["castType"] = "cast",
						["use_spellId"] = false,
						["name"] = "Kimbul's Wrath",
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 839977,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownTextEnabled"] = true,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["stickyDuration"] = false,
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["text1Containment"] = "OUTSIDE",
			["cooldownEdge"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Spread",
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["auto"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "05 Akunda's Wrath",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["width"] = 80,
			["icon"] = true,
			["uid"] = "dPnUnLV8lzz",
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = true,
		},
		["02 High Energy [Alliance]"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 136201,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = true,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "GLUFVkfk3E(",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["faction"] = {
					["single"] = "Alliance",
				},
				["use_faction"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["alpha"] = 1,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				0.94117647058824, -- [1]
				1, -- [2]
				0.95294117647059, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["text2FontSize"] = 35,
			["semver"] = "2.0.43",
			["text1"] = "Energy",
			["selfPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["text2"] = "%p",
			["auto"] = true,
			["xOffset"] = 0,
			["id"] = "02 High Energy [Alliance]",
			["glow"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["subeventSuffix"] = "_CAST_START",
						["percentpower"] = "85",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "0",
								["variable"] = "power",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "25",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0.054901960784314, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
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
								["op"] = ">=",
								["value"] = "25",
								["variable"] = "power",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "50",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.9921568627451, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "50",
								["variable"] = "power",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "75",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.72156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "75",
								["variable"] = "power",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "100",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.023529411764706, -- [3]
								1, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["08 Storm's Wail"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["useGlowColor"] = true,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownTextEnabled"] = true,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = true,
			["cooldownSwipe"] = true,
			["displayIcon"] = 1717108,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Clear.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285350", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Storm's Wail", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							285350, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["uid"] = "MkEiT41z1I8",
			["useTooltip"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["desaturate"] = false,
			["text2Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["semver"] = "2.0.43",
			["zoom"] = 0.3,
			["text2FontSize"] = 25,
			["text1Containment"] = "OUTSIDE",
			["text1"] = "Clear Pools",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%s",
			["auto"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "08 Storm's Wail",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["width"] = 80,
			["text1Enabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/bfaraid2/112",
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
		["08 Electric Shroud"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function() \nif aura_env.state and aura_env.state.tooltip1 then\nreturn AbbreviateNumbers(aura_env.state.tooltip1)\nend\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["unit"] = "player",
						["custom"] = "function()\n    local tState = WeakAuras.triggerState[aura_env.id]\n    if tState.triggers[2] then\n        local clones = tState[2]\n        for unit, _ in pairs(clones) do\n            if IsItemInRange(28767, unit) then\n                return true\n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["customIcon"] = "function()\n    if aura_env.icon then return aura_env.icon\n    end\nend",
						["check"] = "update",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"287995", -- [1]
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "nonplayers",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["group_count"] = "100%",
						["use_specific_unit"] = false,
						["buffShowOn"] = "showOnMissing",
						["showClones"] = true,
						["type"] = "aura2",
						["unit"] = "boss",
						["auraspellids"] = {
							"130", -- [1]
							"11426", -- [2]
						},
						["perUnitMode"] = "affected",
						["fetchTooltip"] = true,
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
						["combinePerUnit"] = true,
						["match_countOperator"] = "<",
						["spellIds"] = {
							21562, -- [1]
						},
						["group_countOperator"] = "<",
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Power Word: Fortitude", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] \nend",
				["activeTriggerMode"] = 2,
			},
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "136051",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["desaturate"] = true,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "JTQaAHXv)jD",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.019607843137255, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["glow"] = false,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Absorb Left",
			["text2Font"] = "Arial Narrow",
			["alpha"] = 1,
			["text2"] = "%c",
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "08 Electric Shroud",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 11,
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["cooldownTextEnabled"] = true,
		},
		["LootSpecGroup"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"LootSpecIcon", -- [1]
				"CurrentSpecIcon", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["border"] = false,
			["yOffset"] = -1286.08000183105,
			["anchorPoint"] = "TOP",
			["borderSize"] = 16,
			["authorOptions"] = {
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = -1269.08508300781,
			["url"] = "https://wago.io/SJzvGvYd7/6",
			["expanded"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["semver"] = "1.0.0-6",
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "LootSpecGroup",
			["regionType"] = "group",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 11,
			["config"] = {
			},
			["version"] = 6,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["uid"] = "kOJWhIeMGTv",
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
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
				["difficulty"] = {
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
			["borderInset"] = 11,
		},
		["Opulence Diamond Active"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 400,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/imlz-ng6S/2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["xOffset"] = -64,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "OPULENCE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Containment"] = "OUTSIDE",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Enabled"] = true,
			["glow"] = false,
			["uid"] = "CJOueUSTngh",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Diamond of the Unshakeable Protector", -- [1]
						},
						["fetchTooltip"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1"] = " ",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["cooldownEdge"] = false,
			["id"] = "Opulence Diamond Active",
			["text2Enabled"] = false,
			["alpha"] = 1,
			["width"] = 64,
			["text1Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["07 Focused Demise On You"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound_path"] = "",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.spellIDs = {\n    [286779] = true,\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["names"] = {
						},
						["event"] = "Chat Message",
						["events"] = "UNIT_TARGET, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED",
						["customDuration"] = "",
						["custom"] = "function(allstates, event, unit, castGUID, spellID)    \n    if event == \"UNIT_TARGET\" then\n        if UnitExists(unit) then\n            if UnitIsUnit(unit..\"target\", \"player\") then\n                local expirationTime = select(5, UnitCastingInfo(unit))\n                if expirationTime then\n                    local exp = expirationTime / 1000\n                    local dur = expirationTime / 1000 - GetTime()\n                    local spellicon = select(3, UnitCastingInfo(unit))\n                    local spellId = select(9, UnitCastingInfo(unit))\n                    if aura_env.spellIDs[spellId] and not allstates[UnitGUID(unit)] then\n                        allstates[UnitGUID(unit)] = {\n                            show = true,\n                            changed =  true,\n                            progressType = \"timed\", \n                            duration = dur,\n                            expirationTime = exp,\n                            name = WA_ClassColorName(unit..\"target\"),\n                            icon = spellicon,\n                            autoHide = true,\n                        }\n                        return true\n                    end\n                end\n            end\n        end\n    elseif (event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_STOP\" or event == \"UNIT_SPELLCAST_FAILED\" or event == \"UNIT_SPELLCAST_INTERRUPTED\") then\n        if UnitExists(unit) and aura_env.spellIDs[spellID] then\n            if allstates[UnitGUID(unit)] then\n                allstates[UnitGUID(unit)].show = false\n                allstates[UnitGUID(unit)].changed = true\n                return true\n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["dynamicDuration"] = false,
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 571321,
			["cooldownTextEnabled"] = true,
			["desaturate"] = true,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "zRLJqg4VW2b",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
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
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["cooldownEdge"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["glow"] = false,
			["text2FontSize"] = 24,
			["semver"] = "2.0.43",
			["text1"] = "Targeted",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "07 Focused Demise On You",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
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
		["09 Marked Target"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"288038", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							288038, -- [1]
						},
						["useGroup_count"] = false,
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Marked Target", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/bfaraid2/112",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["useglowColor"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["affixes"] = {
				},
				["encounterid"] = "2281",
				["use_role"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Fixated",
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["icon"] = true,
			["id"] = "09 Marked Target",
			["desaturate"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["frameStrata"] = 1,
			["uid"] = "9Uew1GWD39q",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Sea's Temptation"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg",
					["do_sound"] = true,
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1391616,
			["text2Font"] = "Arial Narrow",
			["icon"] = true,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "62sm)YtUFBo",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Add Inc",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["glow"] = false,
			["id"] = "08 Sea's Temptation",
			["cooldownTextEnabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284383,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284383 and IsItemInRange(28767, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284383 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "",
						["use_spellId"] = false,
						["name"] = "Sea's Temptation",
						["spellIds"] = {
							285280, -- [1]
						},
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["dynamicDuration"] = false,
						["names"] = {
							"Searing Waves", -- [1]
						},
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
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
		["07 Death's Door"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1802889,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["names"] = {
							"Death's Door", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["event"] = "Cast",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_spellId"] = false,
						["spellIds"] = {
							288449, -- [1]
						},
						["name"] = "Plague of Toads",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"288449", -- [1]
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "s7GIReyd4HT",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Drops Rift",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "07 Death's Door",
			["cooldownEdge"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["05 Paku's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Hide.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["custom"] = "WeakAuras.ScanEvents(\"PAKU_WINDS\")",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1624583,
			["glow"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["use_specific_unit"] = false,
						["duration"] = "5",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["type"] = "event",
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "spell:282107",
						["custom_hide"] = "timed",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["use_message"] = true,
						["use_unit"] = true,
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Containment"] = "OUTSIDE",
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Hide",
			["authorOptions"] = {
			},
			["internalVersion"] = 11,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "05 Paku's Wrath",
			["desaturate"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "(AXVAfiDNdU",
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Chilling Touch"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["xOffset"] = 0,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownEdge"] = false,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 135854,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Font"] = "Arial Narrow",
			["internalVersion"] = 11,
			["config"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["stickyDuration"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["text2Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "ACShine",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "-%tooltip1%% Speed",
			["alpha"] = 1,
			["auto"] = true,
			["text2"] = "%s%c",
			["useGlowColor"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "09 Chilling Touch",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "ep6DoN06TAK",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"287993", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["use_unit"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							285215, -- [1]
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["useGroup_count"] = false,
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["variable"] = "stacks",
						["value"] = "17",
					},
					["changes"] = {
						{
							["property"] = "glowColor",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "glowType",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [4]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\High Stacks.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [5]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["07 Bwonsamdi's Boon"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["icon"] = true,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["glow"] = false,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Transition.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"286695", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["use_unit"] = true,
						["name"] = "Plague of Toads",
						["custom_hide"] = "timed",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_CHANNEL_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284446\n        then\n            local _, _, _, startC, endC  = UnitChannelInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[UnitGUID(unitID)] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_CHANNEL_STOP\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284446 and allstates[UnitGUID(unitID)] then\n            allstates[UnitGUID(unitID)].changed = true\n            allstates[UnitGUID(unitID)].show = false\n        end\n    end\n    return true\nend",
						["debuffType"] = "HARMFUL",
						["custom_type"] = "stateupdate",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Caress of Death", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Cast",
						["unevent"] = "auto",
						["spellIds"] = {
							285213, -- [1]
						},
						["use_spellId"] = false,
						["events"] = "UNIT_SPELLCAST_CHANNEL_START, UNIT_SPELLCAST_CHANNEL_STOP",
						["type"] = "custom",
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["duration"] = "4",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "237557",
			["cooldownTextEnabled"] = true,
			["authorOptions"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
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
			["stickyDuration"] = false,
			["width"] = 80,
			["alpha"] = 1,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["desaturate"] = false,
			["semver"] = "2.0.43",
			["text2FontSize"] = 16,
			["zoom"] = 0.3,
			["text1"] = "Transition",
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["useGlowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "07 Bwonsamdi's Boon",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/bfaraid2/112",
			["uid"] = "c)yAxxtuoRZ",
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Tosh RaidCDs bar"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/rJ3tSWjdX/8",
			["icon"] = true,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 4,
			["sparkOffsetY"] = 0,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.7,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Tosh RaidCDs",
			["customTextUpdate"] = "event",
			["displayTextLeft"] = "%sourceName",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["event"] = "Chat Message",
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["custom"] = "function(allstates, event, ...)\n    if event == \"ENCOUNTER_END\" and aura_env.ShouldResetCDs() then\n        for k,v in pairs(allstates) do\n            v.expirationTime = nil\n        end\n        return true\n\n    elseif event == aura_env.events.completed then\n        local sourceGUID, spellId = ...\n        if not sourceGUID or not spellId then return end\n        local key = sourceGUID .. spellId\n        local state = allstates[key]\n        if not state then return end\n        local info = state.cdInfo\n        state.duration = info.cd\n        state.expirationTime = (state.duration - info.duration) + GetTime()\n        state.inverse = true\n        state.active = false\n        aura_env:setindex(state)\n        state.changed = true\n        return true\n\n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subevent = select(2,...)\n        if subevent == \"SPELL_CAST_SUCCESS\" then\n            local sourceGUID = aura_env.owner(select(4,...))\n            local spellId = select(12,...)\n            local key = sourceGUID .. spellId\n            local state = allstates[key]\n            if not state then\n                if spellId == 2050 or spellId == 34861 then -- Holy Word: Salvation CD reduction\n                    spellId = 265202\n                    key = sourceGUID .. spellId\n                    state = allstates[key]\n                    if state then\n                        if state.expirationTime and state.expirationTime < GetTime() then\n                            state.expirationTime = state.expirationTime - 30\n                        end\n                    end\n                elseif spellId == 121253 then --  Fortifying Brew\n                    spellId = 115203\n                    key = sourceGUID .. spellId\n                    state = allstates[key]\n                    if state then\n                        if state.expirationTime and state.expirationTime < GetTime() then\n                            state.expirationTime = state.expirationTime - 4\n                        end\n                    end\n                end\n                return\n            end\n            local info = state.cdInfo\n            if (info.duration or 0) > 0 then\n                state.duration = info.duration\n                state.inverse = false\n                state.active = true\n                aura_env:setindex(state)\n                local completed = aura_env.events.completed\n                C_Timer.After(info.duration, function() WeakAuras.ScanEvents(completed, sourceGUID, spellId) end)\n            else\n                state.duration = info.cd\n                state.inverse = true\n            end\n            state.expirationTime = state.duration + GetTime()\n            state.changed = true\n            return true\n        end\n\n    elseif event == \"PLAYER_ENTERING_WORLD\" or event == \"GROUP_ROSTER_UPDATE\" or event == \"RAID_ROSTER_UPDATE\" or event == \"PLAYER_SPECIALIZATION_CHANGED\" or event == aura_env.events.update then\n        for k,v in pairs(allstates) do\n            v.show = false\n            v.changed = true\n        end\n\n        local testbars = aura_env.config.testbars or 0\n        for i=1,testbars do\n            local tab = math.random(GetNumSpellTabs())\n            local slots = select(4, GetSpellTabInfo(tab))\n            local testSpell = GetSpellBookItemName(math.random(slots), BOOKTYPE_SPELL)\n            local _, _, icon, _, _, _, spellId = GetSpellInfo(testSpell)\n            allstates[i] = {\n                show = true,\n                changed = true,\n                sourceName = \"testbar\"..i,\n                progressType = \"timed\",\n                autoHide = false,\n                icon = icon,\n                spellId = spellId,\n                name = \"testbar\"..i,\n                duration = 10,\n                index = \"zzzz\"..i, -- sort last\n\n                -- Condition variables\n                active = false,\n                isplayer = false,\n                classid = select(2, UnitClass(\"player\")),\n            }\n        end\n\n        local playerguid = UnitGUID(\"player\")\n        for uid in WA_IterateGroupMembers() do\n            local info = UnitIsVisible(uid) and aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))\n            if info then\n                local cds = aura_env.specCDs[info.global_spec_id]\n                if cds then\n                    for spellId, cdInfo in pairs(cds) do\n                        if cdInfo.talent then\n                            cdInfo = cdInfo.talent(info.talents)\n                        end\n                        if cdInfo then\n                            spellId = cdInfo.spellId or spellId\n                            local key = info.guid .. spellId\n                            allstates[key] = {\n                                show = true,\n                                changed = true,\n                                sourceName = info.name,\n                                progressType = \"timed\",\n                                autoHide = false,\n                                icon = select(3, GetSpellInfo(spellId)),\n                                spellId = spellId,\n                                name = info.name .. spellId,\n                                sourceGUID = info.guid,\n                                duration = cdInfo.cd,\n\n                                info = info,\n                                cdInfo = cdInfo,\n\n                                -- Condition variables\n                                active = false,\n                                isplayer = (playerguid == info.guid),\n                                classid = info.class,\n                            }\n                            aura_env:setindex(allstates[key])\n                        end\n                    end\n                end\n            end\n        end\n        return true\n    end\nend",
						["spellIds"] = {
						},
						["events"] = "PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,TOSH_RAID_CD_COMPLETED,TOSH_RAID_CD_UPDATE,ENCOUNTER_END,PLAYER_SPECIALIZATION_CHANGED",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["customVariables"] = "  {\n    expirationTime = true,\n    active = {\n        display = \"effect active\",\n        type = \"bool\",\n    },\n    isplayer = {\n        display = \"is player\",\n        type = \"bool\",\n    },\n    classid = {\n        display = \"Class\",\n        type = \"string\",\n    }\n  }",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "testbars",
					["desc"] = "",
					["useDesc"] = false,
					["name"] = "Test Mode",
					["default"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "Set this to configure test bars to help with alignment (note: these will only show with the options menu closed)",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "header",
					["useName"] = false,
					["text"] = "",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "select",
					["key"] = "sortMode",
					["values"] = {
						"active > class > player > spellId", -- [1]
						"class > player > spellId", -- [2]
						"class > spellId > player", -- [3]
					},
					["name"] = "Sort Mode",
					["default"] = 2,
					["width"] = 1,
				}, -- [4]
			},
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["use_color"] = false,
					["scalex"] = 1,
					["x"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function()\n    if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    local c = aura_env.state.barColor\n    if not c then return 0,0,0,1 end\n    return c.r, c.g, c.b, 1\nend",
					["rotate"] = 0,
					["scaley"] = 1,
					["colorA"] = 1,
				},
				["main"] = {
					["type"] = "none",
					["colorR"] = 1,
					["use_color"] = false,
					["colorB"] = 1,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["colorG"] = 1,
					["x"] = 0,
					["colorFunc"] = "",
					["rotate"] = 0,
					["scaley"] = 1,
					["scalex"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["config"] = {
				["testbars"] = false,
				["sortMode"] = 2,
			},
			["stickyDuration"] = false,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = false,
			["version"] = 8,
			["sparkWidth"] = 10,
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["authorMode"] = true,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "Z3)S3BoYJlD",
			["textSize"] = 14,
			["width"] = 150,
			["borderBackdrop"] = "Blizzard Tooltip",
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 16,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon_side"] = "LEFT",
			["timerSize"] = 12,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,PLAYER_SPECIALIZATION_CHANGED,TOSH_RAID_CD_COMPLETED,TOSH_RAID_CD_UPDATE\nlocal events = {\n    completed = \"TOSH_RAID_CD_COMPLETED\",\n    update = \"TOSH_RAID_CD_UPDATE\",\n}\n\naura_env.specCDs = {\n    --Death Knight\n    [250] = { -- Blood\n    },\n    [251] = { -- Frost\n    },\n    [252] = { -- Unholy\n    },\n    -- Demon Hunter\n    [577] = { -- Havoc\n        [196718] = { -- Darkness\n            duration = 8,\n            cd = 180,\n        },\n    },\n    [581] = { -- Vengeance\n    },\n    -- Druid\n    [102] = { -- Balance\n    },\n    [103] = { -- Feral\n    },\n    [104] = { -- Guardian\n    },\n    [105] = { -- Restoration\n        [740] = { -- Tranquility\n            talent = function(talents)\n                if talents[21716] then\n                    return {\n                        duration = 8,\n                        cd = 120,\n                    }\n                else\n                    return {\n                        duration = 8,\n                        cd = 180,\n                    }\n                end\n            end,\n        },\n    },\n    -- Hunter\n    [253] = { -- Beast Mastery\n    },\n    [254] = { -- Marksmanship\n    },\n    [255] = { -- Survival\n    },\n    -- Mage\n    [62] = { -- Arcane\n    },\n    [63] = { -- Fire\n    },\n    [64] = { -- Frost\n    },\n    -- Monk\n    [268] = { -- Brewmaster\n    },\n    [269] = { -- Windwalker\n    },\n    [270] = { -- Mistweaver\n        [115310] = { -- Revival\n            cd = 180,\n        },\n    },\n    -- Paladin\n    [65] = { -- Holy\n        [31821] = { -- Aura Mastery\n            duration = 8,\n            cd = 180,\n        },\n        [216331] = {\n            talent = function(talents)\n                if talents[22190] then\n                    return {\n                        duration = 20,\n                        cd = 120,\n                    }\n                end\n            end,\n        },\n    },\n    [66] = { -- Protection\n    },\n    [70] = { -- Retribution\n    },\n    -- Priest\n    [256] = { -- Discipline\n        [62618] = { -- Power Word: Barrier\n            talent = function(talents)\n                if not talents[21184] then\n                    return {\n                        duration = 10,\n                        cd = 180,\n                    }\n                end\n            end,\n        },\n        [271466] = { -- Luminous Barrier\n            talent = function(talents)\n                if talents[21184] then\n                    return {\n                        duration = 10,\n                        cd = 180,\n                    }\n                end\n            end,\n        },\n        [246287] = { -- Evangelism\n            talent = function(talents)\n                if talents[22976] then\n                    return {\n                        duration = 6,\n                        cd = 90,\n                    }\n                end\n            end,\n        },\n        [47536] = { -- Rapture\n            duration = 10,\n            cd = 90,\n        },\n    },\n    [257] = { -- Holy\n        [64843] = { -- Divine Hymn\n            duration = 8,\n            cd = 180,\n        },\n        [265202] = { -- Holy Word: Salvation\n            talent = function(talents)\n                if talents[23145] then\n                    return {\n                        duration = 10,\n                        cd = 720,\n                    }\n                end\n            end,\n        }\n    },\n    [258] = { -- Shadow\n    },\n    -- Rogue\n    [259] = { -- Assassination\n    },\n    [260] = { -- Outlaw\n    },\n    [261] = { -- Subtlety\n    },\n    -- Shaman\n    [262] = { -- Elemental\n    },\n    [263] = { -- Enhancement\n    },\n    [264] = { -- Restoration\n        [108280] = { -- Healing Tide Totem\n            duration = 10,\n            cd = 180,\n        },\n        [98008] = { -- Spirit Link Totem\n            duration = 6,\n            cd = 180,\n        },\n    },\n    -- Warlock\n    [265] = { -- Affliction\n    },\n    [266] = { -- Demonology\n    },\n    [267] = { -- Destruction\n    },\n    -- Warrior\n    [71] = { -- Arms\n        [97462] = { -- Rallying Cry\n            duration = 10,\n            cd = 180,\n        },\n    },\n    [72] = { -- Fury\n        [97462] = { -- Rallying Cry\n            duration = 10,\n            cd = 180,\n        },\n    },\n    [73] = { -- Protection\n        [97462] = { -- Rallying Cry\n            duration = 10,\n            cd = 180,\n        },\n    },\n}\n\naura_env.events = events\n\naura_env.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)\n\nlocal inspectCallback = {\n    Update = function(self, guid, unit, info)\n        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)\n    end,\n    Remove = function(self, guid)\n        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)\n    end,\n}\naura_env.inspectLib.RegisterCallback(inspectCallback, \"GroupInSpecT_Update\", \"Update\")\naura_env.inspectLib.RegisterCallback(inspectCallback, \"GroupInSpecT_Remove\", \"Remove\")\n\nfunction aura_env.owner(guid)\n    local type = strsplit(\"-\",guid)\n    if type == \"Pet\" then\n        for unit in WA_IterateGroupMembers() do\n            if UnitGUID(unit..\"pet\") == guid then\n                return UnitGUID(unit)\n            end\n        end\n    end\n    return guid\nend\n\naura_env.sortModeFuncs = {\n    [1] = function(state) -- \"active > class > player > spellId\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = (active and \"active\" or \"inactive\")..\",\" ..class..\",\"..player..\",\"..spellId \n    end,\n    [2] = function(state) -- \"class > player > spellId\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = class..\",\"..player..\",\"..spellId \n    end,\n    [3] = function(state) -- \"class > spellId > player\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = class..\",\"..spellId..\",\"..player\n    end,\n}\n\n\nfunction aura_env:setindex(state)\n    self.sortModeFuncs[self.config.sortMode](state)\nend\n\nfunction aura_env.ShouldResetCDs()\n    local _,_,difficulty = GetInstanceInfo()\n    if difficulty == 3 or difficulty == 4 or difficulty == 5 or difficulty == 6 or difficulty == 7 or difficulty == 14 or difficulty == 15 or difficulty == 16 or difficulty == 17 then\n        return true\n    end\n    return false\nend",
					["do_custom"] = true,
				},
			},
			["sparkHeight"] = 30,
			["rotateText"] = "NONE",
			["sparkRotationMode"] = "AUTO",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["semver"] = "1.0.0-8",
			["id"] = "Tosh RaidCDs bar",
			["borderInFront"] = true,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["height"] = 18,
			["inverse"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "isplayer",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "if not aura_env.state then return end\naura_env.state.sourceName = aura_env.state.sourceName..\" <\"",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "active",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "textColor",
						}, -- [1]
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "timerColor",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "WARRIOR",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.78039215686274, -- [1]
								0.61176470588235, -- [2]
								0.43137254901961, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "PALADIN",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.96078431372549, -- [1]
								0.54901960784314, -- [2]
								0.72941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "HUNTER",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.67058823529412, -- [1]
								0.83137254901961, -- [2]
								0.45098039215686, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "ROGUE",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.96078431372549, -- [2]
								0.41176470588235, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "PRIEST",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "DEATHKNIGHT",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.76862745098039, -- [1]
								0.12156862745098, -- [2]
								0.23137254901961, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "SHAMAN",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								0.43921568627451, -- [2]
								0.87058823529412, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "MAGE",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.25098039215686, -- [1]
								0.78039215686274, -- [2]
								0.92156862745098, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [10]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "WARLOCK",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.52941176470588, -- [1]
								0.52941176470588, -- [2]
								0.92941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [11]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "MONK",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								1, -- [2]
								0.58823529411765, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [12]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "DRUID",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.49019607843137, -- [2]
								0.03921568627451, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [13]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "DEMONHUNTER",
						["variable"] = "classid",
					},
					["changes"] = {
						{
							["value"] = {
								0.63921568627451, -- [1]
								0.18823529411765, -- [2]
								0.78823529411765, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [14]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["op"] = ">",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "active",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "expirationTime",
								["value"] = "0",
								["op"] = ">",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0.6,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [15]
			},
			["zoom"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["07 Seal of Bwonsamdi"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\nreturn \"Soak Cast\", \"Soak\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["authorOptions"] = {
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135803,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Caress of Death", -- [1]
						},
						["use_unit"] = true,
						["use_tooltip"] = false,
						["auranames"] = {
							"286695", -- [1]
						},
						["duration"] = "4",
						["name"] = "Plague of Toads",
						["custom_hide"] = "timed",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 286695 and IsItemInRange(33119, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 286695 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["debuffType"] = "HARMFUL",
						["custom_type"] = "stateupdate",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["event"] = "Cast",
						["unevent"] = "auto",
						["spellIds"] = {
							285213, -- [1]
						},
						["use_spellId"] = false,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["type"] = "custom",
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["custom_type"] = "stateupdate",
						["duration"] = "4",
						["event"] = "Health",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(allstates, event, unit, castGUID,spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 286695 and IsItemInRange(33119, unit) and string.match(unit, \"boss\") then \n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = 4,\n                expirationTime = 4 + GetTime(),\n                autoHide = true,\n            }\n            return true \n        end \n    end \nend",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Containment"] = "OUTSIDE",
			["width"] = 80,
			["text2Enabled"] = true,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "Arial Narrow",
			["semver"] = "2.0.43",
			["text2FontSize"] = 16,
			["zoom"] = 0.3,
			["text1"] = "%c1",
			["internalVersion"] = 11,
			["auto"] = false,
			["text2"] = "%c2",
			["useGlowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["id"] = "07 Seal of Bwonsamdi",
			["cooldownTextEnabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "TVigiCRkWro",
			["inverse"] = false,
			["glow"] = false,
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
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [2]
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
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Soak.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
						{
							["value"] = "Pixel",
							["property"] = "glowType",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [4]
						{
							["property"] = "glowColor",
						}, -- [5]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text1Color",
						}, -- [6]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["05 Crawling Hex"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"282135", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Crawling Hex", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							282135, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["glow"] = false,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Spread",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "05 Crawling Hex",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "GJabENHewYD",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["09 Orb of Frost"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 288619,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Orb of Frost",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 629077,
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Soak.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "UjHGaQi0gQh",
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
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
				["use_difficulty"] = false,
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "OUTSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Soak",
			["glow"] = false,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["frameStrata"] = 1,
			["id"] = "09 Orb of Frost",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["internalVersion"] = 11,
		},
		["07 Inevitable End"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\nreturn \"Move\", \"Winds\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["use_scale"] = false,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    local angle = (progress * 4 * math.pi) - (math.pi / 2)\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        return start + (((math.sin(angle) + 1)/2) * delta)\n    end\nend",
					["use_alpha"] = true,
					["scaleType"] = "straightScale",
					["colorB"] = 1,
					["scalex"] = 1,
					["use_color"] = false,
					["alpha"] = 0.32,
					["colorType"] = "straightColor",
					["y"] = 0,
					["x"] = 0,
					["type"] = "custom",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\n    end\n  ",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["scaley"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1029008,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["cooldownEdge"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 16,
			["semver"] = "2.0.43",
			["text1"] = "%c1",
			["glow"] = false,
			["alpha"] = 1,
			["text2"] = "%c2",
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "07 Inevitable End",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "TpSKI5hmTvx",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 287333,
						["use_absorbMode"] = true,
						["names"] = {
							"Shrunk", -- [1]
						},
						["unit"] = "boss1",
						["duration"] = "1",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["name"] = "Inevitable End",
						["type"] = "custom",
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "",
						["use_spellId"] = true,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 287333 and IsItemInRange(33119, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[castGUID] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 287333 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["spellIds"] = {
							284168, -- [1]
						},
						["check"] = "event",
						["dynamicDuration"] = false,
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "",
						["dynamicDuration"] = false,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_CHANNEL_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 287333 and IsItemInRange(33119, unitID) and string.match(unitID, \"boss\")\n        then\n            local _, _, _, startC, endC  = UnitChannelInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            if endC then\n                allstates[UnitGUID(unitID)] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"timed\",\n                    duration = durationTime,\n                    expirationTime = expirationTime,\n                    autoHide = true,\n                } \n            end\n        end\n    end\n    if event == \"UNIT_SPELLCAST_CHANNEL_STOP\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 287333 and allstates[UnitGUID(unitID)] then\n            allstates[UnitGUID(unitID)].changed = true\n            allstates[UnitGUID(unitID)].show = false\n        end\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["events"] = "UNIT_SPELLCAST_CHANNEL_START, UNIT_SPELLCAST_CHANNEL_STOP",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text2Color",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["property"] = "text1Color",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["04 Flames of Punishment Dot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["unit"] = "player",
						["auranames"] = {
							"283063", -- [1]
						},
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							283063, -- [1]
						},
						["event"] = "Cast",
						["debuffType"] = "HARMFUL",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["use_unit"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135822,
			["useglowColor"] = false,
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Hs2APo6PqjG",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Arial Narrow",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dot",
			["glow"] = false,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "04 Flames of Punishment Dot",
			["icon"] = true,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["08 Tidal Shroud"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function() \nif aura_env.state and aura_env.state.tooltip1 then\nreturn AbbreviateNumbers(aura_env.state.tooltip1)\nend\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = "136051",
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text1Font"] = "Arial Narrow",
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.019607843137255, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Absorb Left",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = true,
			["text2"] = "%c",
			["auto"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["names"] = {
						},
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["custom"] = "function()\n    local tState = WeakAuras.triggerState[aura_env.id]\n    if tState.triggers[2] then\n        local clones = tState[2]\n        for unit, _ in pairs(clones) do\n            if IsItemInRange(28767, unit) then\n                return true\n            end\n        end\n    end\nend",
						["customIcon"] = "function()\n    if aura_env.icon then return aura_env.icon\n    end\nend",
						["check"] = "update",
						["event"] = "Health",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["auranames"] = {
							"286558", -- [1]
						},
						["groupclone"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "nonplayers",
						["names"] = {
							"Power Word: Fortitude", -- [1]
						},
						["use_tooltip"] = false,
						["group_count"] = "100%",
						["use_specific_unit"] = false,
						["debuffType"] = "HELPFUL",
						["showClones"] = true,
						["type"] = "aura2",
						["unit"] = "boss",
						["auraspellids"] = {
							"130", -- [1]
							"11426", -- [2]
						},
						["perUnitMode"] = "affected",
						["fetchTooltip"] = true,
						["event"] = "Health",
						["buffShowOn"] = "showOnMissing",
						["combinePerUnit"] = true,
						["match_countOperator"] = "<",
						["spellIds"] = {
							21562, -- [1]
						},
						["group_countOperator"] = "<",
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] \nend",
				["activeTriggerMode"] = 2,
			},
			["id"] = "08 Tidal Shroud",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 11,
			["uid"] = "9Ar6RoAPHNV",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["xOffset"] = 0,
		},
		["Opulence Topaz Stacks Max"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 400,
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
				},
			},
			["useglowColor"] = false,
			["alpha"] = 1,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Enabled"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"Grossly Incandescent!", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMLEFT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["url"] = "https://wago.io/imlz-ng6S/2",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
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
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "bwNl5HXx9Qo",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "OPULENCE",
			["anchorFrameType"] = "SCREEN",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["text1Font"] = "Friz Quadrata TT",
			["text1"] = "YOU CRIT",
			["auto"] = true,
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["text1FontFlags"] = "OUTLINE",
			["id"] = "Opulence Topaz Stacks Max",
			["xOffset"] = -64,
			["text2Enabled"] = false,
			["width"] = 64,
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["glow"] = false,
			["authorOptions"] = {
			},
		},
		["01 Judgment: Righteousness"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Switch.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135921,
			["cooldownTextEnabled"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "dBPDGqcnTHj",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Buffs Add",
			["glow"] = false,
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["text1Containment"] = "OUTSIDE",
			["id"] = "01 Judgment: Righteousness",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 283933,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Judgment: Righteousness",
						["use_spellId"] = true,
						["spellIds"] = {
							283598, -- [1]
						},
						["names"] = {
							"Wave of Light", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["03 Force Orb"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135854,
			["icon"] = true,
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
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
				["use_difficulty"] = false,
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["url"] = "https://wago.io/bfaraid2/112",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"287747", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Force Orb", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							287747, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "To Barrier",
			["glow"] = false,
			["text2Font"] = "Arial Narrow",
			["zoom"] = 0.3,
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "03 Force Orb",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "qeSxMEOWsMF",
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["04 Coin Shower"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.unitName then\n        return WA_ClassColorName(aura_env.state.unitName)\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
						["type"] = "aura2",
						["auranames"] = {
							"285014", -- [1]
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Stack.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 135822,
			["url"] = "https://wago.io/bfaraid2/112",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
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
				["use_difficulty"] = false,
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["text2Font"] = "Arial Narrow",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["desaturate"] = false,
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dmgsplit",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["text2"] = "%s",
			["auto"] = true,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "04 Coin Shower",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "2yWV7GunOK2",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["04 Consuming Flame"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["zoom"] = 0.3,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\n    return aura_env.counter\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["dynamicDuration"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["names"] = {
						},
						["use_unit"] = true,
						["event"] = "Health",
						["spellIds"] = {
						},
						["customDuration"] = "function()\n    return 3, 3+GetTime()\nend",
						["custom"] = "function(event, unit) \n    if UnitExists(unit) then\n        if aura_env.GUIDS[select(6, strsplit(\"-\", UnitGUID(unit)))] and string.match(unit, \"boss\") then\n            if IsItemInRange(28767, unit) then\n                local bosshp = ((UnitHealth(unit)/UnitHealthMax(unit))*100)\n                if aura_env.counter == 0 and bosshp <= 90 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 1 and bosshp <= 80 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 2 and bosshp <= 70 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 3 and bosshp <= 60 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 4 and bosshp <= 50 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 5 and bosshp <= 40 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 6 and bosshp <= 30 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    local aura_env = aura_env\n                    C_Timer.After(3, function() aura_env.counter = aura_env.counter + 1 end)\n                    return true\n                end\n            end\n        end\n    end\nend",
						["events"] = "UNIT_HEALTH",
						["custom_type"] = "event",
						["unit"] = "target",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "ENCOUNTER_START",
						["check"] = "event",
						["custom_type"] = "event",
						["custom"] = "function(event)\n    if event == \"ENCOUNTER_START\" then\n        aura_env.counter = 0\n    end\nend",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1] and aura_env.counter ~= 8\nend",
				["activeTriggerMode"] = 1,
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "if aura_env.counter ~= 6 then PlaySoundFile(\"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Next.ogg\", \"MASTER\")\nelse PlaySoundFile(\"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Collect.ogg\", \"MASTER\")\nend",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.counter = 0\naura_env.GUIDS = {\n    [\"145273\"] = true, --IN'ZASHI\n    [\"145274\"] = true, --YALAT\n}",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 134237,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Next Room",
			["text2Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2"] = "%c",
			["auto"] = true,
			["text1Enabled"] = true,
			["id"] = "04 Consuming Flame",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "0HV341ua)q6",
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["09 Glacial Ray"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["spellId"] = 288345,
						["use_absorbMode"] = true,
						["use_specific_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["event"] = "Cast",
						["name"] = "Glacial Ray",
						["castType"] = "cast",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["use_unit"] = true,
						["unit"] = "boss1",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Beam.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1698700,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Hg3SYo7I6OL",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["frameStrata"] = 1,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Beam",
			["text1Containment"] = "OUTSIDE",
			["glow"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "09 Glacial Ray",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["width"] = 80,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["09 Kul Tiran Corsair"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.35,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["actions"] = {
				["start"] = {
					["do_custom"] = true,
					["custom"] = "if not UnitGUID(\"boss3\") then\n    PlaySoundFile(aura_env.side, \"MASTER\")\nend",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.GUIDS = {\n    [\"147180\"] = \"Interface\\\\Addons\\\\SharedMedia_Causese\\\\sound\\\\Left.ogg\", --port side\n    [\"147531\"] = \"Interface\\\\Addons\\\\SharedMedia_Causese\\\\sound\\\\Right.ogg\", --starboard side\n}",
					["do_custom"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "10",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["type"] = "custom",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cast",
						["events"] = "INSTANCE_ENCOUNTER_ENGAGE_UNIT",
						["custom"] = "function(event)\n    if event == \"INSTANCE_ENCOUNTER_ENGAGE_UNIT\" then \n        if UnitGUID(\"boss2\") and not WeakAuras.triggerState[aura_env.id].triggers[1] then\n            local guid = select(6, strsplit(\"-\", UnitGUID(\"boss2\")))\n            if aura_env.GUIDS[guid] then\n                aura_env.side = aura_env.GUIDS[guid]\n                return true \n            end\n        end\n    end\nend",
						["use_spellId"] = false,
						["name"] = "Icefall",
						["spellIds"] = {
							285215, -- [1]
						},
						["custom_type"] = "event",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "1126431",
			["internalVersion"] = 11,
			["text2Font"] = "Arial Narrow",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "TzO6qFPzlnz",
			["load"] = {
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["use_role"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Adds Inc",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["text2"] = "%s",
			["auto"] = false,
			["icon"] = true,
			["id"] = "09 Kul Tiran Corsair",
			["glow"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownEdge"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
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
		["01 Seal of Reckoning"] = {
			["text2Point"] = "CENTER",
			["useGlowColor"] = false,
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["customText"] = "function()\n    if aura_env.state and aura_env.state.power then\n        if aura_env.state.power > 90 then \n            return \"Raiddmg Inc\"\n        else return \"Ignore Boss\"\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["displayIcon"] = 135971,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["use_specific_unit"] = true,
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "member",
						["auranames"] = {
							"284436", -- [1]
						},
						["spellIds"] = {
							284436, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Seal of Reckoning", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["unevent"] = "auto",
						["type"] = "status",
						["percenthealth_operator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["unit"] = "boss1",
						["use_specific_unit"] = true,
						["percenthealth"] = "80",
						["use_percentpower"] = false,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_percenthealth"] = true,
						["percentpower"] = "80",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [2]
				["activeTriggerMode"] = 2,
			},
			["text2Font"] = "Arial Narrow",
			["uid"] = "tfE2iITS92X",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["url"] = "https://wago.io/bfaraid2/112",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["width"] = 80,
			["authorMode"] = true,
			["text2Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["selfPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["desaturate"] = true,
			["semver"] = "2.0.43",
			["text2FontSize"] = 35,
			["zoom"] = 0.3,
			["text1"] = "%c",
			["glow"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.007843137254902, -- [3]
				1, -- [4]
			},
			["id"] = "01 Seal of Reckoning",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 11,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "90",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.054901960784314, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "glowColor",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "glow",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "useGlowColor",
						}, -- [3]
						{
							["value"] = "Pixel",
							["property"] = "glowType",
						}, -- [4]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
		},
		["LootSpecIcon"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 1,
			["customText"] = "function()\n    \n    local specID = GetLootSpecialization();\n    \n    local id,name,_,icon = GetSpecializationInfo(GetSpecialization());\n    \n    if specID == 0 then specID = id;\n        _,_,_,icon = GetSpecializationInfoByID(specID);\n    end\n    \nreturn icon end",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["auto"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/SJzvGvYd7/6",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local EasyMenu = EasyMenu\nlocal SELECT_LOOT_SPECIALIZATION = SELECT_LOOT_SPECIALIZATION\nlocal LOOT_SPECIALIZATION_DEFAULT = LOOT_SPECIALIZATION_DEFAULT\n\nlocal r = aura_env.region\n\nlocal menuList = {\n    { text = SELECT_LOOT_SPECIALIZATION, isTitle = true, notCheckable = true },\n    { func = function() SetLootSpecialization(0) end }\n}\n\nlocal function OnClick(self, button)\n    local specIndex = GetSpecialization();\n    if not specIndex then return end\n    \n    local lootSpecId = GetLootSpecialization() or 0\n    menuList[2].checked = (lootSpecId == 0)\n    \n    local _, specName = GetSpecializationInfo(specIndex);\n    menuList[2].text = format(LOOT_SPECIALIZATION_DEFAULT, specName);\n    \n    for index = 1, 4 do\n        local id, name, _, texture = GetSpecializationInfo(index);\n        if ( id ) then\n            menuList[index + 2] = {\n                text = format('|T%s:14:14:0:0:64:64:4:60:4:60|t  %s', texture, name),\n                func = function() SetLootSpecialization(id) end,\n                checked = (lootSpecId == id),\n            }\n        else\n            menuList[index + 2] = nil\n        end\n    end\n    \n    EasyMenu(menuList, r.menu, r.menu, 0, 0, \"MENU\", 2)\nend\n\nif not r.button then\n    r.button = CreateFrame(\"Button\", \"WA\"..aura_env.id..\"button\", r)\n    r.menu = CreateFrame(\"Frame\", \"WA\"..aura_env.id..\"menu\", r.button, \"UIDropDownMenuTemplate\")\nend\n\nr.button:SetAllPoints(r)\nr.button:RegisterForClicks(\"AnyDown\")\nr.button:SetScript(\"OnClick\", OnClick)\nr.menu:SetPoint(\"TOPLEFT\", r.button, \"TOPLEFT\")\nr.menu:Hide()",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "status",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["events"] = "PLAYER_ENTERING_WORLD,PLAYER_LOOT_SPEC_UPDATED,PLAYER_SPECIALIZATION_CHANGED",
						["customTexture"] = "\n\n",
						["custom"] = "function() return true end",
						["customIcon"] = "function()\n    local specID = GetLootSpecialization();\n    local id,name,_,icon = GetSpecializationInfo(GetSpecialization());\n    \n    if specID == 0 then specID = id;\n        _,_,_,icon = GetSpecializationInfoByID(specID); \n    end\n    _,_,_,icon = GetSpecializationInfoByID(specID);\n    return icon\nend\n\n\n",
						["check"] = "event",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function()\n    return true\nend\n\n\n\n\n\n\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPLEFT",
			["parent"] = "LootSpecGroup",
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 6,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 30,
			["useglowColor"] = false,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownEdge"] = false,
			["config"] = {
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text1FontFlags"] = "THICKOUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["internalVersion"] = 11,
			["text2FontSize"] = 24,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1"] = "L",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.0-6",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "LootSpecIcon",
			["text1Containment"] = "INSIDE",
			["text2Enabled"] = false,
			["width"] = 30,
			["glow"] = false,
			["uid"] = "qRlMf5)(OSJ",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.70000001788139, -- [4]
			},
			["displayIcon"] = "",
			["cooldownTextEnabled"] = true,
			["authorOptions"] = {
			},
		},
		["05 Paku's Wrath Duration"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1029595,
			["cooldownEdge"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["desaturate"] = false,
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Winds",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "05 Paku's Wrath Duration",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "30FlkqqeQPH",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["use_unit"] = true,
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["remOperator"] = "<=",
						["custom_hide"] = "timed",
						["names"] = {
						},
						["type"] = "custom",
						["events"] = "PAKU_WINDS",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(event)\n    if event == \"PAKU_WINDS\" then \n        return true \n    end \nend",
						["custom_type"] = "event",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "spell:282107",
						["duration"] = "8",
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["use_message"] = false,
						["buffShowOn"] = "showOnActive",
						["use_messageType"] = false,
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
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
		["Opulence Swapping"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 200,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["auto"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["desaturate"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "OPULENCE",
			["xOffset"] = 0,
			["internalVersion"] = 11,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 100,
			["url"] = "https://wago.io/imlz-ng6S/2",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Enabled"] = true,
			["config"] = {
			},
			["stickyDuration"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 100,
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "Friz Quadrata TT",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["auranames"] = {
							"Chaotic Displacement", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "SWAP",
			["zoom"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Opulence Swapping",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["uid"] = "MmNjYNZOdEm",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
		},
		["05 Hastening Winds (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["cooldownTextEnabled"] = true,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 285945,
						["useGroup_count"] = true,
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["group_count"] = "0",
						["names"] = {
							"Hastening Winds", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"285945", -- [1]
						},
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["name"] = "Hastening Winds",
						["unit"] = "member",
						["spellIds"] = {
							285945, -- [1]
						},
						["use_absorbMode"] = true,
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"285945", -- [1]
						},
						["event"] = "Health",
						["unit"] = "member",
						["specificUnit"] = "boss2",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_unitisunit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Unit Characteristics",
						["use_specific_unit"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["unitisunit"] = "player",
						["use_absorbMode"] = true,
						["unit"] = "boss1target",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1target",
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_unitisunit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Unit Characteristics",
						["use_specific_unit"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["unitisunit"] = "player",
						["use_absorbMode"] = true,
						["unit"] = "boss2target",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss2target",
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1] and t[3] or t[2] and t[4]\nend",
				["activeTriggerMode"] = -10,
			},
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
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
					["custom"] = "",
					["do_sound"] = false,
					["sound"] = " custom",
					["sound_path"] = "",
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["sound_path"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = 633004,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "straightTranslate",
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 0.79607843137255,
					["colorG"] = 0.81176470588235,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["type"] = "none",
					["colorA"] = 1,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["preset"] = "alphaPulse",
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "pulseHSV",
					["colorR"] = 0.77254901960784,
					["duration_type"] = "seconds",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return WeakAuras.GetHSVTransition(newProgress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["use_color"] = false,
					["scaley"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
				},
			},
			["url"] = "https://wago.io/bfaraid2/112",
			["text1Enabled"] = true,
			["uid"] = "Thl8WMFanq4",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["selfPoint"] = "CENTER",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
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
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["twenty"] = true,
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["animations"] = {
				["start"] = {
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
				},
			},
			["text1Font"] = "Arial Narrow",
			["stickyDuration"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["alpha"] = 1,
			["semver"] = "2.0.43",
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Targets you",
			["text1FontFlags"] = "OUTLINE",
			["desaturate"] = false,
			["text2"] = "%s%c",
			["auto"] = true,
			["xOffset"] = 0,
			["id"] = "05 Hastening Winds (Tank Only)",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["width"] = 80,
			["icon"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["03 Stalking You"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 841379,
			["url"] = "https://wago.io/bfaraid2/112",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"285632", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["spellIds"] = {
							285632, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["unevent"] = "auto",
						["names"] = {
							"Stalking", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["text1Containment"] = "OUTSIDE",
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Fixate",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "03 Stalking You",
			["cooldownTextEnabled"] = true,
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "8pyeiwsXDR4",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["09 Freezing Blast"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["message"] = "sound is in conditions",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dodge.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 285177,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["name"] = "Freezing Blast",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1698701,
			["useglowColor"] = false,
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "fdAg3)ASPi7",
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["frameStrata"] = 1,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["cooldownEdge"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Arial Narrow",
			["authorOptions"] = {
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Dodge",
			["internalVersion"] = 11,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "09 Freezing Blast",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["09 Burning Explosion (Mythic)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/112",
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 511713,
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["text2Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2FontSize"] = 25,
			["semver"] = "2.0.43",
			["text1"] = "Clear/Rebuff",
			["text1Containment"] = "OUTSIDE",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["auto"] = false,
			["xOffset"] = 0,
			["id"] = "09 Burning Explosion (Mythic)",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "Z0rPc0yHvwO",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288221",
						["duration"] = "8",
						["use_unit"] = true,
						["use_cloneId"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "event",
						["unevent"] = "timed",
						["use_specific_unit"] = true,
						["event"] = "Combat Log",
						["unit"] = "boss1",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["use_absorbMode"] = true,
						["name"] = "Ring of Frost",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"288394", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = 1,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "buffed",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "expirationTime",
								["value"] = "7",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Clear.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["04 High Energy"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\High Energy.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound_channel"] = "Ambience",
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["displayIcon"] = 1058933,
			["url"] = "https://wago.io/bfaraid2/112",
			["text2Font"] = "Arial Narrow",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 112,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
					},
				},
				["affixes"] = {
				},
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["desaturate"] = true,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["text1Font"] = "Arial Narrow",
			["text2FontSize"] = 35,
			["semver"] = "2.0.43",
			["text1"] = "Raiddmg Inc",
			["text2Enabled"] = true,
			["text1Enabled"] = true,
			["zoom"] = 0.3,
			["auto"] = false,
			["text2Color"] = {
				1, -- [1]
				0.050980392156863, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["id"] = "04 High Energy",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["uid"] = "BT8dj395CeK",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["spellId"] = 284941,
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["use_power"] = false,
						["use_specific_unit"] = true,
						["use_powertype"] = false,
						["debuffType"] = "HARMFUL",
						["duration"] = "1",
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["name"] = "Wail of Greed",
						["event"] = "Power",
						["use_percentpower"] = true,
						["castType"] = "channel",
						["use_spellId"] = false,
						["spellIds"] = {
							285280, -- [1]
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Searing Waves", -- [1]
						},
						["percentpower"] = "90",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
						["percentpower_operator"] = "==",
						["use_percentpower"] = false,
						["unit"] = "boss1",
						["use_unit"] = true,
						["percentpower"] = "100",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
	},
	["editor_theme"] = "Monokai",
}
