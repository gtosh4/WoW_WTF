
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
		["Toshaman - Area 52"] = {
			["spec1_profileKey"] = "Toshaman - Area 52",
			["fastooc"] = false,
			["spec2_profileKey"] = "Toshaman - Area 52",
			["downclick"] = true,
			["spec3_profileKey"] = "Toshaman - Area 52",
			["specswap"] = false,
		},
	},
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Toshpriest - Area 52",
		["Toshaman - Area 52"] = "Toshpriest - Area 52",
	},
	["profiles"] = {
		["Toshpriest - Area 52"] = {
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
		["Toshaman - Area 52"] = {
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
