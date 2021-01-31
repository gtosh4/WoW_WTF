
M6DB = {
	["icRangeColor"] = "ffffff",
	["groups"] = {
		"shaman", -- [1]
		["shaman"] = 1,
	},
	["icManaColor"] = "8080ff",
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
		{
			"macrotext", -- [1]
			"#showtooltip Weapons of Order\n/cast Weapons of Order\n/cast Soulletting Ruby", -- [2]
			["name"] = "weps",
		}, -- [3]
		{
			"macrotext", -- [1]
			"#showtooltip Invoke Yu'lon, the Jade Serpent\n/cast Invoke Yu'lon, the Jade Serpent\n/script WeakAuras.ScanEvents(\"TOSH_WA_INNRV_ASK\")", -- [2]
			["name"] = "yulon",
		}, -- [4]
	},
	["profiles"] = {
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
						["s01"] = 3,
						["s02"] = 4,
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
	},
}
