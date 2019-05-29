
DataStore_GarrisonsDB = {
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Toshpal - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Yorman - Kil'jaeden",
		["Tosh - Kil'jaeden"] = "Tosh - Kil'jaeden",
		["Toshmonk - Kil'jaeden"] = "Toshmonk - Kil'jaeden",
		["Toshaman - Kil'jaeden"] = "Toshaman - Kil'jaeden",
	},
	["global"] = {
		["Characters"] = {
			["Default.Kil'jaeden.Toshmonk"] = {
				["lastUpdate"] = 1559091052,
				["Followers"] = {
					[998] = {
						["link"] = "|cffffffff|Hgarrfollower:998:1:110:850:416:0:0:0:0:0:0:0:336|h[Brewer Almai]|h|r",
						["xp"] = 0,
						["levelXP"] = 8000,
					},
					[603] = {
						["isInactive"] = true,
						["link"] = "|cffffffff|Hgarrfollower:603:1:106:760:417:0:0:0:0:0:0:0:334|h[Taran Zhu]|h|r",
						["xp"] = 520,
						["levelXP"] = 1750,
					},
					[605] = {
						["link"] = "|cff0070dd|Hgarrfollower:605:3:110:860:412:420:0:0:682:0:0:0:335|h[Angus Ironfist]|h|r",
						["xp"] = 64744,
						["levelXP"] = 100000,
					},
					[607] = {
						["isInactive"] = true,
						["link"] = "|cffffffff|Hgarrfollower:607:1:110:760:416:0:0:0:0:0:0:0:335|h[Aegira]|h|r",
						["xp"] = 0,
						["levelXP"] = 8000,
					},
					[596] = {
						["link"] = "|cff0070dd|Hgarrfollower:596:3:110:760:417:773:0:0:414:0:0:0:335|h[Chen Stormstout]|h|r",
						["xp"] = 24024,
						["levelXP"] = 100000,
					},
					[602] = {
						["link"] = "|cff0070dd|Hgarrfollower:602:3:110:760:416:418:0:0:684:0:0:0:334|h[The Monkey King]|h|r",
						["xp"] = 56980,
						["levelXP"] = 100000,
					},
					[604] = {
						["link"] = "|cff0070dd|Hgarrfollower:604:3:110:760:412:408:0:0:685:0:0:0:334|h[Sylara Steelsong]|h|r",
						["xp"] = 28102,
						["levelXP"] = 100000,
					},
					[606] = {
						["link"] = "|cff0070dd|Hgarrfollower:606:3:110:760:417:423:0:0:682:0:0:0:336|h[Hiro]|h|r",
						["xp"] = 41226,
						["levelXP"] = 100000,
					},
					[588] = {
						["isInactive"] = true,
						["link"] = "|cffffffff|Hgarrfollower:588:1:107:760:412:0:0:0:0:0:0:0:336|h[Li Li Stormstout]|h|r",
						["xp"] = 680,
						["levelXP"] = 2000,
					},
				},
				["AvailableWarCampaignMissions"] = {
					1927, -- [1]
					1923, -- [2]
					1933, -- [3]
					2087, -- [4]
					1955, -- [5]
				},
				["AvailableOrderHallMissions"] = {
					1682, -- [1]
					1056, -- [2]
					1176, -- [3]
					1059, -- [4]
					1332, -- [5]
				},
			},
			["Default.Kil'jaeden.Tosh"] = {
				["lastUpdate"] = 1559105507,
				["AvailableWarCampaignMissions"] = {
					1926, -- [1]
					1930, -- [2]
					1879, -- [3]
					1937, -- [4]
					1942, -- [5]
				},
				["ActiveWarCampaignMissions"] = {
					1925, -- [1]
				},
				["MissionsInfo"] = {
					[1925] = {
						["successChance"] = 180,
						["followers"] = {
							1072, -- [1]
							1069, -- [2]
							1068, -- [3]
						},
					},
				},
			},
		},
		["Reference"] = {
			["MissionInfos"] = {
				[1332] = {
					["durationSeconds"] = 86400,
					["type"] = "7.0 Class Hall - Generic Missions",
					["cost"] = 200,
					["level"] = 110,
					["rewards"] = {
						{
							["title"] = "Bonus Follower XP",
							["followerXP"] = 3000,
							["tooltip"] = "+3,000 XP",
							["icon"] = "Interface\\Icons\\XPBonus_Icon",
							["name"] = "+3,000 XP",
						}, -- [1]
					},
					["typeAtlas"] = "ClassHall-CombatIcon-Desaturated",
					["iLevel"] = 760,
				},
				[1925] = {
					["durationSeconds"] = 14400,
					["type"] = "8.0 - Generic Missions",
					["cost"] = 20,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 258,
							["icon"] = 2065624,
							["currencyID"] = 1553,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-Normal",
					["iLevel"] = 800,
				},
				[1059] = {
					["durationSeconds"] = 72000,
					["type"] = "7.0 Class Hall - Treasure Missions",
					["cost"] = 100,
					["level"] = 108,
					["rewards"] = {
						{
							["itemID"] = 147348,
							["quantity"] = 1,
						}, -- [1]
					},
					["typeAtlas"] = "ClassHall-TreasureIcon-Desaturated",
					["iLevel"] = 760,
				},
				[1682] = {
					["durationSeconds"] = 115200,
					["type"] = "7.0 Class Hall - Treasure Missions - Raid",
					["cost"] = 1000,
					["level"] = 110,
					["rewards"] = {
						{
							["itemID"] = 147505,
							["quantity"] = 1,
						}, -- [1]
					},
					["typeAtlas"] = "ClassHall-TreasureIcon-Desaturated",
					["iLevel"] = 900,
				},
				[1176] = {
					["durationSeconds"] = 14400,
					["type"] = "7.0 Class Hall - Generic Missions",
					["cost"] = 100,
					["level"] = 105,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 23,
							["icon"] = 236521,
							["currencyID"] = 1533,
						}, -- [1]
					},
					["typeAtlas"] = "ClassHall-CombatIcon-Desaturated",
					["iLevel"] = 760,
				},
				[1930] = {
					["durationSeconds"] = 14400,
					["type"] = "8.0 - Generic Missions",
					["cost"] = 20,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 243,
							["icon"] = 2065624,
							["currencyID"] = 1553,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-Normal",
					["iLevel"] = 800,
				},
				[1942] = {
					["durationSeconds"] = 28800,
					["type"] = "8.0 - Generic Missions",
					["cost"] = 120,
					["rewards"] = {
						{
							["title"] = "Money Reward",
							["quantity"] = 2059700,
							["icon"] = "Interface\\Icons\\inv_misc_coin_01",
							["currencyID"] = 0,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-Normal",
					["iLevel"] = 800,
				},
				[1926] = {
					["durationSeconds"] = 28800,
					["type"] = "8.0 - Stealth",
					["cost"] = 20,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 439,
							["icon"] = 2065624,
							["currencyID"] = 1553,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-Stealth",
					["iLevel"] = 800,
				},
				[1879] = {
					["durationSeconds"] = 43200,
					["type"] = "8.0 - Generic Missions",
					["cost"] = 40,
					["rewards"] = {
						{
							["title"] = "Money Reward",
							["quantity"] = 1229600,
							["icon"] = "Interface\\Icons\\inv_misc_coin_01",
							["currencyID"] = 0,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-Normal",
					["iLevel"] = 800,
				},
				[1056] = {
					["durationSeconds"] = 25200,
					["type"] = "7.0 Class Hall - Treasure Missions",
					["cost"] = 150,
					["level"] = 109,
					["rewards"] = {
						{
							["itemID"] = 147348,
							["quantity"] = 1,
						}, -- [1]
					},
					["typeAtlas"] = "ClassHall-TreasureIcon-Desaturated",
					["iLevel"] = 760,
				},
				[1937] = {
					["durationSeconds"] = 64800,
					["type"] = "8.0 - Generic Missions",
					["cost"] = 200,
					["rewards"] = {
						{
							["itemID"] = 160053,
							["quantity"] = 4,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-Normal",
					["iLevel"] = 800,
				},
			},
			["FollowerNamesToID"] = {
				["Cacklebone"] = 458,
				["Harrison Jones"] = 465,
				["Aknor Steelbringer"] = 225,
				["Kal'gor the Honorable"] = 184,
				["Sylendra Gladesong"] = 642,
				["Ka'la"] = 153,
				["Greatmother Geyah"] = 186,
				["Broll Bearmantle"] = 641,
				["Mylune"] = 644,
				["Alexi Barov"] = 195,
				["Ahm"] = 208,
				["Silver Hand Templar"] = 849,
				["Vindicator Boros"] = 479,
				["Thisalee Crow"] = 999,
				["Ziri'ak"] = 168,
				["Void-Purged Krokul"] = 1057,
				["Lightforged Bulwark"] = 1059,
				["Goldmane the Skinner"] = 170,
				["Soulbinder Tuulani"] = 205,
				["Aegira"] = 607,
				["The Monkey King"] = 602,
				["Abu'gar"] = 209,
				["Pleasure-Bot 8000"] = 171,
				["Archdruid Hamuul Runetotem"] = 643,
				["Talon Guard Kurekk"] = 224,
				["Aeda Brightdawn"] = 207,
				["Talonpriest Ishaal"] = 218,
				["Magister Krelas"] = 154,
				["Nat Pagle"] = 202,
				["Brakk Shattershield"] = 426,
				["Ulna Thresher"] = 463,
				["Delas Moonfang"] = 756,
				["Millhouse Manastorm"] = 455,
				["Nerus Moonfang"] = 1000,
				["Naralex"] = 639,
				["Dreamgrove Treants"] = 763,
				["Dowser Goodwell"] = 581,
				["Kana'tin"] = 452,
				["Kimzee Pinchwhistle"] = 192,
				["Solar Priest Vayx"] = 582,
				["Lan'veros Furybrand"] = 338,
				["Maximillian of Northshire"] = 1001,
				["Lantresor of the Blade"] = 157,
				["Bruto"] = 176,
				["Justicar Julia Celeste"] = 755,
				["Chen Stormstout"] = 596,
				["Squad of Squires"] = 674,
				["Dagg"] = 32,
				["Vivianne"] = 216,
				["Zen'tika"] = 263,
				["Arator the Redeemer"] = 758,
				["Fen Tao"] = 467,
				["Tormmok"] = 193,
				["Lothraxion"] = 759,
				["Angus Ironfist"] = 605,
				["Karg Bloodfury"] = 459,
				["Benjamin Gibb"] = 204,
				["Weaponsmith Na'Shra"] = 179,
				["Croman"] = 177,
				["Meatball"] = 986,
				["Choluna"] = 217,
				["Aponi Brightmane"] = 757,
				["Blook"] = 189,
				["Lady Liadrin"] = 478,
				["Morketh Bladehowl"] = 155,
				["Gronnstalker Rokash"] = 183,
				["Zen'tabra"] = 640,
				["Spirit of Bony Xuk"] = 212,
				["Professor Felblast"] = 460,
				["Olin Umberhide"] = 34,
				["Phylarch the Evergreen"] = 194,
				["Shadow Hunter Rala"] = 180,
				["Hiro"] = 606,
				["Lord Maxwell Tyrosus"] = 480,
				["Dawnseeker Rukaryx"] = 462,
				["Leorajh"] = 219,
				["Kaz the Shrieker"] = 159,
				["Keepers of the Grove"] = 670,
				["Lokra"] = 185,
				["Dark Ranger Velonara"] = 453,
				["Brightwing"] = 645,
				["Mulverick"] = 182,
				["Leeroy Jenkins"] = 178,
				["Brewer Almai"] = 998,
				["Keeper Remulos"] = 646,
				["Taran Zhu"] = 603,
				["Pallas"] = 580,
				["Garona Halforcen"] = 466,
				["Penny Clobberbottom"] = 211,
				["Image of Archmage Vargoth"] = 190,
				["Sylara Steelsong"] = 604,
				["Li Li Stormstout"] = 588,
				["Oronok Torn-heart"] = 468,
				["Ariok"] = 474,
				["Ancient of War"] = 938,
			},
		},
	},
}
