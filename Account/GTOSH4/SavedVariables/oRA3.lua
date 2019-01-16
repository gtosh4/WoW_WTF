
oRA3DB = {
	["namespaces"] = {
		["BattleRes"] = {
			["profiles"] = {
				["Default"] = {
					["lock"] = true,
				},
			},
		},
		["Invite"] = {
		},
		["LibDualSpec-1.0"] = {
		},
		["ReadyCheck"] = {
		},
		["Alerts"] = {
		},
		["Promote"] = {
		},
		["Cooldowns"] = {
			["profiles"] = {
				["Default"] = {
					["spells"] = {
						["Default"] = {
						},
						["RaidCDs"] = {
							[98008] = true,
							[62618] = true,
							[740] = true,
							[115310] = true,
							[97462] = true,
							[31821] = true,
							[64843] = true,
							[265202] = true,
							[108280] = true,
							[196718] = true,
						},
					},
					["displays"] = {
						["Default"] = {
							["barLabelOutline"] = "OUTLINE",
							["showDisplay"] = false,
							["barTexture"] = "Minimalist",
							["barShowSpell"] = false,
							["showOffCooldown"] = true,
							["groupSpells"] = true,
							["type"] = "Bars",
						},
						["RaidCDs"] = {
							["barLabelOutline"] = "OUTLINE",
							["showDisplay"] = false,
							["lockDisplay"] = true,
							["barTexture"] = "Minimalist",
							["barShowSpell"] = false,
							["showOffCooldown"] = true,
							["type"] = "Bars",
							["groupSpells"] = true,
						},
					},
				},
			},
		},
		["Tanks"] = {
		},
		["Consumables"] = {
		},
		["Difficulty"] = {
			["profiles"] = {
				["Default"] = {
					["prevRaidDifficulty"] = 15,
				},
			},
		},
	},
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Yuumi - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Default",
		["Koutetsu - Frostwolf"] = "Default",
		["Tosku - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["lastSelectedList"] = 1,
			["positions"] = {
				["oRA3CooldownFrameBarsDefault"] = {
					["Height"] = 147.999984741211,
					["PosX"] = 580.800941749461,
					["PosY"] = 415.466688334942,
					["Width"] = 199.999771118164,
				},
				["oRA3ReadyCheck"] = {
					["Height"] = 211.000015258789,
					["Width"] = 319.999969482422,
					["PosY"] = 246.666305182358,
					["PosX"] = 366.399009994613,
				},
				["oRA3BattleResMonitor"] = {
					["Height"] = 30.0000171661377,
					["PosX"] = 709.33376095297,
					["PosY"] = 111.910804990249,
					["Width"] = 140.000030517578,
				},
				["oRA3CooldownFrameBarsRaidCDs"] = {
					["Height"] = 147.999984741211,
					["PosX"] = 1726.93290256656,
					["PosY"] = 263.466859443992,
					["Width"] = 200,
				},
			},
			["lastSelectedPanel"] = "Checks",
		},
	},
}
