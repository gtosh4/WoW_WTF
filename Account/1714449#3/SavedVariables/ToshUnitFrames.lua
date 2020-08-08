
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
			["height"] = 564.1664428710938,
			["width"] = 764.16845703125,
			["pos"] = {
				["y"] = -57.08320617675781,
				["x"] = -119.9994049072266,
				["to"] = "RIGHT",
				["from"] = "RIGHT",
			},
		},
	},
	["profiles"] = {
		["Default"] = {
			["regions"] = {
				[8] = {
					["type"] = "bar",
					["source"] = "health",
					["_values"] = nil --[[ skipped inline function ]],
					["id"] = 8,
					["parent"] = 7,
					["Update"] = nil --[[ skipped inline function ]],
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
