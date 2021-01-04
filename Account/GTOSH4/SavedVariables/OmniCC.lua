
OmniCCDB = {
	["global"] = {
		["addonVersion"] = "9.0.5",
		["dbVersion"] = 5,
	},
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Default",
		["Toshdruid - Area 52"] = "Default",
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
						["seconds"] = {
							["b"] = 1,
						},
						["soon"] = {
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
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
				["GridAuras"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
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
