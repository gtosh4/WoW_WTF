
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
				["lastUpdate"] = 1564887031,
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
					1921, -- [1]
					1931, -- [2]
					1932, -- [3]
					1949, -- [4]
					2083, -- [5]
				},
				["AvailableOrderHallMissions"] = {
					1056, -- [1]
					1060, -- [2]
					1178, -- [3]
					1332, -- [4]
					1683, -- [5]
				},
			},
			["Default.Kil'jaeden.Tosh"] = {
				["lastUpdate"] = 1567044230,
				["AvailableWarCampaignMissions"] = {
					1921, -- [1]
					1927, -- [2]
					1929, -- [3]
					1955, -- [4]
					2084, -- [5]
					2150, -- [6]
				},
				["ActiveWarCampaignMissions"] = {
					1953, -- [1]
				},
				["MissionsInfo"] = {
					[1953] = {
						["successChance"] = 200,
						["followers"] = {
							1069, -- [1]
							1182, -- [2]
							1063, -- [3]
						},
					},
				},
			},
		},
		["Reference"] = {
			["MissionInfos"] = {
				[1332] = {
					["durationSeconds"] = 43200,
					["type"] = "7.0 Class Hall - Generic Missions",
					["cost"] = 200,
					["iLevel"] = 760,
					["level"] = 110,
					["typeAtlas"] = "ClassHall-CombatIcon-Desaturated",
					["rewards"] = {
						{
							["title"] = "Bonus Follower XP",
							["followerXP"] = 3000,
							["tooltip"] = "+3,000 XP",
							["icon"] = "Interface\\Icons\\XPBonus_Icon",
							["name"] = "+3,000 XP",
						}, -- [1]
					},
				},
				[1921] = {
					["durationSeconds"] = 14400,
					["type"] = "8.0 - Generic Missions",
					["cost"] = 40,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 251,
							["icon"] = 2065624,
							["currencyID"] = 1553,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-Normal",
					["iLevel"] = 800,
				},
				[1955] = {
					["durationSeconds"] = 144000,
					["type"] = "8.0 - Long Campaign",
					["cost"] = 40,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 428,
							["icon"] = 2065624,
							["currencyID"] = 1553,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-LongCampaign",
					["iLevel"] = 800,
				},
				[1929] = {
					["durationSeconds"] = 43200,
					["type"] = "8.0 - Generic Missions",
					["cost"] = 40,
					["rewards"] = {
						{
							["title"] = "Money Reward",
							["quantity"] = 1326600,
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
					["cost"] = 300,
					["iLevel"] = 760,
					["level"] = 109,
					["typeAtlas"] = "ClassHall-TreasureIcon-Desaturated",
					["rewards"] = {
						{
							["itemID"] = 147348,
							["quantity"] = 1,
						}, -- [1]
					},
				},
				[1060] = {
					["durationSeconds"] = 43200,
					["type"] = "7.0 Class Hall - Treasure Missions",
					["cost"] = 150,
					["iLevel"] = 760,
					["level"] = 109,
					["typeAtlas"] = "ClassHall-TreasureIcon-Desaturated",
					["rewards"] = {
						{
							["itemID"] = 147348,
							["quantity"] = 1,
						}, -- [1]
					},
				},
				[2150] = {
					["durationSeconds"] = 86400,
					["type"] = "8.2 - Deep Sea",
					["cost"] = 80,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 6,
							["icon"] = 463858,
							["currencyID"] = 1721,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-DeepSea",
					["iLevel"] = 800,
				},
				[1683] = {
					["durationSeconds"] = 57600,
					["type"] = "7.0 Class Hall - Treasure Missions - Raid",
					["cost"] = 1000,
					["iLevel"] = 900,
					["level"] = 110,
					["typeAtlas"] = "ClassHall-TreasureIcon-Desaturated",
					["rewards"] = {
						{
							["itemID"] = 147509,
							["quantity"] = 1,
						}, -- [1]
					},
				},
				[1927] = {
					["durationSeconds"] = 14400,
					["type"] = "8.0 - Generic Missions",
					["cost"] = 20,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 250,
							["icon"] = 2032592,
							["currencyID"] = 1579,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-Normal",
					["iLevel"] = 800,
				},
				[2084] = {
					["durationSeconds"] = 28800,
					["type"] = "8.0 - Quick Strike",
					["cost"] = 40,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 375,
							["icon"] = 2032597,
							["currencyID"] = 1595,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-QuickStrike",
					["iLevel"] = 800,
				},
				[1178] = {
					["durationSeconds"] = 7200,
					["type"] = "7.0 Class Hall - Generic Missions",
					["cost"] = 150,
					["iLevel"] = 760,
					["level"] = 102,
					["typeAtlas"] = "ClassHall-CombatIcon-Desaturated",
					["rewards"] = {
						{
							["icon"] = 236521,
							["quantity"] = 22,
							["title"] = "Currency Reward",
							["currencyID"] = 1533,
						}, -- [1]
					},
				},
				[1953] = {
					["durationSeconds"] = 43200,
					["type"] = "8.0 - Quick Strike",
					["cost"] = 40,
					["rewards"] = {
						{
							["title"] = "Currency Reward",
							["quantity"] = 474,
							["icon"] = 2065624,
							["currencyID"] = 1553,
						}, -- [1]
					},
					["level"] = 120,
					["typeAtlas"] = "BfAMission-Icon-QuickStrike",
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
				["Ancient of War"] = 938,
				["Ariok"] = 474,
				["Oronok Torn-heart"] = 468,
				["Kimzee Pinchwhistle"] = 192,
				["Li Li Stormstout"] = 588,
				["Lan'veros Furybrand"] = 338,
				["Maximillian of Northshire"] = 1001,
				["Lantresor of the Blade"] = 157,
				["Bruto"] = 176,
				["Garona Halforcen"] = 466,
				["Pallas"] = 580,
				["Chen Stormstout"] = 596,
				["Dagg"] = 32,
				["Zen'tika"] = 263,
				["Vivianne"] = 216,
				["Arator the Redeemer"] = 758,
				["Keeper Remulos"] = 646,
				["Tormmok"] = 193,
				["Fen Tao"] = 467,
				["Angus Ironfist"] = 605,
				["Brewer Almai"] = 998,
				["Benjamin Gibb"] = 204,
				["Weaponsmith Na'Shra"] = 179,
				["Croman"] = 177,
				["Morketh Bladehowl"] = 155,
				["Choluna"] = 217,
				["Mulverick"] = 182,
				["Brightwing"] = 645,
				["Lady Liadrin"] = 478,
				["Leeroy Jenkins"] = 178,
				["Gronnstalker Rokash"] = 183,
				["Zen'tabra"] = 640,
				["Spirit of Bony Xuk"] = 212,
				["Dark Ranger Velonara"] = 453,
				["Lokra"] = 185,
				["Keepers of the Grove"] = 670,
				["Kaz the Shrieker"] = 159,
				["Hiro"] = 606,
				["Dawnseeker Rukaryx"] = 462,
				["Lord Maxwell Tyrosus"] = 480,
				["Leorajh"] = 219,
				["Shadow Hunter Rala"] = 180,
				["Phylarch the Evergreen"] = 194,
				["Olin Umberhide"] = 34,
				["Professor Felblast"] = 460,
				["Blook"] = 189,
				["Aponi Brightmane"] = 757,
				["Meatball"] = 986,
				["Karg Bloodfury"] = 459,
				["Lothraxion"] = 759,
				["Taran Zhu"] = 603,
				["Squad of Squires"] = 674,
				["Justicar Julia Celeste"] = 755,
				["Penny Clobberbottom"] = 211,
				["Image of Archmage Vargoth"] = 190,
				["Sylara Steelsong"] = 604,
				["Solar Priest Vayx"] = 582,
				["Kana'tin"] = 452,
				["Dowser Goodwell"] = 581,
				["Dreamgrove Treants"] = 763,
			},
		},
	},
}
