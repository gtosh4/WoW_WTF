
M6DB = {
	["icRangeColor"] = "ffffff",
	["groups"] = {
		"disc", -- [1]
		"priest", -- [2]
		"venthyr", -- [3]
		"druid", -- [4]
		"holy", -- [5]
		["disc"] = 1,
		["druid"] = 4,
		["venthyr"] = 3,
		["priest"] = 2,
		["holy"] = 5,
	},
	["icManaColor"] = "8080ff",
	["actions"] = {
		{
			"macrotext", -- [1]
			"#showtooltip Shadow Mend\n/cast [@mouseover] Shadow Mend", -- [2]
			["group"] = 1,
			["name"] = "SMend",
		}, -- [1]
		{
			"macrotext", -- [1]
			"#showtooltip Penance\n/cast [@mouseover,noharm] Penance", -- [2]
			["group"] = 1,
			["name"] = "MO Penance",
		}, -- [2]
		{
			"macrotext", -- [1]
			"#showtooltip Power Word: Shield\n/cast [@mouseover] Power Word: Shield", -- [2]
			["group"] = 2,
			["name"] = "PWS",
		}, -- [3]
		{
			"macrotext", -- [1]
			"#showtooltip Smite\n/cast [nochanneling:Penance] Smite", -- [2]
			["group"] = 1,
			["name"] = "Smite",
		}, -- [4]
		{
			"macrotext", -- [1]
			"#showtooltip Mind Blast\n/cast [nochanneling:Penance] Mind Blast", -- [2]
			["group"] = 1,
			["name"] = "Blast",
		}, -- [5]
		{
			"macrotext", -- [1]
			"#showtooltip Mindgames\n/cast [nochanneling:Penance] Mindgames", -- [2]
			["group"] = 1,
			["name"] = "mindgames",
		}, -- [6]
		{
			"macrotext", -- [1]
			"#showtooltip Power Word: Radiance\n/cast [@mouseover] Power Word: Radiance", -- [2]
			["group"] = 1,
			["name"] = "pwr",
		}, -- [7]
		{
			"macrotext", -- [1]
			"#showtooltip Shadowfiend\n/cast Shadowfiend\n/cast [spec:1,talent:7/2] Spirit Shell\n/cast Sinful Gladiator's Badge of Ferocity", -- [2]
			["group"] = 1,
			["name"] = "fiend",
		}, -- [8]
		{
			"macrotext", -- [1]
			"#showtooltip Leap of Faith\n/cast [@mouseover,noharm][@target] Leap of Faith", -- [2]
			["group"] = 1,
			["name"] = "grip",
		}, -- [9]
		{
			"macrotext", -- [1]
			"#showtooltip Power Infusion\n/cast [@target,help][@focus,help][@player] Power Infusion\n", -- [2]
			["group"] = 2,
			["name"] = "PI",
		}, -- [10]
		{
			"macrotext", -- [1]
			"#showtooltip Purify\n/cast [@mouseover,noharm] Purify\n", -- [2]
			["group"] = 2,
			["name"] = "purify",
		}, -- [11]
		{
			"macrotext", -- [1]
			"#showtooltip Pain Suppression\n/cast [@mouseover,noharm] Pain Suppression\n", -- [2]
			["group"] = 1,
			["name"] = "pain supp",
		}, -- [12]
		{
			"macrotext", -- [1]
			"#showtooltip Rapture\n/cast [@mouseover,exists,noharm][@target,exists,noharm][@player] Rapture", -- [2]
			["group"] = 1,
			["name"] = "rapture",
		}, -- [13]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [spec:1,talent:2/3,@player] Angelic Feather; [@player] Power Word: Shield", -- [2]
			["group"] = 2,
			["name"] = "feather",
		}, -- [14]
		{
			"macrotext", -- [1]
			"#showtooltip Door of Shadows\n/cast [@cursor] Door of Shadows", -- [2]
			["group"] = 3,
			["name"] = "door",
		}, -- [15]
		{
			"macrotext", -- [1]
			"#showtooltip Divine Hymn\n/cast Sinful Gladiator's Badge of Ferocity\n/cast Divine Hymn", -- [2]
			["name"] = "hymn",
		}, -- [16]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [talent:6/1] Damnation; [talent:6/3] Void Torrent; [talent:3/3] Searing Nightmare", -- [2]
			["name"] = "damnation",
		}, -- [17]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [@target,help] Rejuvenation; [@target,harm] Moonfire", -- [2]
			["group"] = 4,
			["name"] = "rejuv",
		}, -- [18]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [@target,help] Regrowth; [@target,harm] Sunfire", -- [2]
			["group"] = 4,
			["name"] = "regrowth",
		}, -- [19]
		{
			"macrotext", -- [1]
			"#showtooltip\n/cast [@mouseover] Renew", -- [2]
			["group"] = 5,
			["name"] = "renew",
		}, -- [20]
		{
			"macrotext", -- [1]
			"/run SetCVar('synchronizeBindings', 0)\n/run SetCVar('synchronizeChatFrames', 0)\n/run SetCVar('synchronizeConfig', 0)\n/run SetCVar('synchronizeMacros', 0)\n/run SetCVar('synchronizeSettings', 0)", -- [2]
			["name"] = "sync off",
		}, -- [21]
		{
			"macrotext", -- [1]
			"/run SetCVar('synchronizeBindings', 1)\n/run SetCVar('synchronizeChatFrames', 1)\n/run SetCVar('synchronizeConfig', 1)\n/run SetCVar('synchronizeMacros', 1)\n/run SetCVar('synchronizeSettings', 1)", -- [2]
			["name"] = "sync on",
		}, -- [22]
	},
	["profiles"] = {
		["Area 52"] = {
			["Toshpriest"] = {
				{
					["slots"] = {
						["s05"] = 5,
						["s07"] = 7,
						["s08"] = 8,
						["s0f"] = 15,
						["s0d"] = 13,
						["s0b"] = 11,
						["s0c"] = 12,
						["s0e"] = 14,
						["s0a"] = 10,
						["s09"] = 9,
						["s06"] = 6,
						["s04"] = 4,
						["s02"] = 2,
						["s03"] = 3,
						["s01"] = 1,
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
						["s03"] = 20,
						["s02"] = 16,
						["s01"] = 10,
					},
					["bind"] = {
					},
				}, -- [2]
				{
					["slots"] = {
						["s01"] = 17,
					},
					["bind"] = {
					},
				}, -- [3]
			},
			["Toshpal"] = {
				{
					["slots"] = {
						["s01"] = 15,
						["s02"] = 21,
					},
					["bind"] = {
					},
				}, -- [1]
				[3] = {
					["slots"] = {
					},
					["bind"] = {
					},
				},
			},
			["Toshdruid"] = {
				{
					["slots"] = {
						["s01"] = 19,
						["s02"] = 18,
					},
					["bind"] = {
					},
				}, -- [1]
				[4] = {
					["slots"] = {
						["s01"] = 18,
						["s02"] = 19,
					},
					["bind"] = {
					},
				},
			},
		},
		["Kil'jaeden"] = {
			["Toshpriest"] = {
				{
					["slots"] = {
						["s05"] = 1,
						["s07"] = 15,
						["s08"] = 14,
						["s01"] = 10,
						["s03"] = 5,
						["s02"] = 2,
						["s04"] = 3,
						["s06"] = 4,
						["s0a"] = 9,
						["s09"] = 8,
						["s0e"] = 7,
						["s0c"] = 12,
						["s0b"] = 6,
						["s0d"] = 11,
						["s0f"] = 13,
					},
					["bind"] = {
					},
				}, -- [1]
				{
					["slots"] = {
						["s03"] = 6,
						["s04"] = 16,
						["s01"] = 11,
						["s06"] = 10,
						["s05"] = 20,
						["s02"] = 9,
					},
					["bind"] = {
					},
				}, -- [2]
			},
		},
	},
}
