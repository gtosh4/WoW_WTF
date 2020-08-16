
CliqueDB = nil
CliqueDB3 = {
	["char"] = {
		["Toshpriest - Area 52"] = {
			["spec1_profileKey"] = "Toshpriest - Area 52",
			["spec3_profileKey"] = "Toshpriest - Area 52",
			["downclick"] = true,
			["fastooc"] = false,
			["specswap"] = false,
			["spec2_profileKey"] = "Toshpriest - Area 52",
			["blacklist"] = {
				["PlayerFrame"] = true,
			},
		},
		["Yorman - Kil'jaeden"] = {
			["spec1_profileKey"] = "Yorman - Kil'jaeden",
			["spec3_profileKey"] = "Yorman - Kil'jaeden",
			["downclick"] = false,
			["fastooc"] = false,
			["spec4_profileKey"] = "Yorman - Kil'jaeden",
			["spec2_profileKey"] = "Yorman - Kil'jaeden",
			["specswap"] = false,
		},
		["Toshpal - Area 52"] = {
			["spec1_profileKey"] = "Toshpal - Area 52",
			["fastooc"] = false,
			["spec3_profileKey"] = "Toshpal - Area 52",
			["downclick"] = true,
			["spec2_profileKey"] = "Toshpal - Area 52",
			["specswap"] = false,
		},
	},
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Toshpriest - Area 52",
		["Toshdk - Kil'jaeden"] = "Toshdk - Kil'jaeden",
		["Yelluwuy - Area 52"] = "Yelluwuy - Area 52",
		["Toshdruid - Area 52"] = "Toshdruid - Area 52",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Toshpal - Area 52"] = "Toshpriest - Area 52",
	},
	["profiles"] = {
		["Toshpriest - Area 52"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "ALT-BUTTON3",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
				{
					["macrotext"] = "/script if not IsMouselooking() then MouselookStart() end",
					["type"] = "macro",
					["key"] = "CTRL-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [3]
				{
					["macrotext"] = "/script if not IsMouselooking() then MouselookStart() end",
					["type"] = "macro",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [4]
				{
					["macrotext"] = "/script if not IsMouselooking() then MouselookStart() end",
					["type"] = "macro",
					["key"] = "CTRL-SHIFT-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [5]
				{
					["macrotext"] = "/script if not IsMouselooking() then MouselookStart() end",
					["type"] = "macro",
					["key"] = "ALT-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [6]
				{
					["macrotext"] = "/script if not IsMouselooking() then MouselookStart() end",
					["type"] = "macro",
					["key"] = "SHIFT-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [7]
				{
					["macrotext"] = "/focus [@mouseover]",
					["type"] = "macro",
					["key"] = "SHIFT-BUTTON3",
					["sets"] = {
						["default"] = true,
					},
				}, -- [8]
			},
		},
		["Toshdk - Kil'jaeden"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Yelluwuy - Area 52"] = {
			["bindings"] = {
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Toshdruid - Area 52"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Yorman - Kil'jaeden"] = {
			["bindings"] = {
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Toshpal - Area 52"] = {
			["bindings"] = {
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
	},
}
