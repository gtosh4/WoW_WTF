
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1589,
	["errors"] = {
		{
			["message"] = "[string \"--[==[ Error in 'Sanity Bar' ]==] return fu...\"]:40: attempt to index field '?' (a nil value)",
			["time"] = "2020/03/17 22:08:14",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:519: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 1582,
			["counter"] = 12,
		}, -- [1]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'WorldFrame:SetPoint()'.",
			["time"] = "2020/03/19 19:07:03",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"--[==[ Error in 'Viewport' ]==] return function()\nWorldFrame:SetPoint(\"BOTTOMRIGHT\", 0, aura_env.config.offset)\nend\"]:2: in function <[string \"--[==[ Error in 'Viewport' ]==] return func...\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:548: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 1586,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'bdCore' tried to call the protected function 'UNKNOWN()'.",
			["time"] = "2020/03/19 20:20:23",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\bdCore\\modules\\interrupted-Interrupted.lua\"]:16: in function <Interface\\AddOns\\bdCore\\modules\\interrupted.lua:8>",
			["session"] = 1588,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua:454: doesnt exist!",
			["time"] = "2020/03/19 20:28:19",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua\"]:454: in function `HandleDropDownBox'\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\skins\\Blizzard\\Communities-Communities.lua\"]:222: in function <...\\AddOns\\ElvUI\\Modules\\skins\\Blizzard\\Communities.lua:85>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua\"]:1320: in function `CallLoadedAddon'\n[string \"@Interface\\AddOns\\ElvUI\\Modules\\skins\\Skins.lua\"]:1261: in function `?'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>\n[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:457: in function `UIParentLoadAddOn'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:707: in function <Interface\\FrameXML\\UIParent.lua:706>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `Communities_LoadUI'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:973: in function `ToggleCommunitiesFrame'\n[string \"@Interface\\FrameXML\\UIParent.lua\"]:828: in function `ToggleGuildFrame'\n[string \"TOGGLEGUILDTAB\"]:1: in function <[string \"TOGGLEGUILDTAB\"]:1>",
			["session"] = 1588,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[string \"--[==[ Error in 'Maelstrom' ]==] return fun...\"]:20: Usage: UnitIsUnit(\"unit\", \"otherUnit\")",
			["time"] = "2020/03/18 21:28:07",
			["stack"] = "[string \"--[==[ Error in 'Maelstrom' ]==] return function(states, event, ...) -- UNIT_POWER_UPDATE,PLAYER_ENTERING_WORLD,PLAYER_SPECIALIZATION_CHANGED,COMBAT_LOG_EVENT_UNFILTERED\n    local s = states[1] or {\n        show=true,\n        progressType=\"static\",\n        additionalProgress={\n            { -- ES/EQ min bar\n                min=60,\n                max=61,\n            },\n            { -- Cast prediction overlay\n                direction=\"forward\",\n                width=0,\n            },\n        },\n    }\n    states[1] = s\n    \n    if event == \"UNIT_POWER_UPDATE\" or event == \"PLAYER_ENTERING_WORLD\" or event == \"PLAYER_SPECIALIZATION_CHANGED\" then\n        local uid, ptype = ...\n        if uid and not UnitIsUnit(\"player\", uid) then return end\n        \n        ViragDevTool_AddData({e=event, args={...}, s=s}, \"maelstrom update\")\n        \n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local args = {...}\n        if UnitGUID(\"player\") ~= args[4] then return end\n        \n        local subevent = args[2]\n        \n        if subevent == \"SPELL_CAST_START\" then\n            local spellid = args[12]\n            local generation = aura_env.generation[spellid]\n            if generation then\n                s.additionalProgress[2].width = generation\n            end\n            \n        elseif subevent == \"SPELL_CAST_SUCCESS\" or subevent == \"SPELL_CAST_FAILED\" then\n            s.additionalProgress[2].width = 0\n            \n        end\n        ViragDevTool_AddData({e=event, args={...}, s=s}, \"maelstrom cast\")\n    else\n        return\n    end\n    \n    s.changed=true\n    s.value=UnitPower(\"player\", Enum.PowerType.Maelstrom)\n    s.total=UnitPowerMax(\"player\", Enum.PowerType.Maelstrom)\n    return true\nend\"]:20: in function <[string \"--[==[ Error in 'Maelstrom' ]==] return fun...\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:519: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 1589,
			["counter"] = 7,
		}, -- [5]
	},
}
