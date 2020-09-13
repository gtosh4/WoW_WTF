
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
	["global"] = {
		["options"] = {
			["height"] = 459.1669311523438,
			["pos"] = {
				["y"] = 152.0831756591797,
				["x"] = -286.6657104492188,
				["to"] = "RIGHT",
				["from"] = "RIGHT",
			},
			["width"] = 758.3334350585938,
		},
	},
	["profileKeys"] = {
		["Toshlongboyr - Eldre'Thalas"] = "Default",
		["Toshdk - Kil'jaeden"] = "Default",
		["Toshlongboy - Eldre'Thalas"] = "Default",
		["Toshtoon - Barthilas"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Toshpal - Area 52"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["regions"] = {
				{
					["type"] = "unit_single",
					["id"] = 1,
					["anchors"] = {
						{
							["y"] = 300,
							["x"] = 300,
							["to"] = "CENTER",
							["from"] = "CENTER",
						}, -- [1]
					},
					["bg"] = {
						["texture"] = "Blizzard Tooltip",
					},
					["children"] = {
						2, -- [1]
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
					["id"] = 2,
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
