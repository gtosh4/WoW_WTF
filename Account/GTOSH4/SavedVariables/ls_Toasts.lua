
LS_TOASTS_GLOBAL_CONFIG = {
	["profileKeys"] = {
		["Toshpriest - Area 52"] = "Default",
		["Toshpal - Area 52"] = "Default",
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
						["x"] = 0,
						["y"] = -4,
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
				["store"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["left_click"] = false,
				},
				["archaeology"] = {
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
				["loot_common"] = {
					["enabled"] = true,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["threshold"] = 1,
					["quest"] = false,
					["ilvl"] = true,
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
				["loot_gold"] = {
					["enabled"] = false,
					["dnd"] = false,
					["sfx"] = true,
					["anchor"] = 1,
					["track_loss"] = false,
					["threshold"] = 1,
				},
				["garrison_7_0"] = {
					["anchor"] = 1,
					["enabled"] = true,
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
			},
		},
	},
}
