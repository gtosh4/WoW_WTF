
Gladius2DB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Toshpal - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Toshaman - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Toshpal - Kil'jaeden"] = {
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
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
				["health"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxhealth:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxpower"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
			},
			["auraVersion"] = 1,
			["classIconShowSpec"] = true,
			["aurasBuffsHeight"] = 22,
			["y"] = {
				["arena1"] = 239.4648335698948,
			},
			["x"] = {
				["arena1"] = 1150.935179569933,
			},
			["castBarTexture"] = "ElvUI Norm",
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
			["aurasBuffsWidth"] = 22,
			["tagsVersion"] = 4,
			["healthBarTexture"] = "ElvUI Norm",
			["aurasBuffsRelativePoint"] = "TOPRIGHT",
		},
		["Tosh - Kil'jaeden"] = {
			["modules"] = {
				["Announcements"] = false,
				["Auras"] = true,
			},
			["aurasBuffsRelativePoint"] = "TOPRIGHT",
			["aurasBuffsPerColumn"] = 5,
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
				["health"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitHealth(unit) or Gladius.testing[unit].health\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxhealth:short"] = {
					["func"] = "function(unit)\nlocal health = not Gladius.test and UnitHealthMax(unit) or Gladius.testing[unit].maxHealth\nif (health > 999) then\nreturn strformat(\"%.1fk\", (health / 1000))\nelse\nreturn health\nend\nend",
					["events"] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_NAME_UPDATE",
				},
				["maxpower"] = {
					["func"] = "function(unit)\nreturn not Gladius.test and UnitPowerMax(unit) or Gladius.testing[unit].maxPower\nend",
					["events"] = "UNIT_MAXPOWER UNIT_DISPLAYPOWER UNIT_NAME_UPDATE",
				},
			},
			["aurasBuffsAttachTo"] = "Dispel",
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["locked"] = true,
			["classIconGloss"] = false,
			["y"] = {
				["arena1"] = 263.99849693316,
			},
			["x"] = {
				["arena1"] = 1081.60312841069,
			},
			["aurasBuffsHeight"] = 22,
			["aurasBuffs"] = true,
			["aurasBuffsWidth"] = 22,
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
			["castBarTexture"] = "ElvUI Norm",
			["healthBarTexture"] = "ElvUI Norm",
			["powerBarTexture"] = "ElvUI Norm",
			["classIconShowSpec"] = true,
		},
		["Toshmonk - Kil'jaeden"] = {
			["powerBarTexture"] = "ElvUI Blank",
			["targetBarTexture"] = "ElvUI Blank",
			["trinketGloss"] = false,
			["dispellFaction"] = false,
			["castBarOffsetY"] = -1,
			["modules"] = {
				["TargetBar"] = true,
				["Dispel"] = false,
				["Announcements"] = false,
			},
			["dispellGloss"] = false,
			["locked"] = true,
			["powerBarHeight"] = 14,
			["timerOmniCC"] = true,
			["trinketFaction"] = false,
			["healthBarTexture"] = "ElvUI Blank",
			["classIconShowSpec"] = true,
			["y"] = {
				["arena1"] = 440.1067810519162,
			},
			["x"] = {
				["arena1"] = 1113.604082952312,
			},
			["castBarTexture"] = "ElvUI Blank",
			["classIconCrop"] = true,
			["auraVersion"] = 1,
			["tagsVersion"] = 4,
			["bottomMargin"] = 14,
			["powerBarOffsetY"] = -1,
		},
		["Toshaman - Kil'jaeden"] = {
			["y"] = {
				["arena1"] = 472.532363479251,
			},
			["tagsVersion"] = 4,
			["auraVersion"] = 1,
			["x"] = {
				["arena1"] = 1437.86971588517,
			},
		},
	},
}
