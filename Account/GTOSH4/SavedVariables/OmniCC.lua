
OmniCCDB = {
	["profileKeys"] = {
		["Toshdruid - Area 52"] = "Default",
		["Toshpriest - Kil'jaeden"] = "Default",
		["Toshpriest - Area 52"] = "Default",
		["Toshpal - Area 52"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.0.10",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Auras",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Unit Nameplates",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "ActionBars",
					["id"] = "actions",
				}, -- [3]
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 4,
					["theme"] = "Plater Nameplates Theme",
				}, -- [4]
				{
					["patterns"] = {
						"icons-center", -- [1]
					},
					["id"] = "Grid Auras",
					["priority"] = 5,
					["theme"] = "GridAuras",
				}, -- [5]
			},
			["themes"] = {
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
							["b"] = 1,
						},
						["minutes"] = {
						},
					},
					["fontSize"] = 16,
					["fontOutline"] = "THICKOUTLINE",
					["anchor"] = "TOPLEFT",
					["mmSSDuration"] = 90,
					["yOff"] = 4,
				},
				["Default"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
				},
				["GridAuras"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
					["anchor"] = "TOPLEFT",
					["yOff"] = 6,
					["name"] = "GridAuras",
				},
			},
		},
	},
}
OmniCC4Config = nil
