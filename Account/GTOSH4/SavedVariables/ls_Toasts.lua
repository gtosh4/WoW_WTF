
LS_TOASTS_GLOBAL_CONFIG = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Default",
		["Toshdk - Kil'jaeden"] = "Default",
		["Toshpriest - Illidan"] = "Default",
		["Daggny - Frostwolf"] = "Default",
		["Tosku - Kil'jaeden"] = "Default",
		["Toshpriest - Area 52"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Frostwolf"] = "Default",
		["Koutetsu - Frostwolf"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Default",
		["Sumex - Frostwolf"] = "Default",
		["Toshwar - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["font"] = {
				["size"] = 14,
			},
			["version"] = 8030002,
			["skin"] = "elv",
			["anchors"] = {
				{
					["point"] = {
						["rP"] = "TOP",
						["p"] = "TOP",
						["x"] = -14,
						["y"] = -380,
					},
				}, -- [1]
			},
			["types"] = {
				["garrison_6_0"] = {
					["anchor"] = 1,
					["enabled"] = false,
					["dnd"] = true,
					["sfx"] = true,
				},
				["world"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
				},
				["loot_currency"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["track_loss"] = false,
				},
				["instance"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
				},
				["loot_gold"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["track_loss"] = false,
					["threshold"] = 50000,
				},
				["recipe"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
				},
				["loot_special"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["threshold"] = 1,
					["ilvl"] = true,
				},
				["achievement"] = {
					["enabled"] = true,
					["dnd"] = false,
					["anchor"] = 1,
				},
				["garrison_8_0"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = true,
					["sfx"] = true,
				},
				["archaeology"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
				},
				["loot_common"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["threshold"] = 3,
					["quest"] = true,
					["ilvl"] = true,
				},
				["collection"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["left_click"] = false,
				},
				["garrison_7_0"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = true,
					["sfx"] = true,
				},
				["store"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["left_click"] = false,
				},
				["transmog"] = {
					["enabled"] = false,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["left_click"] = false,
				},
			},
		},
	},
}
