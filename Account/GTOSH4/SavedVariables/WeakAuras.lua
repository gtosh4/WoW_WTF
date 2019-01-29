
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_theme"] = "Monokai",
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["displays"] = {
		["DominosToggle"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "TOPLEFT",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "TOPRIGHT",
			["glow"] = false,
			["cooldownTextEnabled"] = true,
			["internalVersion"] = 11,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["desaturate"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 12,
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
			["text1Containment"] = "INSIDE",
			["authorOptions"] = {
			},
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
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 12,
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
			["alpha"] = 1,
			["anchorFrameParent"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "local f = aura_env.region\nif not f.button then\n    f.button = CreateFrame(\"Button\", \"WAButton\"..aura_env.id, f)\n    f.button:SetAllPoints(f)\n    local bars = {\n      _G[\"DominosFrame1\"],\n      _G[\"DominosFrame2\"],\n      _G[\"DominosFrame3\"],\n      _G[\"DominosFrame4\"],\n      _G[\"DominosFrame5\"],\n      _G[\"DominosFrame6\"],\n    }\n    f.state = false\n    for _,df in ipairs(bars) do\n      df:Hide()\n    end\n    \n    f.button:SetScript(\"OnClick\", function(self)\n      if f.state then\n        for _,df in ipairs(bars) do\n          df:Hide()\n        end\n        f.state = false\n      else\n        for _,df in ipairs(bars) do\n          df:Show()\n        end\n        f.state = true\n      end\n    end)\nend",
				},
			},
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = false,
			["text1"] = "%s",
			["id"] = "DominosToggle",
			["text2Font"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["anchorFrameFrame"] = "DominosFrame6",
			["uid"] = "iNJANWkTC3Q",
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = 136190,
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
		},
	},
	["frame"] = {
		["xOffset"] = -1481.48742675781,
		["width"] = 830.000183105469,
		["height"] = 665,
		["yOffset"] = -154.66357421875,
	},
	["minimap"] = {
		["minimapPos"] = 285.444860106683,
		["hide"] = true,
	},
}
