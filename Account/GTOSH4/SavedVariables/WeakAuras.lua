
WeakAurasSaved = {
	["dynamicIconCache"] = {
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
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
			["internalVersion"] = 11,
			["id"] = "Tosh RaidCDs",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "TOP",
			["config"] = {
			},
			["uid"] = "k)k0yM84OEu",
			["backgroundInset"] = 0,
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/rJ3tSWjdX/8",
		},
		["04 Earthen Roots"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
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
						["rem"] = "4",
						["spellId"] = "284664",
						["auranames"] = {
							"284817", -- [1]
						},
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = false,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["spellIds"] = {
							284817, -- [1]
						},
						["useGroup_count"] = false,
						["use_spellId"] = true,
						["name"] = "Incandescence",
						["unit"] = "player",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Earthen Roots", -- [1]
						},
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
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
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["url"] = "https://wago.io/bfaraid2/103",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "+%tooltip1%% DPS",
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Earthen Roots",
			["glow"] = false,
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["uid"] = "KA(dTW0SGKG",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Plague of Toads"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "M4TE6m25HGT",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
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
			["frameStrata"] = 1,
			["text1Enabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Toads Inc",
			["text2Enabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "07 Plague of Toads",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
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
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							284168, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Shrunk", -- [1]
						},
						["name"] = "Plague of Toads",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 1802889,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["04 Quickened Pulse"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["auranames"] = {
							"284519", -- [1]
						},
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Quickened Pulse", -- [1]
						},
						["use_tooltip"] = false,
						["use_unit"] = true,
						["use_specific_unit"] = false,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useGroup_count"] = false,
						["spellIds"] = {
							284519, -- [1]
						},
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "jaRY71jGBYy",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
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
			["frameStrata"] = 1,
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
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Buffed",
			["alpha"] = 1,
			["glow"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Quickened Pulse",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["04 Liquid Gold"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["useglowColor"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
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
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["auranames"] = {
							"287072", -- [1]
						},
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Liquid Gold", -- [1]
						},
						["use_tooltip"] = false,
						["use_unit"] = true,
						["use_specific_unit"] = false,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useGroup_count"] = false,
						["spellIds"] = {
							287072, -- [1]
						},
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["unit"] = "player",
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
			["text1Enabled"] = true,
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
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["uid"] = "69D6qf4vYHq",
			["desaturate"] = false,
			["glowColor"] = {
				0.9921568627451, -- [1]
				0.95686274509804, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["alpha"] = 1,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
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
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Drops Pool",
			["icon"] = true,
			["auto"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Liquid Gold",
			["glow"] = true,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["cooldownEdge"] = false,
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
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useGroup_count"] = false,
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
							"Shrunk", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_tooltip"] = false,
						["spellIds"] = {
							284168, -- [1]
						},
						["auranames"] = {
							"284168", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "4YFhCcdEe(3",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Enter Robot",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text2Font"] = "Arial Narrow",
			["id"] = "06 Shrunk",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1698700,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["01 Call to Arms"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Adds.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
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
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Adds Inc",
			["text2Enabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "01 Call to Arms",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["uid"] = "QT(WhSnu2ur",
			["inverse"] = false,
			["internalVersion"] = 11,
			["displayIcon"] = 236362,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 283662,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							283598, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Wave of Light", -- [1]
						},
						["name"] = "Call to Arms",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
		},
		["Tosh HealerMana"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Tosh HealerMana bar", -- [1]
			},
			["xOffset"] = -528.067749023438,
			["yOffset"] = 560.060729980469,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["url"] = "https://wago.io/H19CraC_7/7",
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
						["type"] = "aura",
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
			["anchorFrameFrame"] = "WeakAuras:Tosh ExternalCDs",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["config"] = {
			},
			["borderOffset"] = 16,
			["semver"] = "1.0.0-7",
			["anchorFrameParent"] = false,
			["id"] = "Tosh HealerMana",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
			["uid"] = "J7e12IyLwGS",
			["backgroundInset"] = 0,
			["background"] = "None",
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["selfPoint"] = "TOPLEFT",
		},
		["05 Loa's Pact"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useglowColor"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["auranames"] = {
							"282079", -- [1]
						},
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Loa's Pact", -- [1]
						},
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["group_count"] = "0",
						["use_unit"] = true,
						["use_specific_unit"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["useGroup_count"] = true,
						["unit"] = "boss",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							282079, -- [1]
						},
						["useName"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["group_countOperator"] = ">",
						["combineMode"] = "showLowest",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["glow"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "fCbusg3tTD6",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["auto"] = true,
			["text1"] = "Boss-99%",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "05 Loa's Pact",
			["cooldownEdge"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text1Containment"] = "OUTSIDE",
			["displayIcon"] = 135854,
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
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
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
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["name"] = "Freezing Blast",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["glow"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Add Inc",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "09 Prismatic Image",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "7kM9SAC1UgO",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
			},
			["displayIcon"] = 1041232,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["09 Set Charge"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Collect.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "285725",
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["duration"] = "1",
						["debuffType"] = "HARMFUL",
						["use_specific_unit"] = true,
						["type"] = "custom",
						["subeventSuffix"] = "_SUMMON",
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["event"] = "Combat Log",
						["spellIds"] = {
							285215, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["name"] = "Set Charge",
						["custom"] = "function(event, ...)\n    if not WeakAuras.triggerState[aura_env.id].triggers[1] then\n        if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n            local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n            if subEvent == \"SPELL_SUMMON\" and spellID == 285725 then\n                return true\n            end\n        end\n    end\nend",
						["use_unit"] = true,
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["use_encounterid"] = true,
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["affixes"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = false,
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["url"] = "https://wago.io/bfaraid2/103",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Collect",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "09 Set Charge",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["icon"] = true,
			["uid"] = "gP3xBHif(k0",
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["displayIcon"] = 252176,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["04 Grossly Incandescent!"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useglowColor"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Buff.ogg",
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
						["rem"] = "4",
						["spellId"] = "284664",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Grossly Incandescent!", -- [1]
						},
						["event"] = "Cast",
						["unit"] = "player",
						["name"] = "Incandescence",
						["auranames"] = {
							"284798", -- [1]
						},
						["spellIds"] = {
							284798, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["useName"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
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
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Buffs allies",
			["alpha"] = 1,
			["xOffset"] = 0,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Grossly Incandescent!",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "oU)eQyA)Znk",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["02 Apetagonizer 3000"] = {
			["text2Point"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownEdge"] = false,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["sound_path"] = "",
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg",
					["sound_path"] = "",
					["do_sound"] = true,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
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
						["unit"] = "group",
						["type"] = "custom",
						["use_specific_unit"] = false,
						["unevent"] = "timed",
						["subeventSuffix"] = "_AURA_APPLIED",
						["subeventPrefix"] = "SPELL",
						["event"] = "Combat Log",
						["dynamicDuration"] = false,
						["customDuration"] = "function()\nreturn 4, 4 + GetTime()\nend",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_SUCCEEDED, INSTANCE_ENCOUNTER_ENGAGE_UNIT",
						["name"] = "Gestate",
						["custom"] = "function(event, ...)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then\n        local unit, castGUID, spellID = ...\n        if (spellID == 282247 or spellID == 282526) then\n            return true\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["spellIds"] = {
							265212, -- [1]
						},
						["custom_type"] = "event",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function(event)\n    if event == \"INSTANCE_ENCOUNTER_ENGAGE_UNIT\" then\n        return true\n    end\nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["desaturate"] = false,
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
			["version"] = 103,
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
				["pvptalent"] = {
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
				["role"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
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
			["width"] = 80,
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["auto"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s%c",
			["text1"] = "Add Inc",
			["text1Font"] = "Arial Narrow",
			["selfPoint"] = "CENTER",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1Enabled"] = true,
			["id"] = "02 Apetagonizer 3000",
			["text2Font"] = "Arial Narrow",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "evliJh2Fah(",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 1141394,
			["cooldown"] = true,
			["color"] = {
				0.98823529411765, -- [1]
				1, -- [2]
				0.96078431372549, -- [3]
				1, -- [4]
			},
		},
		["06 Tampering!"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["useGroup_count"] = false,
						["type"] = "aura2",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
							"Shrunk", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_tooltip"] = false,
						["spellIds"] = {
							284168, -- [1]
						},
						["auranames"] = {
							"286105", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
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
			["version"] = 103,
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
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
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
			["auto"] = true,
			["text1"] = "Time Left",
			["text2Enabled"] = false,
			["text2Font"] = "Arial Narrow",
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "06 Tampering!",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "HDW)zQ)xivN",
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 2115322,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
				"04 Spirits of Gold", -- [42]
				"04 High Energy", -- [43]
				"04 Wail of Greed Channel", -- [44]
				"04 Incandescence", -- [45]
				"04 Grossly Incandescent!", -- [46]
				"04 Earthen Roots", -- [47]
				"04 Thief's Bane", -- [48]
				"04 Opal of Unleashed Rage", -- [49]
				"04 Soothin Breeze", -- [50]
				"04 Flames of Punishment Dot", -- [51]
				"04 Pulse-quickening Toxin", -- [52]
				"04 Quickened Pulse", -- [53]
				"05 Hastening Winds (Tank Only)", -- [54]
				"05 Lacerating Claws (Tank)", -- [55]
				"05 Gift of Wind Cast (Mage Only)", -- [56]
				"05 Gift of Wind Buff On You (Mage Only)", -- [57]
				"05 Paku's Wrath", -- [58]
				"05 Paku's Wrath Duration", -- [59]
				"05 Krag'wa's Wrath", -- [60]
				"05 Crawling Hex", -- [61]
				"05 Akunda's Wrath", -- [62]
				"05 Kimbul's Wrath", -- [63]
				"05 Thundering Storm", -- [64]
				"05 Bwonsamdi's Wrath", -- [65]
				"05 Pack Hunter", -- [66]
				"05 Loa's Pact", -- [67]
				"06 Electroshock Amplification", -- [68]
				"06 Buster Cannon", -- [69]
				"06 Wormhole Generator", -- [70]
				"06 Gigavolt Charge", -- [71]
				"06 Blast Off", -- [72]
				"06 Critter Explosion", -- [73]
				"06 World Enlarger", -- [74]
				"06 Shrunk", -- [75]
				"06 Tampering!", -- [76]
				"06 Buster Cannon Dot", -- [77]
				"06 Enormous", -- [78]
				"06 Gigavolt Blast", -- [79]
				"06 Radiation Zone", -- [80]
				"06 Sheep Shrapnel", -- [81]
				"07 Scorching Detonation (Tank Only)", -- [82]
				"07 Focused Demise", -- [83]
				"07 Focused Demise On You", -- [84]
				"07 Meteor Leap /  On You", -- [85]
				"07 Inevitable End", -- [86]
				"07 Seal of Purification", -- [87]
				"07 Death's Door", -- [88]
				"07 Zombie Dust Totem", -- [89]
				"07 Plague of Toads", -- [90]
				"07 Deathly Withering", -- [91]
				"07 Plague of Fire", -- [92]
				"07 Toad Toxin", -- [93]
				"07 Serpent's Breath", -- [94]
				"07 Crushed (Tank-Only)", -- [95]
				"07 Seal of Bwonsamdi", -- [96]
				"07 Bwonsamdi's Boon", -- [97]
				"07 Caress of Death", -- [98]
				"07 Necrotic Smash", -- [99]
				"08 Kel-Wrapped (Tank Only)", -- [100]
				"08 Tempting Song", -- [101]
				"08 Sea Storm", -- [102]
				"08 Sea Swell", -- [103]
				"08 Storm's Wail", -- [104]
				"08 Ire of the Deep", -- [105]
				"08 Voltaic Flash", -- [106]
				"08 Thunderous Boom", -- [107]
				"08 Tidal Shroud", -- [108]
				"08 Electric Shroud", -- [109]
				"08 Sea's Temptation", -- [110]
				"08 Energized Storm", -- [111]
				"08 Mark of the Storm", -- [112]
				"08 Mark of the Seas", -- [113]
				"09 Avalanche", -- [114]
				"09 Orb of Frost", -- [115]
				"09 Broadside", -- [116]
				"09 Siegebreaker Blast", -- [117]
				"09 Icefall", -- [118]
				"09 Kul Tiran Corsair", -- [119]
				"09 Heart of Frost", -- [120]
				"09 Burning Explosion", -- [121]
				"09 Warmth", -- [122]
				"09 Freezing Blast", -- [123]
				"09 Glacial Ray", -- [124]
				"09 Freezing Blood", -- [125]
				"09 Ring of Frost", -- [126]
				"09 Chilling Touch", -- [127]
				"09 Ice Shard (Tank Only)", -- [128]
				"09 Marked Target", -- [129]
				"09 Arctic Armor", -- [130]
				"09 Searing Pitch", -- [131]
				"09 Set Charge", -- [132]
				"09 Prismatic Image", -- [133]
			},
			["xOffset"] = 195.91235351562,
			["yOffset"] = 66.669799804688,
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
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
			["align"] = "CENTER",
			["stagger"] = 0,
			["version"] = 103,
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
			["selfPoint"] = "LEFT",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["url"] = "https://wago.io/bfaraid2/103",
			["borderOffset"] = 16,
			["semver"] = "2.0.34-103",
			["hybridSortMode"] = "descending",
			["id"] = "T23 Battle of Dazar'alor Auras",
			["radius"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
				["01 Judgment: Righteousness"] = true,
				["09 Orb of Frost"] = true,
				["02 Deathly Slam [Alliance]"] = true,
				["08 Ire of the Deep"] = true,
				["09 Freezing Blast"] = true,
				["09 Warmth"] = true,
				["02 High Energy [Horde]"] = true,
				["02 High Energy [Alliance]"] = true,
				["08 Storm's Wail"] = true,
				["05 Lacerating Claws (Tank)"] = true,
				["09 Broadside"] = true,
				["08 Kel-Wrapped (Tank Only)"] = true,
				["05 Akunda's Wrath"] = true,
				["01 Sacred Blade (Tank Only)"] = true,
				["05 Gift of Wind Cast (Mage Only)"] = false,
				["09 Avalanche"] = true,
				["01 Blinding Faith"] = true,
				["06 Gigavolt Charge"] = true,
				["09 Ring of Frost"] = true,
				["01 Seal of Retribution"] = true,
				["06 Blast Off"] = false,
				["08 Sea's Temptation"] = true,
				["07 Inevitable End"] = true,
				["08 Tidal Shroud"] = true,
				["04 Crush"] = true,
				["08 Electric Shroud"] = true,
				["04 Flames of Punishment"] = true,
				["04 Coin Shower"] = true,
				["05 Gift of Wind Buff On You (Mage Only)"] = false,
				["04 Volatile Charge"] = true,
				["07 Focused Demise On You"] = true,
				["01 Seal of Reckoning"] = true,
				["06 Tampering!"] = false,
				["04 Chaotic Displacement"] = true,
				["07 Focused Demise"] = true,
				["05 Hastening Winds (Tank Only)"] = true,
				["08 Sea Storm"] = true,
				["09 Glacial Ray"] = true,
				["02 Reverberating Slam [Horde]"] = true,
				["07 Seal of Purification"] = true,
			},
			["uid"] = "oooQJ56mGyg",
			["rotation"] = 0,
			["config"] = {
			},
			["conditions"] = {
			},
			["backgroundInset"] = 0,
			["authorOptions"] = {
			},
		},
		["05 Kimbul's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "282834",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["use_unit"] = true,
						["use_specific_unit"] = false,
						["names"] = {
							"Kimbul's Wrath", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"282834", -- [1]
						},
						["spellIds"] = {
							282834, -- [1]
						},
						["event"] = "Cast",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Kimbul's Wrath",
						["unit"] = "player",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["desaturate"] = false,
			["config"] = {
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				0, -- [2]
				0.058823529411765, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["icon"] = true,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = true,
			["alpha"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["useGlowColor"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Targeted",
			["text1Font"] = "Arial Narrow",
			["url"] = "https://wago.io/bfaraid2/103",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1FontFlags"] = "OUTLINE",
			["id"] = "05 Kimbul's Wrath",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["uid"] = "5J5SlBK5aKw",
			["inverse"] = false,
			["text1Enabled"] = true,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["text2Font"] = "Arial Narrow",
		},
		["T23 Co-Tank Auras (Custom Options!)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["displayText"] = "sfafadfdsf",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "local r = aura_env.region\nr.text2:ClearAllPoints()\nr.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)",
					["do_sound"] = false,
					["do_custom"] = false,
					["sound"] = " custom",
				},
				["finish"] = {
					["do_message"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.convert = {\n    [\"BUFF\"] = \"HELPFUL\",\n    [\"DEBUFF\"] = \"HARMFUL\",\n}\n--to convert auraType (BUFF/DEBUFF) from CLEU payload\n\naura_env.sound = {\n    [1] = \"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Taunt.ogg\",\n    [2] = \"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\Taunt.ogg\",\n    [3] = \"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\RingingPhone.ogg\",\n    [4] = \"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\AirHorn.ogg\",\n}\n-- bully rivers doesn't want to add sound option to custom options\n\naura_env.associatedDebuff = {\n    [285874] = 285875, --Rending Bite\n    [282083] = 285671, --Bestial Smash / Crushed    \n}\n\n--[[\ndebuff that's associated with a certain cast\nleft the cast's spellID that causes the debuff\nright the debuff's spellID\nthis is used for tank-combo-cast mechanics such as grong/aggramar]]",
					["do_custom"] = true,
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
				["use_encounterid"] = true,
				["role"] = {
					["single"] = "TANK",
				},
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2263,2265,2266,2268,2271,2272,2276,2280,2281,2284,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
				["284546dropdown"] = 2,
				["285000"] = true,
				["285195slider"] = 0,
				["285671"] = false,
				["285254dropdown"] = 1,
				["285254"] = true,
				["285253"] = false,
				["289858dropdown"] = 2,
				["specifiedSound"] = 1,
				["285945slider"] = 0,
				["283573slider"] = 0,
				["283573"] = false,
				["289858"] = false,
				["289699"] = true,
				["285874"] = true,
				["284546"] = true,
				["287993"] = true,
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
			["stickyDuration"] = false,
			["version"] = 103,
			["height"] = 80,
			["fontSize"] = 57,
			["text2Containment"] = "INSIDE",
			["authorOptions"] = {
				{
					["text"] = "Enable Taunt Sound?",
					["type"] = "description",
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
					["name"] = "",
					["key"] = "enableSound",
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
					["name"] = "Specify a sound",
					["values"] = {
						"Taunt (from SharedMedia_Causese)", -- [1]
						"Taunt (from WeakAuras)", -- [2]
						"Ringing Phone (from WeakAuras)", -- [3]
						"Airhorn (from WeakAuras)", -- [4]
					},
					["width"] = 1.3,
				}, -- [4]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [5]
				{
					["fontSize"] = "medium",
					["type"] = "description",
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
					["default"] = 0,
					["key"] = "283573slider",
				}, -- [8]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [9]
				{
					["fontSize"] = "medium",
					["type"] = "description",
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
					["key"] = "289292dropdown",
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
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
					["text"] = "|TInterface\\Icons\\achievement_boss_zuldazar_manceroy_mestrah:16:16:0:+2|t |cFFFF8800Jadefire Masters|r",
					["type"] = "description",
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
					["fontSize"] = "medium",
					["type"] = "description",
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
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["key"] = "284546dropdown",
					["width"] = 0.8,
				}, -- [28]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [29]
				{
					["fontSize"] = "medium",
					["type"] = "description",
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
					["fontSize"] = "medium",
					["type"] = "description",
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
					["name"] = "",
					["key"] = "286646dropdown",
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
					["name"] = "",
					["key"] = "284168dropdown",
					["width"] = 0.8,
				}, -- [41]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [42]
				{
					["fontSize"] = "medium",
					["type"] = "description",
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
					["name"] = "",
					["key"] = "284831dropdown",
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
					["key"] = "289858dropdown",
					["name"] = "",
					["width"] = 1,
				}, -- [49]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [50]
				{
					["fontSize"] = "medium",
					["type"] = "description",
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
					["fontSize"] = "medium",
					["type"] = "description",
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
					["key"] = "285254dropdown",
					["values"] = {
						"On Application", -- [1]
						"Disable Sound", -- [2]
					},
					["width"] = 0.8,
				}, -- [60]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 2,
				}, -- [61]
				{
					["text"] = "*Don't touch Author Mode",
					["type"] = "description",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [62]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["wordWrap"] = "WordWrap",
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Containment"] = "OUTSIDE",
			["text2Font"] = "Arial Narrow",
			["text2"] = "%s%c",
			["text1Font"] = "Arial Narrow",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%name",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "5",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "stateupdate",
						["custom"] = "function(allstates, event, ...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID,_,_, auraType, amount = ...\n        if (subEvent == \"SPELL_AURA_APPLIED\" or subEvent == \"SPELL_AURA_APPLIED_DOSE\" or subEvent == \"SPELL_AURA_REMOVED_DOSE\" or subEvent == \"SPELL_AURA_REFRESH\") then\n            --checks for buff/debuff applied to co-tanks based on auraType\n            \n            if UnitGroupRolesAssigned(destName) == \"TANK\" and UnitIsVisible(destName) and UnitIsPlayer(destName) and destGUID~=WeakAuras.myGUID\n            then\n                if aura_env.config[\"enableSound\"] == 1 and (amount and amount > 0 and aura_env.config[spellID..\"slider\"] == amount or aura_env.config[spellID..\"dropdown\"] == 1) then\n                    PlaySoundFile(aura_env.sound[aura_env.config[\"specifiedSound\"]], \"MASTER\")\n                end\n                if aura_env.config[tostring(spellID)] then\n                    local _, spellicon, stackcount, _, dur, expTime  = WA_GetUnitAura(destName, spellID, aura_env.convert[auraType])\n                    allstates[spellID..destGUID] = {\n                        show = true,\n                        changed = true,\n                        progressType = \"timed\",\n                        duration = dur,\n                        expirationTime = expTime,\n                        autoHide = true,\n                        name = WA_ClassColorName(destName),\n                        icon = spellicon,\n                        stacks = stackcount,\n                        spellID = spellID,\n                    } \n                end\n            end\n            if (strsplit(\"-\", destGUID) == \"Creature\" or strsplit(\"-\", destGUID) == \"Vehicle\") and auraType == \"BUFF\" then\n                --checks for buff applied to boss1-5 and returns bossX target's name\n                for i = 1,5 do \n                    local unit = \"boss\"..i\n                    if (UnitGUID(unit) == destGUID) and not UnitIsUnit(unit..\"target\", \"player\") then\n                        if aura_env.config[\"enableSound\"] == 1 and (amount and amount > 0 and aura_env.config[spellID..\"slider\"] == amount or aura_env.config[spellID..\"toggle\"] == 1) then\n                            PlaySoundFile(aura_env.sound[aura_env.config[\"specifiedSound\"]], \"MASTER\")\n                        end\n                        if aura_env.config[tostring(spellID)] then\n                            local _, spellicon, stackcount, _, dur, expTime  = WA_GetUnitAura(unit, spellID, aura_env.convert[auraType])\n                            allstates[spellID..destGUID] = {\n                                show = true,\n                                changed = true,\n                                progressType = \"timed\",\n                                duration = dur,\n                                expirationTime = expTime,\n                                autoHide = true,\n                                name = WA_ClassColorName(unit..\"target\"),\n                                icon = spellicon,\n                                stacks = stackcount,\n                                spellID = spellID,\n                            } \n                            break \n                        end\n                    end\n                end\n            end\n        elseif subEvent == \"SPELL_CAST_START\" and aura_env.config[tostring(spellID)] then\n            --checks for started casts then if player no debuff while co-tank debuff then it shows\n            for i = 1,5 do \n                local unit = \"boss\"..i\n                if (UnitGUID(unit) == sourceGUID) and not UnitIsUnit(unit..\"target\", \"player\") then\n                    if WA_GetUnitAura(unit..\"target\", aura_env.associatedDebuff[spellID], \"HARMFUL\") then\n                        local buffname, spellicon, stackcount, _, dur, expTime  = WA_GetUnitAura(\"player\", aura_env.associatedDebuff[spellID], \"HARMFUL\")\n                        local name, text, texture, startTimeMS, endTimeMS = UnitCastingInfo(unit)\n                        if (expTime and (expTime-GetTime()) < (endTimeMS/1000-GetTime())) or not buffname then\n                            PlaySoundFile(aura_env.sound[aura_env.config[\"specifiedSound\"]], \"MASTER\")\n                            allstates[sourceGUID..spellID] = {\n                                show = true,\n                                changed = true,\n                                progressType = \"timed\",\n                                duration = endTimeMS / 1000 - GetTime(),\n                                expirationTime = endTimeMS / 1000,\n                                autoHide = true,\n                                name = \"Taunt\",\n                                icon = texture,\n                                spellID = spellID,\n                            }\n                        break end\n                    end\n                end\n            end\n        elseif subEvent == \"SPELL_AURA_REMOVED\" then\n            if allstates[spellID..destGUID] then\n                allstates[spellID..destGUID].changed = true\n                allstates[spellID..destGUID].show = false\n            end\n        end\n    end\n    return true\nend",
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["check"] = "event",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["customVariables"] = "{\n    spellID = \"number\",\n    stacks = true,\n    name = \"string\",\n    expirationTime = true,\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["semver"] = "2.0.34-103",
			["useGlowColor"] = false,
			["justify"] = "LEFT",
			["alpha"] = 1,
			["id"] = "T23 Co-Tank Auras (Custom Options!)",
			["font"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 80,
			["icon"] = true,
			["cooldownEdge"] = false,
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "282083",
								["variable"] = "spellID",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "285874",
								["variable"] = "spellID",
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
			["uid"] = "YPFe0Za5Pf6",
		},
		["03 Magma Trap"] = {
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
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["authorOptions"] = {
			},
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "CNofCtoJX9d",
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
					},
				},
				["use_encounterid"] = true,
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["url"] = "https://wago.io/bfaraid2/103",
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
			["frameStrata"] = 1,
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Can't Soak",
			["alpha"] = 1,
			["text1Containment"] = "OUTSIDE",
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "03 Magma Trap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 841379,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284374",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Magma Trap", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["unit"] = "player",
						["name"] = "Magma Trap",
						["event"] = "Cast",
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
							284374, -- [1]
						},
						["auraspellids"] = {
							"284374", -- [1]
						},
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["matchesShowOn"] = "showOnActive",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
		},
		["01 Divine Mallet"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = "287439",
						["group_role"] = "TANK",
						["duration"] = "2",
						["use_specific_unit"] = true,
						["unit"] = "boss1",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["use_cloneId"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["type"] = "event",
						["name"] = "Divine Mallet",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							282939, -- [1]
						},
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["dynamicDuration"] = true,
						["castType"] = "cast",
						["use_spellId"] = true,
						["events"] = "",
						["custom_type"] = "event",
						["remOperator"] = "<=",
						["use_absorbMode"] = true,
						["use_unit"] = true,
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
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "mYuHykvhLYk",
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["affixes"] = {
				},
				["encounterid"] = "2265",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
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
			["auto"] = false,
			["text1"] = "Dance",
			["text2Enabled"] = false,
			["desaturate"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["url"] = "https://wago.io/bfaraid2/103",
			["id"] = "01 Divine Mallet",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 613955,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["07 Caress of Death"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["glow"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285213", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useGroup_count"] = false,
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["name"] = "Plague of Toads",
						["use_spellId"] = false,
						["spellIds"] = {
							285213, -- [1]
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Caress of Death", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
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
			["version"] = 103,
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
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["url"] = "https://wago.io/bfaraid2/103",
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
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "No Heal",
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "07 Caress of Death",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "kupU2KlQyZU",
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
			["displayIcon"] = 1802889,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Scorching Detonation (Tank Only)"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2Color"] = {
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
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
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
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["genericShowOn"] = "showOnActive",
						["names"] = {
							"Scorching Detonation", -- [1]
						},
						["use_tooltip"] = false,
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["unevent"] = "auto",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["event"] = "Chat Message",
						["dynamicDuration"] = false,
						["spellIds"] = {
							284831, -- [1]
						},
						["auranames"] = {
							"284831", -- [1]
						},
						["events"] = "",
						["useName"] = true,
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
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
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["duration"] = "1",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284831 and UnitIsUnit(unitID..\"target\", \"player\") \n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284831 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["use_destUnit"] = true,
						["dynamicDuration"] = false,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "multi",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["glow"] = true,
			["uid"] = "kn4HEXpm1N9",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["stickyDuration"] = false,
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
					["single"] = "TANK",
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
						["party"] = true,
					},
				},
			},
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "Arial Narrow",
			["auto"] = false,
			["text2FontSize"] = 24,
			["text2"] = "%p",
			["text1"] = "Move Far",
			["text1Containment"] = "OUTSIDE",
			["useGlowColor"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text2Font"] = "Friz Quadrata TT",
			["id"] = "07 Scorching Detonation (Tank Only)",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["sound_path"] = "",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 460698,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["06 Gigavolt Blast"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							283411, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "9bj9I(lXa3E",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Dot",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "06 Gigavolt Blast",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 1698700,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Combat Time"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				0.87843137254902, -- [1]
				0.274509803921569, -- [2]
				0.223529411764706, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "-- [Encounter Time] %c (Every Frame)\nfunction()\n    local A = aura_env\n    if A.combatStart then\n        local combatTime = GetTime() - A.combatStart\n        return string.format(\"[%02d:%02d]\", combatTime/60, combatTime%60)\n    else\n        return \"[12:05]\"\n    end\nend",
			["yOffset"] = 616.019714355469,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/ry2wJDZOb/1",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.mp3",
					["sound_channel"] = "Master",
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
						["debuffType"] = "HELPFUL",
						["custom_type"] = "event",
						["event"] = "Health",
						["events"] = "INSTANCE_ENCOUNTER_ENGAGE_UNIT, PLAYER_REGEN_DISABLED, PLAYER_REGEN_ENABLED",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["customDuration"] = "",
						["customName"] = "",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["custom"] = "--! [Encounter Time] Trigger (Enter/Exit Combat)\nfunction()\n    local A = aura_env\n    if (UnitExists(\"boss1\") and UnitIsDeadOrGhost(\"player\")) or UnitAffectingCombat(\"player\") or InCombatLockdown() then\n        A.combatStart = A.combatStart or GetTime()\n        return true\n    else\n        A.combatStart = nil\n        return false\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return true\nend\n\n\n\n\n\n\n\n",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
			["selfPoint"] = "TOPRIGHT",
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
				["ingroup"] = {
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
				["pvptalent"] = {
					["multi"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 34,
			["regionType"] = "text",
			["justify"] = "LEFT",
			["semver"] = "1.0.0",
			["xOffset"] = -555.027587890625,
			["id"] = "Combat Time",
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
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["fixedWidth"] = 200,
			["width"] = 123,
			["conditions"] = {
			},
			["automaticWidth"] = "Auto",
			["wordWrap"] = "WordWrap",
		},
		["05 Krag'wa's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\n    return aura_env.counter\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2"] = "%c",
			["cooldownSwipe"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["duration"] = "3",
						["event"] = "Health",
						["unit"] = "player",
						["customDuration"] = "function()\n    return aura_env.duration, aura_env.expirationTime + GetTime()\nend",
						["spellIds"] = {
						},
						["custom"] = "function(event, ...)\n    if event == \"KRAG_WA\" and aura_env.counter >= 1 then\n        local aura_env = aura_env\n        C_Timer.After(3, function() aura_env.counter = aura_env.counter - 1 WeakAuras.ScanEvents(\"KRAG_WA\") end)\n        return true\n    end\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n        if subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 282636 then\n            aura_env.successCount = aura_env.successCount + 1\n            if not WeakAuras.triggerState[aura_env.id].triggers[1] then\n                if aura_env.successCount <4 then\n                    aura_env.counter = 3                \n                    aura_env.duration = 3\n                    aura_env.expirationTime = 3\n                    local aura_env = aura_env\n                    C_Timer.After(3, function() aura_env.counter = aura_env.counter - 1 WeakAuras.ScanEvents(\"KRAG_WA\") end)\n                    return true\n                else\n                    aura_env.successCount = 0\n                end\n            end\n        end\n    end\n    if event == \"ENCOUNTER_START\" then\n        aura_env.successCount = 0\n    end\nend",
						["dynamicDuration"] = true,
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED, KRAG_WA, ENCOUNTER_START",
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.counter = 3\naura_env.successCount = 0",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Font"] = "Arial Narrow",
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
			["text1Enabled"] = true,
			["conditions"] = {
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["cooldownTextEnabled"] = true,
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
					},
				},
				["use_encounterid"] = true,
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "Xsm7)izBwDo",
			["cooldownEdge"] = false,
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
			["frameStrata"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Avoid",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "05 Krag'wa's Wrath",
			["authorOptions"] = {
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 1802889,
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["09 Broadside"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["useglowColor"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
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
						["spellId"] = "288212",
						["auranames"] = {
							"288212", -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Broadside", -- [1]
						},
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["auraspellids"] = {
							"288212", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["name"] = "Broadside",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
							288212, -- [1]
						},
						["unevent"] = "auto",
						["useExactSpellId"] = true,
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["internalVersion"] = 11,
			["stickyDuration"] = false,
			["uid"] = "Ot8wCBLkO8r",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				0.003921568627451, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "ACShine",
			["text1Font"] = "Arial Narrow",
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
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Go Barrel",
			["icon"] = true,
			["auto"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text2Font"] = "Arial Narrow",
			["id"] = "09 Broadside",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text2Enabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["displayIcon"] = 132620,
			["cooldown"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
		},
		["04 Creeping Blaze"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%c",
			["customText"] = "function()\n    if aura_env.state and aura_env.state.name then\n        return aura_env.state.name\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
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
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_CHANNEL_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 286541 and IsItemInRange(32825, unitID)\n        then\n            local _, _, _, startC, endC  = UnitChannelInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[UnitGUID(unitID)] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n                name = aura_env.room[aura_env.counter],\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_CHANNEL_STOP\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 286541 and allstates[UnitGUID(unitID)] then\n            allstates[UnitGUID(unitID)].changed = true\n            allstates[UnitGUID(unitID)].show = false\n        end\n    end\n    if event == \"ROOM_COUNTER\" then\n        aura_env.counter = ...\n    end\n    return true\nend",
						["remOperator"] = "<=",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["spellIds"] = {
							285632, -- [1]
						},
						["type"] = "custom",
						["subeventSuffix"] = "_AURA_APPLIED",
						["custom_type"] = "stateupdate",
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["customDuration"] = "",
						["use_spellId"] = true,
						["name"] = "Stalking",
						["events"] = "UNIT_SPELLCAST_CHANNEL_START, UNIT_SPELLCAST_CHANNEL_STOP, ROOM_COUNTER",
						["check"] = "event",
						["use_destUnit"] = false,
						["unit"] = "player",
						["dynamicDuration"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
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
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.room = {\n    [1] = \"Flame Room\",\n    [2] = \"Laser Room\",\n    [3] = \"Dot Room\",\n    [4] = \"Laser Room\",\n    [5] = \"Flame Room\",\n    [6] = \"Collect\",\n    [7] = \"Final Room\", \n}\naura_env.counter = 0",
					["do_custom"] = true,
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "%c",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["desaturate"] = false,
			["id"] = "04 Creeping Blaze",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["glow"] = false,
			["uid"] = "MWdRWTU5wrh",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 524795,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Sea Swell"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = true,
			["text2Font"] = "Arial Narrow",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["glow"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["names"] = {
							"Sea Swell", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["name"] = "Sea Swell",
						["event"] = "Cast",
						["spellIds"] = {
							285118, -- [1]
						},
						["custom_type"] = "stateupdate",
						["use_spellId"] = false,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 285118 or spellID == 288258)  then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 285118 or spellID == 288258) and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["check"] = "event",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["cooldownEdge"] = false,
			["uid"] = "3neGACO6rrs",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Enabled"] = true,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["auto"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Pools",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Font"] = "Arial Narrow",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1Containment"] = "OUTSIDE",
			["id"] = "08 Sea Swell",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
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
					["colorR"] = 1,
					["y"] = 10,
					["x"] = 0,
					["duration_type"] = "seconds",
					["translateType"] = "custom",
					["type"] = "none",
					["rotate"] = 0,
					["colorA"] = 1,
					["use_scale"] = false,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["displayIcon"] = 135861,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["03 Xuen Spawn"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Adds.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "285632",
						["group_role"] = "TANK",
						["duration"] = "2.5",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Stalking", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_AURA_APPLIED",
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_type"] = "event",
						["name"] = "Stalking",
						["spellIds"] = {
							285632, -- [1]
						},
						["event"] = "Combat Log",
						["buffShowOn"] = "showOnActive",
						["use_specific_unit"] = false,
						["use_spellId"] = true,
						["custom"] = "function(event, unit, castGUID, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 285645 then \n            return true\n        end\n    end\nend\n\n\n",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["remOperator"] = "<=",
						["use_destUnit"] = false,
						["custom_hide"] = "timed",
						["use_unit"] = true,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "SFVxkcDCdOC",
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
				["use_encounterid"] = true,
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["icon"] = true,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Adds",
			["glow"] = false,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text2Font"] = "Arial Narrow",
			["id"] = "03 Xuen Spawn",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 620832,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["glow"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "282209",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["names"] = {
							"Mark of Prey", -- [1]
						},
						["use_specific_unit"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_AURA_APPLIED",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"282209", -- [1]
						},
						["spellIds"] = {
							282209, -- [1]
						},
						["event"] = "Health",
						["unevent"] = "timed",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Mark of Prey",
						["unit"] = "player",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["fullscan"] = true,
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
			["version"] = 103,
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
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Fixated",
			["text2Font"] = "Arial Narrow",
			["internalVersion"] = 11,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text1Containment"] = "OUTSIDE",
			["id"] = "05 Pack Hunter",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["uid"] = ")ClDKQPh7ZM",
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Plague of Fire"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["custom"] = "",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["matchesShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["names"] = {
							"Deathly Withering", -- [1]
						},
						["name"] = "Plague of Toads",
						["use_spellId"] = false,
						["spellIds"] = {
							285195, -- [1]
						},
						["useName"] = true,
						["auranames"] = {
							"285346", -- [1]
						},
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
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
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "O)X6RpAVN)y",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Enabled"] = true,
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
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Spread",
			["url"] = "https://wago.io/bfaraid2/103",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["desaturate"] = false,
			["id"] = "07 Plague of Fire",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["glow"] = false,
			["displayIcon"] = 132095,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["09 Freezing Blood"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["selfPoint"] = "CENTER",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["colorA"] = 1,
					["scalex"] = 1,
					["colorType"] = "straightHSV",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return WeakAuras.GetHSVTransition(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["use_color"] = false,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["auraspellids"] = {
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Broadside",
						["auranames"] = {
							"289387", -- [1]
						},
						["event"] = "Cast",
						["names"] = {
							"Broadside", -- [1]
						},
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							288212, -- [1]
						},
						["custom_type"] = "event",
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["fullscan"] = true,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Stack",
			["glow"] = false,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text1Enabled"] = true,
			["id"] = "09 Freezing Blood",
			["url"] = "https://wago.io/bfaraid2/103",
			["text2Enabled"] = false,
			["width"] = 80,
			["xOffset"] = 0,
			["uid"] = "Wsj6w7tid4j",
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 538564,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["09 Icefall"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "10",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["custom_type"] = "event",
						["event"] = "Cast",
						["name"] = "Icefall",
						["spellIds"] = {
							285215, -- [1]
						},
						["use_spellId"] = false,
						["custom"] = "function(event, unit, _, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 288441 then\n            return true \n        end \n    end \nend",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "player",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "a96HgWeacTr",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Enabled"] = true,
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
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Avoid Arrow",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = false,
			["zoom"] = 0.35,
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "09 Icefall",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayIcon"] = 135851,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Ice Shard (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["glow"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Ac7wzK)MvAa",
			["load"] = {
				["role"] = {
					["multi"] = {
						["TANK"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = false,
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
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
			["frameStrata"] = 1,
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
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "+Dmgtaken",
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "09 Ice Shard (Tank Only)",
			["desaturate"] = false,
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
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
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							285215, -- [1]
						},
						["useGroup_count"] = false,
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["06 Critter Explosion"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/103",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dance.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 287929,
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["duration"] = "3",
						["debuffType"] = "HARMFUL",
						["use_specific_unit"] = true,
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["event"] = "Cast",
						["spellIds"] = {
							284168, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["name"] = "Signal Exploding Sheep",
						["custom"] = "function(event, ...)\n    if not WeakAuras.triggerState[aura_env.id].triggers[1] then\n        if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n            local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n            if subEvent == \"SPELL_CAST_START\" and spellID == 287877 then\n                return true\n            end\n        end\n    end\nend",
						["names"] = {
							"Shrunk", -- [1]
						},
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
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
			["version"] = 103,
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
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Enabled"] = true,
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
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Containment"] = "OUTSIDE",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Dance ",
			["alpha"] = 1,
			["selfPoint"] = "CENTER",
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "06 Critter Explosion",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "TsK)Q(DVN6k",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 252172,
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
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
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
				["pvptalent"] = {
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
				["use_class"] = false,
				["role"] = {
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
			["animate"] = true,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "Details! Boss Mods Group",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["width"] = 359.096801757813,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["stagger"] = 0,
			["conditions"] = {
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
			["backgroundInset"] = 0,
		},
		["01 Wave of Light"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
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
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
							"Wave of Light", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_tooltip"] = false,
						["spellIds"] = {
							283617, -- [1]
						},
						["auranames"] = {
							"283617", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Arial Narrow",
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
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["url"] = "https://wago.io/bfaraid2/103",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "(QYsBFJj88z",
			["authorMode"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["width"] = 80,
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
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
			["text2FontSize"] = 25,
			["desaturate"] = true,
			["text1"] = "Dot",
			["text2"] = "%s",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "01 Wave of Light",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["02 Crushed (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							285671, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "o7GwJj5Z3Rl",
			["load"] = {
				["use_encounterid"] = true,
				["role"] = {
					["single"] = "TANK",
				},
				["encounterid"] = "2263,2284",
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
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
			["auto"] = true,
			["text1"] = "+Dmgtaken",
			["text1Enabled"] = true,
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "02 Crushed (Tank Only)",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["02 High Energy [Horde]"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "0",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "power",
								["value"] = "25",
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
								["variable"] = "power",
								["value"] = "75",
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
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "8oPrgzFFrbd",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["single"] = "Horde",
				},
				["use_faction"] = true,
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
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
			["frameStrata"] = 1,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				0.94117647058824, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 35,
			["auto"] = true,
			["text1"] = "Energy",
			["alpha"] = 1,
			["text1Enabled"] = true,
			["text2"] = "%p",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "02 High Energy [Horde]",
			["glow"] = false,
			["text2Enabled"] = true,
			["width"] = 80,
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
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "boss1",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
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
			["displayIcon"] = 136025,
			["cooldown"] = true,
			["authorOptions"] = {
			},
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
						["names"] = {
						},
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
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
				["pvptalent"] = {
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
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
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
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 199.999969482422,
			["internalVersion"] = 11,
			["config"] = {
			},
			["backgroundInset"] = 0,
			["stagger"] = 0,
			["conditions"] = {
			},
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
		},
		["04 Pulse-quickening Toxin"] = {
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
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
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
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["auranames"] = {
							"284493", -- [1]
						},
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Pulse-quickening Toxin", -- [1]
						},
						["use_tooltip"] = false,
						["use_unit"] = true,
						["use_specific_unit"] = false,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useGroup_count"] = false,
						["spellIds"] = {
							284493, -- [1]
						},
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["unit"] = "player",
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
			["glow"] = false,
			["xOffset"] = 0,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "sdo5aVORq4m",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Dot",
			["text2Enabled"] = false,
			["text1Enabled"] = true,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Pulse-quickening Toxin",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["width"] = 80,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["05 Lacerating Claws (Tank)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"282444", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["names"] = {
							"Lacerating Claws", -- [1]
						},
						["use_unit"] = true,
						["spellIds"] = {
							282444, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
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
			["version"] = 103,
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
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["icon"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownEdge"] = false,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Tank-Dot",
			["internalVersion"] = 11,
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["cooldownTextEnabled"] = true,
			["id"] = "05 Lacerating Claws (Tank)",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["authorOptions"] = {
			},
			["uid"] = "Mo2B50GpfFa",
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["08 Kel-Wrapped (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["text2Font"] = "Arial Narrow",
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "0G3r1bY2PL7",
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2280",
				["spec"] = {
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
						["spellId"] = "285000",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["names"] = {
							"Kelp-Wrapped", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["event"] = "Cast",
						["useExactSpellId"] = true,
						["name"] = "Kelp-Wrapped",
						["use_spellId"] = true,
						["spellIds"] = {
							285000, -- [1]
						},
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["auraspellids"] = {
							"285000", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
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
			["frameStrata"] = 1,
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Slows Add",
			["internalVersion"] = 11,
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "08 Kel-Wrapped (Tank Only)",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["04 Protected from Dance"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["useglowColor"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
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
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["auranames"] = {
							"289383", -- [1]
						},
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Quickened Pulse", -- [1]
						},
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_unit"] = true,
						["useGroup_count"] = false,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"291146", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							284519, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Cast",
						["unevent"] = "auto",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["useExactSpellId"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = false,
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["encounterid"] = "2271",
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["cooldownEdge"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["useGlowColor"] = true,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Protected",
			["alpha"] = 1,
			["auto"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "04 Protected from Dance",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "8)Z4T2StBXe",
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["01 Sacred Blade (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["cooldownSwipe"] = true,
			["glow"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["text1Enabled"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useGroup_count"] = false,
						["useName"] = true,
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["names"] = {
							"Sacred Blade", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_tooltip"] = false,
						["spellIds"] = {
							283573, -- [1]
						},
						["auranames"] = {
							"283573", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
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
				["role"] = {
					["single"] = "TANK",
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["authorMode"] = true,
			["text1Containment"] = "OUTSIDE",
			["text2Containment"] = "INSIDE",
			["glowType"] = "ACShine",
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
			["cooldownEdge"] = false,
			["text2FontSize"] = 25,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1"] = "+Dmgtaken",
			["text2"] = "%s%c",
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "01 Sacred Blade (Tank Only)",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "UZrmQZYAHgA",
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
		["05 Gift of Wind Cast (Mage Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/103",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["glow"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unevent"] = "auto",
						["type"] = "status",
						["spellId"] = 282098,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["unit"] = "boss1",
						["name"] = "Gift of Wind",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
						["use_specific_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282098,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["unit"] = "boss2",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Gift of Wind",
						["spellIds"] = {
							282040, -- [1]
						},
						["remOperator"] = "<=",
						["names"] = {
							"Blazing Phoenix", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss2",
					},
				}, -- [2]
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["use_class"] = true,
				["role"] = {
				},
				["use_encounterid"] = true,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
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
			["frameStrata"] = 1,
			["desaturate"] = true,
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
					["sound_channel"] = "Master",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spellsteal.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Spellsteal",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "05 Gift of Wind Cast (Mage Only)",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "i(xyMAhQ49O",
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
			["displayIcon"] = 1850549,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["01 Blinding Faith"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["useglowColor"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 283606,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_specific_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["dynamicDuration"] = true,
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["spellIds"] = {
							282939, -- [1]
						},
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["customDuration"] = "function()\n    return aura_env.duration, aura_env.expirationTime\nend",
						["buffShowOn"] = "showOnActive",
						["event"] = "Chat Message",
						["unit"] = "boss1",
						["castType"] = "cast",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["name"] = "Crush",
						["check"] = "event",
						["debuffType"] = "HARMFUL",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 283650\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 283650 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
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
			["text2Font"] = "Arial Narrow",
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
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["uid"] = "JE6KVO8QDh(",
			["stickyDuration"] = false,
			["glowColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "OUTSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["auto"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Turn",
			["glow"] = true,
			["useGlowColor"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Turn.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "01 Blinding Faith",
			["text2Enabled"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["displayIcon"] = 236247,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["06 Gigavolt Charge"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["internalVersion"] = 11,
			["text1Enabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
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
			["conditions"] = {
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Hide.ogg",
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
						["auranames"] = {
							"286646", -- [1]
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["event"] = "Cast",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["names"] = {
							"Gigavolt Charge", -- [1]
						},
						["spellIds"] = {
							283409, -- [1]
						},
						["auraspellids"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["useGroup_count"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["uid"] = "0B2Osw75iZp",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["desaturate"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Hide (LoS)",
			["auto"] = true,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = true,
			["id"] = "06 Gigavolt Charge",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = false,
			["width"] = 80,
			["url"] = "https://wago.io/bfaraid2/103",
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
			["displayIcon"] = 1698700,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Ring of Frost"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
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
						["spellId"] = 285459,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["name"] = "Ring of Frost",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
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
			["text1Enabled"] = true,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Bgp5MZsrldQ",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
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
			["frameStrata"] = 1,
			["desaturate"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Ring Inc",
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "09 Ring of Frost",
			["authorOptions"] = {
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 464484,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["01 Seal of Retribution"] = {
			["text2Point"] = "CENTER",
			["frameStrata"] = 1,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["customText"] = "function()\n    if aura_env.state and aura_env.state.power then\n        if aura_env.state.power > 90 then \n            return \"Buffs Add\"\n        else return \"Ignore Adds\"\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"284469", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "member",
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["buffShowOn"] = "showOnActive",
						["use_specific_unit"] = true,
						["spellIds"] = {
							284469, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
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
						["subeventPrefix"] = "SPELL",
						["percentpower"] = "80",
						["type"] = "status",
						["power"] = "80",
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = ">=",
						["percenthealth"] = "80",
						["event"] = "Power",
						["use_percentpower"] = false,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_specific_unit"] = true,
						["use_power"] = false,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = ">=",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [2]
				["activeTriggerMode"] = 2,
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["variable"] = "power",
						["value"] = "90",
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
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Enabled"] = true,
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
			["uid"] = "mVD2iu1rstI",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Containment"] = "OUTSIDE",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["text2Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
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
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.007843137254902, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["useGlowColor"] = false,
			["text2FontSize"] = 35,
			["text2"] = "%p",
			["text1"] = "%c",
			["internalVersion"] = 11,
			["auto"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "01 Seal of Retribution",
			["xOffset"] = 0,
			["alpha"] = 1,
			["width"] = 80,
			["desaturate"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["useglowColor"] = false,
			["displayIcon"] = 1030099,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["06 Blast Off"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["glow"] = false,
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
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							284168, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Shrunk", -- [1]
						},
						["name"] = "Blast Off",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
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
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "1943(Wc)Whv",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Avoid",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "06 Blast Off",
			["url"] = "https://wago.io/bfaraid2/103",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["displayIcon"] = 133031,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Focused Demise"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["glow"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"286779", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useGroup_count"] = false,
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["name"] = "Plague of Toads",
						["use_spellId"] = false,
						["spellIds"] = {
							286779, -- [1]
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Focused Demise", -- [1]
						},
						["subeventPrefix"] = "SPELL",
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
			["version"] = 103,
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
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["url"] = "https://wago.io/bfaraid2/103",
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
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Interrupt",
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "07 Focused Demise",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "9qMQ0qF8anc",
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
			["displayIcon"] = 571321,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["04 Crush"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
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
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Avoid",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1Containment"] = "OUTSIDE",
			["id"] = "04 Crush",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Enabled"] = true,
			["uid"] = "TUKM2IjS)eb",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 236316,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 283606,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_specific_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["dynamicDuration"] = false,
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["spellIds"] = {
							282939, -- [1]
						},
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["customDuration"] = "",
						["buffShowOn"] = "showOnActive",
						["event"] = "Chat Message",
						["unit"] = "boss1",
						["castType"] = "cast",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["name"] = "Crush",
						["check"] = "event",
						["debuffType"] = "HARMFUL",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 289906 or spellID == 283606) and IsItemInRange(28767, unitID) \n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 289906 or spellID == 283606) and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["names"] = {
							"Flames of Punishment", -- [1]
						},
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
		},
		["05 Bwonsamdi's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["useGlowColor"] = true,
			["icon"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["conditions"] = {
			},
			["text1Enabled"] = true,
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
			["internalVersion"] = 11,
			["selfPoint"] = "CENTER",
			["uid"] = "VpAURWR6EZh",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["url"] = "https://wago.io/bfaraid2/103",
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["role"] = {
				},
				["use_encounterid"] = true,
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["auto"] = true,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "No Heal",
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["stickyDuration"] = false,
			["id"] = "05 Bwonsamdi's Wrath",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"284663", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["names"] = {
							"Cry of the Fallen", -- [1]
						},
						["use_unit"] = true,
						["spellIds"] = {
							286060, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["glow"] = false,
		},
		["LayoutAnchors"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["regionType"] = "text",
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
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_custom"] = false,
					["custom"] = "",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["events"] = "PLAYER_ENTERING_WORLD,ADDON_LOADED",
						["spellIds"] = {
						},
						["custom"] = "function()\n  local grid = Grid2LayoutFrame\n  if not grid then return end\n\n  grid:ClearAllPoints()\n  grid:SetPoint(\"TOP\", UIParent, \"CENTER\", 0, -100)\n\n  local cast = Quartz3CastBarPlayer\n  if cast then\n    cast:ClearAllPoints()\n    cast:SetPoint(\"BOTTOMLEFT\", grid, \"TOPLEFT\", 1, 0)\n  end\n\n  local bw = BigWigsAnchor\n  if bw then\n    bw:ClearAllPoints()\n    bw:SetPoint(\"TOPRIGHT\", grid, \"TOPLEFT\", -3, -7)\n  end\n\n  local aa = LibStub(\"AceAddon-3.0\"):GetAddon(\"AngryAssignments\")\n  if aa then\n    if bw then\n      aa.frame:ClearAllPoints()\n      aa.frame:SetPoint(\"TOPRIGHT\", bw, \"TOPLEFT\", -1, 0)\n    end\n  end\n\n  return true\nend\n",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["selfPoint"] = "BOTTOM",
			["internalVersion"] = 11,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "LayoutAnchors",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "VZTmdD9aojx",
			["anchorPoint"] = "CENTER",
			["font"] = "Friz Quadrata TT",
			["conditions"] = {
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
			["xOffset"] = 0,
		},
		["04 Flames of Punishment"] = {
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
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "custom",
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["scalex"] = 1,
					["alphaType"] = "custom",
					["preset"] = "alphaPulse",
					["alpha"] = 0.39,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    local angle = (progress * 4 * math.pi) - (math.pi / 2)\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        return start + (((math.sin(angle) + 1)/2) * delta)\n    end\nend\n\n\n",
					["colorA"] = 1,
					["rotate"] = 0,
					["scaley"] = 1,
					["use_alpha"] = true,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
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
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_specific_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["dynamicDuration"] = false,
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["spellIds"] = {
							282939, -- [1]
						},
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["customDuration"] = "",
						["buffShowOn"] = "showOnActive",
						["event"] = "Chat Message",
						["unit"] = "boss1",
						["castType"] = "cast",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["name"] = "Flames of Punishment",
						["check"] = "event",
						["debuffType"] = "HARMFUL",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 282939 or spellID == 287659) and IsItemInRange(28767, unitID)\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 282939 or spellID == 287659) and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["names"] = {
							"Flames of Punishment", -- [1]
						},
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["type"] = "custom",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["dynamicDuration"] = false,
						["customDuration"] = "",
						["events"] = "UNIT_SPELLCAST_CHANNEL_START, UNIT_SPELLCAST_CHANNEL_STOP",
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_CHANNEL_START\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 282939 or spellID == 287659) and IsItemInRange(28767, unitID)\n        then\n            local _, _, _, startC, endC  = UnitChannelInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[UnitGUID(unitID)] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_CHANNEL_STOP\" then\n        local unitID, castGUID, spellID = ...\n        if (spellID == 282939 or spellID == 287659) and allstates[UnitGUID(unitID)] then\n            allstates[UnitGUID(unitID)].changed = true\n            allstates[UnitGUID(unitID)].show = false\n        end\n    end\n    return true\nend",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
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
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Dance",
			["text2Enabled"] = false,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Flames of Punishment",
			["glow"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "PkNWhIFSUGy",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
		},
		["04 Chaotic Displacement"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["auto"] = true,
			["text1Enabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["conditions"] = {
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
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Quickened Pulse", -- [1]
						},
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"289383", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["name"] = "Flames of Punishment",
						["auranames"] = {
							"289383", -- [1]
						},
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["castType"] = "cast",
						["use_spellId"] = true,
						["spellIds"] = {
							284519, -- [1]
						},
						["useExactSpellId"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["authorOptions"] = {
			},
			["uid"] = "bZm4Qaw2Etl",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text2Font"] = "Arial Narrow",
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["encounterid"] = "2271",
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
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
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
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["useGlowColor"] = true,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Swap Inc",
			["text1Font"] = "Arial Narrow",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1FontFlags"] = "OUTLINE",
			["id"] = "04 Chaotic Displacement",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["width"] = 80,
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["glow"] = true,
		},
		["08 Sea Storm"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["useGlowColor"] = false,
			["useglowColor"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
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
						["use_castType"] = false,
						["spellId"] = "284405",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"284361", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["names"] = {
							"Tempting Song", -- [1]
						},
						["name"] = "Tempting Song",
						["use_spellId"] = true,
						["spellIds"] = {
							284405, -- [1]
						},
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
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
			["text2Font"] = "Arial Narrow",
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
			["selfPoint"] = "CENTER",
			["internalVersion"] = 11,
			["uid"] = "WQFApVAOFeB",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["xOffset"] = 0,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "OUTSIDE",
			["auto"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Drops Pool",
			["text1Enabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["icon"] = true,
			["id"] = "08 Sea Storm",
			["cooldownEdge"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 1385912,
			["cooldown"] = true,
			["glow"] = true,
		},
		["06 Sheep Shrapnel"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["names"] = {
							"Sheep Shrapnel", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							287891, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
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
				["encounterid"] = "2276",
				["spec"] = {
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
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Dot",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "06 Sheep Shrapnel",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "39laB((ki8y",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 514016,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["07 Seal of Purification"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
			},
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
						["unit"] = "player",
						["use_absorbMode"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"290450", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["name"] = "Seal of Purification",
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							284662, -- [1]
						},
						["useExactSpellId"] = true,
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Seal of Purification", -- [1]
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
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["frameStrata"] = 1,
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Beam.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Beam",
			["alpha"] = 1,
			["selfPoint"] = "CENTER",
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "07 Seal of Purification",
			["glow"] = true,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "GEpw2i1lF7Z",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 1802889,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["03 Searing Embers"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"286987", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["use_unit"] = true,
						["names"] = {
							"Searing Embers", -- [1]
						},
						["spellIds"] = {
							286987, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
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
			["version"] = 103,
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
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
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
			["text1Containment"] = "OUTSIDE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Dot",
			["icon"] = true,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "03 Searing Embers",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["width"] = 80,
			["glow"] = false,
			["uid"] = "3JIMSks4vKX",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["07 Deathly Withering"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285195", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useGroup_count"] = false,
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["name"] = "Plague of Toads",
						["use_spellId"] = false,
						["spellIds"] = {
							285195, -- [1]
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Deathly Withering", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
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
			["version"] = 103,
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
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
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
			["auto"] = true,
			["text1"] = "Dot",
			["url"] = "https://wago.io/bfaraid2/103",
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "07 Deathly Withering",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text2Font"] = "Arial Narrow",
			["uid"] = "6xsmdym)dks",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 132095,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["04 Incandescence"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "95",
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
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284664",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["names"] = {
							"Incandescence", -- [1]
						},
						["use_specific_unit"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"284664", -- [1]
						},
						["spellIds"] = {
							284664, -- [1]
						},
						["event"] = "Cast",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Incandescence",
						["unit"] = "player",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "SKGyBEztG3x",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["xOffset"] = 0,
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
			["auto"] = true,
			["text1"] = "Isolate",
			["text1Containment"] = "OUTSIDE",
			["icon"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Incandescence",
			["glow"] = false,
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["02 Shaken / Death Touched"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							282010, -- [1]
							282415, -- [2]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "d(pgt1tcFV1",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
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
			["auto"] = true,
			["text1"] = "+Dmgtaken",
			["text1Enabled"] = true,
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "02 Shaken / Death Touched",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Tosh ExternalCDs"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Tosh ExternalCDs bar", -- [1]
			},
			["authorOptions"] = {
			},
			["yOffset"] = 561.064758300781,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["url"] = "https://wago.io/rJ3tSWjdX/8",
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
						["type"] = "aura",
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
			["radius"] = 200,
			["id"] = "Tosh ExternalCDs",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -777.073181152344,
			["uid"] = "k)k0yM84OEu",
			["config"] = {
			},
			["selfPoint"] = "TOP",
			["conditions"] = {
			},
			["background"] = "None",
			["backgroundInset"] = 0,
		},
		["09 Siegebreaker Blast"] = {
			["text2Point"] = "BOTTOM",
			["auto"] = true,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["glow"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["auranames"] = {
							"288374", -- [1]
						},
						["useName"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["uid"] = "ym)7Iut3mG0",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["sound_path"] = "",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
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
				["encounterid"] = "2281",
				["role"] = {
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
			["width"] = 80,
			["authorMode"] = true,
			["text2Enabled"] = false,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["text1Containment"] = "OUTSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["semver"] = "2.0.34-103",
			["text2FontSize"] = 16,
			["text2"] = "%c2",
			["text1"] = "Targeted",
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0.3,
			["useGlowColor"] = true,
			["authorOptions"] = {
			},
			["id"] = "09 Siegebreaker Blast",
			["stickyDuration"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
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
					["preset"] = "alphaPulse",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0.42,
					["use_color"] = false,
					["y"] = 0,
					["colorType"] = "custom",
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return r1 + (newProgress * (r2 - r1)),\n           g1 + (newProgress * (g2 - g1)),\n           b1 + (newProgress * (b2 - b1)),\n           a1 + (newProgress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["x"] = 140,
					["colorA"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 11,
			["displayIcon"] = 135189,
			["cooldown"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
		},
		["02 Discharge Shadow/Apetagonizer Core"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useglowColor"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							285659, -- [1]
							286433, -- [2]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "3iN7nWbetkv",
			["load"] = {
				["role"] = {
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Carrying",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "02 Discharge Shadow/Apetagonizer Core",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 80,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["05 Thundering Storm"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["useGlowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["internalVersion"] = 11,
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
						["use_unit"] = true,
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["use_specific_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["unit"] = "boss1",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							282939, -- [1]
						},
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["customDuration"] = "function()\n    return aura_env.duration, aura_env.expirationTime\nend",
						["unevent"] = "auto",
						["event"] = "Chat Message",
						["custom_hide"] = "timed",
						["castType"] = "cast",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["name"] = "Crush",
						["remOperator"] = "<=",
						["debuffType"] = "HARMFUL",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 282411 and IsItemInRange(32321, unitID)\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 282411 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["dynamicDuration"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
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
			["uid"] = "pIPKRlI3Hek",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
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
			["text1FontFlags"] = "OUTLINE",
			["auto"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Avoid",
			["alpha"] = 1,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Avoid.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "05 Thundering Storm",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["displayIcon"] = 237589,
			["cooldown"] = true,
			["glow"] = false,
		},
		["04 Volatile Charge"] = {
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
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
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
						["unit"] = "player",
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useName"] = true,
						["useGroup_count"] = false,
						["event"] = "Cast",
						["spellIds"] = {
							283507, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Incandescence",
						["use_unit"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Volatile Charge", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
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
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Drops Pool",
			["text2Enabled"] = false,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Volatile Charge",
			["glow"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "G6CqGERzIKr",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
		},
		["04 Spirits of Gold"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["glow"] = false,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["sound_channel"] = "Master",
					["do_sound"] = true,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Adds.ogg",
					["stop_sound"] = false,
				},
				["init"] = {
				},
			},
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["spellId"] = 285995,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["castType"] = "channel",
						["use_spellId"] = true,
						["spellIds"] = {
							285280, -- [1]
						},
						["unit"] = "boss1",
						["use_absorbMode"] = true,
						["name"] = "Spirits of Gold",
						["names"] = {
							"Searing Waves", -- [1]
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["disjunctive"] = "any",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "pBPjkTpps04",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
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
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Adds Inc",
			["authorOptions"] = {
			},
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Spirits of Gold",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["displayIcon"] = 2101982,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Toad Toxin"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["glow"] = false,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"285044", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useGroup_count"] = false,
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["name"] = "Plague of Toads",
						["use_spellId"] = false,
						["spellIds"] = {
							285044, -- [1]
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Toad Toxin", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["xOffset"] = 0,
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Toad-Dot",
			["internalVersion"] = 11,
			["text1Font"] = "Arial Narrow",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "07 Toad Toxin",
			["text2Font"] = "Arial Narrow",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "cGneotxewRw",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = 1802889,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["04 Soothin Breeze"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useglowColor"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
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
						["rem"] = "4",
						["spellId"] = "284664",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["name"] = "Incandescence",
						["event"] = "Cast",
						["names"] = {
							"Brilliant Aura", -- [1]
						},
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							284802, -- [1]
						},
						["auraspellids"] = {
							"290654", -- [1]
						},
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"290654", -- [1]
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
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
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Buffed",
			["alpha"] = 1,
			["xOffset"] = 0,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Soothin Breeze",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "w5oA()2zCbW",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["06 Enormous"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["names"] = {
							"Enormous", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							289023, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "ziMXP9CySkY",
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["encounterid"] = "2276",
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
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
			["auto"] = true,
			["text1"] = "Buffed",
			["text1Enabled"] = true,
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "06 Enormous",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 1698700,
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
						["customVariables"] = "  {\n    expirationTime = true,\n    active = {\n        display = \"effect active\",\n        type = \"bool\",\n    },\n    isplayer = {\n        display = \"is player\",\n        type = \"bool\",\n    },\n    classid = {\n        display = \"Class\",\n        type = \"string\",\n    }\n  }",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["event"] = "Chat Message",
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["custom"] = "function(allstates, event, ...)\n    if event == \"ENCOUNTER_END\" and aura_env.ShouldResetCDs() then\n        for k,v in pairs(allstates) do\n            v.expirationTime = nil\n        end\n        return true\n\n    elseif event == aura_env.events.completed then\n        local sourceGUID, spellId = ...\n        if not sourceGUID or not spellId then return end\n        local key = sourceGUID .. spellId\n        local state = allstates[key]\n        if not state then return end\n        local info = state.cdInfo\n        state.duration = info.cd\n        state.expirationTime = (state.duration - info.duration) + GetTime()\n        state.inverse = true\n        state.active = false\n        aura_env:setindex(state)\n        state.changed = true\n        return true\n\n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subevent = select(2,...)\n        if subevent == \"SPELL_CAST_SUCCESS\" then\n            local sourceGUID = aura_env.owner(select(4,...))\n            local spellId = select(12,...)\n            local key = sourceGUID .. spellId\n            local state = allstates[key]\n            if not state then\n                if spellId == 2050 or spellId == 34861 then -- Holy Word: Salvation CD reduction\n                    spellId = 265202\n                    key = sourceGUID .. spellId\n                    state = allstates[key]\n                    if state then\n                        if state.expirationTime and state.expirationTime < GetTime() then\n                            state.expirationTime = state.expirationTime - 30\n                        end\n                    end\n                elseif spellId == 121253 then --  Fortifying Brew\n                    spellId = 115203\n                    key = sourceGUID .. spellId\n                    state = allstates[key]\n                    if state then\n                        if state.expirationTime and state.expirationTime < GetTime() then\n                            state.expirationTime = state.expirationTime - 4\n                        end\n                    end\n                end\n                return\n            end\n            local info = state.cdInfo\n            if (info.duration or 0) > 0 then\n                state.duration = info.duration\n                state.inverse = false\n                state.active = true\n                aura_env:setindex(state)\n                local completed = aura_env.events.completed\n                C_Timer.After(info.duration, function() WeakAuras.ScanEvents(completed, sourceGUID, spellId) end)\n            else\n                state.duration = info.cd\n                state.inverse = true\n            end\n            state.expirationTime = state.duration + GetTime()\n            state.changed = true\n            return true\n        end\n\n    elseif event == \"PLAYER_ENTERING_WORLD\" or event == \"GROUP_ROSTER_UPDATE\" or event == \"RAID_ROSTER_UPDATE\" or event == \"PLAYER_SPECIALIZATION_CHANGED\" or event == aura_env.events.update then\n        for k,v in pairs(allstates) do\n            v.show = false\n            v.changed = true\n        end\n\n        local testbars = aura_env.config.testbars or 0\n        for i=1,testbars do\n            local tab = math.random(GetNumSpellTabs())\n            local slots = select(4, GetSpellTabInfo(tab))\n            local testSpell = GetSpellBookItemName(math.random(slots), BOOKTYPE_SPELL)\n            local _, _, icon, _, _, _, spellId = GetSpellInfo(testSpell)\n            allstates[i] = {\n                show = true,\n                changed = true,\n                sourceName = \"testbar\"..i,\n                progressType = \"timed\",\n                autoHide = false,\n                icon = icon,\n                spellId = spellId,\n                name = \"testbar\"..i,\n                duration = 10,\n                index = \"zzzz\"..i, -- sort last\n\n                -- Condition variables\n                active = false,\n                isplayer = false,\n                classid = select(2, UnitClass(\"player\")),\n            }\n        end\n\n        local playerguid = UnitGUID(\"player\")\n        for uid in WA_IterateGroupMembers() do\n            local info = UnitIsVisible(uid) and aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))\n            if info then\n                local cds = aura_env.specCDs[info.global_spec_id]\n                if cds then\n                    for spellId, cdInfo in pairs(cds) do\n                        if cdInfo.talent then\n                            cdInfo = cdInfo.talent(info.talents)\n                        end\n                        if cdInfo then\n                            spellId = cdInfo.spellId or spellId\n                            local key = info.guid .. spellId\n                            allstates[key] = {\n                                show = true,\n                                changed = true,\n                                sourceName = info.name,\n                                progressType = \"timed\",\n                                autoHide = false,\n                                icon = select(3, GetSpellInfo(spellId)),\n                                spellId = spellId,\n                                name = info.name .. spellId,\n                                sourceGUID = info.guid,\n                                duration = cdInfo.cd,\n\n                                info = info,\n                                cdInfo = cdInfo,\n\n                                -- Condition variables\n                                active = false,\n                                isplayer = (playerguid == info.guid),\n                                classid = info.class,\n                            }\n                            aura_env:setindex(allstates[key])\n                        end\n                    end\n                end\n            end\n        end\n        return true\n    end\nend",
						["spellIds"] = {
						},
						["events"] = "PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,PLAYER_SPECIALIZATION_CHANGED,TOSH_EXTERNAL_CD_COMPLETED,TOSH_EXTERNAL_CD_UPDATE",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["config"] = {
				["testbars"] = false,
				["sortMode"] = 2,
			},
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["colorA"] = 1,
					["duration_type"] = "seconds",
					["x"] = 0,
					["use_color"] = false,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function()\n    if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    local c = aura_env.state.barColor\n    if not c then return 0,0,0,1 end\n    return c.r, c.g, c.b, 1\nend",
					["rotate"] = 0,
					["scaley"] = 1,
					["scalex"] = 1,
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["scaley"] = 1,
					["colorA"] = 1,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["colorG"] = 1,
					["x"] = 0,
					["colorFunc"] = "",
					["rotate"] = 0,
					["use_color"] = false,
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["uid"] = "Z3)S3BoYJlD",
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["version"] = 8,
			["timer"] = true,
			["height"] = 16,
			["timerFlags"] = "OUTLINE",
			["stacksFont"] = "Friz Quadrata TT",
			["sparkBlendMode"] = "ADD",
			["authorMode"] = true,
			["icon"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,PLAYER_SPECIALIZATION_CHANGED,TOSH_EXTERNAL_CD_COMPLETED,TOSH_EXTERNAL_CD_UPDATE\nlocal events = {\n    completed = \"TOSH_EXTERNAL_CD_COMPLETED\",\n    update = \"TOSH_EXTERNAL_CD_UPDATE\",\n}\n\naura_env.specCDs = {\n    --Death Knight\n    [250] = { -- Blood\n    },\n    [251] = { -- Frost\n    },\n    [252] = { -- Unholy\n    },\n    -- Demon Hunter\n    [577] = { -- Havoc\n    },\n    [581] = { -- Vengeance\n    },\n    -- Druid\n    [102] = { -- Balance\n        [29166] = {\n            duration = 12,\n            cd = 180,\n        },\n    },\n    [103] = { -- Feral\n        [29166] = {\n            duration = 12,\n            cd = 180,\n        },\n    },\n    [104] = { -- Guardian\n    },\n    [105] = { -- Restoration\n        [102342] = { -- Ironbark\n            duration = 12,\n            cd = 60,\n        },\n    },\n    -- Hunter\n    [253] = { -- Beast Mastery\n    },\n    [254] = { -- Marksmanship\n    },\n    [255] = { -- Survival\n    },\n    -- Mage\n    [62] = { -- Arcane\n    },\n    [63] = { -- Fire\n    },\n    [64] = { -- Frost\n    },\n    -- Monk\n    [268] = { -- Brewmaster\n    },\n    [269] = { -- Windwalker\n    },\n    [270] = { -- Mistweaver\n        [116849] = { -- Life Cocoon\n            duration = 12,\n            cd = 120,\n        },\n    },\n    -- Paladin\n    [65] = { -- Holy\n        [6940] = { -- Blessing of Sacrifice\n            duration = 12,\n            cd = 120,\n        },\n        [1022] = { -- Blessing of Protection\n            duration = 10,\n            cd = 300,\n        },\n        [633] = { -- Lay on Hands\n            cd = 600,\n        },\n    },\n    [66] = { -- Protection\n        [6940] = { -- Blessing of Sacrifice\n            duration = 12,\n            cd = 120,\n        },\n        [1022] = { -- Blessing of Protection\n            talent = function(talents)\n                if not talents[22435] then\n                    return {\n                        duration = 10,\n                        cd = 300,\n                    }\n                end\n            end,\n        },\n        [204018] = { -- Blessing of Spellwarding\n            talent = function(talents)\n                if talents[22435] then\n                    return {\n                        duration = 10,\n                        cd = 180,\n                    }\n                end\n            end,\n        },\n        [633] = { -- Lay on Hands\n            cd = 600,\n        },\n    },\n    [70] = { -- Retribution\n        [1022] = { -- Blessing of Protection\n            duration = 10,\n            cd = 300,\n        },\n        [633] = { -- Lay on Hands\n            cd = 600,\n        },\n    },\n    -- Priest\n    [256] = { -- Discipline\n        [33206] = { -- Pain Suppression\n            duration = 8,\n            cd = 180,\n        },\n    },\n    [257] = { -- Holy\n        [47788] = { -- Guardian Spirit\n            duration = 10,\n            cd = 180,\n        },\n    },\n    [258] = { -- Shadow\n    },\n    -- Rogue\n    [259] = { -- Assassination\n    },\n    [260] = { -- Outlaw\n    },\n    [261] = { -- Subtlety\n    },\n    -- Shaman\n    [262] = { -- Elemental\n    },\n    [263] = { -- Enhancement\n    },\n    [264] = { -- Restoration\n    },\n    -- Warlock\n    [265] = { -- Affliction\n    },\n    [266] = { -- Demonology\n    },\n    [267] = { -- Destruction\n    },\n    -- Warrior\n    [71] = { -- Arms\n    },\n    [72] = { -- Fury\n    },\n    [73] = { -- Protection\n    },\n}\n\naura_env.events = events\n\naura_env.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)\n\nlocal inspectCallback = {\n    Update = function(self, guid, unit, info)\n        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)\n    end,\n    Remove = function(self, guid)\n        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)\n    end,\n}\naura_env.inspectLib.RegisterCallback(inspectCallback, \"GroupInSpecT_Update\", \"Update\")\naura_env.inspectLib.RegisterCallback(inspectCallback, \"GroupInSpecT_Remove\", \"Remove\")\n\nfunction aura_env.owner(guid)\n    local type = strsplit(\"-\",guid)\n    if type == \"Pet\" then\n        for unit in WA_IterateGroupMembers() do\n            if UnitGUID(unit..\"pet\") == guid then\n                return UnitGUID(unit)\n            end\n        end\n    end\n    return guid\nend\n\naura_env.sortModeFuncs = {\n    [1] = function(state) -- \"active > class > player > spellId\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = (active and \"active\" or \"inactive\")..\",\" ..class..\",\"..player..\",\"..spellId \n    end,\n    [2] = function(state) -- \"class > player > spellId\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = class..\",\"..player..\",\"..spellId \n    end,\n    [3] = function(state) -- \"class > spellId > player\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = class..\",\"..spellId..\",\"..player\n    end,\n}\n\n\nfunction aura_env:setindex(state)\n    self.sortModeFuncs[self.config.sortMode](state)\nend\n\nfunction aura_env.ShouldResetCDs()\n    local _,_,difficulty = GetInstanceInfo()\n    if difficulty == 3 or difficulty == 4 or difficulty == 5 or difficulty == 6 or difficulty == 7 or difficulty == 14 or difficulty == 15 or difficulty == 16 or difficulty == 17 then\n        return true\n    end\n    return false\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["useAdjustededMax"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["id"] = "Tosh ExternalCDs bar",
			["borderInFront"] = true,
			["semver"] = "1.0.0-8",
			["icon_side"] = "LEFT",
			["displayTextRight"] = "%p",
			["sparkRotationMode"] = "AUTO",
			["sparkHeight"] = 30,
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkWidth"] = 10,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["rotateText"] = "NONE",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 16,
			["frameStrata"] = 3,
			["width"] = 150,
			["textSize"] = 12,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["spark"] = false,
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
						["variable"] = "classid",
						["value"] = "WARRIOR",
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
						["variable"] = "classid",
						["value"] = "PALADIN",
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
						["variable"] = "classid",
						["value"] = "HUNTER",
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
						["variable"] = "classid",
						["value"] = "ROGUE",
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
						["variable"] = "classid",
						["value"] = "PRIEST",
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
						["variable"] = "classid",
						["value"] = "DEATHKNIGHT",
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
						["variable"] = "classid",
						["value"] = "SHAMAN",
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
						["variable"] = "classid",
						["value"] = "MAGE",
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
						["variable"] = "classid",
						["value"] = "WARLOCK",
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
						["variable"] = "classid",
						["value"] = "MONK",
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
						["variable"] = "classid",
						["value"] = "DRUID",
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
						["variable"] = "classid",
						["value"] = "DEMONHUNTER",
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
								["op"] = ">",
								["value"] = "0",
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
			["borderInset"] = 11,
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "testbars",
					["width"] = 1,
					["default"] = false,
					["name"] = "Test Mode",
					["useDesc"] = false,
					["desc"] = "",
				}, -- [1]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "Set this to configure test bars to help with alignment (note: these will only show with the options menu closed)",
					["width"] = 1,
				}, -- [2]
				{
					["useName"] = false,
					["type"] = "header",
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
					["default"] = 2,
					["name"] = "Sort Mode",
					["width"] = 1,
				}, -- [4]
				{
					["useName"] = false,
					["type"] = "header",
					["text"] = "",
					["width"] = 1,
				}, -- [5]
			},
		},
		["01 Judgment: Reckoning"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Switch.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
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
			["version"] = 103,
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
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
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
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Raiddmg",
			["text2Enabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "01 Judgment: Reckoning",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["uid"] = "mSYFRD5eGnI",
			["inverse"] = false,
			["internalVersion"] = 11,
			["displayIcon"] = 535593,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284474,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							283598, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Wave of Light", -- [1]
						},
						["name"] = "Judgment: Reckoning",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
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
				["init"] = {
					["do_custom"] = true,
					["custom"] = "local f = aura_env.region\nif not f.button then\n    f.button = CreateFrame(\"Button\", \"WAButton\"..aura_env.id, f)\n    f.button:SetAllPoints(f)\n    local bars = {\n      _G[\"DominosFrame1\"],\n      _G[\"DominosFrame2\"],\n      _G[\"DominosFrame3\"],\n      _G[\"DominosFrame4\"],\n      _G[\"DominosFrame5\"],\n      _G[\"DominosFrame6\"],\n    }\n    local aura_env = aura_env\n    local toggle = function()\n      if f.state then\n        for _,df in ipairs(bars) do\n          df:Hide()\n        end\n        f.state = false\n        aura_env.text = \">\"\n      else\n        for _,df in ipairs(bars) do\n          df:Show()\n        end\n        f.state = true\n        aura_env.text = \"<\"\n      end\n    end\n\n    f.state = true\n    toggle()\n    \n    f.button:SetScript(\"OnClick\", toggle)\nend\n",
				},
				["finish"] = {
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 18,
			["timer"] = true,
			["timerFlags"] = "None",
			["icon"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["textFlags"] = "None",
			["sparkOffsetX"] = 0,
			["backgroundColor"] = {
				0.0901960784313726, -- [1]
				0.0823529411764706, -- [2]
				0.0823529411764706, -- [3]
				1, -- [4]
			},
			["width"] = 15,
			["anchorFrameFrame"] = "DominosFrame6",
			["border"] = false,
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["borderInFront"] = true,
			["sparkHidden"] = "NEVER",
			["icon_side"] = "RIGHT",
			["auto"] = true,
			["timerSize"] = 18,
			["anchorFrameParent"] = false,
			["sparkRotation"] = 0,
			["sparkHeight"] = 30,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%c",
			["customTextUpdate"] = "update",
			["id"] = "DominosToggle",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["inverse"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["displayTextLeft"] = "%n",
			["uid"] = "KP11ffnYpC8",
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
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["spellId"] = 284941,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["use_unit"] = true,
						["castType"] = "channel",
						["use_spellId"] = true,
						["spellIds"] = {
							285280, -- [1]
						},
						["unit"] = "boss1",
						["use_absorbMode"] = true,
						["name"] = "Spirits of Gold",
						["names"] = {
							"Searing Waves", -- [1]
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "S5Ra4ged4Kw",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["cooldownTextEnabled"] = true,
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
			["auto"] = false,
			["text1"] = "Raiddmg",
			["text2Enabled"] = false,
			["cooldownEdge"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "04 Wail of Greed Channel",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 1058933,
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["stop_sound"] = false,
					["do_sound"] = false,
					["sound"] = " custom",
					["sound_channel"] = "Ambience",
				},
				["init"] = {
				},
			},
		},
		["08 Mark of the Seas"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["type"] = "aura2",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							285420, -- [1]
						},
						["auranames"] = {
							"288195", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Unbound Energy", -- [1]
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["encounterid"] = "2280",
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["url"] = "https://wago.io/bfaraid2/103",
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
			["auto"] = true,
			["text1"] = "+Dmgtaken",
			["text2Enabled"] = true,
			["desaturate"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["icon"] = true,
			["id"] = "08 Mark of the Seas",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["uid"] = "ShGkGcWSLww",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["03 Post Multi-Sided Strike Buff"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284089",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["unit"] = "player",
						["names"] = {
							"Successful Defense", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["useExactSpellId"] = true,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Successful Defense",
						["unevent"] = "auto",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["spellIds"] = {
							284089, -- [1]
						},
						["auraspellids"] = {
							"284089", -- [1]
						},
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
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Mon9sYhF25d",
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
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
			["auto"] = true,
			["text1"] = "Buffed",
			["glow"] = false,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["authorOptions"] = {
			},
			["id"] = "03 Post Multi-Sided Strike Buff",
			["color"] = {
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
			["stickyDuration"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Searing Pitch"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "q2Lt)fl(1fc",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "-stack/root",
			["glow"] = false,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "09 Searing Pitch",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["auraspellids"] = {
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"287365", -- [1]
						},
						["names"] = {
							"Broadside", -- [1]
						},
						["event"] = "Cast",
						["name"] = "Broadside",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
							288212, -- [1]
						},
						["unevent"] = "auto",
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
		},
		["02 Rending Bite (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							285875, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "tsUn2ZjiAju",
			["load"] = {
				["use_encounterid"] = true,
				["role"] = {
					["single"] = "TANK",
				},
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
				},
				["use_role"] = true,
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Enabled"] = true,
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
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Tank-Dot",
			["glow"] = false,
			["alpha"] = 1,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["authorOptions"] = {
			},
			["id"] = "02 Rending Bite (Tank Only)",
			["internalVersion"] = 11,
			["text2Enabled"] = true,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["icon"] = true,
		},
		["08 Mark of the Storm"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
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
						["auranames"] = {
							"288192", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["names"] = {
							"Unbound Energy", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							285420, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["text2Font"] = "Arial Narrow",
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "DtqXSlSNvjr",
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["encounterid"] = "2280",
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "+Dmgtaken",
			["alpha"] = 1,
			["glow"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "08 Mark of the Storm",
			["icon"] = true,
			["text2Enabled"] = true,
			["width"] = 80,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["05 Paku's Wrath Duration"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
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
						["buffShowOn"] = "showOnActive",
						["use_message"] = false,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["duration"] = "8",
						["custom_type"] = "event",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "spell:282107",
						["custom"] = "function(event)\n    if event == \"PAKU_WINDS\" then \n        return true \n    end \nend",
						["events"] = "PAKU_WINDS",
						["names"] = {
						},
						["remOperator"] = "<=",
						["custom_hide"] = "timed",
						["use_messageType"] = false,
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "30FlkqqeQPH",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["internalVersion"] = 11,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["desaturate"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Winds",
			["icon"] = true,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text1Enabled"] = true,
			["id"] = "05 Paku's Wrath Duration",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
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
			["displayIcon"] = 1029595,
			["cooldown"] = true,
			["xOffset"] = 0,
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
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
			["authorOptions"] = {
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "pvxCQwoRPGR",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["single"] = "Horde",
				},
				["use_faction"] = true,
				["encounterid"] = "2263,2284",
				["spec"] = {
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
						["spellId"] = "282179",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["destUnit"] = "player",
						["debuffType"] = "HARMFUL",
						["type"] = "event",
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["name"] = "Reverberating Slam",
						["use_itemSlot"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["duration"] = "3.5",
						["use_unit"] = true,
						["use_destUnit"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
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
			["frameStrata"] = 1,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Move",
			["glow"] = false,
			["alpha"] = 1,
			["text2"] = "%p",
			["semver"] = "2.0.34-103",
			["text1Enabled"] = true,
			["id"] = "02 Reverberating Slam [Horde]",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 2101174,
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["08 Thunderous Boom"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284262,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["dynamicDuration"] = false,
						["duration"] = "5",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["name"] = "Voltaic Flash",
						["spellIds"] = {
							285280, -- [1]
						},
						["event"] = "Chat Message",
						["unevent"] = "auto",
						["customDuration"] = "",
						["use_spellId"] = false,
						["custom"] = "function(event, unit, castGUID, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then\n        if spellID == 284106 and IsItemInRange(28767, unit) then\n            return true \n        end \n    end \nend \n\n",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["custom_hide"] = "timed",
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
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["cooldownTextEnabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Silence",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "08 Thunderous Boom",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["uid"] = "yQ52FL4F5s5",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 136050,
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
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
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
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
						["subeventSuffix"] = "_CAST_START",
						["use_requirePowerType"] = false,
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["custom"] = "function(allstates, ...)\n    for k,v in pairs(allstates) do\n        v.show = false\n        v.index = nil\n        v.changed = true\n    end\n\n    local sortby = aura_env.config.sortby\n    local playerguid = UnitGUID(\"player\")\n    for uid in WA_IterateGroupMembers() do\n        if UnitExists(uid) and UnitIsVisible(uid) and UnitPower(uid) and UnitPower(uid) > 0 then\n            local info = aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))\n            if info and aura_env.healSpecs[info.global_spec_id] then\n                local name = UnitName(uid)\n                local currMana, maxMana = UnitPower(uid), UnitPowerMax(uid)\n                local pct = math.floor((currMana / maxMana)*100)\n                local class = select(2, UnitClass(\"player\"))\n\n                local state = allstates[info.guid]\n                if not state then\n                    allstates[info.guid] = {\n                        progressType = \"static\",\n                        autoHide = false,\n                        display = WA_ClassColorName(uid),\n\n                        -- Condition variables\n                        classid = class,\n                        isplayer = (playerguid == info.guid),\n                    }\n                    state = allstates[info.guid]\n                end\n                state.show = true\n                state.value = currMana\n                state.total = maxMana\n                state.pct = pct\n                state.changed = true\n\n                if sortby == \"VALUE\" then\n                    state.index = aura_env.config.sortdir * pct or 0\n                    state.resort = true\n                elseif sortby == \"CLASS\" then\n                    state.index = class .. name\n                end\n            end\n        end\n    end\n\n    return true\nend",
						["events"] = "PLAYER_ENTERING_WORLD,UNIT_POWER_UPDATE",
						["spellIds"] = {
						},
						["check"] = "event",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
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
					["type"] = "none",
					["scaley"] = 1,
					["colorB"] = 1,
					["scalex"] = 1,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["use_color"] = false,
					["colorFunc"] = "function()\n    if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    local c = aura_env.state.barColor\n    if not c then return 0,0,0,1 end\n    return c.r, c.g, c.b, 1\nend",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
				},
				["main"] = {
					["colorR"] = 1,
					["x"] = 0,
					["duration_type"] = "seconds",
					["colorB"] = 1,
					["scalex"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function()\n    if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    local c = aura_env.state.barColor\n    if not c then return 0,0,0,1 end\n    return c.r, c.g, c.b, 1\nend",
					["rotate"] = 0,
					["use_color"] = false,
					["scaley"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["version"] = 7,
			["height"] = 16,
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["sparkWidth"] = 10,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["uid"] = "qKfiru4pdOu",
			["textSize"] = 12,
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.config = {\n    sortby = \"VALUE\", -- or \"CLASS\"\n    sortdir = -1, --  -1 = ascending; 1 = descending. Only used for VALUE sorting\n}\n\naura_env.healSpecs = {\n    [105] = true, -- Restoration Druid\n    [270] = true, -- Mistweaver Monk\n    [65]  = true, -- Holy Paladin\n    [256] = true, -- Discipline Priest\n    [257] = true, -- Holy Priest\n    [264] = true, -- Restoration Shaman\n}\n\naura_env.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)",
					["do_custom"] = true,
				},
			},
			["width"] = 220,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["borderInFront"] = true,
			["borderSize"] = 16,
			["sparkHidden"] = "NEVER",
			["icon_side"] = "LEFT",
			["zoom"] = 0,
			["timerSize"] = 12,
			["sparkHeight"] = 30,
			["rotateText"] = "NONE",
			["spark"] = false,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0-7",
			["displayTextRight"] = "%pct",
			["id"] = "Tosh HealerMana bar",
			["sparkRotation"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stacksFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["useAdjustededMax"] = false,
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
						["value"] = "40",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["sparkRotationMode"] = "AUTO",
			["borderBackdrop"] = "Blizzard Tooltip",
		},
		["03 Rising Flames On You (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
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
					["custom"] = "",
					["do_sound"] = false,
					["do_custom"] = false,
					["sound"] = " custom",
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
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"282037", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["names"] = {
							"Rising Flames", -- [1]
						},
						["use_unit"] = true,
						["spellIds"] = {
							282037, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
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
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "f(BQCNCmAZF",
			["load"] = {
				["use_encounterid"] = true,
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["affixes"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Tank-Dot",
			["text2Enabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["url"] = "https://wago.io/bfaraid2/103",
			["id"] = "03 Rising Flames On You (Tank Only)",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Energized Storm"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["icon"] = true,
			["useglowColor"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["spellId"] = "285350",
						["auranames"] = {
							"285350", -- [1]
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = false,
						["duration"] = "2",
						["use_tooltip"] = false,
						["ignoreSelf"] = true,
						["unit"] = "group",
						["group_count"] = "0",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_AURA_REMOVED",
						["name"] = "Storm's Wail",
						["useGroup_count"] = true,
						["event"] = "Health",
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_spellId"] = true,
						["spellIds"] = {
							285350, -- [1]
						},
						["unevent"] = "timed",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Storm's Wail", -- [1]
						},
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["text1Enabled"] = true,
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
			["desaturate"] = false,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["stickyDuration"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = false,
			["text2FontSize"] = 25,
			["zoom"] = 0.3,
			["text1"] = "Add Inc",
			["internalVersion"] = 11,
			["useGlowColor"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text1Font"] = "Arial Narrow",
			["id"] = "08 Energized Storm",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 80,
			["cooldownEdge"] = false,
			["uid"] = "MNJkCubsp(w",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "1370984",
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["09 Burning Explosion"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text1Enabled"] = true,
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
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "expirationTime",
								["value"] = "14",
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
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288221",
						["duration"] = "15",
						["subeventPrefix"] = "SPELL",
						["use_cloneId"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "event",
						["unevent"] = "timed",
						["use_specific_unit"] = true,
						["event"] = "Combat Log",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["name"] = "Ring of Frost",
						["unit"] = "boss1",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"288394", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
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
			["version"] = 103,
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
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Arial Narrow",
			["xOffset"] = 0,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Clear Stacks",
			["icon"] = true,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "09 Burning Explosion",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["width"] = 80,
			["selfPoint"] = "CENTER",
			["uid"] = "GMhBFtn(J5M",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 511713,
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
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
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
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "286742",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["names"] = {
							"Suffering Spirits", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["auraspellids"] = {
							"286742", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["name"] = "Necrotic Smash",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["spellIds"] = {
							283504, -- [1]
						},
						["unevent"] = "auto",
						["useExactSpellId"] = true,
						["combineMatches"] = "showLowest",
						["subcount"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
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
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "-%tooltip1%% Heal",
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "07 Necrotic Smash",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "0(D1vF)0WY2",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = 1802889,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["02 Bestial Throw Target"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useglowColor"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["sound_path"] = "",
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
						["auranames"] = {
							"289307", -- [1]
						},
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["event"] = "Chat Message",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["events"] = "",
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["custom_type"] = "event",
						["dynamicDuration"] = false,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "e9fZR387bsM",
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
				["race"] = {
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
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
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
				["use_difficulty"] = false,
				["spec"] = {
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["auto"] = true,
			["text1"] = "Targeted",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2"] = "%p",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "02 Bestial Throw Target",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 132937,
			["cooldown"] = true,
			["glow"] = true,
		},
		["03 Roll (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text1Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "285632",
						["group_role"] = "TANK",
						["duration"] = "1",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_AURA_APPLIED",
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_type"] = "event",
						["name"] = "Stalking",
						["spellIds"] = {
							285632, -- [1]
						},
						["event"] = "Combat Log",
						["buffShowOn"] = "showOnActive",
						["use_specific_unit"] = false,
						["use_spellId"] = true,
						["custom"] = "function(event, unit, castGUID, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 286427 then \n            return true\n        end\n    end\nend\n\n\n",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["remOperator"] = "<=",
						["use_destUnit"] = false,
						["custom_hide"] = "timed",
						["names"] = {
							"Stalking", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["conditions"] = {
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
			["cooldownEdge"] = false,
			["text1Containment"] = "OUTSIDE",
			["uid"] = "X)HjyFqvei)",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
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
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useGlowColor"] = false,
			["text2FontSize"] = 25,
			["zoom"] = 0.31,
			["text1"] = "Roll",
			["auto"] = false,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = true,
			["id"] = "03 Roll (Tank Only)",
			["text2Font"] = "Arial Narrow",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 606543,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["05 Gift of Wind Buff On You (Mage Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s",
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["sound"] = " custom",
					["sound_channel"] = "Master",
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["selfPoint"] = "CENTER",
			["text1Enabled"] = true,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["use_class"] = true,
				["role"] = {
				},
				["use_encounterid"] = true,
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "+%tooltip1%% Haste",
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "05 Gift of Wind Buff On You (Mage Only)",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 80,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["auraspellids"] = {
							"282098", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["name"] = "Gift of Wind",
						["use_spellId"] = false,
						["spellIds"] = {
						},
						["useExactSpellId"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["names"] = {
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
			["uid"] = "oshSCCOHHZA",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 1850549,
			["cooldown"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
		},
		["06 Electroshock Amplification"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"289699", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useGroup_count"] = false,
						["event"] = "Cast",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["unit"] = "member",
						["spellIds"] = {
							287891, -- [1]
						},
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["names"] = {
							"Sheep Shrapnel", -- [1]
						},
						["buffShowOn"] = "showOnActive",
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
						["duration"] = "1",
						["use_specific_unit"] = true,
						["unitisunit"] = "player",
						["unevent"] = "auto",
						["threatUnit"] = "boss1",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "boss1target",
						["threatUnit"] = "boss1",
						["use_specific_threatUnit"] = true,
						["use_specific_unit"] = true,
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(t)\nreturn t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
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
			["auto"] = true,
			["text1"] = "Targets you",
			["text2Enabled"] = true,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1Containment"] = "OUTSIDE",
			["id"] = "06 Electroshock Amplification",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["authorOptions"] = {
			},
			["uid"] = "(SxKddTuHzH",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 514016,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["06 Wormhole Generator"] = {
			["text2Point"] = "BOTTOM",
			["frameStrata"] = 1,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text1Enabled"] = true,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["sound_path"] = "",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 287952,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "boss1",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["type"] = "status",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["dynamicDuration"] = false,
						["event"] = "Cast",
						["names"] = {
						},
						["events"] = "",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
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
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["scalex"] = 1,
					["alphaType"] = "custom",
					["preset"] = "alphaPulse",
					["alpha"] = 0.41,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["colorA"] = 1,
					["rotate"] = 0,
					["scaley"] = 1,
					["use_alpha"] = false,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["stickyDuration"] = false,
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
				["encounterid"] = "2276",
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
				["use_difficulty"] = false,
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
			["text1Font"] = "Arial Narrow",
			["glow"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text2FontSize"] = 16,
			["text2"] = "%p",
			["text1"] = "Teleport",
			["selfPoint"] = "CENTER",
			["useGlowColor"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["icon"] = true,
			["id"] = "06 Wormhole Generator",
			["desaturate"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "LGBaMkBMq7x",
			["inverse"] = false,
			["internalVersion"] = 11,
			["displayIcon"] = 465876,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["06 Buster Cannon Dot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
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
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useName"] = true,
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["names"] = {
							"Buster Cannon", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							282182, -- [1]
						},
						["auranames"] = {
							"282182", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "TN6toBzBa8a",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
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
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "-%tooltip2%% Haste",
			["url"] = "https://wago.io/bfaraid2/103",
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "06 Buster Cannon Dot",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 1698700,
			["cooldown"] = true,
			["glow"] = false,
		},
		["03 Force Orb"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "qeSxMEOWsMF",
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
					},
				},
				["use_encounterid"] = true,
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["stickyDuration"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"287747", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["use_unit"] = true,
						["names"] = {
							"Force Orb", -- [1]
						},
						["spellIds"] = {
							287747, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "To Barrier",
			["text2Enabled"] = false,
			["text2Font"] = "Arial Narrow",
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "03 Force Orb",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 80,
			["url"] = "https://wago.io/bfaraid2/103",
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 11,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["06 Buster Cannon"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
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
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dodge.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
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
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 282153,
						["duration"] = "1",
						["use_spell"] = false,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["spell"] = "282153",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "status",
						["unit"] = "boss1",
						["use_spellId"] = true,
						["spellIds"] = {
							284168, -- [1]
						},
						["use_absorbMode"] = true,
						["name"] = "Buster Cannon",
						["use_unit"] = true,
						["names"] = {
							"Shrunk", -- [1]
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
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
			["version"] = 103,
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
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["cooldownTextEnabled"] = true,
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
			["auto"] = false,
			["text1"] = "Dodge",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["icon"] = true,
			["id"] = "06 Buster Cannon",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "79zRTffxGRC",
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 1717108,
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
		},
		["09 Arctic Armor"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["glow"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["specificUnit"] = "boss1",
						["names"] = {
							"Broadside", -- [1]
						},
						["custom_hide"] = "timed",
						["unit"] = "boss",
						["debuffType"] = "HELPFUL",
						["auraspellids"] = {
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Broadside",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							288212, -- [1]
						},
						["custom_type"] = "event",
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"282841", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["config"] = {
			},
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
			["frameStrata"] = 1,
			["url"] = "https://wago.io/bfaraid2/103",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Boss Immune",
			["text1Enabled"] = true,
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "09 Arctic Armor",
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
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "R3G0ZNfDJTD",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135835,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["04 Thief's Bane"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%c2",
			["customText"] = "function()\n    return \"Not Protected\", \"Protected\"\nend \n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
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
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"287424", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["use_unit"] = true,
						["names"] = {
							"Thief's Bane", -- [1]
						},
						["spellIds"] = {
							287424, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["buffShowOn"] = "showAlways",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useGroup_count"] = false,
						["useName"] = true,
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["names"] = {
							"Shadow-Touched", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_tooltip"] = false,
						["spellIds"] = {
							284556, -- [1]
						},
						["auranames"] = {
							"284556", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = 1,
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["icon"] = true,
			["text2FontSize"] = 16,
			["auto"] = true,
			["text1"] = "%c1",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1Enabled"] = true,
			["id"] = "04 Thief's Bane",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["uid"] = "M3gx(wUylxL",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["04 Consuming Flame"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\n    return aura_env.counter\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["custom"] = "if aura_env.counter ~= 6 then PlaySoundFile(\"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Next.ogg\", \"MASTER\")\nelse PlaySoundFile(\"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Collect.ogg\", \"MASTER\")\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.counter = 0\naura_env.GUIDS = {\n    [\"145273\"] = true, --IN'ZASHI\n    [\"145274\"] = true, --YALAT\n}",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["dynamicDuration"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "target",
						["customDuration"] = "function()\n    return 3, 3+GetTime()\nend",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["events"] = "UNIT_HEALTH",
						["custom"] = "function(event, unit) \n    if UnitExists(unit) then\n        if aura_env.GUIDS[select(6, strsplit(\"-\", UnitGUID(unit)))] and string.match(unit, \"boss\") then\n            if IsItemInRange(28767, unit) then\n                local bosshp = ((UnitHealth(unit)/UnitHealthMax(unit))*100)\n                if aura_env.counter == 0 and bosshp <= 90 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 1 and bosshp <= 80 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 2 and bosshp <= 70 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 3 and bosshp <= 60 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 4 and bosshp <= 50 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 5 and bosshp <= 40 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    return true\n                elseif aura_env.counter == 6 and bosshp <= 30 then\n                    aura_env.counter = aura_env.counter + 1\n                    WeakAuras.ScanEvents(\"ROOM_COUNTER\", aura_env.counter)\n                    local aura_env = aura_env\n                    C_Timer.After(3, function() aura_env.counter = aura_env.counter + 1 end)\n                    return true\n                end\n            end\n        end\n    end\nend",
						["use_unit"] = true,
						["names"] = {
						},
						["custom_hide"] = "timed",
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
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "0HV341ua)q6",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
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
			["auto"] = true,
			["text1"] = "Next Room",
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
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Consuming Flame",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = 134237,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Voltaic Flash"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/103",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dance.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
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
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Dance",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "08 Voltaic Flash",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "5fquK1YFGpB",
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
						["dynamicDuration"] = false,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Voltaic Flash",
						["spellIds"] = {
							285280, -- [1]
						},
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "",
						["use_spellId"] = false,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284262 and IsItemInRange(28767, unitID)\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284262 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["check"] = "event",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 839983,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Glacial Ray"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Beam.ogg",
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
						["use_castType"] = true,
						["spellId"] = 288345,
						["duration"] = "1",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["castType"] = "cast",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["unit"] = "boss1",
						["use_absorbMode"] = true,
						["name"] = "Glacial Ray",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
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
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["xOffset"] = 0,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Beam",
			["internalVersion"] = 11,
			["glow"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text1Containment"] = "OUTSIDE",
			["id"] = "09 Glacial Ray",
			["text2Font"] = "Arial Narrow",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["uid"] = "Hg3SYo7I6OL",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = 1698700,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["06 World Enlarger"] = {
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
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.spellIDs = {\n    [289537] = true,\n    [286693] = true,\n    [288041] = true,\n}",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["glow"] = false,
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "NzRkFvmRmz2",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
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
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 283606,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["use_specific_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["dynamicDuration"] = true,
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["spellIds"] = {
							282939, -- [1]
						},
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["customDuration"] = "function()\n    return aura_env.duration, aura_env.expirationTime\nend",
						["buffShowOn"] = "showOnActive",
						["event"] = "Chat Message",
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["castType"] = "cast",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["name"] = "Crush",
						["check"] = "event",
						["debuffType"] = "HARMFUL",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if aura_env.spellIDs[spellID]\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if aura_env.spellIDs[spellID] and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
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
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Spread",
			["text2Enabled"] = false,
			["text1Enabled"] = true,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "06 World Enlarger",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 667398,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Freezing Blast"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["glow"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
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
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["name"] = "Freezing Blast",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
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
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
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
			["auto"] = false,
			["text1"] = "Dodge",
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "09 Freezing Blast",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["cooldownEdge"] = false,
			["uid"] = "fdAg3)ASPi7",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["message"] = "sound is in conditions",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dodge.ogg",
					["do_message"] = false,
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayIcon"] = 1698701,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Death's Door"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["desaturate"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Debuff.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"288449", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useGroup_count"] = false,
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["event"] = "Cast",
						["use_absorbMode"] = true,
						["name"] = "Plague of Toads",
						["use_spellId"] = false,
						["spellIds"] = {
							288449, -- [1]
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Death's Door", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
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
			["version"] = 103,
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
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
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
			["auto"] = true,
			["text1"] = "Drops Rift",
			["xOffset"] = 0,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "07 Death's Door",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "s7GIReyd4HT",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 1802889,
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
			["authorOptions"] = {
			},
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
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
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
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
			["frameStrata"] = 1,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["spellId"] = "284883",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["auraspellids"] = {
							"284883", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Opal of Unleashed Rage",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["use_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							284883, -- [1]
						},
						["useExactSpellId"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Opal of Unleashed Rage", -- [1]
						},
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "+%tooltip1%% DPS",
			["glow"] = false,
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Opal of Unleashed Rage",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = true,
			["uid"] = "Yj4mTUqZipC",
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["02 Deathly Slam [Alliance]"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
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
						["spellId"] = "282543",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["destUnit"] = "player",
						["debuffType"] = "HARMFUL",
						["type"] = "event",
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["event"] = "Combat Log",
						["name"] = "Deathly Slam",
						["use_itemSlot"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["duration"] = "3.5",
						["use_unit"] = true,
						["use_destUnit"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Jeold5dtui3",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["single"] = "Alliance",
				},
				["use_faction"] = true,
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["frameStrata"] = 1,
			["desaturate"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Move",
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "02 Deathly Slam [Alliance]",
			["authorOptions"] = {
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 607865,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["08 Ire of the Deep"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\n    return aura_env.soakamount\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
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
				["finish"] = {
					["do_glow"] = false,
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.initialCast = 0\naura_env.soakamount = 0",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "8XPSlusi3XA",
			["load"] = {
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
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
			["frameStrata"] = 1,
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				0.96078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Soak",
			["internalVersion"] = 11,
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text2Font"] = "Arial Narrow",
			["id"] = "08 Ire of the Deep",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "5",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["spellIds"] = {
						},
						["custom"] = "function(event, ...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n        if subEvent == \"SPELL_CAST_START\" and spellID == 285017 then\n            if aura_env.initialCast < 4 then\n                aura_env.initialCast = aura_env.initialCast + 1\n            end\n            aura_env.soakamount = aura_env.initialCast\n        end\n        if subEvent == \"SPELL_CAST_START\" and spellID == 285040 then\n            local aura_env = aura_env \n            C_Timer.After(0.1, function() aura_env.soakamount = aura_env.soakamount - 1 PlaySoundFile(\"Interface\\\\AddOns\\\\SharedMedia_Causese\\\\sound\\\\Soak.ogg\", \"MASTER\") end)\n            return true\n        end\n    end\n    if event == \"ENCOUNTER_START\" then\n        aura_env.initialCast = 0\n        aura_env.soakamount = 0\n    end\nend",
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 237371,
			["cooldown"] = true,
			["icon"] = true,
		},
		["09 Heart of Frost"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "A8)HFDmiJVN",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Spread",
			["glow"] = false,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "09 Heart of Frost",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["auraspellids"] = {
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"289220", -- [1]
						},
						["names"] = {
							"Broadside", -- [1]
						},
						["event"] = "Cast",
						["name"] = "Broadside",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
							288212, -- [1]
						},
						["unevent"] = "auto",
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
		},
		["07 Crushed (Tank-Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/103",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
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
						["auranames"] = {
							"272868", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"289858", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["name"] = "Plague of Toads",
						["use_spellId"] = false,
						["spellIds"] = {
							285044, -- [1]
						},
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["combineMatches"] = "showLowest",
						["useGroup_count"] = false,
						["names"] = {
							"Toad Toxin", -- [1]
						},
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
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "ZYp55o411zk",
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "+Dmgtaken",
			["text2Enabled"] = true,
			["text1Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["authorOptions"] = {
			},
			["id"] = "07 Crushed (Tank-Only)",
			["glow"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = true,
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
			["displayIcon"] = 136040,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["09 Orb of Frost"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
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
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							285215, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["name"] = "Orb of Frost",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["useglowColor"] = false,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["use_encounterid"] = true,
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Soak",
			["text2Font"] = "Arial Narrow",
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "09 Orb of Frost",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = false,
			["width"] = 80,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "UjHGaQi0gQh",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Soak.ogg",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 629077,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["04 Depleted Diamond"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Font"] = "Arial Narrow",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"284546", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["names"] = {
							"Depleted Diamond", -- [1]
						},
						["use_unit"] = true,
						["spellIds"] = {
							284546, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "Gqc3olAOfDI",
			["load"] = {
				["role"] = {
					["single"] = "TANK",
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["frameStrata"] = 1,
			["text1Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "On CD",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "04 Depleted Diamond",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
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
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["02 High Energy [Alliance]"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
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
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["variable"] = "power",
								["value"] = "0",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["variable"] = "power",
								["value"] = "25",
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
								["variable"] = "power",
								["value"] = "75",
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
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["faction"] = {
					["single"] = "Alliance",
				},
				["use_faction"] = true,
				["encounterid"] = "2263,2284",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				0.94117647058824, -- [1]
				1, -- [2]
				0.95294117647059, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Enabled"] = true,
			["xOffset"] = 0,
			["text2FontSize"] = 35,
			["auto"] = true,
			["text1"] = "Energy",
			["frameStrata"] = 1,
			["text2Font"] = "Arial Narrow",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["selfPoint"] = "CENTER",
			["id"] = "02 High Energy [Alliance]",
			["glow"] = false,
			["text2Enabled"] = true,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["uid"] = "GLUFVkfk3E(",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = true,
						["event"] = "Power",
						["use_percentpower"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "boss1",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
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
			["displayIcon"] = 136201,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["08 Storm's Wail"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["auto"] = false,
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["conditions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["authorOptions"] = {
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
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["text1Enabled"] = true,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["width"] = 80,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
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
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["desaturate"] = false,
			["glow"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["useGlowColor"] = true,
			["text2"] = "%s",
			["text2FontSize"] = 25,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "Clear Pools",
			["text1Containment"] = "OUTSIDE",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Clear.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "08 Storm's Wail",
			["text2Font"] = "Arial Narrow",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							285350, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["uid"] = "MkEiT41z1I8",
			["inverse"] = false,
			["useTooltip"] = false,
			["displayIcon"] = 1717108,
			["cooldown"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
		},
		["07 Bwonsamdi's Boon"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["icon"] = true,
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Transition.ogg",
					["do_sound"] = true,
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
						["auranames"] = {
							"286695", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["duration"] = "4",
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_CHANNEL_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284446\n        then\n            local _, _, _, startC, endC  = UnitChannelInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[UnitGUID(unitID)] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_CHANNEL_STOP\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284446 and allstates[UnitGUID(unitID)] then\n            allstates[UnitGUID(unitID)].changed = true\n            allstates[UnitGUID(unitID)].show = false\n        end\n    end\n    return true\nend",
						["useName"] = true,
						["events"] = "UNIT_SPELLCAST_CHANNEL_START, UNIT_SPELLCAST_CHANNEL_STOP",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["use_debuffClass"] = false,
						["custom_type"] = "stateupdate",
						["spellIds"] = {
							285213, -- [1]
						},
						["unevent"] = "auto",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Caress of Death", -- [1]
						},
						["use_spellId"] = false,
						["name"] = "Plague of Toads",
						["custom_hide"] = "timed",
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["url"] = "https://wago.io/bfaraid2/103",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "c)yAxxtuoRZ",
			["load"] = {
				["use_encounterid"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Arial Narrow",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["xOffset"] = 0,
			["text1Color"] = {
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
			["useGlowColor"] = false,
			["text2FontSize"] = 16,
			["text2"] = "%p",
			["text1"] = "Transition",
			["auto"] = false,
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
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "07 Bwonsamdi's Boon",
			["alpha"] = 1,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["useglowColor"] = false,
			["displayIcon"] = "237557",
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["04 High Energy"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\High Energy.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["do_sound"] = false,
					["sound"] = " custom",
					["sound_channel"] = "Ambience",
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["spellId"] = 284941,
						["use_power"] = false,
						["names"] = {
							"Searing Waves", -- [1]
						},
						["unit"] = "boss1",
						["use_specific_unit"] = true,
						["use_powertype"] = false,
						["debuffType"] = "HARMFUL",
						["use_unit"] = true,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["spellIds"] = {
							285280, -- [1]
						},
						["event"] = "Power",
						["use_percentpower"] = true,
						["castType"] = "channel",
						["use_spellId"] = false,
						["name"] = "Wail of Greed",
						["duration"] = "1",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["percentpower"] = "90",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["use_percentpower"] = false,
						["use_unit"] = true,
						["unit"] = "boss1",
						["percentpower"] = "100",
						["percentpower_operator"] = "==",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "BT8dj395CeK",
			["load"] = {
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
					},
				},
				["affixes"] = {
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2271",
				["spec"] = {
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
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				0.050980392156863, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 35,
			["auto"] = false,
			["text1"] = "Raiddmg Inc",
			["icon"] = true,
			["text1Enabled"] = true,
			["text2"] = "%p",
			["semver"] = "2.0.34-103",
			["text2Enabled"] = true,
			["id"] = "04 High Energy",
			["glow"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 1058933,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Marked Target"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
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
						["auranames"] = {
							"288038", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["names"] = {
							"Marked Target", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							288038, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "9Uew1GWD39q",
			["load"] = {
				["use_encounterid"] = true,
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["affixes"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = false,
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["frameStrata"] = 1,
			["desaturate"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Fixated",
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "09 Marked Target",
			["authorOptions"] = {
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["09 Chilling Touch"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["useGlowColor"] = false,
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["url"] = "https://wago.io/bfaraid2/103",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = "17",
						["variable"] = "stacks",
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
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
						["unevent"] = "auto",
						["useName"] = true,
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["useGroup_count"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							285215, -- [1]
						},
						["unit"] = "player",
						["use_unit"] = true,
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["buffShowOn"] = "showOnActive",
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
			["uid"] = "ep6DoN06TAK",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "ACShine",
			["text1Font"] = "Arial Narrow",
			["icon"] = true,
			["desaturate"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["auto"] = true,
			["text2FontSize"] = 25,
			["text2"] = "%s%c",
			["text1"] = "-%tooltip1%% Speed",
			["alpha"] = 1,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "09 Chilling Touch",
			["stickyDuration"] = false,
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["text2Font"] = "Arial Narrow",
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
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/bfaraid2/103",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Hide.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["custom"] = "WeakAuras.ScanEvents(\"PAKU_WINDS\")",
					["do_custom"] = true,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["glow"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["use_specific_unit"] = false,
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["unevent"] = "timed",
						["type"] = "event",
						["use_message"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Chat Message",
						["buffShowOn"] = "showOnActive",
						["message"] = "spell:282107",
						["duration"] = "5",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["remOperator"] = "<=",
						["custom_type"] = "event",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "(AXVAfiDNdU",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Hide",
			["text2Enabled"] = false,
			["internalVersion"] = 11,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["authorOptions"] = {
			},
			["id"] = "05 Paku's Wrath",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["displayIcon"] = 1624583,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Focused Demise On You"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["sound_path"] = "",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.spellIDs = {\n    [286779] = true,\n}",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Chat Message",
						["custom_type"] = "stateupdate",
						["customDuration"] = "",
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, unit, castGUID, spellID)    \n    if event == \"UNIT_TARGET\" then\n        if UnitExists(unit) then\n            if UnitIsUnit(unit..\"target\", \"player\") then\n                local expirationTime = select(5, UnitCastingInfo(unit))\n                if expirationTime then\n                    local exp = expirationTime / 1000\n                    local dur = expirationTime / 1000 - GetTime()\n                    local spellicon = select(3, UnitCastingInfo(unit))\n                    local spellId = select(9, UnitCastingInfo(unit))\n                    if aura_env.spellIDs[spellId] and not allstates[UnitGUID(unit)] then\n                        allstates[UnitGUID(unit)] = {\n                            show = true,\n                            changed =  true,\n                            progressType = \"timed\", \n                            duration = dur,\n                            expirationTime = exp,\n                            name = WA_ClassColorName(unit..\"target\"),\n                            icon = spellicon,\n                            autoHide = true,\n                        }\n                        return true\n                    end\n                end\n            end\n        end\n    elseif (event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_STOP\" or event == \"UNIT_SPELLCAST_FAILED\" or event == \"UNIT_SPELLCAST_INTERRUPTED\") then\n        if UnitExists(unit) and aura_env.spellIDs[spellID] then\n            if allstates[UnitGUID(unit)] then\n                allstates[UnitGUID(unit)].show = false\n                allstates[UnitGUID(unit)].changed = true\n                return true\n            end\n        end\n    end\nend",
						["dynamicDuration"] = false,
						["check"] = "event",
						["events"] = "UNIT_TARGET, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED",
						["names"] = {
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["stickyDuration"] = false,
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2272",
				["role"] = {
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["auto"] = true,
			["text1"] = "Targeted",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = false,
			["text2"] = "%p",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "07 Focused Demise On You",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["width"] = 80,
			["cooldownEdge"] = false,
			["uid"] = "zRLJqg4VW2b",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 571321,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["08 Sea's Temptation"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Add.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 284383,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["names"] = {
							"Searing Waves", -- [1]
						},
						["dynamicDuration"] = false,
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Sea's Temptation",
						["spellIds"] = {
							285280, -- [1]
						},
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["customDuration"] = "",
						["use_spellId"] = false,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284383 and IsItemInRange(28767, unitID)\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 284383 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["check"] = "event",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
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
			["version"] = 103,
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
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["cooldownTextEnabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Add Inc",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "08 Sea's Temptation",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["uid"] = "62sm)YtUFBo",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 1391616,
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
		},
		["08 Electric Shroud"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%c",
			["customText"] = "function() \nif aura_env.state and aura_env.state.tooltip1 then\nreturn AbbreviateNumbers(aura_env.state.tooltip1)\nend\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["event"] = "Health",
						["spellIds"] = {
						},
						["custom"] = "function()\n    local tState = WeakAuras.triggerState[aura_env.id]\n    if tState.triggers[2] then\n        local clones = tState[2]\n        for unit, _ in pairs(clones) do\n            if IsItemInRange(28767, unit) then\n                return true\n            end\n        end\n    end\nend",
						["customIcon"] = "function()\n    if aura_env.icon then return aura_env.icon\n    end\nend",
						["check"] = "update",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
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
						["combinePerUnit"] = true,
						["matchesShowOn"] = "showOnActive",
						["name_info"] = "nonplayers",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["group_count"] = "100%",
						["debuffType"] = "HELPFUL",
						["group_countOperator"] = "<",
						["showClones"] = true,
						["useName"] = true,
						["match_countOperator"] = "<",
						["auraspellids"] = {
							"130", -- [1]
							"11426", -- [2]
						},
						["perUnitMode"] = "affected",
						["fetchTooltip"] = true,
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_specific_unit"] = false,
						["spellIds"] = {
							21562, -- [1]
						},
						["groupclone"] = true,
						["buffShowOn"] = "showOnMissing",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Power Word: Fortitude", -- [1]
						},
						["unit"] = "boss",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] \nend",
				["activeTriggerMode"] = 2,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 11,
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
			["authorOptions"] = {
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
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Absorb Left",
			["alpha"] = 1,
			["text2Font"] = "Arial Narrow",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "08 Electric Shroud",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "JTQaAHXv)jD",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["displayIcon"] = "136051",
			["cooldown"] = false,
			["cooldownEdge"] = false,
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
						["customVariables"] = "  {\n    expirationTime = true,\n    active = {\n        display = \"effect active\",\n        type = \"bool\",\n    },\n    isplayer = {\n        display = \"is player\",\n        type = \"bool\",\n    },\n    classid = {\n        display = \"Class\",\n        type = \"string\",\n    }\n  }",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["event"] = "Chat Message",
						["names"] = {
						},
						["custom_type"] = "stateupdate",
						["events"] = "PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,TOSH_RAID_CD_COMPLETED,TOSH_RAID_CD_UPDATE,ENCOUNTER_END,PLAYER_SPECIALIZATION_CHANGED",
						["custom"] = "function(allstates, event, ...)\n    if event == \"ENCOUNTER_END\" and aura_env.ShouldResetCDs() then\n        for k,v in pairs(allstates) do\n            v.expirationTime = nil\n        end\n        return true\n\n    elseif event == aura_env.events.completed then\n        local sourceGUID, spellId = ...\n        if not sourceGUID or not spellId then return end\n        local key = sourceGUID .. spellId\n        local state = allstates[key]\n        if not state then return end\n        local info = state.cdInfo\n        state.duration = info.cd\n        state.expirationTime = (state.duration - info.duration) + GetTime()\n        state.inverse = true\n        state.active = false\n        aura_env:setindex(state)\n        state.changed = true\n        return true\n\n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subevent = select(2,...)\n        if subevent == \"SPELL_CAST_SUCCESS\" then\n            local sourceGUID = aura_env.owner(select(4,...))\n            local spellId = select(12,...)\n            local key = sourceGUID .. spellId\n            local state = allstates[key]\n            if not state then\n                if spellId == 2050 or spellId == 34861 then -- Holy Word: Salvation CD reduction\n                    spellId = 265202\n                    key = sourceGUID .. spellId\n                    state = allstates[key]\n                    if state then\n                        if state.expirationTime and state.expirationTime < GetTime() then\n                            state.expirationTime = state.expirationTime - 30\n                        end\n                    end\n                elseif spellId == 121253 then --  Fortifying Brew\n                    spellId = 115203\n                    key = sourceGUID .. spellId\n                    state = allstates[key]\n                    if state then\n                        if state.expirationTime and state.expirationTime < GetTime() then\n                            state.expirationTime = state.expirationTime - 4\n                        end\n                    end\n                end\n                return\n            end\n            local info = state.cdInfo\n            if (info.duration or 0) > 0 then\n                state.duration = info.duration\n                state.inverse = false\n                state.active = true\n                aura_env:setindex(state)\n                local completed = aura_env.events.completed\n                C_Timer.After(info.duration, function() WeakAuras.ScanEvents(completed, sourceGUID, spellId) end)\n            else\n                state.duration = info.cd\n                state.inverse = true\n            end\n            state.expirationTime = state.duration + GetTime()\n            state.changed = true\n            return true\n        end\n\n    elseif event == \"PLAYER_ENTERING_WORLD\" or event == \"GROUP_ROSTER_UPDATE\" or event == \"RAID_ROSTER_UPDATE\" or event == \"PLAYER_SPECIALIZATION_CHANGED\" or event == aura_env.events.update then\n        for k,v in pairs(allstates) do\n            v.show = false\n            v.changed = true\n        end\n\n        local testbars = aura_env.config.testbars or 0\n        for i=1,testbars do\n            local tab = math.random(GetNumSpellTabs())\n            local slots = select(4, GetSpellTabInfo(tab))\n            local testSpell = GetSpellBookItemName(math.random(slots), BOOKTYPE_SPELL)\n            local _, _, icon, _, _, _, spellId = GetSpellInfo(testSpell)\n            allstates[i] = {\n                show = true,\n                changed = true,\n                sourceName = \"testbar\"..i,\n                progressType = \"timed\",\n                autoHide = false,\n                icon = icon,\n                spellId = spellId,\n                name = \"testbar\"..i,\n                duration = 10,\n                index = \"zzzz\"..i, -- sort last\n\n                -- Condition variables\n                active = false,\n                isplayer = false,\n                classid = select(2, UnitClass(\"player\")),\n            }\n        end\n\n        local playerguid = UnitGUID(\"player\")\n        for uid in WA_IterateGroupMembers() do\n            local info = UnitIsVisible(uid) and aura_env.inspectLib:GetCachedInfo(UnitGUID(uid))\n            if info then\n                local cds = aura_env.specCDs[info.global_spec_id]\n                if cds then\n                    for spellId, cdInfo in pairs(cds) do\n                        if cdInfo.talent then\n                            cdInfo = cdInfo.talent(info.talents)\n                        end\n                        if cdInfo then\n                            spellId = cdInfo.spellId or spellId\n                            local key = info.guid .. spellId\n                            allstates[key] = {\n                                show = true,\n                                changed = true,\n                                sourceName = info.name,\n                                progressType = \"timed\",\n                                autoHide = false,\n                                icon = select(3, GetSpellInfo(spellId)),\n                                spellId = spellId,\n                                name = info.name .. spellId,\n                                sourceGUID = info.guid,\n                                duration = cdInfo.cd,\n\n                                info = info,\n                                cdInfo = cdInfo,\n\n                                -- Condition variables\n                                active = false,\n                                isplayer = (playerguid == info.guid),\n                                classid = info.class,\n                            }\n                            aura_env:setindex(allstates[key])\n                        end\n                    end\n                end\n            end\n        end\n        return true\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "event",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["colorB"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["scaley"] = 1,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "custom",
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function()\n    if not aura_env.state then return 0, 0, 0, 1 end  -- error checking.\n    local c = aura_env.state.barColor\n    if not c then return 0,0,0,1 end\n    return c.r, c.g, c.b, 1\nend",
					["rotate"] = 0,
					["scalex"] = 1,
					["use_color"] = false,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["scalex"] = 1,
					["colorA"] = 1,
					["scaley"] = 1,
					["alpha"] = 0,
					["colorType"] = "custom",
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["x"] = 0,
					["colorFunc"] = "",
					["rotate"] = 0,
					["use_color"] = false,
					["colorR"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["zoom"] = 0,
			["stickyDuration"] = false,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = false,
			["version"] = 8,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["authorMode"] = true,
			["height"] = 16,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["borderBackdrop"] = "Blizzard Tooltip",
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["id"] = "Tosh RaidCDs bar",
			["borderInFront"] = true,
			["displayTextRight"] = "%p",
			["icon_side"] = "LEFT",
			["semver"] = "1.0.0-8",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "\n-- PLAYER_ENTERING_WORLD,GROUP_ROSTER_UPDATE,RAID_ROSTER_UPDATE,COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,PLAYER_SPECIALIZATION_CHANGED,TOSH_RAID_CD_COMPLETED,TOSH_RAID_CD_UPDATE\nlocal events = {\n    completed = \"TOSH_RAID_CD_COMPLETED\",\n    update = \"TOSH_RAID_CD_UPDATE\",\n}\n\naura_env.specCDs = {\n    --Death Knight\n    [250] = { -- Blood\n    },\n    [251] = { -- Frost\n    },\n    [252] = { -- Unholy\n    },\n    -- Demon Hunter\n    [577] = { -- Havoc\n        [196718] = { -- Darkness\n            duration = 8,\n            cd = 180,\n        },\n    },\n    [581] = { -- Vengeance\n    },\n    -- Druid\n    [102] = { -- Balance\n    },\n    [103] = { -- Feral\n    },\n    [104] = { -- Guardian\n    },\n    [105] = { -- Restoration\n        [740] = { -- Tranquility\n            talent = function(talents)\n                if talents[21716] then\n                    return {\n                        duration = 8,\n                        cd = 120,\n                    }\n                else\n                    return {\n                        duration = 8,\n                        cd = 180,\n                    }\n                end\n            end,\n        },\n    },\n    -- Hunter\n    [253] = { -- Beast Mastery\n    },\n    [254] = { -- Marksmanship\n    },\n    [255] = { -- Survival\n    },\n    -- Mage\n    [62] = { -- Arcane\n    },\n    [63] = { -- Fire\n    },\n    [64] = { -- Frost\n    },\n    -- Monk\n    [268] = { -- Brewmaster\n    },\n    [269] = { -- Windwalker\n    },\n    [270] = { -- Mistweaver\n        [115310] = { -- Revival\n            cd = 180,\n        },\n    },\n    -- Paladin\n    [65] = { -- Holy\n        [31821] = { -- Aura Mastery\n            duration = 8,\n            cd = 180,\n        },\n        [216331] = {\n            talent = function(talents)\n                if talents[22190] then\n                    return {\n                        duration = 20,\n                        cd = 120,\n                    }\n                end\n            end,\n        },\n    },\n    [66] = { -- Protection\n    },\n    [70] = { -- Retribution\n    },\n    -- Priest\n    [256] = { -- Discipline\n        [62618] = { -- Power Word: Barrier\n            talent = function(talents)\n                if not talents[21184] then\n                    return {\n                        duration = 10,\n                        cd = 180,\n                    }\n                end\n            end,\n        },\n        [271466] = { -- Luminous Barrier\n            talent = function(talents)\n                if talents[21184] then\n                    return {\n                        duration = 10,\n                        cd = 180,\n                    }\n                end\n            end,\n        },\n        [246287] = { -- Evangelism\n            talent = function(talents)\n                if talents[22976] then\n                    return {\n                        duration = 6,\n                        cd = 90,\n                    }\n                end\n            end,\n        },\n        [47536] = { -- Rapture\n            duration = 10,\n            cd = 90,\n        },\n    },\n    [257] = { -- Holy\n        [64843] = { -- Divine Hymn\n            duration = 8,\n            cd = 180,\n        },\n        [265202] = { -- Holy Word: Salvation\n            talent = function(talents)\n                if talents[23145] then\n                    return {\n                        duration = 10,\n                        cd = 720,\n                    }\n                end\n            end,\n        }\n    },\n    [258] = { -- Shadow\n    },\n    -- Rogue\n    [259] = { -- Assassination\n    },\n    [260] = { -- Outlaw\n    },\n    [261] = { -- Subtlety\n    },\n    -- Shaman\n    [262] = { -- Elemental\n    },\n    [263] = { -- Enhancement\n    },\n    [264] = { -- Restoration\n        [108280] = { -- Healing Tide Totem\n            duration = 10,\n            cd = 180,\n        },\n        [98008] = { -- Spirit Link Totem\n            duration = 6,\n            cd = 180,\n        },\n    },\n    -- Warlock\n    [265] = { -- Affliction\n    },\n    [266] = { -- Demonology\n    },\n    [267] = { -- Destruction\n    },\n    -- Warrior\n    [71] = { -- Arms\n        [97462] = { -- Rallying Cry\n            duration = 10,\n            cd = 180,\n        },\n    },\n    [72] = { -- Fury\n        [97462] = { -- Rallying Cry\n            duration = 10,\n            cd = 180,\n        },\n    },\n    [73] = { -- Protection\n        [97462] = { -- Rallying Cry\n            duration = 10,\n            cd = 180,\n        },\n    },\n}\n\naura_env.events = events\n\naura_env.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)\n\nlocal inspectCallback = {\n    Update = function(self, guid, unit, info)\n        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)\n    end,\n    Remove = function(self, guid)\n        WeakAuras.ScanEvents(events.update, sourceGUID, spellId)\n    end,\n}\naura_env.inspectLib.RegisterCallback(inspectCallback, \"GroupInSpecT_Update\", \"Update\")\naura_env.inspectLib.RegisterCallback(inspectCallback, \"GroupInSpecT_Remove\", \"Remove\")\n\nfunction aura_env.owner(guid)\n    local type = strsplit(\"-\",guid)\n    if type == \"Pet\" then\n        for unit in WA_IterateGroupMembers() do\n            if UnitGUID(unit..\"pet\") == guid then\n                return UnitGUID(unit)\n            end\n        end\n    end\n    return guid\nend\n\naura_env.sortModeFuncs = {\n    [1] = function(state) -- \"active > class > player > spellId\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = (active and \"active\" or \"inactive\")..\",\" ..class..\",\"..player..\",\"..spellId \n    end,\n    [2] = function(state) -- \"class > player > spellId\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = class..\",\"..player..\",\"..spellId \n    end,\n    [3] = function(state) -- \"class > spellId > player\"\n        local class, player, spellId, active = state.info.class, state.sourceName, state.spellId, state.active\n        state.index = class..\",\"..spellId..\",\"..player\n    end,\n}\n\n\nfunction aura_env:setindex(state)\n    self.sortModeFuncs[self.config.sortMode](state)\nend\n\nfunction aura_env.ShouldResetCDs()\n    local _,_,difficulty = GetInstanceInfo()\n    if difficulty == 3 or difficulty == 4 or difficulty == 5 or difficulty == 6 or difficulty == 7 or difficulty == 14 or difficulty == 15 or difficulty == 16 or difficulty == 17 then\n        return true\n    end\n    return false\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["sparkHeight"] = 30,
			["sparkRotationMode"] = "AUTO",
			["rotateText"] = "NONE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["stacksFont"] = "Friz Quadrata TT",
			["frameStrata"] = 3,
			["width"] = 150,
			["textSize"] = 12,
			["uid"] = "Z3)S3BoYJlD",
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
						["variable"] = "classid",
						["value"] = "WARRIOR",
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
						["variable"] = "classid",
						["value"] = "PALADIN",
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
						["variable"] = "classid",
						["value"] = "HUNTER",
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
						["variable"] = "classid",
						["value"] = "ROGUE",
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
						["variable"] = "classid",
						["value"] = "PRIEST",
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
						["variable"] = "classid",
						["value"] = "DEATHKNIGHT",
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
						["variable"] = "classid",
						["value"] = "SHAMAN",
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
						["variable"] = "classid",
						["value"] = "MAGE",
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
						["variable"] = "classid",
						["value"] = "WARLOCK",
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
						["variable"] = "classid",
						["value"] = "MONK",
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
						["variable"] = "classid",
						["value"] = "DRUID",
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
						["variable"] = "classid",
						["value"] = "DEMONHUNTER",
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
								["op"] = ">",
								["value"] = "0",
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
			["config"] = {
				["testbars"] = false,
				["sortMode"] = 2,
			},
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "testbars",
					["width"] = 1,
					["default"] = false,
					["name"] = "Test Mode",
					["useDesc"] = false,
					["desc"] = "",
				}, -- [1]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "Set this to configure test bars to help with alignment (note: these will only show with the options menu closed)",
					["width"] = 1,
				}, -- [2]
				{
					["useName"] = false,
					["type"] = "header",
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
					["default"] = 2,
					["name"] = "Sort Mode",
					["width"] = 1,
				}, -- [4]
			},
		},
		["09 Avalanche"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["authorOptions"] = {
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
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["text2Font"] = "Arial Narrow",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["conditions"] = {
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 287565,
						["auranames"] = {
							"285254", -- [1]
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["auraspellids"] = {
							"285254", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["event"] = "Cast",
						["unit"] = "player",
						["name"] = "Avalanche",
						["use_spellId"] = false,
						["spellIds"] = {
							285215, -- [1]
						},
						["useExactSpellId"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
			},
			["desaturate"] = false,
			["uid"] = "g5w6q7N7Jez",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				0, -- [2]
				0.098039215686274, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["text1Containment"] = "OUTSIDE",
			["load"] = {
				["role"] = {
					["multi"] = {
						["TANK"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = false,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Keep Moving",
			["icon"] = true,
			["useGlowColor"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text2Enabled"] = false,
			["id"] = "09 Avalanche",
			["glow"] = true,
			["alpha"] = 1,
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["displayIcon"] = 1033907,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["05 Crawling Hex"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useglowColor"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"282135", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["use_unit"] = true,
						["names"] = {
							"Crawling Hex", -- [1]
						},
						["spellIds"] = {
							282135, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["glow"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "GJabENHewYD",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["auto"] = true,
			["text1"] = "Spread",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "05 Crawling Hex",
			["cooldownEdge"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["text1Containment"] = "OUTSIDE",
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["08 Tidal Shroud"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text2"] = "%c",
			["customText"] = "function() \nif aura_env.state and aura_env.state.tooltip1 then\nreturn AbbreviateNumbers(aura_env.state.tooltip1)\nend\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "9Ar6RoAPHNV",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.019607843137255, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "status",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["custom"] = "function()\n    local tState = WeakAuras.triggerState[aura_env.id]\n    if tState.triggers[2] then\n        local clones = tState[2]\n        for unit, _ in pairs(clones) do\n            if IsItemInRange(28767, unit) then\n                return true\n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["customIcon"] = "function()\n    if aura_env.icon then return aura_env.icon\n    end\nend",
						["check"] = "update",
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
						["auranames"] = {
							"286558", -- [1]
						},
						["combinePerUnit"] = true,
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
						["useName"] = true,
						["match_countOperator"] = "<",
						["auraspellids"] = {
							"130", -- [1]
							"11426", -- [2]
						},
						["perUnitMode"] = "affected",
						["fetchTooltip"] = true,
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
							21562, -- [1]
						},
						["unit"] = "boss",
						["groupclone"] = true,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnMissing",
						["group_countOperator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] \nend",
				["activeTriggerMode"] = 2,
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Absorb Left",
			["text2Enabled"] = true,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["icon"] = true,
			["id"] = "08 Tidal Shroud",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = "136051",
			["cooldown"] = false,
			["cooldownEdge"] = false,
		},
		["07 Inevitable End"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%c2",
			["customText"] = "function()\nreturn \"Move\", \"Winds\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
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
			["useglowColor"] = false,
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
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
					["duration_type"] = "seconds",
					["use_color"] = false,
					["scaley"] = 1,
					["alpha"] = 0.32,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "straightColor",
					["type"] = "custom",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\n    end\n  ",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorB"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "show",
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
						["value"] = 1,
						["variable"] = "show",
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
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 287333,
						["use_absorbMode"] = true,
						["names"] = {
							"Shrunk", -- [1]
						},
						["use_unit"] = true,
						["use_specific_unit"] = true,
						["dynamicDuration"] = false,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 287333 and IsItemInRange(33119, unitID)\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 287333 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["buffShowOn"] = "showOnActive",
						["duration"] = "1",
						["type"] = "custom",
						["spellIds"] = {
							284168, -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "",
						["use_spellId"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["name"] = "Inevitable End",
						["check"] = "event",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
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
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "",
						["dynamicDuration"] = false,
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_CHANNEL_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 287333 and IsItemInRange(33119, unitID)\n        then\n            local _, _, _, startC, endC  = UnitChannelInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[UnitGUID(unitID)] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_CHANNEL_STOP\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 287333 and allstates[UnitGUID(unitID)] then\n            allstates[UnitGUID(unitID)].changed = true\n            allstates[UnitGUID(unitID)].show = false\n        end\n    end\n    return true\nend",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["events"] = "UNIT_SPELLCAST_CHANNEL_START, UNIT_SPELLCAST_CHANNEL_STOP",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "TpSKI5hmTvx",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 16,
			["auto"] = false,
			["text1"] = "%c1",
			["alpha"] = 1,
			["glow"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "07 Inevitable End",
			["cooldownEdge"] = false,
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["displayIcon"] = 1029008,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["04 Flames of Punishment Dot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["auranames"] = {
							"283063", -- [1]
						},
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_tooltip"] = false,
						["names"] = {
							"Flames of Punishment", -- [1]
						},
						["use_specific_unit"] = false,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useGroup_count"] = false,
						["spellIds"] = {
							283063, -- [1]
						},
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["castType"] = "cast",
						["use_spellId"] = true,
						["name"] = "Flames of Punishment",
						["subeventPrefix"] = "SPELL",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_absorbMode"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["stickyDuration"] = false,
			["desaturate"] = true,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
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
			["icon"] = true,
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
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Dot",
			["text2Enabled"] = false,
			["authorOptions"] = {
			},
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "04 Flames of Punishment Dot",
			["text2Font"] = "Arial Narrow",
			["alpha"] = 1,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "Hs2APo6PqjG",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
		},
		["07 Seal of Bwonsamdi"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["useGlowColor"] = false,
			["customText"] = "function()\nreturn \"Soak Cast\", \"Soak\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text2Font"] = "Arial Narrow",
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
			["glow"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Caress of Death", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["use_absorbMode"] = true,
						["duration"] = "4",
						["custom"] = "function(allstates, event, ...)\n    if event == \"UNIT_SPELLCAST_START\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 286695 and IsItemInRange(33119, unitID)\n        then\n            local _, _, _, startC, endC  = UnitCastingInfo(unitID)\n            local durationTime = (endC - startC) / 1000\n            local expirationTime = endC / 1000\n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = durationTime,\n                expirationTime = expirationTime,\n                autoHide = true,\n            } \n        end\n    end\n    if event == \"UNIT_SPELLCAST_INTERRUPTED\" or event == \"UNIT_SPELLCAST_STOP\" or\n    event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_FAILED\" then\n        local unitID, castGUID, spellID = ...\n        if spellID == 286695 and allstates[castGUID] then\n            allstates[castGUID].changed = true\n            allstates[castGUID].show = false\n        end\n    end\n    return true\nend",
						["useName"] = true,
						["events"] = "UNIT_SPELLCAST_START, UNIT_SPELLCAST_INTERRUPTED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_FAILED",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["use_debuffClass"] = false,
						["custom_type"] = "stateupdate",
						["spellIds"] = {
							285213, -- [1]
						},
						["unevent"] = "auto",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_spellId"] = false,
						["name"] = "Plague of Toads",
						["custom_hide"] = "timed",
						["check"] = "event",
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"286695", -- [1]
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["duration"] = "4",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(allstates, event, unit, castGUID,spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 286695 and IsItemInRange(33119, unit) and string.match(unit, \"boss\") then \n            allstates[castGUID] = {\n                show = true,\n                changed = true,\n                progressType = \"timed\",\n                duration = 4,\n                expirationTime = 4 + GetTime(),\n                autoHide = true,\n            }\n            return true \n        end \n    end \nend",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["check"] = "event",
						["use_unit"] = true,
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "TVigiCRkWro",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["cooldownTextEnabled"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
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
			["auto"] = false,
			["text2FontSize"] = 16,
			["text2"] = "%c2",
			["text1"] = "%c1",
			["internalVersion"] = 11,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1Containment"] = "OUTSIDE",
			["id"] = "07 Seal of Bwonsamdi",
			["text2Enabled"] = true,
			["alpha"] = 1,
			["width"] = 80,
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135803,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["02 Bestial Throw (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
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
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["auraspellids"] = {
							"289292", -- [1]
						},
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Cast",
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["use_unit"] = true,
						["spellIds"] = {
							285875, -- [1]
						},
						["useExactSpellId"] = true,
						["buffShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Rending Bite", -- [1]
						},
						["unevent"] = "auto",
					},
					["untrigger"] = {
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "L0yApV82wQl",
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Throw",
			["text2Enabled"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text1Containment"] = "OUTSIDE",
			["id"] = "02 Bestial Throw (Tank Only)",
			["glow"] = false,
			["alpha"] = 1,
			["width"] = 80,
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["05 Akunda's Wrath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["text2Font"] = "Arial Narrow",
			["customText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["xOffset"] = 0,
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["conditions"] = {
			},
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
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282597,
						["auranames"] = {
							"286811", -- [1]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["use_tooltip"] = false,
						["use_unit"] = true,
						["use_specific_unit"] = false,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["names"] = {
							"Akunda's Wrath", -- [1]
						},
						["spellIds"] = {
							286811, -- [1]
						},
						["event"] = "Cast",
						["useGroup_count"] = false,
						["castType"] = "cast",
						["use_spellId"] = false,
						["name"] = "Kimbul's Wrath",
						["buffShowOn"] = "showOnActive",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["uid"] = "dPnUnLV8lzz",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["internalVersion"] = 11,
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2268",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["glow"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Spread",
			["text2Enabled"] = false,
			["useGlowColor"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["authorOptions"] = {
			},
			["id"] = "05 Akunda's Wrath",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["displayIcon"] = 839977,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["07 Meteor Leap /  On You"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontFlags"] = "OUTLINE",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["internalVersion"] = 11,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.name then\n        return aura_env.state.name\nend end",
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
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.spellIDs = {\n    [284686] = true,\n}",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
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
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
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
					["duration_type"] = "seconds",
					["use_color"] = false,
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["colorType"] = "straightColor",
					["colorA"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["cooldownEdge"] = false,
			["load"] = {
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
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
			["authorOptions"] = {
			},
			["auto"] = true,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "%c",
			["text2Font"] = "Arial Narrow",
			["useGlowColor"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["icon"] = true,
			["id"] = "07 Meteor Leap /  On You",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["uid"] = "sqZTmCyV5kT",
			["inverse"] = false,
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
						["unit"] = "boss1",
						["use_specific_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							282939, -- [1]
						},
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["customDuration"] = "",
						["dynamicDuration"] = false,
						["event"] = "Chat Message",
						["custom_hide"] = "timed",
						["castType"] = "cast",
						["use_spellId"] = true,
						["events"] = "UNIT_TARGET, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED",
						["name"] = "Crush",
						["remOperator"] = "<=",
						["debuffType"] = "HARMFUL",
						["custom"] = "function(allstates, event, unit, castGUID, spellID)    \n    if event == \"UNIT_TARGET\" then\n        if UnitExists(unit) then\n            if UnitIsUnit(unit..\"target\", \"player\") then\n                local expirationTime = select(5, UnitCastingInfo(unit))\n                if expirationTime then\n                    local exp = expirationTime / 1000\n                    local dur = expirationTime / 1000 - GetTime()\n                    local spellicon = select(3, UnitCastingInfo(unit))\n                    local spellId = select(9, UnitCastingInfo(unit))\n                    local castGUID = select(7, UnitCastingInfo(unit))\n                    if aura_env.spellIDs[spellId] and not allstates[castGUID] then\n                        allstates[castGUID] = {\n                            show = true,\n                            changed =  true,\n                            progressType = \"timed\", \n                            duration = dur,\n                            expirationTime = exp,\n                            name = \"Dmgsplit\",\n                            icon = spellicon,\n                            autoHide = true,\n                        }\n                        return true\n                    end\n                end\n            end\n        end\n    elseif (event == \"UNIT_SPELLCAST_SUCCEEDED\" or event == \"UNIT_SPELLCAST_STOP\" or event == \"UNIT_SPELLCAST_FAILED\" or event == \"UNIT_SPELLCAST_INTERRUPTED\") then\n        if UnitExists(unit) and aura_env.spellIDs[spellID] then\n            if allstates[castGUID] then\n                allstates[castGUID].show = false\n                allstates[castGUID].changed = true\n                return true\n            end\n        end\n    end\nend",
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
			["displayIcon"] = 236171,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["04 Coin Shower"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s",
			["customText"] = "function()\n    if aura_env.state and aura_env.state.unitName then\n        return WA_ClassColorName(aura_env.state.unitName)\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Stack.ogg",
					["do_sound"] = true,
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
							"285014", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
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
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "2yWV7GunOK2",
			["load"] = {
				["difficulty"] = {
					["multi"] = {
						["mythic"] = true,
						["heroic"] = true,
					},
				},
				["use_encounterid"] = true,
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Dmgsplit",
			["alpha"] = 1,
			["text1Containment"] = "OUTSIDE",
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "04 Coin Shower",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["07 Serpent's Breath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
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
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["auranames"] = {
							"272868", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"272868", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["name"] = "Plague of Toads",
						["use_spellId"] = false,
						["spellIds"] = {
							285044, -- [1]
						},
						["useExactSpellId"] = true,
						["unevent"] = "auto",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["names"] = {
							"Toad Toxin", -- [1]
						},
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
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
			["version"] = 103,
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
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
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
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Dot",
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "07 Serpent's Breath",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["icon"] = true,
			["uid"] = "hAv0rYFQiSm",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 136040,
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["08 Tempting Song"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Targeted.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["spellId"] = "284405",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["auraspellids"] = {
							"284405", -- [1]
						},
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["unevent"] = "auto",
						["name"] = "Tempting Song",
						["use_spellId"] = true,
						["spellIds"] = {
							284405, -- [1]
						},
						["useExactSpellId"] = true,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["names"] = {
							"Tempting Song", -- [1]
						},
						["fullscan"] = true,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "P(FsgqzjiSe",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["glow"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Targeted",
			["icon"] = true,
			["text1Containment"] = "OUTSIDE",
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["text2Enabled"] = false,
			["id"] = "08 Tempting Song",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Arial Narrow",
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135861,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["09 Kul Tiran Corsair"] = {
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
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["custom"] = "if not UnitGUID(\"boss3\") then\n    PlaySoundFile(aura_env.side, \"MASTER\")\nend",
					["sound"] = " custom",
					["do_custom"] = true,
					["do_sound"] = false,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.GUIDS = {\n    [\"147180\"] = \"Interface\\\\Addons\\\\SharedMedia_Causese\\\\sound\\\\Left.ogg\", --port side\n    [\"147531\"] = \"Interface\\\\Addons\\\\SharedMedia_Causese\\\\sound\\\\Right.ogg\", --starboard side\n}",
					["do_custom"] = true,
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "10",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["names"] = {
							"Chilling Touch", -- [1]
						},
						["custom_type"] = "event",
						["event"] = "Cast",
						["name"] = "Icefall",
						["spellIds"] = {
							285215, -- [1]
						},
						["use_spellId"] = false,
						["custom"] = "function(event)\n    if event == \"INSTANCE_ENCOUNTER_ENGAGE_UNIT\" then \n        if UnitGUID(\"boss2\") and not WeakAuras.triggerState[aura_env.id].triggers[1] then\n            local guid = select(6, strsplit(\"-\", UnitGUID(\"boss2\")))\n            if aura_env.GUIDS[guid] then\n                aura_env.side = aura_env.GUIDS[guid]\n                return true \n            end\n        end\n    end\nend",
						["events"] = "INSTANCE_ENCOUNTER_ENGAGE_UNIT",
						["custom_hide"] = "timed",
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
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
			["version"] = 103,
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
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_role"] = false,
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Adds Inc",
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["zoom"] = 0.35,
			["semver"] = "2.0.34-103",
			["text1Containment"] = "OUTSIDE",
			["id"] = "09 Kul Tiran Corsair",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Font"] = "Arial Narrow",
			["uid"] = "TzO6qFPzlnz",
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = "1126431",
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
			["text1FontFlags"] = "OUTLINE",
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["icon"] = true,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.power then\n        if aura_env.state.power > 90 then \n            return \"Raiddmg Inc\"\n        else return \"Ignore Boss\"\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
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
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["variable"] = "power",
						["value"] = "90",
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
			["text1Enabled"] = true,
			["text2Font"] = "Arial Narrow",
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["stickyDuration"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
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
			["text1Font"] = "Arial Narrow",
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.007843137254902, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["auto"] = true,
			["text2FontSize"] = 35,
			["text2"] = "%p",
			["text1"] = "%c",
			["glow"] = false,
			["useGlowColor"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["desaturate"] = true,
			["id"] = "01 Seal of Reckoning",
			["selfPoint"] = "CENTER",
			["text2Enabled"] = true,
			["width"] = 80,
			["url"] = "https://wago.io/bfaraid2/103",
			["uid"] = "tfE2iITS92X",
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"284436", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "member",
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["buffShowOn"] = "showOnActive",
						["use_specific_unit"] = true,
						["spellIds"] = {
							284436, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
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
						["use_specific_unit"] = true,
						["type"] = "status",
						["percentpower"] = "80",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "boss1",
						["use_absorbMode"] = true,
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["percenthealth"] = "80",
						["use_percentpower"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["unevent"] = "auto",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = ">=",
						["percentpower_operator"] = ">=",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [2]
				["activeTriggerMode"] = 2,
			},
			["displayIcon"] = 135971,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["03 Prismatic Shield"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%c",
			["customText"] = "function() \n    if aura_env.state and aura_env.state.tooltip1 then\n        return AbbreviateNumbers(aura_env.state.tooltip1)\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_unit"] = true,
						["rem"] = "4",
						["spellId"] = "286425",
						["useGroup_count"] = true,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Blazing Phoenix", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["use_tooltip"] = false,
						["subcount"] = true,
						["specificUnit"] = "boss2",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["spellIds"] = {
							282040, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useExactSpellId"] = true,
						["unit"] = "boss",
						["fetchTooltip"] = true,
						["event"] = "Cast",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = true,
						["name"] = "Fire Shield",
						["auraspellids"] = {
							"286425", -- [1]
						},
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = true,
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = 1,
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
			["version"] = 103,
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
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				0, -- [2]
				0.019607843137255, -- [3]
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
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Absorb Left",
			["alpha"] = 1,
			["glow"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "03 Prismatic Shield",
			["text1Containment"] = "OUTSIDE",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "(iQn(6n1xKI",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 135854,
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["07 Zombie Dust Totem"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text1Font"] = "Arial Narrow",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["useglowColor"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["names"] = {
							"Caress of Death", -- [1]
						},
						["use_tooltip"] = false,
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["name"] = "Plague of Toads",
						["type"] = "custom",
						["use_debuffClass"] = false,
						["custom_type"] = "event",
						["auranames"] = {
							"286695", -- [1]
						},
						["spellIds"] = {
							285213, -- [1]
						},
						["event"] = "Cast",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["use_spellId"] = false,
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["useName"] = true,
						["custom"] = "function(event, unit, _,spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" then \n        if spellID == 285003 and IsItemInRange(32825, unit)\n        then return true \n        end \n    end \nend",
						["combineMatches"] = "showLowest",
						["duration"] = "2",
						["use_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["internalVersion"] = 11,
			["stickyDuration"] = false,
			["uid"] = "(4zWCLo50fr",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Switch.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["load"] = {
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2272",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "Pixel",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text2Font"] = "Arial Narrow",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text2FontSize"] = 25,
			["text2"] = "%s",
			["text1"] = "Kill Totem",
			["text2Enabled"] = false,
			["useGlowColor"] = false,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["cooldownEdge"] = false,
			["id"] = "07 Zombie Dust Totem",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["displayIcon"] = 136232,
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["01 Judgment: Righteousness"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Arial Narrow",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Switch.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["text1Enabled"] = true,
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 283933,
						["duration"] = "1",
						["unit"] = "boss1",
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["event"] = "Cast",
						["use_specific_unit"] = true,
						["unevent"] = "auto",
						["use_spellId"] = true,
						["spellIds"] = {
							283598, -- [1]
						},
						["use_absorbMode"] = true,
						["names"] = {
							"Wave of Light", -- [1]
						},
						["name"] = "Judgment: Righteousness",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
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
			["version"] = 103,
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
				["encounterid"] = "2265",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
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
			["text1Containment"] = "OUTSIDE",
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Buffs Add",
			["icon"] = true,
			["frameStrata"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "01 Judgment: Righteousness",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["width"] = 80,
			["xOffset"] = 0,
			["uid"] = "dBPDGqcnTHj",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135921,
			["cooldown"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
		},
		["05 Hastening Winds (Tank Only)"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontSize"] = 16,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["selfPoint"] = "CENTER",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/bfaraid2/103",
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_sound"] = false,
					["do_custom"] = false,
					["sound"] = " custom",
					["sound_path"] = "",
				},
				["finish"] = {
					["sound"] = " custom",
					["sound_path"] = "",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
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
					["preset"] = "alphaPulse",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["use_color"] = false,
					["y"] = 0,
					["colorType"] = "pulseHSV",
					["colorR"] = 0.77254901960784,
					["duration_type"] = "seconds",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return WeakAuras.GetHSVTransition(newProgress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["x"] = 0,
					["colorA"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 285945,
						["useGroup_count"] = true,
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["specificUnit"] = "boss1",
						["group_count"] = "0",
						["unit"] = "member",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["showClones"] = false,
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["event"] = "Chat Message",
						["names"] = {
							"Hastening Winds", -- [1]
						},
						["name"] = "Hastening Winds",
						["group_countOperator"] = ">",
						["spellIds"] = {
							285945, -- [1]
						},
						["auranames"] = {
							"285945", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["combineMatches"] = "showLowest",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Unit Characteristics",
						["use_unit"] = true,
						["unit"] = "boss1target",
						["use_specific_unit"] = true,
						["unitisunit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "status",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "boss1target",
						["use_specific_unit"] = true,
					},
				}, -- [3]
				{
					["trigger"] = {
						["use_unitisunit"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Unit Characteristics",
						["use_unit"] = true,
						["unit"] = "boss2target",
						["use_specific_unit"] = true,
						["unitisunit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "status",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "boss2target",
						["use_specific_unit"] = true,
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1] and t[3] or t[2] and t[4]\nend",
				["activeTriggerMode"] = -10,
			},
			["desaturate"] = false,
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["icon"] = true,
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
				["encounterid"] = "2268",
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["TANK"] = true,
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
			["width"] = 80,
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["auto"] = true,
			["text2FontSize"] = 25,
			["text2"] = "%s%c",
			["text1"] = "Targets you",
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
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["text1Enabled"] = true,
			["id"] = "05 Hastening Winds (Tank Only)",
			["authorOptions"] = {
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "Thl8WMFanq4",
			["inverse"] = false,
			["text2Font"] = "Arial Narrow",
			["displayIcon"] = 633004,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["09 Warmth"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/bfaraid2/103",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
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
						["spellId"] = "288212",
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Broadside", -- [1]
						},
						["use_tooltip"] = false,
						["use_unit"] = true,
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["auraspellids"] = {
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["unit"] = "player",
						["event"] = "Cast",
						["name"] = "Broadside",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["spellIds"] = {
							288212, -- [1]
						},
						["unevent"] = "auto",
						["auranames"] = {
							"288394", -- [1]
						},
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["fullscan"] = true,
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
			["text1Containment"] = "OUTSIDE",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 103,
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
				["encounterid"] = "2281",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Protected",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["glow"] = false,
			["id"] = "09 Warmth",
			["authorOptions"] = {
			},
			["text2Enabled"] = false,
			["width"] = 80,
			["selfPoint"] = "CENTER",
			["uid"] = "yHvOXKcZskO",
			["inverse"] = false,
			["text1Enabled"] = true,
			["displayIcon"] = 135854,
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["06 Radiation Zone"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = " custom",
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
					["do_message"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Arial Narrow",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
							283411, -- [1]
						},
						["useGroup_count"] = false,
						["use_absorbMode"] = true,
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "CV618BxfyrZ",
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["encounterid"] = "2276",
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["url"] = "https://wago.io/bfaraid2/103",
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
			["auto"] = true,
			["text1"] = "Pool-Dot",
			["icon"] = true,
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "06 Radiation Zone",
			["glow"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 1698700,
			["cooldown"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
		},
		["03 Stalking You"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["zoom"] = 0.3,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
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
			["version"] = 103,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["uid"] = "8pyeiwsXDR4",
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2266,2285",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["width"] = 80,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "OUTSIDE",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2FontSize"] = 25,
			["auto"] = false,
			["text1"] = "Fixate",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["text2"] = "%s",
			["semver"] = "2.0.34-103",
			["internalVersion"] = 11,
			["id"] = "03 Stalking You",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "4",
						["useGroup_count"] = false,
						["group_role"] = "TANK",
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["auranames"] = {
							"285632", -- [1]
						},
						["useName"] = true,
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["type"] = "aura2",
						["names"] = {
							"Stalking", -- [1]
						},
						["use_unit"] = true,
						["spellIds"] = {
							285632, -- [1]
						},
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 841379,
			["cooldown"] = true,
			["glow"] = false,
		},
		["04 Hex of Lethargy"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["text2"] = "%s%c",
			["customText"] = "function()\n    local r = aura_env.region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", -2, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "T23 Battle of Dazar'alor Auras",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Dont Move.ogg",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["url"] = "https://wago.io/bfaraid2/103",
			["text2Font"] = "Arial Narrow",
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
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4",
						["spellId"] = 282939,
						["auranames"] = {
							"284470", -- [1]
							"Deadly Hex", -- [2]
						},
						["group_role"] = "TANK",
						["use_absorbMode"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["unevent"] = "auto",
						["useGroup_count"] = false,
						["name"] = "Flames of Punishment",
						["event"] = "Cast",
						["buffShowOn"] = "showOnActive",
						["castType"] = "cast",
						["use_spellId"] = true,
						["spellIds"] = {
							284470, -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["remOperator"] = "<=",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Hex of Lethargy", -- [1]
						},
						["unit"] = "player",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
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
			["version"] = 103,
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
				["encounterid"] = "2271",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Color"] = {
				0.98039215686274, -- [1]
				0.95294117647059, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["desaturate"] = false,
			["icon"] = true,
			["text2FontSize"] = 25,
			["auto"] = true,
			["text1"] = "Don't Move",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["zoom"] = 0.3,
			["semver"] = "2.0.34-103",
			["selfPoint"] = "CENTER",
			["id"] = "04 Hex of Lethargy",
			["internalVersion"] = 11,
			["alpha"] = 1,
			["width"] = 80,
			["glow"] = false,
			["uid"] = "7pdPyfYoSlf",
			["inverse"] = false,
			["text1Enabled"] = true,
			["displayIcon"] = 135822,
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
	},
	["registered"] = {
	},
	["minimap"] = {
		["minimapPos"] = 285.444860106683,
		["hide"] = true,
	},
	["frame"] = {
		["xOffset"] = -248.404541015625,
		["yOffset"] = -72.654296875,
		["height"] = 987.019958496094,
		["width"] = 1144.02453613281,
	},
	["login_squelch_time"] = 10,
	["editor_theme"] = "Monokai",
}
