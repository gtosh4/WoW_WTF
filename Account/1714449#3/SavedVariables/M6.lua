
M6DB = {
	["icRangeColor"] = "ffffff",
	["groups"] = {
		"shaman", -- [1]
		["shaman"] = 1,
	},
	["profiles"] = {
		["Kil'jaeden"] = {
			["Toshmonk"] = {
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
					},
					["bind"] = {
					},
				}, -- [3]
			},
		},
		["Area 52"] = {
			["Toshaman"] = {
				{
					["slots"] = {
						["s01"] = 1,
						["s02"] = 2,
					},
					["bind"] = {
					},
				}, -- [1]
				[3] = {
					["slots"] = {
						["s01"] = 1,
						["s02"] = 2,
					},
					["bind"] = {
					},
				},
			},
		},
	},
	["actions"] = {
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [talent:5/3] Wind Rush Totem; [talent:3/2] Earthgrab Totem", -- [2]
			["group"] = 1,
			["name"] = "wreg",
		}, -- [1]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [talent:4/2] Earthen Wall Totem; [talent:4/3] Ancestral Protection Totem", -- [2]
			["group"] = 1,
			["name"] = "t4",
		}, -- [2]
	},
	["icManaColor"] = "8080ff",
}