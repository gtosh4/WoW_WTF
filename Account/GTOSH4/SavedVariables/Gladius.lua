
Gladius2DB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Toshpal - Kil'jaeden",
		["Toshtrial - Blood Furnace"] = "Toshtrial - Blood Furnace",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "Tosku - Kil'jaeden",
		["Toshdk - Kil'jaeden"] = "Toshdk - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
		["Toshtrial - The Forgotten Coast"] = "Toshtrial - The Forgotten Coast",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
		["Toshaman - Kil'jaeden"] = "Default",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
	},
	["profiles"] = {
		["Toshpal - Kil'jaeden"] = {
			["modules"] = {
				["Dispel"] = false,
			},
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["dispellGloss"] = false,
			["locked"] = true,
			["y"] = {
				["arena1"] = 442.0468255028536,
			},
			["x"] = {
				["arena1"] = 1116.533833770722,
			},
			["trinketGloss"] = false,
			["announcements"] = {
				["health"] = false,
				["spec"] = false,
				["enemies"] = false,
			},
			["tagsTexts"] = {
				["PowerBar Left Text"] = {
					["text"] = "[spec]",
				},
				["HealthBar Right Text"] = {
					["text"] = "[health:short]",
				},
			},
			["healthBarTexture"] = "ElvUI Blank",
			["powerBarTexture"] = "ElvUI Blank",
			["classIconShowSpec"] = true,
		},
		["Toshtrial - Blood Furnace"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 379.64667201096,
			},
			["x"] = {
				["arena1"] = 143.733410820147,
			},
		},
		["Daggny - Frostwolf"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 365.2466465431789,
			},
			["x"] = {
				["arena1"] = 1484.000049285882,
			},
		},
		["Toshdk - Kil'jaeden"] = {
			["modules"] = {
				["Announcements"] = false,
			},
			["x"] = {
				["arena1"] = 1105.33447890653,
			},
			["locked"] = true,
			["tagsVersion"] = 4,
			["auraVersion"] = 1,
			["y"] = {
				["arena1"] = 229.7807371077943,
			},
		},
		["Tosku - Kil'jaeden"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1498.93321254227,
			},
			["y"] = {
				["arena1"] = 549.779994736076,
			},
		},
		["Toshmonk - Kil'jaeden"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 468.373309843541,
			},
			["x"] = {
				["arena1"] = 1252.79958137275,
			},
		},
		["Yorman - Kil'jaeden"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 483.732411763853,
			},
			["x"] = {
				["arena1"] = 1438.93566484931,
			},
		},
		["Default"] = {
			["powerBarTexture"] = "ElvUI Norm",
			["aurasBuffs"] = true,
			["tagsTexts"] = {
				["PowerBar Left Text"] = {
					["text"] = "",
				},
				["HealthBar Right Text"] = {
					["text"] = "[health:short]",
				},
				["PowerBar Right Text"] = {
					["text"] = "[power:percentage]",
				},
			},
			["aurasBuffsAttachTo"] = "Dispel",
			["modules"] = {
				["Announcements"] = false,
				["Auras"] = true,
			},
			["locked"] = true,
			["aurasBuffsPerColumn"] = 5,
			["classIconGloss"] = false,
			["tags"] = {
				["maxhealth"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class]..\":short\"] or Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["health:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class] or LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["power:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_POWER_UPDATE UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["race"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitRace(unit) or Gladius.testing[unit].unitRace\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["maxpower:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["power"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nend",
					["events"] = "UNIT_POWER_UPDATE UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name:status"] = {
					["func"] = "function(unit)\nreturn UnitIsDeadOrGhost(unit) and Gladius.L[\"DEAD\"] or (UnitName(unit) or unit)\nend",
					["events"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
				},
				["spec"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["power:percentage"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nlocal maxPower = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nreturn strformat(\"%.1f%%\", (power / maxPower * 100))\nend",
					["events"] = "UNIT_POWER_UPDATE UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name"] = {
					["func"] = "function(unit)\nreturn UnitName(unit) or unit\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["spec:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nlocal spec = Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nif (spec == nil or spec == \"\") then\nreturn \"\"\nend\nreturn Gladius.L[spec..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["health:percentage"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nlocal maxHealth = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nreturn strformat(\"%.1f%%\", (health / maxHealth * 100))\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxpower"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["maxhealth:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["health"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
			},
			["auraVersion"] = 1,
			["aurasBuffsRelativePoint"] = "TOPRIGHT",
			["x"] = {
				["arena1"] = 1081.60312841069,
			},
			["y"] = {
				["arena1"] = 263.99849693316,
			},
			["classIconShowSpec"] = true,
			["aurasBuffsHeight"] = 22,
			["clickAttributes"] = {
				["shift-Right"] = {
					["macro"] = "Mind Control",
					["button"] = "2",
					["action"] = "target",
					["modifier"] = "shift-",
				},
				["Right"] = {
					["macro"] = "Dispel Magic",
					["action"] = "spell",
				},
			},
			["castBarTexture"] = "ElvUI Norm",
			["tagsVersion"] = 4,
			["healthBarTexture"] = "ElvUI Norm",
			["aurasBuffsWidth"] = 22,
		},
		["Tosh - Kil'jaeden"] = {
			["powerBarTexture"] = "ElvUI Norm",
			["aurasBuffs"] = true,
			["tagsTexts"] = {
				["PowerBar Left Text"] = {
					["text"] = "",
				},
				["HealthBar Right Text"] = {
					["text"] = "[health:short]",
				},
				["PowerBar Right Text"] = {
					["text"] = "[power:percentage]",
				},
			},
			["aurasBuffsAttachTo"] = "Dispel",
			["modules"] = {
				["Announcements"] = false,
				["Auras"] = true,
			},
			["locked"] = true,
			["aurasBuffsPerColumn"] = 5,
			["classIconGloss"] = false,
			["tags"] = {
				["maxhealth"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class]..\":short\"] or Gladius.L[LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["health:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["class"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn not Gladius.test and LOCALIZED_CLASS_NAMES_MALE[Gladius.buttons[unit].class] or LOCALIZED_CLASS_NAMES_MALE[Gladius.testing[unit].unitClass]\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["power:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_POWER_UPDATE UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["race"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitRace(unit) or Gladius.testing[unit].unitRace\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["maxpower:short"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nif (power > 999) then\nreturn strformat(\"%.1fk\", (power / 1000))\nelse\nreturn power\nend\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["power"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nend",
					["events"] = "UNIT_POWER_UPDATE UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name:status"] = {
					["func"] = "function(unit)\nreturn UnitIsDeadOrGhost(unit) and Gladius.L[\"DEAD\"] or (UnitName(unit) or unit)\nend",
					["events"] = "UNIT_NAME_UPDATE UNIT_HEALTH",
				},
				["spec"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nreturn Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["power:percentage"] = {
					["func"] = "function(unit)\nlocal power = not Gladius.test and UnitPower(unit) or Gladius.testing[unit].power\nlocal maxPower = not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nreturn strformat(\"%.1f%%\", (power / maxPower * 100))\nend",
					["events"] = "UNIT_POWER_UPDATE UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["name"] = {
					["func"] = "function(unit)\nreturn UnitName(unit) or unit\nend",
					["events"] = "UNIT_NAME_UPDATE",
				},
				["spec:short"] = {
					["preparation"] = true,
					["func"] = "function(unit)\nlocal spec = Gladius.test and Gladius.testing[unit].unitSpec or Gladius.buttons[unit].spec\nif (spec == nil or spec == \"\") then\nreturn \"\"\nend\nreturn Gladius.L[spec..\":short\"]\nend",
					["events"] = "UNIT_NAME_UPDATE GLADIUS_SPEC_UPDATE",
				},
				["health:percentage"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nlocal maxHealth = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nreturn strformat(\"%.1f%%\", (health / maxHealth * 100))\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxpower"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
				["maxhealth:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["health"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
			},
			["auraVersion"] = 1,
			["aurasBuffsRelativePoint"] = "TOPRIGHT",
			["x"] = {
				["arena1"] = 1081.60312841069,
			},
			["y"] = {
				["arena1"] = 263.99849693316,
			},
			["classIconShowSpec"] = true,
			["castBarTexture"] = "ElvUI Norm",
			["aurasBuffsHeight"] = 22,
			["clickAttributes"] = {
				["shift-Right"] = {
					["button"] = "2",
					["macro"] = "Mind Control",
					["action"] = "target",
					["modifier"] = "shift-",
				},
				["Right"] = {
					["macro"] = "Dispel Magic",
					["action"] = "spell",
				},
			},
			["tagsVersion"] = 4,
			["healthBarTexture"] = "ElvUI Norm",
			["aurasBuffsWidth"] = 22,
		},
		["Toshtrial - The Forgotten Coast"] = {
			["y"] = {
				["arena1"] = 650.046776432893,
			},
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1434.93261052837,
			},
			["auraVersion"] = 1,
		},
		["Zallie - Frostwolf"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["y"] = {
				["arena1"] = 401.513311455565,
			},
			["x"] = {
				["arena1"] = 1280.26642991265,
			},
		},
		["Toshaman - Kil'jaeden"] = {
			["y"] = {
				["arena1"] = 472.532363479251,
			},
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1437.86971588517,
			},
			["auraVersion"] = 1,
		},
		["Koutetsu - Frostwolf"] = {
			["y"] = {
				["arena1"] = 690.5799346452404,
			},
			["tagsVersion"] = 4,
			["x"] = {
				["arena1"] = 1464.799972197332,
			},
			["auraVersion"] = 1,
		},
	},
}
