
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
			["height"] = 512.4995727539062,
			["pos"] = {
				["y"] = -156.6668701171875,
				["x"] = -224.9995727539063,
				["to"] = "TOPRIGHT",
				["from"] = "TOPRIGHT",
			},
			["width"] = 909.1680908203125,
		},
	},
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["regions"] = {
				{
					["type"] = "unit_single",
					["name"] = "",
					["id"] = 1,
					["anchors"] = {
						{
							["y"] = 100,
							["x"] = 100,
							["to"] = "CENTER",
							["from"] = "BOTTOMRIGHT",
						}, -- [1]
					},
					["unit"] = "player",
				}, -- [1]
				{
					["id"] = 2,
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
