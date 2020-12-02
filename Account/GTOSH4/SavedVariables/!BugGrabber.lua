
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 343,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ShadowedUnitFrames' tried to call the protected function 'SUFHeaderboss:Show()'.",
			["time"] = "2020/11/28 01:29:34",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\AddOns\\ShadowedUnitFrames\\modules\\units.lua\"]:1159: in function `LoadZoneHeader'\n[string \"@Interface\\AddOns\\ShadowedUnitFrames\\modules\\units.lua\"]:1335: in function `InitializeFrame'\n[string \"@Interface\\AddOns\\ShadowedUnitFrames\\modules\\movers.lua\"]:246: in function `Enable'\n[string \"@Interface\\AddOns\\ShadowedUnitFrames\\modules\\movers.lua\"]:466: in function `Update'\n[string \"@Interface\\AddOns\\ShadowedUF_Options\\config.lua\"]:710: in function <Interface\\AddOns\\ShadowedUF_Options\\config.lua:708>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Altoholic\\libs\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-79.lua\"]:51: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:49>\n[string \"@Interface\\AddOns\\Altoholic\\libs\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-79.lua\"]:843: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:664>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:72: in function <...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n[string \"@Interface\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:306: in function `Fire'\n[string \"@Interface\\AddOns\\Altoholic\\libs\\AceGUI-3.0-41\\widgets\\AceGUIWidget-CheckBox.lua\"]:68: in function <...ic\\libs\\AceGUI-3.0\\widgets\\AceGUIWidget-CheckBox.lua:57>",
			["session"] = 325,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...ace\\AddOns\\ShadowedUnitFrames\\modules\\indicators.lua:233: Usage: UnitAffectingCombat(\"unit\")",
			["time"] = "2020/11/28 01:31:53",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `UnitAffectingCombat'\n[string \"@Interface\\AddOns\\ShadowedUnitFrames\\modules\\indicators.lua\"]:233: in function `?'\n[string \"@Interface\\AddOns\\ShadowedUnitFrames\\modules\\units.lua\"]:214: in function <...nterface\\AddOns\\ShadowedUnitFrames\\modules\\units.lua:211>",
			["session"] = 325,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.6.lua:875: attempt to index field 'raidFrames' (a nil value)",
			["time"] = "2020/11/28 01:31:53",
			["locals"] = "frame = <unnamed> {\n 0 = <userdata>\n WidgetContainer = <unnamed> {\n }\n classificationIndicator = <unnamed> {\n }\n castBar = <unnamed> {\n }\n maxDispelDebuffs = 0\n inVehicle = false\n optionTable = <table> {\n }\n overAbsorbGlow = <unnamed> {\n }\n totalAbsorb = <unnamed> {\n }\n name = <unnamed> {\n }\n aggroHighlight = <unnamed> {\n }\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n newUnit = true\n ignoreCUFNameRequirement = true\n selectionHighlight = <unnamed> {\n }\n myHealAbsorbLeftShadow = <unnamed> {\n }\n maxDebuffs = 0\n unitExists = false\n disableMouse = true\n ClassificationFrame = <unnamed> {\n }\n HasPlaterHooksRegistered = true\n healthBar = <unnamed> {\n }\n BuffFrame = <unnamed> {\n }\n RaidTargetFrame = <unnamed> {\n }\n LoseAggroAnim = <unnamed> {\n }\n hideHealthbar = false\n maxBuffs = 0\n myHealAbsorb = <unnamed> {\n }\n otherHealPrediction = <unnamed> {\n }\n totalAbsorbOverlay = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'raidFrames' (a nil value)\"\npending = <table> {\n}\n",
			["stack"] = "[string \"@Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.6.lua\"]:875: in function <Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:874>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:194: in function `CompactUnitFrame_SetUnit'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:428: in function `OnRemoved'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:174: in function `OnNamePlateRemoved'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:59: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 337,
			["counter"] = 11,
		}, -- [3]
	},
}
