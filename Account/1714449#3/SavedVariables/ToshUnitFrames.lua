
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
					["width"] = 708.3319702148438,
					["pos"] = {
						["y"] = -129.5829010009766,
						["x"] = -465.4166259765625,
						["to"] = "TOPRIGHT",
						["from"] = "TOPRIGHT",
					},
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
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Default",
	},
	["global"] = {
		["options"] = {
			["height"] = 507.4997253417969,
			["width"] = 689.1680908203125,
			["pos"] = {
				["y"] = -162.5001525878906,
				["x"] = -240.8329162597656,
				["to"] = "TOPRIGHT",
				["from"] = "TOPRIGHT",
			},
		},
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
							["y"] = 0,
							["x"] = 0,
							["to"] = "CENTER",
							["from"] = "CENTER",
						}, -- [1]
					},
					["unit"] = "player",
				}, -- [1]
			},
			["selected"] = {
				"UNITS", -- [1]
				"1", -- [2]
			},
			["nextid"] = 2,
		},
	},
}
