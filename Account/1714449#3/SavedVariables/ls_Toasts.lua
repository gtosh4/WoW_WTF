
LS_TOASTS_GLOBAL_CONFIG = {
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Default",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Toshaman - Area 52"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["version"] = 8030002,
			["skin"] = "rlst-colour",
			["anchors"] = {
				{
					["point"] = {
						["rP"] = "TOP",
						["p"] = "TOP",
						["y"] = -4,
						["x"] = 0,
					},
				}, -- [1]
			},
			["colors"] = {
				["threshold"] = 4,
			},
			["types"] = {
				["garrison_6_0"] = {
					["anchor"] = 1,
					["enabled"] = false,
					["dnd"] = true,
					["sfx"] = true,
				},
				["transmog"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["left_click"] = false,
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
				["garrison_7_0"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = true,
					["sfx"] = true,
				},
				["loot_gold"] = {
					["enabled"] = false,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["track_loss"] = false,
					["threshold"] = 1,
				},
				["loot_special"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["ilvl"] = true,
					["threshold"] = 1,
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
				["recipe"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
				},
				["collection"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["left_click"] = false,
				},
				["loot_common"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["ilvl"] = true,
					["quest"] = false,
					["threshold"] = 1,
				},
				["store"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["left_click"] = false,
				},
				["world"] = {
					["anchor"] = 1,
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
				},
			},
		},
	},
}
