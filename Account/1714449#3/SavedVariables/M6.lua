
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
			["Toshaman"] = {
				{
					["slots"] = {
						["s01"] = 7,
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
						["s03"] = 1,
						["s04"] = 8,
						["s01"] = 2,
						["s05"] = 9,
						["s02"] = 5,
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
						["s03"] = 12,
						["s02"] = 2,
						["s01"] = 1,
						["s04"] = 8,
					},
					["bind"] = {
					},
				}, -- [1]
				[3] = {
					["slots"] = {
						["s03"] = 5,
						["s04"] = 9,
						["s01"] = 1,
						["s06"] = 10,
						["s07"] = 11,
						["s05"] = 8,
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
			"#showtooltip\n/cast [talent:4/2,@cursor] Earthen Wall Totem; [talent:4/3] Ancestral Protection Totem", -- [2]
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
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [talent:7/2] Wellspring; [talent:7/3] Ascendance", -- [2]
			["name"] = "t7 sham",
		}, -- [5]
		{
			"macrotext", -- [1]
			"/run SetCVar('synchronizeBindings', 1)\n/run SetCVar('synchronizeChatFrames', 1)\n/run SetCVar('synchronizeConfig', 1)\n/run SetCVar('synchronizeMacros', 1)\n/run SetCVar('synchronizeSettings', 1)", -- [2]
			["name"] = "sync on",
		}, -- [6]
		{
			"macrotext", -- [1]
			"/run SetCVar('synchronizeBindings', 0)\n/run SetCVar('synchronizeChatFrames', 0)\n/run SetCVar('synchronizeConfig', 0)\n/run SetCVar('synchronizeMacros', 0)\n/run SetCVar('synchronizeSettings', 0)", -- [2]
			["name"] = "sync off",
		}, -- [7]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [@cursor] Door of Shadows", -- [2]
			["name"] = "door",
		}, -- [8]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [@cursor] Healing Rain", -- [2]
			["name"] = "splash",
		}, -- [9]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [@cursor] Spirit Link Totem", -- [2]
			["name"] = "slt",
		}, -- [10]
		{
			"macrotext", -- [1]
			"#showtooltip Healing Tide Totem\n/cast Inscrutable Quantum Device\n/cast Healing Tide Totem", -- [2]
			["name"] = "HTT",
		}, -- [11]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [@mouseover] Earth Shield\n", -- [2]
			["name"] = "es",
		}, -- [12]
	},
	["icManaColor"] = "8080ff",
}
