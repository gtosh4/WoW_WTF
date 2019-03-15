
TomTomDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Yuumi - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["block"] = {
				["enable"] = false,
			},
		},
	},
}
TomTomWaypoints = nil
TomTomWaypointsM = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Zaemme - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
		["Toshaman - Kil'jaeden"] = "Toshaman - Kil'jaeden",
		["Yuumi - Kil'jaeden"] = "Yuumi - Kil'jaeden",
	},
	["profiles"] = {
		["Zaemme - Kil'jaeden"] = {
		},
		["Yorman - Kil'jaeden"] = {
		},
		["Tosh - Kil'jaeden"] = {
		},
		["Toshaman - Kil'jaeden"] = {
			[864] = {
				["864:594727873.80219:611559748.6496:Azerite Madness"] = {
					864, -- [1]
					0.594727873802185, -- [2]
					0.611559748649597, -- [3]
					["minimap"] = true,
					["cleardistance"] = 10,
					["title"] = "Azerite Madness",
					["arrivaldistance"] = 15,
					["callbacks"] = {
						["distance"] = {
							[10] = nil --[[ skipped inline function ]],
							[15] = nil --[[ skipped inline function ]],
						},
						["world"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
						["minimap"] = {
							["onclick"] = nil --[[ skipped inline function ]],
							["tooltip_update"] = nil --[[ skipped inline function ]],
							["tooltip_show"] = nil --[[ skipped inline function ]],
						},
					},
					["crazy"] = true,
					["persistent"] = true,
					["world"] = true,
				},
			},
		},
		["Yuumi - Kil'jaeden"] = {
			[629] = {
				["629:488300000:420800000:Page 9"] = {
					629, -- [1]
					0.4883, -- [2]
					0.4208, -- [3]
					["arrivaldistance"] = 15,
					["callbacks"] = {
						["distance"] = {
						},
						["minimap"] = {
						},
						["world"] = {
						},
					},
					["persistent"] = true,
					["desc"] = "Page 9",
					["silent"] = true,
					["cleardistance"] = 10,
					["title"] = "Page 9",
					["crazy"] = true,
					["minimap"] = true,
					["world"] = true,
				},
			},
		},
	},
}
