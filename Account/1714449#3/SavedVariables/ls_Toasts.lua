
LS_TOASTS_GLOBAL_CONFIG = {
	["profileKeys"] = {
		["Toshmonk - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
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
						["y"] = -99,
						["x"] = -3,
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
					["threshold"] = 1,
				},
				["achievement"] = {
					["enabled"] = true,
					["dnd"] = false,
					["anchor"] = 1,
				},
				["loot_special"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["threshold"] = 1,
					["ilvl"] = true,
				},
				["recipe"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
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
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["left_click"] = false,
				},
			},
		},
	},
}
