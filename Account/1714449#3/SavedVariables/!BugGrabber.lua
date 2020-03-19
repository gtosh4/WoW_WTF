
BugGrabberDB = {
	["session"] = 1584,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[string \"--[==[ Error in 'Sanity Bar' ]==] return fu...\"]:40: attempt to index field '?' (a nil value)",
			["time"] = "2020/03/17 22:08:14",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:519: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 1582,
			["counter"] = 12,
		}, -- [1]
		{
			["message"] = "[string \"--[==[ Error in 'Maelstrom' ]==] return fun...\"]:20: Usage: UnitIsUnit(\"unit\", \"otherUnit\")",
			["time"] = "2020/03/18 21:28:07",
			["stack"] = "[string \"--[==[ Error in 'Maelstrom' ]==] return function(states, event, ...) -- UNIT_POWER_UPDATE,PLAYER_ENTERING_WORLD,PLAYER_SPECIALIZATION_CHANGED,COMBAT_LOG_EVENT_UNFILTERED\n    local s = states[1] or {\n        show=true,\n        progressType=\"static\",\n        additionalProgress={\n            { -- ES/EQ min bar\n                min=60,\n                max=61,\n            },\n            { -- Cast prediction overlay\n                direction=\"forward\",\n                width=0,\n            },\n        },\n    }\n    states[1] = s\n    \n    if event == \"UNIT_POWER_UPDATE\" or event == \"PLAYER_ENTERING_WORLD\" or event == \"PLAYER_SPECIALIZATION_CHANGED\" then\n        local uid, ptype = ...\n        if uid and not UnitIsUnit(\"player\", uid) then return end\n        \n        ViragDevTool_AddData({e=event, args={...}, s=s}, \"maelstrom update\")\n        \n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local args = {...}\n        if UnitGUID(\"player\") ~= args[4] then return end\n        \n        local subevent = args[2]\n        \n        if subevent == \"SPELL_CAST_START\" then\n            local spellid = args[12]\n            local generation = aura_env.generation[spellid]\n            if generation then\n                s.additionalProgress[2].width = generation\n            end\n            \n        elseif subevent == \"SPELL_CAST_SUCCESS\" or subevent == \"SPELL_CAST_FAILED\" then\n            s.additionalProgress[2].width = 0\n            \n        end\n        ViragDevTool_AddData({e=event, args={...}, s=s}, \"maelstrom cast\")\n    else\n        return\n    end\n    \n    s.changed=true\n    s.value=UnitPower(\"player\", Enum.PowerType.Maelstrom)\n    s.total=UnitPowerMax(\"player\", Enum.PowerType.Maelstrom)\n    return true\nend\"]:20: in function <[string \"--[==[ Error in 'Maelstrom' ]==] return fun...\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:519: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:665: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:626: in function `ScanEvents'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:759: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:750>",
			["session"] = 1584,
			["counter"] = 2,
		}, -- [2]
	},
}
