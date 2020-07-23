
CliqueDB = nil
CliqueDB3 = {
	["char"] = {
		["Toshpriest - Area 52"] = {
			["spec1_profileKey"] = "Toshpriest - Area 52",
			["spec2_profileKey"] = "Toshpriest - Area 52",
			["downclick"] = true,
			["fastooc"] = false,
			["specswap"] = false,
			["spec3_profileKey"] = "Toshpriest - Area 52",
			["blacklist"] = {
				["PlayerFrame"] = true,
			},
		},
		["Toshpal - Area 52"] = {
			["spec1_profileKey"] = "Toshpal - Area 52",
			["fastooc"] = false,
			["spec2_profileKey"] = "Toshpal - Area 52",
			["downclick"] = true,
			["spec3_profileKey"] = "Toshpal - Area 52",
			["specswap"] = false,
		},
	},
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Toshpriest - Area 52",
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
					["key"] = "CTRL-SHIFT-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
				{
					["macrotext"] = "/script if not IsMouselooking() then MouselookStart() end",
					["type"] = "macro",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [3]
			},
		},
		["Default"] = {
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
		["Toshpal - Area 52"] = {
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
	},
}
