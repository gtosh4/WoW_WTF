
ToshAssignmentsDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Default",
		["Yuumi - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Default",
		["Koutetsu - Frostwolf"] = "Default",
		["Tosku - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["encounters"] = {
				[2142] = {
					["T"] = {
						["enabled"] = true,
						["encounterId"] = 2142,
						["name"] = "T",
						["assignments"] = {
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Assignment 1",
								["trigger"] = {
									["spell"] = {
									},
									["time"] = {
										["encounterTime"] = 20,
									},
									["type"] = "time",
								},
								["actions"] = {
									{
										["id"] = 1,
										["type"] = "bar",
										["marker"] = {
										},
										["bar"] = {
											["icon"] = "marker8",
											["duration"] = 15,
										},
									}, -- [1]
								},
								["id"] = 1,
							}, -- [1]
						},
					},
				},
				[2194] = {
					["Test"] = {
						["enabled"] = true,
						["encounterId"] = 2194,
						["name"] = "Test",
						["assignments"] = {
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Revival",
								["trigger"] = {
									["spell"] = {
									},
									["time"] = {
										["encounterTime"] = 15,
									},
									["type"] = "time",
								},
								["actions"] = {
									{
										["id"] = 1,
										["type"] = "bar",
										["marker"] = {
										},
										["bar"] = {
											["icon"] = "marker6",
										},
									}, -- [1]
								},
								["id"] = 1,
							}, -- [1]
						},
					},
				},
				[2147] = {
					["Test"] = {
						["enabled"] = true,
						["encounterId"] = 2147,
						["name"] = "Test",
						["assignments"] = {
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "TEST",
								["trigger"] = {
									["spell"] = {
									},
									["time"] = {
										["encounterTime"] = 15,
									},
									["type"] = "time",
								},
								["actions"] = {
									{
										["id"] = 1,
										["type"] = "bar",
										["marker"] = {
										},
										["bar"] = {
											["icon"] = "marker4",
										},
									}, -- [1]
								},
								["id"] = 1,
							}, -- [1]
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Test2",
								["trigger"] = {
									["spell"] = {
										["spellId"] = 272506,
									},
									["time"] = {
									},
									["type"] = "spell",
								},
								["actions"] = {
									{
										["id"] = 1,
										["type"] = "bar",
										["marker"] = {
										},
										["bar"] = {
										},
									}, -- [1]
								},
								["id"] = 2,
							}, -- [2]
						},
					},
				},
				[1706] = {
					["Test"] = {
						["assignments"] = {
							{
								["players"] = {
									"Yuumi", -- [1]
								},
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "FB First",
								["trigger"] = {
									["before"] = 3,
									["type"] = "spell",
									["spellId"] = 204471,
									["time"] = {
									},
									["eventNumber"] = "1",
									["spell"] = {
										["spellId"] = 204471,
									},
								},
								["actions"] = {
									{
										["countdown"] = true,
										["type"] = "bar",
										["name"] = "Action 1",
										["id"] = 1,
										["marker"] = {
											["marks"] = {
											},
										},
										["bar"] = {
											["icon"] = "marker2",
											["duration"] = 13,
										},
									}, -- [1]
									{
										["id"] = 2,
										["type"] = "marker",
										["marker"] = {
											["marks"] = {
												["Yuumi"] = "marker2",
											},
										},
										["bar"] = {
										},
									}, -- [2]
									{
										["id"] = 3,
										["type"] = "countdown",
										["marker"] = {
										},
										["bar"] = {
										},
									}, -- [3]
								},
								["id"] = 1,
							}, -- [1]
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Skorpid Assignment1",
								["id"] = 2,
								["actions"] = {
									{
										["marker"] = {
											["marks"] = {
											},
										},
										["type"] = "bar",
										["id"] = 1,
										["bar"] = {
											["icon"] = "auto",
											["duration"] = 10,
										},
									}, -- [1]
									{
										["marker"] = {
											["marks"] = {
												["Yuumi"] = "marker5",
												["NotYuumi2"] = "marker4",
											},
										},
										["type"] = "marker",
										["id"] = 2,
										["bar"] = {
										},
									}, -- [2]
								},
								["trigger"] = {
									["before"] = 0,
									["type"] = "spell",
									["spellId"] = 204372,
									["time"] = {
									},
									["eventNumber"] = "2",
									["spell"] = {
										["spellId"] = 204372,
									},
								},
							}, -- [2]
							{
								["players"] = {
									"NotYuumi", -- [1]
								},
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Skorpid Assignment2",
								["id"] = 3,
								["actions"] = {
									{
										["marker"] = {
										},
										["type"] = "bar",
										["id"] = 1,
										["bar"] = {
											["icon"] = "auto",
										},
									}, -- [1]
									{
										["id"] = 2,
										["type"] = "marker",
										["marker"] = {
											["marks"] = {
												["NotYuumi"] = "marker6",
											},
										},
										["bar"] = {
										},
									}, -- [2]
								},
								["trigger"] = {
									["before"] = 0,
									["type"] = "spell",
									["spellId"] = 204372,
									["time"] = {
									},
									["eventNumber"] = "*",
									["spell"] = {
										["spellId"] = 204372,
									},
								},
							}, -- [3]
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "FB 2-3",
								["trigger"] = {
									["before"] = 3,
									["type"] = "spell",
									["spellId"] = 204471,
									["time"] = {
									},
									["eventNumber"] = "2-3",
									["spell"] = {
										["spellId"] = 204471,
									},
								},
								["actions"] = {
									{
										["marker"] = {
										},
										["type"] = "bar",
										["id"] = 1,
										["bar"] = {
										},
									}, -- [1]
								},
								["id"] = 4,
							}, -- [4]
							{
								["players"] = {
									"Yuumi", -- [1]
								},
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Revival",
								["trigger"] = {
									["type"] = "time",
									["time"] = {
										["encounterTime"] = 15,
									},
									["encounterTime"] = 30,
									["eventNumber"] = "*",
									["spell"] = {
									},
								},
								["actions"] = {
									{
										["marker"] = {
										},
										["type"] = "bar",
										["id"] = 1,
										["bar"] = {
											["icon"] = "marker1",
											["duration"] = 10,
										},
									}, -- [1]
								},
								["id"] = 5,
							}, -- [5]
						},
						["encounterId"] = 1706,
						["name"] = "Test",
						["showOthers"] = false,
						["enabled"] = true,
					},
				},
				[1731] = {
					["Test"] = {
						["enabled"] = true,
						["encounterId"] = 1731,
						["name"] = "Test",
						["assignments"] = {
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "Assignment 1",
								["id"] = 1,
								["actions"] = {
									{
										["marker"] = {
										},
										["type"] = "bar",
										["id"] = 1,
										["bar"] = {
										},
									}, -- [1]
								},
								["trigger"] = {
									["spell"] = {
									},
									["time"] = {
									},
									["type"] = "spell",
								},
							}, -- [1]
						},
					},
				},
				[2168] = {
					["Test"] = {
						["enabled"] = true,
						["encounterId"] = 2168,
						["name"] = "Test",
						["assignments"] = {
							{
								["removeOptions"] = nil --[[ skipped inline function ]],
								["name"] = "TEST BAR",
								["trigger"] = {
									["spell"] = {
									},
									["time"] = {
										["encounterTime"] = 20,
									},
									["type"] = "time",
								},
								["actions"] = {
									{
										["id"] = 1,
										["type"] = "bar",
										["marker"] = {
										},
										["bar"] = {
											["icon"] = "marker1",
											["duration"] = 15,
										},
									}, -- [1]
								},
								["id"] = 1,
							}, -- [1]
						},
					},
				},
			},
		},
	},
}
