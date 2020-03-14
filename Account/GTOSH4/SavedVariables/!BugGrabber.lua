
BugGrabberDB = {
	["session"] = 2136,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'WorldFrame:SetPoint()'.",
			["time"] = "2020/03/12 15:29:43",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetPoint'\n[string \"--[==[ Error in 'Viewport' ]==] return function()\n    local offset = aura_env.config.offset\n    C_Timer.After(1, function()\n            WorldFrame:SetPoint(\"BOTTOMRIGHT\", 0, offset)\n    end)\nend\"]:4: in function <[string \"--[==[ Error in 'Viewport' ]==] return func...\"]:3>",
			["session"] = 2129,
			["counter"] = 1,
		}, -- [1]
	},
}
