
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1555,
	["errors"] = {
		{
			["message"] = "Interface\\FrameXML\\UnitPowerBarAlt.lua:110: attempt to index field 'barInfo' (a nil value)",
			["time"] = "2020/03/09 15:42:42",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\FrameXML\\UnitPowerBarAlt.lua\"]:110: in function `UnitPowerBarAlt_OnUpdate'\n[string \"*:OnUpdate\"]:1: in function <[string \"*:OnUpdate\"]:1>",
			["session"] = 1549,
			["counter"] = 30,
		}, -- [1]
		{
			["message"] = "...erface\\AddOns\\ElvUI_SLE\\modules\\minimap\\instance-Instance.lua:88: attempt to index field 'colors' (a nil value)",
			["time"] = "2020/03/10 01:40:13",
			["stack"] = "[string \"@Interface\\AddOns\\ElvUI_SLE\\modules\\minimap\\instance-Instance.lua\"]:88: in function `GetColor'\n[string \"@Interface\\AddOns\\ElvUI_SLE\\modules\\minimap\\instance-Instance.lua\"]:103: in function `?'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...sic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Accountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <...ccountant_Classic\\Libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1553,
			["counter"] = 4,
		}, -- [2]
		{
			["message"] = "[string \"--[==[ Error in 'Maelstrom' ]==] return fun...\"]:20: Usage: UnitIsUnit(\"unit\", \"otherUnit\")",
			["time"] = "2020/03/09 18:05:31",
			["stack"] = "[string \"--[==[ Error in 'Maelstrom' ]==] return function(states, event, ...)\n    local s = states[1] or {\n        show=true,\n        type=\"static\",\n        additionalProgress={\n            { -- ES/EQ min bar\n                min=60,\n                max=61,\n            },\n            { -- Cast prediction overlay\n                direction=\"forward\",\n                width=0,\n            },\n        },\n    }\n    states[1] = s\n    \n    if event == \"UNIT_POWER_UPDATE\" then\n        local uid, ptype = ...\n        if not UnitIsUnit(\"player\", uid) then return end\n        \n        s.changed=true\n        s.value=UnitPower(\"player\", Enum.PowerType.Maelstrom)\n        s.total=UnitPowerMax(\"player\", Enum.PowerType.Maelstrom)\n        \n    elseif event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local args = {...}\n        if UnitGUID(\"player\") ~= args[4] then return end\n\n        local subevent = args[2]\n\n        if subevent == \"SPELL_CAST_START\" then\n            local spellid = args[12]\n            local generation = aura_env.generation[spellid]\n            if generation then\n                s.additionalProgress[2].width = generation\n            end\n\n        elseif subevent == \"SPELL_CAST_SUCCESS\" or subevent == \"SPELL_CAST_FAILED\" then\n            s.additionalProgress[2].width = 0\n\n        end\n    end\n    \n    return true\nend\n\"]:20: in function <[string \"--[==[ Error in 'Maelstrom' ]==] return fun...\"]:1>\n[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:519: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:732: in function `ScanWithFakeEvent'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:999: in function `LoadDisplays'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:2278: in function `LoadDisplays'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:2122: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2008>\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:2219: in function `ReloadAll'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:1864: in function `ScanAll'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:1809: in function `Resume'\n[string \"@Interface\\AddOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua\"]:198: in function <...dOns\\WeakAurasOptions\\OptionsFrames\\OptionsFrame.lua:174>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\WeakAurasOptions\\WeakAurasOptions-2.16.6.lua\"]:1456: in function <...terface\\AddOns\\WeakAurasOptions\\WeakAurasOptions.lua:1454>",
			["session"] = 1555,
			["counter"] = 4,
		}, -- [3]
	},
}
