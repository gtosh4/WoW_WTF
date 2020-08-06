
BugGrabberDB = {
	["session"] = 426,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\FrameXML\\UnitFrame.lua:458: Usage: GameTooltip:SetUnit(\"unit\"[, hideStatus])",
			["time"] = "2020/08/04 15:27:01",
			["locals"] = "(*temporary) = GameTooltip {\n 0 = <userdata>\n updateTooltip = 0.200000\n comparing = false\n MAMover = TooltipMover {\n }\n shoppingTooltips = <table> {\n }\n TopOverlay = <unnamed> {\n }\n ItemTooltip = <unnamed> {\n }\n SetBagItem = <function> defined =[C]:-1\n needsReset = true\n BottomOverlay = <unnamed> {\n }\n default = 1\n SetGuildBankItem = <function> defined =[C]:-1\n TMW_SetSpellByIDWithClassIcon = <function> defined @Interface\\AddOns\\TellMeWhen\\Components\\Core\\Spells\\ClassSpellCache.lua:212\n}\n(*temporary) = nil\n(*temporary) = nil\n",
			["stack"] = "[string \"=[C]\"]: in function `SetUnit'\n[string \"@Interface\\FrameXML\\UnitFrame.lua\"]:458: in function `UnitFrame_UpdateTooltip'\n[string \"@Interface\\FrameXML\\UnitFrame.lua\"]:448: in function `UnitFrame_OnEnter'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\region_types/unit_single.lua\"]:22: in function <...e\\AddOns\\ToshUnitFrames\\region_types/unit_single.lua:19>\n[string \"=[C]\"]: ?",
			["session"] = 413,
			["counter"] = 14,
		}, -- [1]
		{
			["message"] = "...e\\AddOns\\ToshUnitFrames\\region_types/unit_single.lua:50: attempt to call global 'frameLSetBackdropColor' (a nil value)",
			["time"] = "2020/08/04 19:00:26",
			["stack"] = "[string \"@Interface\\AddOns\\ToshUnitFrames\\region_types/unit_single.lua\"]:50: in function `Create'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\frames.lua\"]:5: in function `?'\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...rap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...rap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Scrap\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...face\\AddOns\\Scrap\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 415,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Frame ToshUnitFrame1: Unknown script element OnClick",
			["session"] = 419,
			["time"] = "2020/08/04 19:44:51",
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\ToshUnitFrames\\frames.lua:5: attempt to index upvalue 'oUF' (a nil value)",
			["time"] = "2020/08/04 23:27:00",
			["stack"] = "[string \"@Interface\\AddOns\\ToshUnitFrames\\frames.lua\"]:5: in function `?'\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...rap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...rap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Scrap\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...face\\AddOns\\Scrap\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 420,
			["counter"] = 3,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\ToshUnitFrames\\frames.lua:8: attempt to call field 'units' (a nil value)",
			["time"] = "2020/08/04 23:59:34",
			["stack"] = "[string \"@Interface\\AddOns\\ToshUnitFrames\\frames.lua\"]:8: in function <Interface\\AddOns\\ToshUnitFrames\\frames.lua:5>\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\ToshUnitFrames\\frames.lua\"]:5: in function `?'\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...rap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...rap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Scrap\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...face\\AddOns\\Scrap\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 421,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "Error loading Interface\\AddOns\\ToshUnitFrames\\libs\\LibDataBroker-1.1\\LibDataBroker-1.1-4.lua",
			["time"] = "2020/08/04 23:27:02",
			["session"] = 421,
			["counter"] = 8,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\ToshUnitFrames\\libs\\oUF\\ouf.lua:331: attempt to call local 'styleFunc' (a table value)",
			["time"] = "2020/08/05 13:26:11",
			["stack"] = "[string \"@Interface\\AddOns\\ToshUnitFrames\\libs\\oUF\\ouf.lua\"]:331: in function <Interface\\AddOns\\ToshUnitFrames\\libs\\oUF\\ouf.lua:260>\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\ToshUnitFrames\\libs\\oUF\\ouf.lua\"]:728: in function `Spawn'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\region_types/unit_single.lua\"]:28: in function `Create'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\frames.lua\"]:10: in function <Interface\\AddOns\\ToshUnitFrames\\frames.lua:5>\n[string \"=(tail call)\"]: ?\n[string \"@Interface\\AddOns\\ToshUnitFrames\\frames.lua\"]:5: in function `?'\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...rap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...rap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Scrap\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Scrap\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...face\\AddOns\\Scrap\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 423,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "...ddOns\\ToshUnitFrames\\region_types/base_container.lua:11: bad argument #1 to 'tinsert' (table expected, got nil)",
			["time"] = "2020/08/06 01:33:51",
			["stack"] = "[string \"=[C]\"]: in function `tinsert'\n[string \"@Interface\\AddOns\\ToshUnitFrames\\region_types/base_container.lua\"]:11: in function `AddChild'\n[string \"@Interface\\AddOns\\ToshUnitFramesOptions\\widgets/region_unit_single.lua\"]:21: in function <...ToshUnitFramesOptions\\widgets/region_unit_single.lua:20>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:72: in function <...ns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n[string \"@Interface\\AddOns\\CorruptionTooltips\\Libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:306: in function `Fire'\n[string \"@Interface\\AddOns\\AngryAssignments\\libs\\AceGUI-3.0-41\\widgets\\AceGUIWidget-Button.lua\"]:22: in function <...ents\\libs\\AceGUI-3.0\\widgets\\AceGUIWidget-Button.lua:19>",
			["session"] = 426,
			["counter"] = 1,
		}, -- [8]
	},
}
