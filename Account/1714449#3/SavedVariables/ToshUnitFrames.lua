
ToshUnitFramesDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Toshpriest - Area 52"] = {
					["enabled"] = false,
				},
			},
		},
		["ToshUnitFramesOptions"] = {
			["global"] = {
				["options"] = {
					["y"] = 654.1667785644531,
					["x"] = 2112.9169921875,
					["height"] = 635.0001831054688,
					["pos"] = {
						["y"] = -129.5829010009766,
						["x"] = -465.4166259765625,
						["to"] = "TOPRIGHT",
						["from"] = "TOPRIGHT",
					},
					["width"] = 708.3319702148438,
				},
			},
			["profiles"] = {
				["Default"] = {
					["regions"] = {
						nil, -- [1]
						{
							["id"] = 2,
						}, -- [2]
						{
							["id"] = 3,
						}, -- [3]
						{
							["id"] = 4,
						}, -- [4]
						{
							["id"] = 5,
						}, -- [5]
						[9] = {
							["id"] = 9,
							["type"] = "unit_single",
							["name"] = "Test",
							["unit"] = "player",
						},
					},
					["selected"] = 9,
					["nextid"] = 15,
				},
			},
		},
	},
	["global"] = {
		["options"] = {
			["height"] = 558.3331298828125,
			["pos"] = {
				["y"] = 45.83381652832031,
				["x"] = -259.1648864746094,
				["to"] = "RIGHT",
				["from"] = "RIGHT",
			},
			["width"] = 871.6692504882812,
		},
	},
	["profileKeys"] = {
		["Toshmonk - Kil'jaeden"] = "Default",
		["Toshpriest - Area 52"] = "Default",
		["Toshmonk - Area 52"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["regions"] = {
				[8] = {
					["type"] = "bar",
					["source"] = "health",
					["anchors"] = {
						{
							["to"] = "TOPLEFT",
							["from"] = "TOPLEFT",
						}, -- [1]
						{
							["y"] = 10,
							["to"] = "BOTTOMRIGHT",
							["from"] = "BOTTOMRIGHT",
						}, -- [2]
					},
					["_events"] = {
						"UNIT_HEALTH_FREQUENT", -- [1]
						"UNIT_MAXHEALTH", -- [2]
					},
					["name"] = "hp",
					["Update"] = nil --[[ skipped inline function ]],
					["parent"] = 7,
					["id"] = 8,
					["texture"] = "Smooth v2",
				},
				[6] = {
					["id"] = 6,
					["parent"] = 5,
				},
				[7] = {
					["type"] = "unit_single",
					["name"] = "player",
					["id"] = 7,
					["anchors"] = {
						{
							["y"] = 400,
							["x"] = 400,
							["to"] = "CENTER",
							["from"] = "CENTER",
						}, -- [1]
					},
					["bg"] = {
						["texture"] = "Blizzard Dialog Background",
					},
					["children"] = {
						8, -- [1]
						9, -- [2]
					},
					["unit"] = "player",
				},
				[9] = {
					["source"] = "power",
					["type"] = "bar",
					["name"] = "mana",
					["anchors"] = {
						{
							["y"] = 10,
							["to"] = "BOTTOMLEFT",
							["from"] = "TOPLEFT",
						}, -- [1]
						{
							["to"] = "BOTTOMRIGHT",
							["from"] = "BOTTOMRIGHT",
						}, -- [2]
					},
					["parent"] = 7,
					["id"] = 9,
					["_events"] = {
						"UNIT_POWER_FREQUENT", -- [1]
						"UNIT_MAXPOWER", -- [2]
						"UNIT_DISPLAYPOWER", -- [3]
						"UNIT_POWER_BAR_HIDE", -- [4]
						"UNIT_POWER_BAR_SHOW", -- [5]
						"UNIT_FLAGS", -- [6]
					},
					["texture"] = "Bars",
				},
			},
			["selected"] = {
				"UNITS", -- [1]
				"7", -- [2]
				"9", -- [3]
			},
			["nextid"] = 11,
		},
	},
}
