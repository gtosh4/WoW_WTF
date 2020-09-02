
ToshUnitFramesDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Toshpal - Area 52"] = {
					["enabled"] = false,
				},
			},
		},
	},
	["profileKeys"] = {
		["Toshlongboyr - Eldre'Thalas"] = "Default",
		["Toshdk - Kil'jaeden"] = "Default",
		["Toshlongboy - Eldre'Thalas"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Toshpal - Area 52"] = "Default",
	},
	["global"] = {
		["options"] = {
			["height"] = 459.1669311523438,
			["width"] = 758.3334350585938,
			["pos"] = {
				["y"] = 152.0831756591797,
				["x"] = -286.6657104492188,
				["to"] = "RIGHT",
				["from"] = "RIGHT",
			},
		},
	},
	["profiles"] = {
		["Default"] = {
			["regions"] = {
				{
					["type"] = "unit_single",
					["anchors"] = {
						{
							["y"] = 300,
							["x"] = 300,
							["to"] = "CENTER",
							["from"] = "CENTER",
						}, -- [1]
					},
					["id"] = 1,
					["children"] = {
						2, -- [1]
					},
					["bg"] = {
						["texture"] = "Blizzard Tooltip",
					},
					["unit"] = "player",
				}, -- [1]
				{
					["type"] = "bar",
					["source"] = "health",
					["parent"] = 1,
					["_events"] = {
						"UNIT_HEALTH_FREQUENT", -- [1]
						"UNIT_MAXHEALTH", -- [2]
					},
					["_values"] = nil --[[ skipped inline function ]],
					["Update"] = nil --[[ skipped inline function ]],
					["id"] = 2,
					["anchors"] = {
						{
							["to"] = "TOPLEFT",
							["from"] = "TOPLEFT",
						}, -- [1]
						{
							["to"] = "BOTTOMRIGHT",
							["from"] = "BOTTOMRIGHT",
						}, -- [2]
					},
					["texture"] = "Smooth v2",
				}, -- [2]
			},
			["selected"] = {
				"UNITS", -- [1]
				"1", -- [2]
			},
			["nextid"] = 3,
		},
	},
}
