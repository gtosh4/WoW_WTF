
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Yuumi - Kil'jaeden"] = "Yuumi - Kil'jaeden",
	},
	["profiles"] = {
		["Yuumi - Kil'jaeden"] = {
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Windwalker"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc",
					["builtIn"] = true,
					["date"] = 20181212.2313,
					["spec"] = 269,
					["desc"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# December 12, 2018 - 23:12\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).",
					["lists"] = {
						["cd"] = {
							{
								["action"] = "invoke_xuen",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "lustrous_golden_plumage",
								["action"] = "lustrous_golden_plumage",
							}, -- [2]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & energy.time_to_max >= 0.5",
								["action"] = "arcane_torrent",
							}, -- [6]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 9",
								["action"] = "touch_of_death",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.storm_earth_and_fire.charges = 2 || ( cooldown.fists_of_fury.remains <= 6 & chi >= 3 & cooldown.rising_sun_kick.remains <= 1 ) || target.time_to_die <= 15",
								["action"] = "storm_earth_and_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains <= 2 || target.time_to_die <= 12",
								["action"] = "serenity",
							}, -- [12]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.serenity.enabled || ! talent.fist_of_the_white_tiger.enabled )",
								["action"] = "chi_burst",
							}, -- [6]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [7]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "( talent.whirling_dragon_punch.enabled & cooldown.whirling_dragon_punch.remains < 5 ) & cooldown.fists_of_fury.remains > 3",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.tiger_palm & chi <= 1 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [3]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & ( ( ( chi > 3 || cooldown.fists_of_fury.remains > 6 ) & ( chi >= 5 || cooldown.fists_of_fury.remains > 2 ) ) || energy.time_to_max <= 3 )",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3",
								["action"] = "chi_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2 & ( ! talent.hit_combo.enabled || ! prev_gcd.1.tiger_palm )",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.blackout_kick & ( buff.bok_proc.up || ( talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi < 4 ) )",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [11]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 || prev_gcd.1.spinning_crane_kick",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.bloodlust.up & prev_gcd.1.rising_sun_kick ) || buff.serenity.remains < 1 || ( active_enemies > 1 & active_enemies < 5 )",
								["action"] = "fists_of_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & ( active_enemies >= 3 || ( active_enemies = 2 & prev_gcd.1.blackout_kick ) )",
								["action"] = "spinning_crane_kick",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["st"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "chi >= 5",
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.spinning_crane_kick & buff.dance_of_chiji.up",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & active_enemies > 1",
								["action"] = "rushing_jade_wind",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 2",
								["action"] = "fist_of_the_white_tiger",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.blackout_kick & ( cooldown.rising_sun_kick.remains > 3 || chi >= 3 ) & ( cooldown.fists_of_fury.remains > 4 || chi >= 4 || ( chi = 2 & prev_gcd.1.tiger_palm ) ) & buff.swift_roundhouse.stack < 2",
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 || chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.tiger_palm & chi.max - chi >= 2",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [12]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["interval"] = "90",
								["pct_health"] = "0.5",
								["action"] = "touch_of_karma",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || buff.storm_earth_and_fire.up || ( ! talent.serenity.enabled & trinket.proc.agility.react ) || buff.bloodlust.react || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.serenity.up",
								["list_name"] = "serenity",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 2 & ! prev_gcd.1.tiger_palm",
								["action"] = "tiger_palm",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cd",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies < 3",
								["list_name"] = "st",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "aoe",
							}, -- [10]
						},
					},
					["version"] = 20181212.2313,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nWARNING:  The import for 'st' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - swift_roundhouse\n\nImported 6 action lists.\n",
					["author"] = "SimC",
					["profile"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# December 12, 2018 - 23:12\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst,if=(!talent.serenity.enabled||!talent.fist_of_the_white_tiger.enabled)\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\n# Touch of Karma on cooldown, if Good Karma is enabled equal to 100% of maximum health\nactions+=/touch_of_karma,interval=90,pct_health=0.5\n# Potion if Serenity or Storm, Earth, and Fire are up or you are running serenity and a main stat trinket procs, or you are under the effect of bloodlust, or target time to die is greater or equal to 60\nactions+=/potion,if=buff.serenity.up||buff.storm_earth_and_fire.up||(!talent.serenity.enabled&trinket.proc.agility.react)||buff.bloodlust.react||target.time_to_die<=60\nactions+=/call_action_list,name=serenity,if=buff.serenity.up\nactions+=/fist_of_the_white_tiger,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=3\nactions+=/tiger_palm,cycle_targets=1,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=2&!prev_gcd.1.tiger_palm\nactions+=/call_action_list,name=cd\n# Call the ST action list if there are 2 or less enemies\nactions+=/call_action_list,name=st,if=active_enemies<3\n# Call the AoE action list if there are 3 or more enemies\nactions+=/call_action_list,name=aoe,if=active_enemies>=3\n\n# Actions.AoE is intended for use with Hectic_Add_Cleave and currently needs to be optimized\nactions.aoe=rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch.enabled&cooldown.whirling_dragon_punch.remains<5)&cooldown.fists_of_fury.remains>3\nactions.aoe+=/whirling_dragon_punch\nactions.aoe+=/energizing_elixir,if=!prev_gcd.1.tiger_palm&chi<=1&energy<50\nactions.aoe+=/fists_of_fury\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions.aoe+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(((chi>3||cooldown.fists_of_fury.remains>6)&(chi>=5||cooldown.fists_of_fury.remains>2))||energy.time_to_max<=3)\nactions.aoe+=/chi_burst,if=chi<=3\nactions.aoe+=/fist_of_the_white_tiger,if=chi.max-chi>=3\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(!talent.hit_combo.enabled||!prev_gcd.1.tiger_palm)\nactions.aoe+=/chi_wave\n# actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(buff.bok_proc.up||(talent.hit_combo.enabled&prev_gcd.1.tiger_palm&chi<4))\n\n# Cooldowns\nactions.cd=invoke_xuen_the_white_tiger\nactions.cd+=/use_item,name=lustrous_golden_plumage\nactions.cd+=/use_items\nactions.cd+=/blood_fury\nactions.cd+=/berserking\n# Use Arcane Torrent if you are missing at least 1 Chi and won't cap energy within 0.5 seconds\nactions.cd+=/arcane_torrent,if=chi.max-chi>=1&energy.time_to_max>=0.5\nactions.cd+=/lights_judgment\nactions.cd+=/fireblood\nactions.cd+=/ancestral_call\nactions.cd+=/touch_of_death,if=target.time_to_die>9\nactions.cd+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||(cooldown.fists_of_fury.remains<=6&chi>=3&cooldown.rising_sun_kick.remains<=1)||target.time_to_die<=15\nactions.cd+=/serenity,if=cooldown.rising_sun_kick.remains<=2||target.time_to_die<=12\n\n# Serenity priority\nactions.serenity=rising_sun_kick,cycle_targets=1,if=active_enemies<3||prev_gcd.1.spinning_crane_kick\nactions.serenity+=/fists_of_fury,if=(buff.bloodlust.up&prev_gcd.1.rising_sun_kick)||buff.serenity.remains<1||(active_enemies>1&active_enemies<5)\nactions.serenity+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(active_enemies>=3||(active_enemies=2&prev_gcd.1.blackout_kick))\nactions.serenity+=/blackout_kick,cycle_targets=1\n\nactions.st=whirling_dragon_punch\nactions.st+=/rising_sun_kick,cycle_targets=1,if=chi>=5\nactions.st+=/fists_of_fury\nactions.st+=/rising_sun_kick,cycle_targets=1\nactions.st+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&buff.dance_of_chiji.up\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.st+=/fist_of_the_white_tiger,if=chi<=2\nactions.st+=/energizing_elixir,if=chi<=3&energy<50\nactions.st+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(cooldown.rising_sun_kick.remains>3||chi>=3)&(cooldown.fists_of_fury.remains>4||chi>=4||(chi=2&prev_gcd.1.tiger_palm))&buff.swift_roundhouse.stack<2\nactions.st+=/chi_wave\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1||chi.max-chi>=2\nactions.st+=/tiger_palm,cycle_targets=1,if=!prev_gcd.1.tiger_palm&chi.max-chi>=2\n# actions.st+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3&buff.swift_roundhouse.stack<2,interrupt=1",
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Monk_Brewmaster.simc",
					["builtIn"] = true,
					["date"] = 20180930.164,
					["author"] = "SimC",
					["desc"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health < health.max * 0.65",
								["action"] = "gift_of_the_ox",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( group & 0.4 || 0.2 ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( group & 0.4 || 0.2 ) & ( buff.dampen_harm.down || buff.diffuse_magic.down )",
								["action"] = "fortifying_brew",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "lustrous_golden_plumage",
								["action"] = "lustrous_golden_plumage",
							}, -- [6]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 25",
								["action"] = "invoke_niuzao",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "stagger.pct > ( 6 * ( 3 - ( cooldown.brews.charges_fractional ) ) ) & ( stagger.last_tick_damage_1 > ( ( 0.02 + 0.001 * ( 3 - cooldown.brews.charges_fractional ) ) * stagger.last_tick_damage_30 ) )",
								["action"] = "purifying_brew",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & incoming_damage_1999ms > ( health.max * 0.1 + stagger.last_tick_damage_4 ) & buff.elusive_brawler.stack < 2 & ! buff.ironskin_brew.up",
								["action"] = "ironskin_brew",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional > 1 & ( talent.black_ox_brew.enabled & cooldown.black_ox_brew.remains < 3 )",
								["action"] = "ironskin_brew",
							}, -- [17]
							{
								["action"] = "ironskin_brew",
								["enabled"] = true,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "stagger.moderate",
								["action"] = "guard",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33 || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33",
								["action"] = "healing_elixir",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.blackout_combo.up & buff.rushing_jade_wind.up",
								["action"] = "tiger_palm",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.enabled || talent.special_delivery.enabled ) & buff.blackout_combo.up",
								["action"] = "tiger_palm",
							}, -- [26]
							{
								["action"] = "blackout_strike",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & ( buff.bloodlust.down || ( buff.bloodlust.up & dot.breath_of_fire_dot.refreshable ) )",
								["action"] = "breath_of_fire",
							}, -- [30]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [31]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blackout_combo.enabled & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + gcd ) ) ) >= 65",
								["action"] = "tiger_palm",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "energy < 31",
								["action"] = "arcane_torrent",
							}, -- [34]
							{
								["action"] = "rushing_jade_wind",
								["enabled"] = true,
							}, -- [35]
						},
						["precombat"] = {
							{
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20180930.164,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\nLine 3: Unsupported action 'gift_of_the_ox'.\n\nImported 2 action lists.\n",
					["profile"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\nactions+=/gift_of_the_ox,if=health<health.max*0.65\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(group&0.4||0.2)&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(group&0.4||0.2)&(buff.dampen_harm.down||buff.diffuse_magic.down)\nactions+=/use_item,name=lustrous_golden_plumage\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>25\n\n# Purifying behaviour is based on normalization (iE the late expression triggers if stagger size increased over the last 30 ticks or 15 seconds).\nactions+=/purifying_brew,if=stagger.pct>(6*(3-(cooldown.brews.charges_fractional)))&(stagger.last_tick_damage_1>((0.02+0.001*(3-cooldown.brews.charges_fractional))*stagger.last_tick_damage_30))\n\n# Ironskin Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/ironskin_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2&!buff.ironskin_brew.up\nactions+=/ironskin_brew,if=cooldown.brews.charges_fractional>1&(talent.black_ox_brew.enabled&cooldown.black_ox_brew.remains<3)\nactions+=/ironskin_brew\n\n# Guard / Healing Elixir\nactions+=/guard,if=stagger.moderate\nactions+=/expel_harm,if=health.pct<33||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.brews.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled||talent.special_delivery.enabled)&buff.blackout_combo.up\nactions+=/blackout_strike\nactions+=/keg_smash\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/rushing_jade_wind",
					["spec"] = 268,
				},
			},
			["iconStore"] = {
				["minimapPos"] = 302.101715819383,
			},
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[269] = {
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["package"] = "Windwalker",
					["damage"] = true,
					["cycle"] = true,
					["potion"] = "potion_of_bursting_blood",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["nameplateRange"] = 8,
					["strict"] = false,
				},
				[268] = {
					["maxRefresh"] = 10,
					["package"] = "Brewmaster",
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["potionsReset"] = 20180919.1,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_agility",
					["throttleRefresh"] = false,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damage"] = true,
					["cycle"] = false,
				},
			},
		},
	},
}
