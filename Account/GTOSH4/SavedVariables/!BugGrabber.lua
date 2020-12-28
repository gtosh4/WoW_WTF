
BugGrabberDB = {
	["session"] = 486,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'M6' tried to call the protected function 'PickupMacro()'.",
			["time"] = "2020/12/28 01:40:22",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `PickupMacro'\n[string \"@Interface\\AddOns\\M6\\Core.lua\"]:255: in function `PickupAction'\n[string \"@Interface\\AddOns\\M6\\EditorUI.lua\"]:996: in function <Interface\\AddOns\\M6\\EditorUI.lua:993>",
			["session"] = 484,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.6.lua:875: attempt to index field 'raidFrames' (a nil value)",
			["time"] = "2020/12/28 01:48:03",
			["locals"] = "frame = <unnamed> {\n 0 = <userdata>\n WidgetContainer = <unnamed> {\n }\n classificationIndicator = <unnamed> {\n }\n castBar = <unnamed> {\n }\n maxDispelDebuffs = 0\n inVehicle = false\n optionTable = <table> {\n }\n overAbsorbGlow = <unnamed> {\n }\n totalAbsorb = <unnamed> {\n }\n name = <unnamed> {\n }\n aggroHighlight = <unnamed> {\n }\n myHealAbsorbRightShadow = <unnamed> {\n }\n overHealAbsorbGlow = <unnamed> {\n }\n newUnit = true\n ignoreCUFNameRequirement = true\n selectionHighlight = <unnamed> {\n }\n myHealAbsorbLeftShadow = <unnamed> {\n }\n maxDebuffs = 0\n unitExists = false\n disableMouse = true\n ClassificationFrame = <unnamed> {\n }\n HasPlaterHooksRegistered = true\n healthBar = <unnamed> {\n }\n BuffFrame = <unnamed> {\n }\n RaidTargetFrame = <unnamed> {\n }\n LoseAggroAnim = <unnamed> {\n }\n hideHealthbar = false\n maxBuffs = 0\n myHealAbsorb = <unnamed> {\n }\n otherHealPrediction = <unnamed> {\n }\n totalAbsorbOverlay = <unnamed> {\n }\n myHealPrediction = <unnamed> {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'raidFrames' (a nil value)\"\npending = <table> {\n}\n",
			["stack"] = "[string \"@Interface\\AddOns\\BigDebuffs\\BigDebuffs-v9.6.lua\"]:875: in function <Interface\\AddOns\\BigDebuffs\\BigDebuffs.lua:874>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:194: in function `CompactUnitFrame_SetUnit'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:428: in function `OnRemoved'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:174: in function `OnNamePlateRemoved'\n[string \"@Interface\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua\"]:59: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:47>",
			["session"] = 484,
			["counter"] = 8,
		}, -- [2]
	},
}
