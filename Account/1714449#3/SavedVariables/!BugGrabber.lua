
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 1643,
	["errors"] = {
		{
			["message"] = "[string \"--[==[ Error in '06 Umbral Eruption Move' ]...\"]:42: attempt to index local 's' (a nil value)",
			["time"] = "2020/04/01 02:26:17",
			["stack"] = "[string \"=[C]\"]: in function `xpcall'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:519: in function <Interface\\AddOns\\WeakAuras\\GenericTrigger.lua:512>\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:732: in function `ScanWithFakeEvent'\n[string \"@Interface\\AddOns\\WeakAuras\\GenericTrigger.lua\"]:999: in function `LoadDisplays'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:2278: in function `LoadDisplays'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:2122: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2008>\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:2156: in function `ScanForLoads'\n[string \"@Interface\\AddOns\\WeakAuras\\WeakAuras-2.16.6.lua\"]:2204: in function <Interface\\AddOns\\WeakAuras\\WeakAuras.lua:2202>",
			["session"] = 1643,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "[string \"--[==[ Error in '06 Umbral Eruption Move' ]...\"]:43: attempt to index global 'aura_env' (a nil value)",
			["time"] = "2020/04/01 02:26:27",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"--[==[ Error in '06 Umbral Eruption Move' ]==] return function(allstates, event, ...) --ENCOUNTER_START,ENCOUNTER_END,UMBRAL_EXPLOSION\n    local s\n    if event == 'ENCOUNTER_START' and ... then\n        aura_env.count = 0\n        aura_env.start_time = GetTime()\n        WeakAuras.ScanEvents('UMBRAL_EXPLOSION', aura_env.start_time)\n        return\n        \n    elseif event == 'ENCOUNTER_END' and ... then\n        aura_env.start_time = nil\n        s = {\n            show = false,\n            changed = true,\n        }\n        \n    elseif event == 'UMBRAL_EXPLOSION' and ... then\n        aura_env.count = aura_env.count + 1\n        if aura_env.count > 14 then \n            s = {\n                show = false,\n                changed = true,\n            }\n        else\n            local next_eruption = aura_env.timings[aura_env.count]\n            local fight_time = GetTime() - aura_env.start_time\n            local duration = next_eruption - fight_time\n            \n            s = {\n                show = true,\n                changed = true,\n                autoHide = true,\n                \n                progressType = \"timed\",\n                duration = duration,\n                expirationTime = aura_env.start_time + next_eruption,\n                stacks = aura_env.count,\n            }\n        end\n    end\n    if s then allstates[1] = s end\n    \n    if s.show and s.duration then\n        C_Timer.After(s.duration, function() WeakAuras.ScanEvents('UMBRAL_EXPLOSION', aura_env.start_time) end)\n    end\n    \n    return true\nend\n\n\n\"]:43: in function <[string \"--[==[ Error in '06 Umbral Eruption Move' ]...\"]:43>",
			["session"] = 1643,
			["counter"] = 1,
		}, -- [2]
	},
}
