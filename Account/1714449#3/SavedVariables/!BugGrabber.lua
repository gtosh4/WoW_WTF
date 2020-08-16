
BugGrabberDB = {
	["session"] = 490,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[string \"--[==[ Error in 'QA Intermission Teller':'c...\"]:47: attempt to concatenate local 'mark' (a nil value)",
			["time"] = "2020/08/15 22:50:53",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.18.2.lua\"]:6544: in function `RunCustomTextFunc'\n[string \"@Interface\\AddOns\\WeakAuras\\RegionTypes\\Text.lua\"]:189: in function `Update'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.18.2.lua\"]:6319: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:6318>\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.18.2.lua\"]:6404: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:6371>\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.18.2.lua\"]:6488: in function `UpdatedTriggerState'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:742: in function `ScanEventsInternal'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:698: in function `ScanEvents'\n[string \"--[==[ Error in 'QA Intermission Teller' ]==] return function(event, ...)\n    \n    local arg1, arg2, arg3 = ...\n    if (event == \"ENCOUNTER_START\") then\n        aura_env.assignments = {}\n        aura_env.raid = {}\n    end\n    \n    if (event == \"COMBAT_LOG_EVENT_UNFILTERED\") then\n        local subevent = select(2, ...)\n        local spellId = select(12, ...)\n        local destName = select(9, ...)\n        \n        if (subevent == \"SPELL_AURA_APPLIED\" and aura_env.decrees[spellId]) then\n            local decree = aura_env.decrees[spellId]\n            \n            aura_env.raid[destName] = aura_env.raid[destName] or {}\n            aura_env.raid[destName][decree] = true\n            if(not aura_env.fired) then\n                aura_env.fired = true    \n                C_Timer.After(.5, function() WeakAuras.ScanEvents(\"DECREE_TRIGGER_TELLER\")end)\n            end\n        end\n        \n    end\n    \n    if (event == \"DECREE_TRIGGER_TELLER\") then\n        return true\n    end\n    \nend\n\n\n\"]:21: in function <[string \"--[==[ Error in 'QA Intermission Teller' ]=...\"]:21>",
			["session"] = 488,
			["counter"] = 1,
		}, -- [1]
	},
}
