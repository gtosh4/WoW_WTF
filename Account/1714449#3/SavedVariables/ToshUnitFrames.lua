
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
			["height"] = 564.1663208007812,
			["width"] = 764.16845703125,
			["pos"] = {
				["y"] = 111.2502059936523,
				["x"] = -375.8328552246094,
				["to"] = "RIGHT",
				["from"] = "RIGHT",
			},
		},
	},
	["profiles"] = {
		["Default"] = {
			["regions"] = {
				[8] = {
					["parent"] = 7,
					["type"] = "bar",
					["source"] = "health",
					["id"] = 8,
				},
				[6] = {
					["id"] = 6,
					["parent"] = 5,
				},
				[7] = {
					["id"] = 7,
					["type"] = "unit_single",
					["children"] = {
						8, -- [1]
					},
					["unit"] = "player",
				},
			},
			["selected"] = {
				"UNITS", -- [1]
				"7", -- [2]
				"8", -- [3]
			},
			["nextid"] = 9,
		},
	},
}
