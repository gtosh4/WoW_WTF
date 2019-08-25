
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Default",
		["Toshtrial - Blood Furnace"] = "Default",
		["Daggny - Frostwolf"] = "Daggny - Frostwolf",
		["Tosku - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Koutetsu - Frostwolf"] = "Koutetsu - Frostwolf",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Zallie - Frostwolf"] = "Zallie - Frostwolf",
		["Toshaman - Kil'jaeden"] = "Default",
		["Toshtrial - The Forgotten Coast"] = "Toshtrial - The Forgotten Coast",
	},
	["profiles"] = {
		["Toshpal - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[70] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["package"] = "Retribution",
					["throttleRefresh"] = false,
					["gcdSync"] = true,
					["aoe"] = 3,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_strength",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = false,
					["buffPadding"] = 0,
				},
				[66] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["package"] = "Protection Paladin",
					["throttleRefresh"] = false,
					["gcdSync"] = true,
					["aoe"] = 2,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_bursting_blood",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = false,
					["buffPadding"] = 0,
				},
			},
			["displays"] = {
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -1516.27697753906,
					["y"] = 291.226348876953,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["x"] = -208.791763305664,
					["y"] = -143.490493774414,
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["x"] = -1511.93664550781,
					["y"] = 383.459014892578,
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -1423.0380859375,
					["y"] = 288.207580566406,
				},
			},
			["packs"] = {
				["Protection Paladin"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Protection.simc",
					["builtIn"] = true,
					["date"] = 20190217.0027,
					["author"] = "SimC",
					["desc"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Protection.simc\n# February 17, 2019 - 00:26\n\n# Changes\n# - Added Rebuke.",
					["lists"] = {
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "fireblood",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_of_the_righteous.charges_fractional >= 2",
								["action"] = "seraphim",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || cooldown.seraphim.remains < 2 || ! talent.seraphim.enabled",
								["action"] = "avenging_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_of_the_righteous.charges_fractional <= 0",
								["action"] = "bastion_of_light",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || ! talent.seraphim.enabled",
								["action"] = "use_items",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
								["criteria"] = "( ( cooldown.judgment.full_recharge_time > 4 || ( ! talent.crusaders_judgment.enabled & prev_gcd.1.judgment ) ) & cooldown.avengers_shield.remains > 4 & buff.seraphim.remains > 4 ) || ( buff.seraphim.remains < 4 )",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "merekthas_fang",
								["action"] = "merekthas_fang",
								["criteria"] = "! buff.avenging_wrath.up & ( buff.seraphim.up || ! talent.seraphim.enabled )",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [9]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & action.shield_of_the_righteous.charges > 2 & ! ( buff.aegis_of_light.up & buff.ardent_defender.up & buff.guardian_of_ancient_kings.up & buff.divine_shield.up & buff.potion.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & talent.bastion_of_light.enabled & action.shield_of_the_righteous.charges < 1",
								["action"] = "bastion_of_light",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "light_of_the_protector",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "hand_of_the_protector",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_10000ms < health.max * 1.25 ) & health.pct < 55 & talent.righteous_protector.enabled",
								["action"] = "light_of_the_protector",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_13000ms < health.max * 1.6 ) & health.pct < 55",
								["action"] = "light_of_the_protector",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_6000ms < health.max * 0.7 ) & health.pct < 65 & talent.righteous_protector.enabled",
								["action"] = "hand_of_the_protector",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_9000ms < health.max * 1.2 ) & health.pct < 55",
								["action"] = "hand_of_the_protector",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "aegis_of_light",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "guardian_of_ancient_kings",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & talent.final_stand.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "divine_shield",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "ardent_defender",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & health.pct < 15",
								["action"] = "lay_on_hands",
							}, -- [13]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avengers_valor.up & cooldown.shield_of_the_righteous.charges_fractional >= 2.5 ) & ( cooldown.seraphim.remains > gcd || ! talent.seraphim.enabled )",
								["action"] = "shield_of_the_righteous",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & ! talent.seraphim.enabled ) || buff.seraphim.up & buff.avengers_valor.up",
								["action"] = "shield_of_the_righteous",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & buff.avenging_wrath.remains < 4 & ! talent.seraphim.enabled ) || ( buff.seraphim.remains < 4 & buff.seraphim.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up & buff.seraphim.remains < 3",
								["action"] = "lights_judgment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.judgment.remains < gcd & cooldown.judgment.charges_fractional > 1 & cooldown_react ) || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "avengers_shield",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled || buff.seraphim.up",
								["action"] = "lights_judgment",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "blessed_hammer",
								["strikes"] = "2",
							}, -- [14]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [16]
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
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20190217.0027,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nImported 4 action lists.\n",
					["spec"] = 66,
					["profile"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Protection.simc\n# February 17, 2019 - 00:26\n\n# Changes\n# - Added Rebuke.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lights_judgment\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/rebuke\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\n# Dumping SotR charges\nactions+=/shield_of_the_righteous,if=(buff.avengers_valor.up&cooldown.shield_of_the_righteous.charges_fractional>=2.5)&(cooldown.seraphim.remains>gcd||!talent.seraphim.enabled)\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&!talent.seraphim.enabled)||buff.seraphim.up&buff.avengers_valor.up\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&buff.avenging_wrath.remains<4&!talent.seraphim.enabled)||(buff.seraphim.remains<4&buff.seraphim.up)\nactions+=/lights_judgment,if=buff.seraphim.up&buff.seraphim.remains<3\nactions+=/consecration,if=!consecration.up\nactions+=/judgment,if=(cooldown.judgment.remains<gcd&cooldown.judgment.charges_fractional>1&cooldown_react)||!talent.crusaders_judgment.enabled\nactions+=/avengers_shield,if=cooldown_react\nactions+=/judgment,if=cooldown_react||!talent.crusaders_judgment.enabled\nactions+=/lights_judgment,if=!talent.seraphim.enabled||buff.seraphim.up\nactions+=/blessed_hammer,strikes=2\nactions+=/hammer_of_the_righteous\nactions+=/consecration\n\nactions.cooldowns=fireblood,if=buff.avenging_wrath.up\nactions.cooldowns+=/seraphim,if=cooldown.shield_of_the_righteous.charges_fractional>=2\nactions.cooldowns+=/avenging_wrath,if=buff.seraphim.up||cooldown.seraphim.remains<2||!talent.seraphim.enabled\nactions.cooldowns+=/bastion_of_light,if=cooldown.shield_of_the_righteous.charges_fractional<=0\nactions.cooldowns+=/potion,if=buff.avenging_wrath.up\nactions.cooldowns+=/use_items,if=buff.seraphim.up||!talent.seraphim.enabled\nactions.cooldowns+=/use_item,name=grongs_primal_rage,if=((cooldown.judgment.full_recharge_time>4||(!talent.crusaders_judgment.enabled&prev_gcd.1.judgment))&cooldown.avengers_shield.remains>4&buff.seraphim.remains>4)||(buff.seraphim.remains<4)\nactions.cooldowns+=/use_item,name=merekthas_fang,if=!buff.avenging_wrath.up&(buff.seraphim.up||!talent.seraphim.enabled)\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\n\nactions.mitigation=shield_of_the_righteous,if=!talent.seraphim.enabled&action.shield_of_the_righteous.charges>2&!(buff.aegis_of_light.up&buff.ardent_defender.up&buff.guardian_of_ancient_kings.up&buff.divine_shield.up&buff.potion.up)\nactions.mitigation+=/bastion_of_light,if=!talent.seraphim.enabled&talent.bastion_of_light.enabled&action.shield_of_the_righteous.charges<1\nactions.mitigation+=/light_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/hand_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_10000ms<health.max*1.25)&health.pct<55&talent.righteous_protector.enabled\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_13000ms<health.max*1.6)&health.pct<55\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_6000ms<health.max*0.7)&health.pct<65&talent.righteous_protector.enabled\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_9000ms<health.max*1.2)&health.pct<55\nactions.mitigation+=/aegis_of_light,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=!talent.seraphim.enabled&talent.final_stand.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=!talent.seraphim.enabled&health.pct<15",
				},
				["Retribution"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier21/T21_Paladin_Retribution.simc",
					["builtIn"] = true,
					["date"] = 20190201.104,
					["spec"] = 70,
					["desc"] = "# Retribution Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Retribution.simc\n# February 1, 2019 - 20:31\n\n# Changes:\n# - Updated trinkets.",
					["profile"] = "# Retribution Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Retribution.simc\n# February 1, 2019 - 20:31\n\n# Changes:\n# - Updated trinkets.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/arcane_torrent,if=!talent.wake_of_ashes.enabled\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/rebuke\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=generators\n\nactions.cooldowns=use_item,name=ramping_amplitude_gigavolt_engine,if=(buff.avenging_wrath.up||buff.crusade.up)\nactions.cooldowns+=/use_item,name=grongs_primal_rage,if=!buff.avenging_wrath.up&!buff.crusade.up\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\nactions.cooldowns+=/use_item,name=jes_howler,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/use_item,name=vial_of_animated_blood,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<18)||(cooldown.avenging_wrath.remains>30||cooldown.crusade.remains>30)\nactions.cooldowns+=/use_item,name=dooms_fury,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<18\nactions.cooldowns+=/use_item,name=galecallers_beak,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<15\nactions.cooldowns+=/use_item,name=bygone_bee_almanac,if=buff.avenging_wrath.up||buff.crusade.up\nactions.cooldowns+=/use_item,name=merekthas_fang,if=(!raid_event.adds.exists||raid_event.adds.in>15)||spell_targets.divine_storm>=2\nactions.cooldowns+=/use_item,name=plunderbeards_flask,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||!buff.crusade.up&cooldown.crusade.remains>45\nactions.cooldowns+=/use_item,name=berserkers_juju,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||!buff.crusade.up&cooldown.crusade.remains>45\nactions.cooldowns+=/use_item,name=endless_tincture_of_fractional_power,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||cooldown.crusade.remains>45\nactions.cooldowns+=/use_item,name=pearl_divers_compass,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10\nactions.cooldowns+=/use_item,name=first_mates_spyglass,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=15\nactions.cooldowns+=/use_item,name=whirlwings_plumage,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.cooldowns+=/use_item,name=dread_gladiators_badge,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.cooldowns+=/use_item,name=dread_aspirants_medallion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.cooldowns+=/use_item,name=knot_of_ancient_fury,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>30||!buff.crusade.up&cooldown.crusade.remains>30\nactions.cooldowns+=/use_items,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/potion,if=buff.bloodlust.react||buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<25\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||(!raid_event.adds.exists||raid_event.adds.in>75)\nactions.cooldowns+=/fireblood,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/shield_of_vengeance\nactions.cooldowns+=/avenging_wrath,if=buff.inquisition.up||!talent.inquisition.enabled\nactions.cooldowns+=/crusade,if=holy_power>=4\n\nactions.finishers=variable,name=ds_castable,value=spell_targets.divine_storm>=2&!talent.righteous_verdict.enabled||spell_targets.divine_storm>=3&talent.righteous_verdict.enabled\nactions.finishers+=/inquisition,if=buff.inquisition.down||buff.inquisition.remains<5&holy_power>=3||talent.execution_sentence.enabled&cooldown.execution_sentence.remains<10&buff.inquisition.remains<15||cooldown.avenging_wrath.remains<15&buff.inquisition.remains<20&holy_power>=3\nactions.finishers+=/execution_sentence,if=spell_targets.divine_storm<=2&(!talent.crusade.enabled||cooldown.crusade.remains>gcd*2)\nactions.finishers+=/divine_storm,if=variable.ds_castable&buff.divine_purpose.react\nactions.finishers+=/divine_storm,if=variable.ds_castable&(!talent.crusade.enabled||cooldown.crusade.remains>gcd*2)||buff.empyrean_power.up&debuff.judgment.down&buff.divine_purpose.down\nactions.finishers+=/templars_verdict,if=buff.divine_purpose.react\nactions.finishers+=/templars_verdict,if=(!talent.crusade.enabled||cooldown.crusade.remains>gcd*3)&(!talent.execution_sentence.enabled||buff.crusade.up&buff.crusade.stack<10||cooldown.execution_sentence.remains>gcd*2)\n\nactions.generators=variable,name=HoW,value=(!talent.hammer_of_wrath.enabled||target.health.pct>=20&(buff.avenging_wrath.down||buff.crusade.down))\nactions.generators+=/call_action_list,name=finishers,if=holy_power>=5\nactions.generators+=/wake_of_ashes,if=(!raid_event.adds.exists||raid_event.adds.in>15||spell_targets.wake_of_ashes>=2)&(holy_power<=0||holy_power=1&cooldown.blade_of_justice.remains>gcd)\nactions.generators+=/blade_of_justice,if=holy_power<=2||(holy_power=3&(cooldown.hammer_of_wrath.remains>gcd*2||variable.HoW))\nactions.generators+=/judgment,if=holy_power<=2||(holy_power<=4&(cooldown.blade_of_justice.remains>gcd*2||variable.HoW))\nactions.generators+=/hammer_of_wrath,if=holy_power<=4\nactions.generators+=/consecration,if=holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2\nactions.generators+=/call_action_list,name=finishers,if=talent.hammer_of_wrath.enabled&(target.health.pct<=20||buff.avenging_wrath.up||buff.crusade.up)\nactions.generators+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2&cooldown.consecration.remains>gcd*2)\nactions.generators+=/call_action_list,name=finishers\nactions.generators+=/crusader_strike,if=holy_power<=4\nactions.generators+=/arcane_torrent,if=holy_power<=4\n\nactions.opener=sequence,if=talent.wake_of_ashes.enabled&talent.crusade.enabled&talent.execution_sentence.enabled&!talent.hammer_of_wrath.enabled,name=wake_opener_ES_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:execution_sentence\nactions.opener+=/sequence,if=talent.wake_of_ashes.enabled&talent.crusade.enabled&!talent.execution_sentence.enabled&!talent.hammer_of_wrath.enabled,name=wake_opener_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:templars_verdict\nactions.opener+=/sequence,if=talent.wake_of_ashes.enabled&talent.crusade.enabled&talent.execution_sentence.enabled&talent.hammer_of_wrath.enabled,name=wake_opener_ES_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:execution_sentence\nactions.opener+=/sequence,if=talent.wake_of_ashes.enabled&talent.crusade.enabled&!talent.execution_sentence.enabled&talent.hammer_of_wrath.enabled,name=wake_opener_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:templars_verdict\nactions.opener+=/sequence,if=talent.wake_of_ashes.enabled&talent.inquisition.enabled,name=wake_opener_Inq:shield_of_vengeance:blade_of_justice:judgment:inquisition:avenging_wrath:wake_of_ashes",
					["version"] = 20190201.104,
					["warnings"] = "WARNING:  The import for 'opener' required some automated changes.\nLine 1: Unsupported action 'sequence'.\nLine 2: Unsupported action 'sequence'.\nLine 3: Unsupported action 'sequence'.\nLine 4: Unsupported action 'sequence'.\nLine 5: Unsupported action 'sequence'.\n\nWARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nImported 6 action lists.\n",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & talent.execution_sentence.enabled & ! talent.hammer_of_wrath.enabled",
								["action"] = "sequence",
								["name"] = "wake_opener_ES_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:execution_sentence",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & ! talent.execution_sentence.enabled & ! talent.hammer_of_wrath.enabled",
								["action"] = "sequence",
								["name"] = "wake_opener_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:templars_verdict",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & talent.execution_sentence.enabled & talent.hammer_of_wrath.enabled",
								["action"] = "sequence",
								["name"] = "wake_opener_ES_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:execution_sentence",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & ! talent.execution_sentence.enabled & talent.hammer_of_wrath.enabled",
								["action"] = "sequence",
								["name"] = "wake_opener_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:templars_verdict",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.wake_of_ashes.enabled & talent.inquisition.enabled",
								["action"] = "sequence",
								["name"] = "wake_opener_Inq:shield_of_vengeance:blade_of_justice:judgment:inquisition:avenging_wrath:wake_of_ashes",
							}, -- [5]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generators",
							}, -- [5]
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
								["criteria"] = "! talent.wake_of_ashes.enabled",
								["action"] = "arcane_torrent",
							}, -- [6]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["name"] = "ramping_amplitude_gigavolt_engine",
								["action"] = "ramping_amplitude_gigavolt_engine",
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up )",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
								["criteria"] = "! buff.avenging_wrath.up & ! buff.crusade.up",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "jes_howler",
								["action"] = "jes_howler",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "vial_of_animated_blood",
								["action"] = "vial_of_animated_blood",
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18 ) || ( cooldown.avenging_wrath.remains > 30 || cooldown.crusade.remains > 30 )",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "dooms_fury",
								["action"] = "dooms_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "galecallers_beak",
								["action"] = "galecallers_beak",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 15",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "bygone_bee_almanac",
								["action"] = "bygone_bee_almanac",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "merekthas_fang",
								["action"] = "merekthas_fang",
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 ) || spell_targets.divine_storm >= 2",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "plunderbeards_flask",
								["action"] = "plunderbeards_flask",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "berserkers_juju",
								["action"] = "berserkers_juju",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "endless_tincture_of_fractional_power",
								["action"] = "endless_tincture_of_fractional_power",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || cooldown.crusade.remains > 45",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "pearl_divers_compass",
								["action"] = "pearl_divers_compass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "first_mates_spyglass",
								["action"] = "first_mates_spyglass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 15",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "whirlwings_plumage",
								["action"] = "whirlwings_plumage",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "dread_gladiators_badge",
								["action"] = "dread_gladiators_badge",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "dread_aspirants_medallion",
								["action"] = "dread_aspirants_medallion",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "knot_of_ancient_fury",
								["action"] = "knot_of_ancient_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 30 || ! buff.crusade.up & cooldown.crusade.remains > 30",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "use_items",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 25",
								["action"] = "potion",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ( ! raid_event.adds.exists || raid_event.adds.in > 75 )",
								["action"] = "lights_judgment",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "fireblood",
							}, -- [22]
							{
								["action"] = "shield_of_vengeance",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.inquisition.up || ! talent.inquisition.enabled",
								["action"] = "avenging_wrath",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 4",
								["action"] = "crusade",
							}, -- [25]
						},
						["finishers"] = {
							{
								["value"] = "spell_targets.divine_storm >= 2 & ! talent.righteous_verdict.enabled || spell_targets.divine_storm >= 3 & talent.righteous_verdict.enabled",
								["var_name"] = "ds_castable",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.inquisition.down || buff.inquisition.remains < 5 & holy_power >= 3 || talent.execution_sentence.enabled & cooldown.execution_sentence.remains < 10 & buff.inquisition.remains < 15 || cooldown.avenging_wrath.remains < 15 & buff.inquisition.remains < 20 & holy_power >= 3",
								["action"] = "inquisition",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.divine_storm <= 2 & ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 2 )",
								["action"] = "execution_sentence",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & buff.divine_purpose.react",
								["action"] = "divine_storm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 2 ) || buff.empyrean_power.up & debuff.judgment.down & buff.divine_purpose.down",
								["action"] = "divine_storm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.divine_purpose.react",
								["action"] = "templars_verdict",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.crusade.enabled || cooldown.crusade.remains > gcd * 3 ) & ( ! talent.execution_sentence.enabled || buff.crusade.up & buff.crusade.stack < 10 || cooldown.execution_sentence.remains > gcd * 2 )",
								["action"] = "templars_verdict",
							}, -- [7]
						},
						["generators"] = {
							{
								["value"] = "( ! talent.hammer_of_wrath.enabled || target.health.pct >= 20 & ( buff.avenging_wrath.down || buff.crusade.down ) )",
								["var_name"] = "HoW",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "holy_power >= 5",
								["list_name"] = "finishers",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 || spell_targets.wake_of_ashes >= 2 ) & ( holy_power <= 0 || holy_power = 1 & cooldown.blade_of_justice.remains > gcd )",
								["action"] = "wake_of_ashes",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || ( holy_power = 3 & ( cooldown.hammer_of_wrath.remains > gcd * 2 || variable.HoW ) )",
								["action"] = "blade_of_justice",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || ( holy_power <= 4 & ( cooldown.blade_of_justice.remains > gcd * 2 || variable.HoW ) )",
								["action"] = "judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "hammer_of_wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2",
								["action"] = "consecration",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "talent.hammer_of_wrath.enabled & ( target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up )",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2 & cooldown.consecration.remains > gcd * 2 )",
								["action"] = "crusader_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "crusader_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "arcane_torrent",
							}, -- [12]
						},
					},
					["author"] = "SimC",
				},
			},
		},
		["Toshtrial - Blood Furnace"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["enabledArcaneMageOnce_20190309"] = true,
			},
			["specs"] = {
				[64] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["package"] = "Frost Mage",
					["damageExpiration"] = 6,
					["nameplates"] = false,
					["throttleRefresh"] = false,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_rising_death",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
				},
				[63] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["throttleRefresh"] = false,
					["damageExpiration"] = 6,
					["nameplates"] = false,
					["package"] = "Fire",
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_intellect",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = false,
					["damageDots"] = false,
					["buffPadding"] = 0,
				},
				[62] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["package"] = "Arcane",
					["damageExpiration"] = 6,
					["nameplates"] = true,
					["throttleRefresh"] = false,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_intellect",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Frost Mage"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Frost.simc",
					["builtIn"] = true,
					["date"] = 20190201.2351,
					["author"] = "SimC",
					["desc"] = "# Frost Mage\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Frost.simc\n# February 1, 2019 - 23:51\n\n# Changes:\n# - Use 'time_to_die' instead of 'target.time_to_die' for last-second potion.",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ice_nova.ready & debuff.winters_chill.up",
								["action"] = "ice_nova",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ebonbolt.enabled & prev_gcd.1.ebonbolt & ( ! talent.glacial_spike.enabled || buff.icicles.stack < 4 || buff.brain_freeze.react )",
								["action"] = "flurry",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.glacial_spike.enabled & prev_gcd.1.glacial_spike & buff.brain_freeze.react",
								["action"] = "flurry",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.frostbolt & buff.brain_freeze.react & ( ! talent.glacial_spike.enabled || buff.icicles.stack < 4 )",
								["action"] = "flurry",
							}, -- [4]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || active_enemies > 1 & cast_time = 0 & buff.fingers_of_frost.react < 2",
								["action"] = "blizzard",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [7]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! action.frozen_orb.in_flight & ground_aoe.frozen_orb.remains = 0",
								["action"] = "ray_of_frost",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cast_time = 0 || active_enemies > 1",
								["action"] = "blizzard",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.brain_freeze.react || prev_gcd.1.ebonbolt || active_enemies > 1 & talent.splitting_ice.enabled",
								["action"] = "glacial_spike",
							}, -- [12]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "tidestorm_codex",
								["criteria"] = "buff.icy_veins.down & buff.rune_of_power.down",
								["name"] = "tidestorm_codex",
							}, -- [14]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [16]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [17]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.flurry & ! buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies > 3 & talent.freezing_rain.enabled || active_enemies > 4",
								["list_name"] = "aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "single",
							}, -- [5]
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
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "water_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [9]
						},
						["cooldowns"] = {
							{
								["action"] = "icy_veins",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.frozen_orb || time_to_die > 10 + cast_time & time_to_die < 20",
								["action"] = "rune_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "talent.rune_of_power.enabled & active_enemies = 1 & cooldown.rune_of_power.full_recharge_time < cooldown.frozen_orb.remains",
								["list_name"] = "talent_rop",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.icy_veins || time_to_die < 70",
								["action"] = "potion",
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [11]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 10",
								["action"] = "blink",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ice_floes.down",
								["action"] = "ice_floes",
							}, -- [2]
						},
						["aoe"] = {
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.ebonbolt || buff.brain_freeze.react & ( prev_gcd.1.frostbolt & ( buff.icicles.stack < 4 || ! talent.glacial_spike.enabled ) || prev_gcd.1.glacial_spike )",
								["action"] = "flurry",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [6]
							{
								["action"] = "ray_of_frost",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "glacial_spike",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "cone_of_cold",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "tidestorm_codex",
								["criteria"] = "buff.icy_veins.down & buff.rune_of_power.down",
								["name"] = "tidestorm_codex",
							}, -- [11]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [13]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [14]
						},
					},
					["version"] = 20190201.2351,
					["warnings"] = "Imported 6 action lists.\n",
					["profile"] = "# Frost Mage\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Frost.simc\n# February 1, 2019 - 23:51\n\n# Changes:\n# - Use 'time_to_die' instead of 'target.time_to_die' for last-second potion.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\nactions.precombat+=/summon_water_elemental\nactions.precombat+=/snapshot_stats\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/frostbolt\n\n# Executed every time the actor is available.\nactions=counterspell\n# If the mage has FoF after casting instant Flurry, we can delay the Ice Lance and use other high priority action, if available.\nactions+=/ice_lance,if=prev_gcd.1.flurry&!buff.fingers_of_frost.react\nactions+=/call_action_list,name=cooldowns\n# The target threshold isn't exact. Between 3-5 targets, the differences between the ST and AoE action lists are rather small. However, Freezing Rain prefers using AoE action list sooner as it benefits greatly from the high priority Blizzard action.\nactions+=/call_action_list,name=aoe,if=active_enemies>3&talent.freezing_rain.enabled||active_enemies>4\nactions+=/call_action_list,name=single\n\n# With Freezing Rain, it's better to prioritize using Frozen Orb when both FO and Blizzard are off cooldown. Without Freezing Rain, the converse is true although the difference is miniscule until very high target counts.\nactions.aoe=frozen_orb\nactions.aoe+=/blizzard\nactions.aoe+=/comet_storm\nactions.aoe+=/ice_nova\n# Simplified Flurry conditions from the ST action list. Since the mage is generating far less Brain Freeze charges, the exact condition here isn't all that important.\nactions.aoe+=/flurry,if=prev_gcd.1.ebonbolt||buff.brain_freeze.react&(prev_gcd.1.frostbolt&(buff.icicles.stack<4||!talent.glacial_spike.enabled)||prev_gcd.1.glacial_spike)\nactions.aoe+=/ice_lance,if=buff.fingers_of_frost.react\n# The mage will generally be generating a lot of FoF charges when using the AoE action list. Trying to delay Ray of Frost until there are no FoF charges and no active Frozen Orbs would lead to it not being used at all.\nactions.aoe+=/ray_of_frost\nactions.aoe+=/ebonbolt\nactions.aoe+=/glacial_spike\n# Using Cone of Cold is mostly DPS neutral with the AoE target thresholds. It only becomes decent gain with roughly 7 or more targets.\nactions.aoe+=/cone_of_cold\nactions.aoe+=/use_item,name=tidestorm_codex,if=buff.icy_veins.down&buff.rune_of_power.down\nactions.aoe+=/frostbolt\nactions.aoe+=/call_action_list,name=movement\nactions.aoe+=/ice_lance\n\nactions.cooldowns=icy_veins\nactions.cooldowns+=/mirror_image\n# Rune of Power is always used with Frozen Orb. Any leftover charges at the end of the fight should be used, ideally if the boss doesn't die in the middle of the Rune buff.\nactions.cooldowns+=/rune_of_power,if=prev_gcd.1.frozen_orb||time_to_die>10+cast_time&time_to_die<20\n# On single target fights, the cooldown of Rune of Power is lower than the cooldown of Frozen Orb, this gives extra Rune of Power charges that should be used with active talents, if possible.\nactions.cooldowns+=/call_action_list,name=talent_rop,if=talent.rune_of_power.enabled&active_enemies=1&cooldown.rune_of_power.full_recharge_time<cooldown.frozen_orb.remains\nactions.cooldowns+=/potion,if=prev_gcd.1.icy_veins||time_to_die<70\nactions.cooldowns+=/use_items\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\n\nactions.movement=blink,if=movement.distance>10\nactions.movement+=/ice_floes,if=buff.ice_floes.down\n\n# In some situations, you can shatter Ice Nova even after already casting Flurry and Ice Lance. Otherwise this action is used when the mage has FoF after casting Flurry, see above.\nactions.single=ice_nova,if=cooldown.ice_nova.ready&debuff.winters_chill.up\n# Without GS, Ebonbolt is always shattered. With GS, Ebonbolt is shattered if it would waste Brain Freeze charge (i.e. when the mage starts casting Ebonbolt with Brain Freeze active) or when below 4 Icicles (if Ebonbolt is cast when the mage has 4-5 Icicles, it's better to use the Brain Freeze from it on Glacial Spike).\nactions.single+=/flurry,if=talent.ebonbolt.enabled&prev_gcd.1.ebonbolt&(!talent.glacial_spike.enabled||buff.icicles.stack<4||buff.brain_freeze.react)\n# Glacial Spike is always shattered.\nactions.single+=/flurry,if=talent.glacial_spike.enabled&prev_gcd.1.glacial_spike&buff.brain_freeze.react\n# Without GS, the mage just tries to shatter as many Frostbolts as possible. With GS, the mage only shatters Frostbolt that would put them at 1-3 Icicle stacks. Difference between shattering Frostbolt with 1-3 Icicles and 1-4 Icicles is small, but 1-3 tends to be better in more situations (the higher GS damage is, the more it leans towards 1-3). Forcing shatter on Frostbolt is still a small gain, so is not caring about FoF. Ice Lance is too weak to warrant delaying Brain Freeze Flurry.\nactions.single+=/flurry,if=prev_gcd.1.frostbolt&buff.brain_freeze.react&(!talent.glacial_spike.enabled||buff.icicles.stack<4)\nactions.single+=/frozen_orb\n# With Freezing Rain and at least 2 targets, Blizzard needs to be used with higher priority to make sure you can fit both instant Blizzards into a single Freezing Rain. Starting with three targets, Blizzard leaves the low priority filler role and is used on cooldown (and just making sure not to waste Brain Freeze charges) with or without Freezing Rain.\nactions.single+=/blizzard,if=active_enemies>2||active_enemies>1&cast_time=0&buff.fingers_of_frost.react<2\n# Trying to pool charges of FoF for anything isn't worth it. Use them as they come.\nactions.single+=/ice_lance,if=buff.fingers_of_frost.react\nactions.single+=/comet_storm\nactions.single+=/ebonbolt\n# Ray of Frost is used after all Fingers of Frost charges have been used and there isn't active Frozen Orb that could generate more. This is only a small gain against multiple targets, as Ray of Frost isn't too impactful.\nactions.single+=/ray_of_frost,if=!action.frozen_orb.in_flight&ground_aoe.frozen_orb.remains=0\n# Blizzard is used as low priority filler against 2 targets. When using Freezing Rain, it's a medium gain to use the instant Blizzard even against a single target, especially with low mastery.\nactions.single+=/blizzard,if=cast_time=0||active_enemies>1\n# Glacial Spike is used when there's a Brain Freeze proc active (i.e. only when it can be shattered). This is a small to medium gain in most situations. Low mastery leans towards using it when available. When using Splitting Ice and having another target nearby, it's slightly better to use GS when available, as the second target doesn't benefit from shattering the main target.\nactions.single+=/glacial_spike,if=buff.brain_freeze.react||prev_gcd.1.ebonbolt||active_enemies>1&talent.splitting_ice.enabled\nactions.single+=/ice_nova\nactions.single+=/use_item,name=tidestorm_codex,if=buff.icy_veins.down&buff.rune_of_power.down\nactions.single+=/frostbolt\nactions.single+=/call_action_list,name=movement\nactions.single+=/ice_lance",
					["spec"] = 64,
				},
				["Fire"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Fire.simc",
					["builtIn"] = true,
					["date"] = 20181211.0847,
					["author"] = "SimulationCraft",
					["desc"] = "# Fire Mage\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Fire.simc\n# February 1, 2019 - 23:45\n\n# Changes:\n# - Use time_to_die rather than target.time_to_die for last-second ability usages.",
					["lists"] = {
						["trinkets"] = {
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [1]
						},
						["active_talents"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down & ( cooldown.combustion.remains > cooldown.living_bomb.duration || cooldown.combustion.ready )",
								["action"] = "living_bomb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.up & ( firestarter.remains > cooldown.meteor.duration || ! firestarter.active ) || cooldown.rune_of_power.remains > time_to_die & action.rune_of_power.charges < 1 || ( cooldown.meteor.duration < cooldown.combustion.remains || cooldown.combustion.ready ) & ! talent.rune_of_power.enabled & ( cooldown.meteor.duration < firestarter.remains || ! talent.firestarter.enabled || ! firestarter.active )",
								["action"] = "meteor",
							}, -- [2]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "mirror_image",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.firestarter.enabled & firestarter.remains > full_recharge_time || cooldown.combustion.remains > variable.combustion_rop_cutoff & buff.combustion.down || time_to_die < cooldown.combustion.remains & buff.combustion.down",
								["action"] = "rune_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "( talent.rune_of_power.enabled & cooldown.combustion.remains <= action.rune_of_power.cast_time || cooldown.combustion.ready ) & ! firestarter.active || buff.combustion.up",
								["list_name"] = "combustion_phase",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.rune_of_power.up & buff.combustion.down",
								["list_name"] = "rop_phase",
							}, -- [5]
							{
								["value"] = "talent.rune_of_power.enabled & cooldown.rune_of_power.remains < cooldown.fire_blast.full_recharge_time & ( cooldown.combustion.remains > variable.combustion_rop_cutoff || firestarter.active ) & ( cooldown.rune_of_power.remains < time_to_die || action.rune_of_power.charges > 0 ) || cooldown.combustion.remains < action.fire_blast.full_recharge_time + cooldown.fire_blast.duration * azerite.blaster_master.enabled & ! firestarter.active & cooldown.combustion.remains < time_to_die || talent.firestarter.enabled & firestarter.active & firestarter.remains < cooldown.fire_blast.full_recharge_time + cooldown.fire_blast.duration * azerite.blaster_master.enabled",
								["var_name"] = "fire_blast_pooling",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [6]
							{
								["value"] = "talent.rune_of_power.enabled & cooldown.rune_of_power.remains < cooldown.phoenix_flames.full_recharge_time & cooldown.combustion.remains > variable.combustion_rop_cutoff & ( cooldown.rune_of_power.remains < time_to_die || action.rune_of_power.charges > 0 ) || cooldown.combustion.remains < action.phoenix_flames.full_recharge_time & cooldown.combustion.remains < time_to_die",
								["var_name"] = "phoenix_pooling",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard_rotation",
							}, -- [8]
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
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "60",
								["var_name"] = "combustion_rop_cutoff",
							}, -- [5]
							{
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "pyroblast",
								["enabled"] = true,
							}, -- [9]
						},
						["combustion_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "lights_judgment",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "azerite.blaster_master.enabled & talent.flame_on.enabled",
								["list_name"] = "bm_combustion_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "rune_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [4]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( ! azerite.blaster_master.enabled || ! talent.flame_on.enabled ) & ( ( action.meteor.in_flight || prev_gcd.1.meteor || cooldown.meteor.remains > 5 ) || ! talent.meteor.enabled ) & ( buff.rune_of_power.up || ! talent.rune_of_power.enabled )",
								["use_off_gcd"] = "1",
								["action"] = "combustion",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.flame_patch.enabled & active_enemies > 2 ) || active_enemies > 6 ) & buff.hot_streak.react",
								["action"] = "flamestrike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & buff.combustion.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [14]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( ! azerite.blaster_master.enabled || ! talent.flame_on.enabled ) & ( ( buff.combustion.up & ( buff.heating_up.react & ! action.pyroblast.in_flight & ! action.scorch.executing ) || ( action.scorch.execute_remains & buff.heating_up.down & buff.hot_streak.down & ! action.pyroblast.in_flight ) ) )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.up",
								["action"] = "pyroblast",
							}, -- [16]
							{
								["action"] = "phoenix_flames",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time & buff.combustion.up || buff.combustion.down",
								["action"] = "scorch",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & buff.combustion.up",
								["action"] = "dragons_breath",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "scorch",
							}, -- [21]
						},
						["bm_combustion_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "lights_judgment",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "rune_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["action"] = "fire_blast",
								["criteria"] = "buff.blaster_master.down & ( talent.rune_of_power.enabled & action.rune_of_power.executing & action.rune_of_power.execute_remains < 0.6 || ( cooldown.combustion.ready || buff.combustion.up ) & ! talent.rune_of_power.enabled & ! action.pyroblast.in_flight & ! action.fireball.in_flight )",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [5]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "azerite.blaster_master.enabled & ( ( action.meteor.in_flight || prev_gcd.1.meteor || cooldown.meteor.remains > 5 ) || ! talent.meteor.enabled ) & ( buff.rune_of_power.up || ! talent.rune_of_power.enabled )",
								["use_off_gcd"] = "1",
								["action"] = "combustion",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.up",
								["action"] = "pyroblast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.up",
								["action"] = "pyroblast",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.combustion.remains",
								["action"] = "pyroblast",
							}, -- [15]
							{
								["action"] = "phoenix_flames",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["use_off_gcd"] = "1",
								["criteria"] = "buff.blaster_master.stack = 1 & buff.hot_streak.down & ! buff.pyroclasm.react & prev_gcd.1.pyroblast & ( buff.blaster_master.remains < 0.15 || gcd.remains < 0.15 )",
								["action"] = "fire_blast",
							}, -- [17]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["action"] = "fire_blast",
								["criteria"] = "buff.blaster_master.stack = 1 & ( action.scorch.executing & action.scorch.execute_remains < 0.15 || buff.blaster_master.remains < 0.15 )",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.down & ( cooldown.fire_blast.remains < cast_time || action.fire_blast.charges > 0 )",
								["action"] = "scorch",
							}, -- [19]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "buff.blaster_master.stack > 1 & ( prev_gcd.1.scorch & ! buff.hot_streak.up & ! action.scorch.executing || buff.blaster_master.remains < 0.15 )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max",
								["action"] = "dragons_breath",
							}, -- [22]
							{
								["action"] = "scorch",
								["enabled"] = true,
							}, -- [23]
						},
						["standard_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.flame_patch.enabled & active_enemies > 1 & ! firestarter.active ) || active_enemies > 4 ) & buff.hot_streak.react",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & buff.hot_streak.remains < action.fireball.execute_time",
								["action"] = "pyroblast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & ( prev_gcd.1.fireball || firestarter.active || action.pyroblast.in_flight )",
								["action"] = "pyroblast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "pyroblast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( cooldown.combustion.remains > 0 & buff.rune_of_power.down || firestarter.active ) & ! talent.kindling.enabled & ! variable.fire_blast_pooling & ( ( ( action.fireball.executing || action.pyroblast.executing ) & ( buff.heating_up.react || firestarter.active & ! buff.hot_streak.react & ! buff.heating_up.react ) ) || ( talent.searing_touch.enabled & target.health.pct <= 30 & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! action.pyroblast.in_flight & ! action.fireball.in_flight ) ) || ( firestarter.active & ( action.pyroblast.in_flight || action.fireball.in_flight ) & ! buff.heating_up.react & ! buff.hot_streak.react ) )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.kindling.enabled & buff.heating_up.react & ( cooldown.combustion.remains > full_recharge_time + 2 + talent.kindling.enabled || firestarter.remains > full_recharge_time || ( ! talent.rune_of_power.enabled || cooldown.rune_of_power.remains > time_to_die & action.rune_of_power.charges < 1 ) & cooldown.combustion.remains > time_to_die )",
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.up & talent.searing_touch.enabled & target.health.pct <= 30 & ( ( talent.flame_patch.enabled & active_enemies = 1 & ! firestarter.active ) || ( active_enemies < 4 & ! talent.flame_patch.enabled ) )",
								["action"] = "pyroblast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heating_up.react || ( ! buff.hot_streak.react & ( action.fire_blast.charges > 0 || talent.searing_touch.enabled & target.health.pct <= 30 ) ) ) & ! variable.phoenix_pooling",
								["action"] = "phoenix_flames",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "dragons_breath",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "tidestorm_codex",
								["criteria"] = "cooldown.combustion.remains > 20 || talent.firestarter.enabled & firestarter.remains > 20",
								["name"] = "tidestorm_codex",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "scorch",
							}, -- [13]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "scorch",
								["enabled"] = true,
							}, -- [15]
						},
						["rop_phase"] = {
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.flame_patch.enabled & active_enemies > 1 ) || active_enemies > 4 ) & buff.hot_streak.react",
								["action"] = "flamestrike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [3]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( cooldown.combustion.remains > 0 || firestarter.active & buff.rune_of_power.up ) & ( ! buff.heating_up.react & ! buff.hot_streak.react & ! prev_off_gcd.fire_blast & ( action.fire_blast.charges >= 2 || ( action.phoenix_flames.charges >= 1 & talent.phoenix_flames.enabled ) || ( talent.alexstraszas_fury.enabled & cooldown.dragons_breath.ready ) || ( talent.searing_touch.enabled & target.health.pct <= 30 ) || ( talent.firestarter.enabled & firestarter.active ) ) )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & buff.rune_of_power.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( cooldown.combustion.remains > 0 || firestarter.active & buff.rune_of_power.up ) & ( buff.heating_up.react & ( target.health.pct >= 30 || ! talent.searing_touch.enabled ) )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( cooldown.combustion.remains > 0 || firestarter.active & buff.rune_of_power.up ) & talent.searing_touch.enabled & target.health.pct <= 30 & ( buff.heating_up.react & ! action.scorch.executing || ! buff.heating_up.react & ! buff.hot_streak.react )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.up & talent.searing_touch.enabled & target.health.pct <= 30 & ( ! talent.flame_patch.enabled || active_enemies = 1 )",
								["action"] = "pyroblast",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.phoenix_flames & buff.heating_up.react",
								["action"] = "phoenix_flames",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "scorch",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "dragons_breath",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( talent.flame_patch.enabled & active_enemies > 2 ) || active_enemies > 5",
								["action"] = "flamestrike",
							}, -- [13]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [14]
						},
					},
					["version"] = 20181211.0847,
					["warnings"] = "Imported 8 action lists.\n",
					["spec"] = 63,
					["profile"] = "# Fire Mage\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Fire.simc\n# February 1, 2019 - 23:45\n\n# Changes:\n# - Use time_to_die rather than target.time_to_die for last-second ability usages.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\n# This variable sets the time at which Rune of Power should start being saved for the next Combustion phase\nactions.precombat+=/variable,name=combustion_rop_cutoff,op=set,value=60\nactions.precombat+=/snapshot_stats\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/pyroblast\n\n# Executed every time the actor is available.\nactions=counterspell\nactions+=/mirror_image,if=buff.combustion.down\nactions+=/rune_of_power,if=talent.firestarter.enabled&firestarter.remains>full_recharge_time||cooldown.combustion.remains>variable.combustion_rop_cutoff&buff.combustion.down||time_to_die<cooldown.combustion.remains&buff.combustion.down\nactions+=/call_action_list,name=combustion_phase,if=(talent.rune_of_power.enabled&cooldown.combustion.remains<=action.rune_of_power.cast_time||cooldown.combustion.ready)&!firestarter.active||buff.combustion.up\nactions+=/call_action_list,name=rop_phase,if=buff.rune_of_power.up&buff.combustion.down\nactions+=/variable,name=fire_blast_pooling,value=talent.rune_of_power.enabled&cooldown.rune_of_power.remains<cooldown.fire_blast.full_recharge_time&(cooldown.combustion.remains>variable.combustion_rop_cutoff||firestarter.active)&(cooldown.rune_of_power.remains<time_to_die||action.rune_of_power.charges>0)||cooldown.combustion.remains<action.fire_blast.full_recharge_time+cooldown.fire_blast.duration*azerite.blaster_master.enabled&!firestarter.active&cooldown.combustion.remains<time_to_die||talent.firestarter.enabled&firestarter.active&firestarter.remains<cooldown.fire_blast.full_recharge_time+cooldown.fire_blast.duration*azerite.blaster_master.enabled\nactions+=/variable,name=phoenix_pooling,value=talent.rune_of_power.enabled&cooldown.rune_of_power.remains<cooldown.phoenix_flames.full_recharge_time&cooldown.combustion.remains>variable.combustion_rop_cutoff&(cooldown.rune_of_power.remains<time_to_die||action.rune_of_power.charges>0)||cooldown.combustion.remains<action.phoenix_flames.full_recharge_time&cooldown.combustion.remains<time_to_die\nactions+=/call_action_list,name=standard_rotation\n\nactions.active_talents=living_bomb,if=active_enemies>1&buff.combustion.down&(cooldown.combustion.remains>cooldown.living_bomb.duration||cooldown.combustion.ready)\nactions.active_talents+=/meteor,if=buff.rune_of_power.up&(firestarter.remains>cooldown.meteor.duration||!firestarter.active)||cooldown.rune_of_power.remains>time_to_die&action.rune_of_power.charges<1||(cooldown.meteor.duration<cooldown.combustion.remains||cooldown.combustion.ready)&!talent.rune_of_power.enabled&(cooldown.meteor.duration<firestarter.remains||!talent.firestarter.enabled||!firestarter.active)\n\nactions.bm_combustion_phase=lights_judgment,if=buff.combustion.down\nactions.bm_combustion_phase+=/living_bomb,if=buff.combustion.down&active_enemies>1\nactions.bm_combustion_phase+=/rune_of_power,if=buff.combustion.down\nactions.bm_combustion_phase+=/fire_blast,use_while_casting=1,if=buff.blaster_master.down&(talent.rune_of_power.enabled&action.rune_of_power.executing&action.rune_of_power.execute_remains<0.6||(cooldown.combustion.ready||buff.combustion.up)&!talent.rune_of_power.enabled&!action.pyroblast.in_flight&!action.fireball.in_flight)\nactions.bm_combustion_phase+=/call_action_list,name=active_talents\nactions.bm_combustion_phase+=/combustion,use_off_gcd=1,use_while_casting=1,if=azerite.blaster_master.enabled&((action.meteor.in_flight||prev_gcd.1.meteor||cooldown.meteor.remains>5)||!talent.meteor.enabled)&(buff.rune_of_power.up||!talent.rune_of_power.enabled)\nactions.bm_combustion_phase+=/potion\nactions.bm_combustion_phase+=/blood_fury\nactions.bm_combustion_phase+=/berserking\nactions.bm_combustion_phase+=/fireblood\nactions.bm_combustion_phase+=/ancestral_call\nactions.bm_combustion_phase+=/call_action_list,name=trinkets\nactions.bm_combustion_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up\nactions.bm_combustion_phase+=/pyroblast,if=buff.hot_streak.up\nactions.bm_combustion_phase+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.combustion.remains\nactions.bm_combustion_phase+=/phoenix_flames\nactions.bm_combustion_phase+=/fire_blast,use_off_gcd=1,if=buff.blaster_master.stack=1&buff.hot_streak.down&!buff.pyroclasm.react&prev_gcd.1.pyroblast&(buff.blaster_master.remains<0.15||gcd.remains<0.15)\nactions.bm_combustion_phase+=/fire_blast,use_while_casting=1,if=buff.blaster_master.stack=1&(action.scorch.executing&action.scorch.execute_remains<0.15||buff.blaster_master.remains<0.15)\nactions.bm_combustion_phase+=/scorch,if=buff.hot_streak.down&(cooldown.fire_blast.remains<cast_time||action.fire_blast.charges>0)\nactions.bm_combustion_phase+=/fire_blast,use_while_casting=1,use_off_gcd=1,if=buff.blaster_master.stack>1&(prev_gcd.1.scorch&!buff.hot_streak.up&!action.scorch.executing||buff.blaster_master.remains<0.15)\nactions.bm_combustion_phase+=/living_bomb,if=buff.combustion.remains<gcd.max&active_enemies>1\nactions.bm_combustion_phase+=/dragons_breath,if=buff.combustion.remains<gcd.max\nactions.bm_combustion_phase+=/scorch\n\n# Combustion phase prepares abilities with a delay, then launches into the Combustion sequence\nactions.combustion_phase=lights_judgment,if=buff.combustion.down\nactions.combustion_phase+=/call_action_list,name=bm_combustion_phase,if=azerite.blaster_master.enabled&talent.flame_on.enabled\nactions.combustion_phase+=/rune_of_power,if=buff.combustion.down\nactions.combustion_phase+=/call_action_list,name=active_talents\nactions.combustion_phase+=/combustion,use_off_gcd=1,use_while_casting=1,if=(!azerite.blaster_master.enabled||!talent.flame_on.enabled)&((action.meteor.in_flight||prev_gcd.1.meteor||cooldown.meteor.remains>5)||!talent.meteor.enabled)&(buff.rune_of_power.up||!talent.rune_of_power.enabled)\nactions.combustion_phase+=/potion\nactions.combustion_phase+=/blood_fury\nactions.combustion_phase+=/berserking\nactions.combustion_phase+=/fireblood\nactions.combustion_phase+=/ancestral_call\nactions.combustion_phase+=/call_action_list,name=trinkets\nactions.combustion_phase+=/flamestrike,if=((talent.flame_patch.enabled&active_enemies>2)||active_enemies>6)&buff.hot_streak.react\nactions.combustion_phase+=/pyroblast,if=buff.pyroclasm.react&buff.combustion.remains>cast_time\nactions.combustion_phase+=/pyroblast,if=buff.hot_streak.react\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(!azerite.blaster_master.enabled||!talent.flame_on.enabled)&((buff.combustion.up&(buff.heating_up.react&!action.pyroblast.in_flight&!action.scorch.executing)||(action.scorch.execute_remains&buff.heating_up.down&buff.hot_streak.down&!action.pyroblast.in_flight)))\nactions.combustion_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up\nactions.combustion_phase+=/phoenix_flames\nactions.combustion_phase+=/scorch,if=buff.combustion.remains>cast_time&buff.combustion.up||buff.combustion.down\nactions.combustion_phase+=/living_bomb,if=buff.combustion.remains<gcd.max&active_enemies>1\nactions.combustion_phase+=/dragons_breath,if=buff.combustion.remains<gcd.max&buff.combustion.up\nactions.combustion_phase+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled\n\nactions.rop_phase=rune_of_power\nactions.rop_phase+=/flamestrike,if=((talent.flame_patch.enabled&active_enemies>1)||active_enemies>4)&buff.hot_streak.react\nactions.rop_phase+=/pyroblast,if=buff.hot_streak.react\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(cooldown.combustion.remains>0||firestarter.active&buff.rune_of_power.up)&(!buff.heating_up.react&!buff.hot_streak.react&!prev_off_gcd.fire_blast&(action.fire_blast.charges>=2||(action.phoenix_flames.charges>=1&talent.phoenix_flames.enabled)||(talent.alexstraszas_fury.enabled&cooldown.dragons_breath.ready)||(talent.searing_touch.enabled&target.health.pct<=30)||(talent.firestarter.enabled&firestarter.active)))\nactions.rop_phase+=/call_action_list,name=active_talents\nactions.rop_phase+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&buff.rune_of_power.remains>cast_time\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(cooldown.combustion.remains>0||firestarter.active&buff.rune_of_power.up)&(buff.heating_up.react&(target.health.pct>=30||!talent.searing_touch.enabled))\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(cooldown.combustion.remains>0||firestarter.active&buff.rune_of_power.up)&talent.searing_touch.enabled&target.health.pct<=30&(buff.heating_up.react&!action.scorch.executing||!buff.heating_up.react&!buff.hot_streak.react)\nactions.rop_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up&talent.searing_touch.enabled&target.health.pct<=30&(!talent.flame_patch.enabled||active_enemies=1)\nactions.rop_phase+=/phoenix_flames,if=!prev_gcd.1.phoenix_flames&buff.heating_up.react\nactions.rop_phase+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled\nactions.rop_phase+=/dragons_breath,if=active_enemies>2\nactions.rop_phase+=/flamestrike,if=(talent.flame_patch.enabled&active_enemies>2)||active_enemies>5\nactions.rop_phase+=/fireball\n\nactions.standard_rotation=flamestrike,if=((talent.flame_patch.enabled&active_enemies>1&!firestarter.active)||active_enemies>4)&buff.hot_streak.react\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&buff.hot_streak.remains<action.fireball.execute_time\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&(prev_gcd.1.fireball||firestarter.active||action.pyroblast.in_flight)\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&target.health.pct<=30&talent.searing_touch.enabled\nactions.standard_rotation+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains\nactions.standard_rotation+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(cooldown.combustion.remains>0&buff.rune_of_power.down||firestarter.active)&!talent.kindling.enabled&!variable.fire_blast_pooling&(((action.fireball.executing||action.pyroblast.executing)&(buff.heating_up.react||firestarter.active&!buff.hot_streak.react&!buff.heating_up.react))||(talent.searing_touch.enabled&target.health.pct<=30&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!action.pyroblast.in_flight&!action.fireball.in_flight))||(firestarter.active&(action.pyroblast.in_flight||action.fireball.in_flight)&!buff.heating_up.react&!buff.hot_streak.react))\nactions.standard_rotation+=/fire_blast,if=talent.kindling.enabled&buff.heating_up.react&(cooldown.combustion.remains>full_recharge_time+2+talent.kindling.enabled||firestarter.remains>full_recharge_time||(!talent.rune_of_power.enabled||cooldown.rune_of_power.remains>time_to_die&action.rune_of_power.charges<1)&cooldown.combustion.remains>time_to_die)\nactions.standard_rotation+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up&talent.searing_touch.enabled&target.health.pct<=30&((talent.flame_patch.enabled&active_enemies=1&!firestarter.active)||(active_enemies<4&!talent.flame_patch.enabled))\nactions.standard_rotation+=/phoenix_flames,if=(buff.heating_up.react||(!buff.hot_streak.react&(action.fire_blast.charges>0||talent.searing_touch.enabled&target.health.pct<=30)))&!variable.phoenix_pooling\nactions.standard_rotation+=/call_action_list,name=active_talents\nactions.standard_rotation+=/dragons_breath,if=active_enemies>1\nactions.standard_rotation+=/use_item,name=tidestorm_codex,if=cooldown.combustion.remains>20||talent.firestarter.enabled&firestarter.remains>20\nactions.standard_rotation+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled\nactions.standard_rotation+=/fireball\nactions.standard_rotation+=/scorch\n\nactions.trinkets=use_items",
				},
				["Arcane"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190401.15,
					["spec"] = 62,
					["desc"] = "# Arcane Mage\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:02\n\n# Changes:\n# - start_burn_phase, stop_burn_phase, and average_burn_length are handled by the addon.\n# - target.time_to_die -> (boss&time_to_die) so that we don't excessively burn on trash if we don't want to.",
					["lists"] = {
						["conserve"] = {
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = 0",
								["action"] = "charged_up",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "nether_tempest",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack <= 2 & ( cooldown.arcane_power.remains > 10 || active_enemies <= 2 )",
								["action"] = "arcane_orb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rule_of_threes.up & buff.arcane_charge.stack > 3",
								["action"] = "arcane_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "tidestorm_codex",
								["criteria"] = "buff.rune_of_power.down & ! buff.arcane_power.react & cooldown.arcane_power.remains > 20",
								["name"] = "tidestorm_codex",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & ( full_recharge_time <= execute_time || full_recharge_time <= cooldown.arcane_power.remains || ( boss & time_to_die <= cooldown.arcane_power.remains ) )",
								["action"] = "rune_of_power",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "arcane_missiles",
								["chain"] = "1",
								["criteria"] = "mana.pct <= 95 & buff.clearcasting.react",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.arcane_charge.stack = buff.arcane_charge.max_stack ) & ( ( mana.pct <= variable.conserve_mana ) || ( cooldown.arcane_power.remains > cooldown.rune_of_power.full_recharge_time & mana.pct <= variable.conserve_mana + 25 ) ) || ( talent.arcane_orb.enabled & cooldown.arcane_orb.remains <= gcd & cooldown.arcane_power.remains > 10 ) ) || mana.pct <= ( variable.conserve_mana - 10 )",
								["action"] = "arcane_barrage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct <= 95",
								["action"] = "supernova",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( mana.pct >= variable.conserve_mana || buff.arcane_charge.stack = 3 )",
								["action"] = "arcane_explosion",
							}, -- [11]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [13]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "burn_phase || ( boss & time_to_die < average_burn_length )",
								["list_name"] = "burn",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "( cooldown.arcane_power.remains = 0 & cooldown.evocation.remains <= average_burn_length & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack || ( talent.charged_up.enabled & cooldown.charged_up.remains = 0 ) ) )",
								["list_name"] = "burn",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! burn_phase",
								["list_name"] = "conserve",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [5]
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
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "summon_arcane_familiar",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "60 + ( 20 * azerite.equipoise.enabled )",
								["var_name"] = "conserve_mana",
							}, -- [6]
							{
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [10]
						},
						["burn"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack <= 1",
								["action"] = "charged_up",
							}, -- [1]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "nether_tempest",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rule_of_threes.up & talent.overpowered.enabled & active_enemies < 3",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.down",
								["action"] = "lights_judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.arcane_power.up & ( mana.pct >= 50 || cooldown.arcane_power.remains = 0 ) & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack )",
								["action"] = "rune_of_power",
							}, -- [6]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "arcane_power",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.up || ( boss & time_to_die < cooldown.arcane_power.remains )",
								["action"] = "use_items",
							}, -- [9]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( talent.rune_of_power.enabled & buff.rune_of_power.remains <= buff.presence_of_mind.max_stack * action.arcane_blast.execute_time ) || buff.arcane_power.remains <= buff.presence_of_mind.max_stack * action.arcane_blast.execute_time",
								["action"] = "presence_of_mind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.up & ( buff.berserking.up || buff.blood_fury.up || ! ( race.troll || race.orc ) )",
								["action"] = "potion",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = 0 || ( active_enemies < 3 || ( active_enemies < 2 & talent.resonance.enabled ) )",
								["action"] = "arcane_orb",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack )",
								["action"] = "arcane_barrage",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "arcane_explosion",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "arcane_missiles",
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.react & active_enemies < 3 & ( talent.amplification.enabled || ( ! talent.overpowered.enabled & azerite.arcane_pummeling.rank >= 2 ) || buff.arcane_power.down )",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "arcane_blast",
							}, -- [19]
							{
								["interrupt_if"] = "mana.pct>=85",
								["interrupt_immediate"] = "1",
								["action"] = "evocation",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [21]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance >= 10",
								["action"] = "blink",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance >= 10",
								["action"] = "blink",
							}, -- [2]
							{
								["action"] = "presence_of_mind",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_missiles",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "arcane_orb",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "supernova",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20190401.15,
					["warnings"] = "Imported 5 action lists.\n",
					["profile"] = "# Arcane Mage\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:02\n\n# Changes:\n# - start_burn_phase, stop_burn_phase, and average_burn_length are handled by the addon.\n# - target.time_to_die -> (boss&time_to_die) so that we don't excessively burn on trash if we don't want to.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\nactions.precombat+=/summon_arcane_familiar\n# conserve_mana is the mana percentage we want to go down to during conserve. It needs to leave enough room to worst case scenario spam AB only during AP.\nactions.precombat+=/variable,name=conserve_mana,op=set,value=60+(20*azerite.equipoise.enabled)\nactions.precombat+=/snapshot_stats\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/arcane_blast\n\n# Executed every time the actor is available.\n# Interrupt the boss when possible.\nactions=counterspell\n# Go to Burn Phase when already burning, or when boss will die soon.\nactions+=/call_action_list,name=burn,if=burn_phase||(boss&time_to_die<average_burn_length)\n# Start Burn Phase when Arcane Power is ready and Evocation will be ready (on average) before the burn phase is over. Also make sure we got 4 Arcane Charges, or can get 4 Arcane Charges with Charged Up.\nactions+=/call_action_list,name=burn,if=(cooldown.arcane_power.remains=0&cooldown.evocation.remains<=average_burn_length&(buff.arcane_charge.stack=buff.arcane_charge.max_stack||(talent.charged_up.enabled&cooldown.charged_up.remains=0)))\nactions+=/call_action_list,name=conserve,if=!burn_phase\nactions+=/call_action_list,name=movement\n\n# Increment our burn phase counter. Whenever we enter the `burn` actions without being in a burn phase, it means that we are about to start one.\n# actions.burn=variable,name=total_burns,op=add,value=1,if=!burn_phase\n# actions.burn+=/start_burn_phase,if=!burn_phase\n# End the burn phase when we just evocated.\n# actions.burn+=/stop_burn_phase,if=burn_phase&prev_gcd.1.evocation&target.time_to_die>average_burn_length&burn_phase_duration>0\n# Less than 1 instead of equals to 0, because of pre-cast Arcane Blast\nactions.burn+=/charged_up,if=buff.arcane_charge.stack<=1\nactions.burn+=/mirror_image\nactions.burn+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.rune_of_power.down&buff.arcane_power.down\n# When running Overpowered, and we got a Rule of Threes proc (AKA we got our 4th Arcane Charge via Charged Up), use it before using RoP+AP, because the mana reduction is otherwise largely wasted since the AB was free anyway.\nactions.burn+=/arcane_blast,if=buff.rule_of_threes.up&talent.overpowered.enabled&active_enemies<3\nactions.burn+=/lights_judgment,if=buff.arcane_power.down\nactions.burn+=/rune_of_power,if=!buff.arcane_power.up&(mana.pct>=50||cooldown.arcane_power.remains=0)&(buff.arcane_charge.stack=buff.arcane_charge.max_stack)\nactions.burn+=/berserking\nactions.burn+=/arcane_power\nactions.burn+=/use_items,if=buff.arcane_power.up||(boss&time_to_die<cooldown.arcane_power.remains)\nactions.burn+=/blood_fury\nactions.burn+=/fireblood\nactions.burn+=/ancestral_call\nactions.burn+=/presence_of_mind,if=(talent.rune_of_power.enabled&buff.rune_of_power.remains<=buff.presence_of_mind.max_stack*action.arcane_blast.execute_time)||buff.arcane_power.remains<=buff.presence_of_mind.max_stack*action.arcane_blast.execute_time\nactions.burn+=/potion,if=buff.arcane_power.up&(buff.berserking.up||buff.blood_fury.up||!(race.troll||race.orc))\nactions.burn+=/arcane_orb,if=buff.arcane_charge.stack=0||(active_enemies<3||(active_enemies<2&talent.resonance.enabled))\nactions.burn+=/arcane_barrage,if=active_enemies>=3&(buff.arcane_charge.stack=buff.arcane_charge.max_stack)\nactions.burn+=/arcane_explosion,if=active_enemies>=3\n# Ignore Arcane Missiles during Arcane Power, aside from some very specific exceptions, like not having Overpowered talented & running 3x Arcane Pummeling.\nactions.burn+=/arcane_missiles,if=buff.clearcasting.react&active_enemies<3&(talent.amplification.enabled||(!talent.overpowered.enabled&azerite.arcane_pummeling.rank>=2)||buff.arcane_power.down),chain=1\nactions.burn+=/arcane_blast,if=active_enemies<3\n# Now that we're done burning, we can update the average_burn_length with the length of this burn.\n# actions.burn+=/variable,name=average_burn_length,op=set,value=(variable.average_burn_length*variable.total_burns-variable.average_burn_length+(burn_phase_duration))%variable.total_burns\nactions.burn+=/evocation,interrupt_if=mana.pct>=85,interrupt_immediate=1\n# For the rare occasion where we go oom before evocation is back up. (Usually because we get very bad rng so the burn is cut very short)\nactions.burn+=/arcane_barrage\n\nactions.conserve=mirror_image\nactions.conserve+=/charged_up,if=buff.arcane_charge.stack=0\nactions.conserve+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.rune_of_power.down&buff.arcane_power.down\nactions.conserve+=/arcane_orb,if=buff.arcane_charge.stack<=2&(cooldown.arcane_power.remains>10||active_enemies<=2)\n# Arcane Blast shifts up in priority when running rule of threes.\nactions.conserve+=/arcane_blast,if=buff.rule_of_threes.up&buff.arcane_charge.stack>3\nactions.conserve+=/use_item,name=tidestorm_codex,if=buff.rune_of_power.down&!buff.arcane_power.react&cooldown.arcane_power.remains>20\nactions.conserve+=/rune_of_power,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&(full_recharge_time<=execute_time||full_recharge_time<=cooldown.arcane_power.remains||(boss&time_to_die<=cooldown.arcane_power.remains))\nactions.conserve+=/arcane_missiles,if=mana.pct<=95&buff.clearcasting.react,chain=1\n# During conserve, we still just want to continue not dropping charges as long as possible.So keep 'burning' as long as possible (aka conserve_mana threshhold) and then swap to a 4x AB->Abarr conserve rotation. If we do not have 4 AC, we can dip slightly lower to get a 4th AC. We also sustain at a higher mana percentage when we plan to use a Rune of Power during conserve phase, so we can burn during the Rune of Power.\nactions.conserve+=/arcane_barrage,if=((buff.arcane_charge.stack=buff.arcane_charge.max_stack)&((mana.pct<=variable.conserve_mana)||(cooldown.arcane_power.remains>cooldown.rune_of_power.full_recharge_time&mana.pct<=variable.conserve_mana+25))||(talent.arcane_orb.enabled&cooldown.arcane_orb.remains<=gcd&cooldown.arcane_power.remains>10))||mana.pct<=(variable.conserve_mana-10)\n# Supernova is barely worth casting, which is why it is so far down, only just above AB. \nactions.conserve+=/supernova,if=mana.pct<=95\n# Keep 'burning' in aoe situations until conserve_mana pct. After that only cast AE with 3 Arcane charges, since it's almost equal mana cost to a 3 stack AB anyway. At that point AoE rotation will be AB x3 -> AE -> Abarr\nactions.conserve+=/arcane_explosion,if=active_enemies>=3&(mana.pct>=variable.conserve_mana||buff.arcane_charge.stack=3)\nactions.conserve+=/arcane_blast\nactions.conserve+=/arcane_barrage\n\nactions.movement=shimmer,if=movement.distance>=10\nactions.movement+=/blink,if=movement.distance>=10\nactions.movement+=/presence_of_mind\nactions.movement+=/arcane_missiles\nactions.movement+=/arcane_orb\nactions.movement+=/supernova",
					["author"] = "SimulationCraft",
				},
			},
		},
		["Daggny - Frostwolf"] = {
			["runOnce"] = {
				["autoconvertDelayBackToText_20190422"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelayFadeToCheckbox_20190418"] = true,
				["autoconvertDelayTextToSweep_20190420"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["autoconvertDelayTextToSweep_20190420_1"] = true,
			},
			["specs"] = {
				[269] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["strict"] = false,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["package"] = "Windwalker",
					["gcdSync"] = true,
					["cycle"] = true,
					["potion"] = "potion_of_bursting_blood",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["nameplateRange"] = 8,
					["buffPadding"] = 0,
				},
				[268] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["bof_percent"] = 50,
						["isb_overlap"] = 1,
						["purify_stagger"] = 33,
						["eh_percent"] = 65,
						["brew_charges"] = 2,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["package"] = "Brewmaster",
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_agility",
					["buffPadding"] = 0,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["cycle"] = false,
				},
			},
			["displays"] = {
				["Defensives"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["Primary"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["AOE"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["Interrupts"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
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
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190610.1033,
					["author"] = "SimC",
					["desc"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# June 10, 2019 - 10:33\n\n# Changes:\n# - Relax Expel Harm a bit.\n# - Purify only if it won't prevent you from chaining ISB.\n# - Purifying Brew's stagger % is now a specialization option instead of hardcoded to the priority.\n# - Removed gift_of_the_ox entry to avoid confusion.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
								["action"] = "fortifying_brew",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "invocation_of_yulon",
								["action"] = "invocation_of_yulon",
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die > 25",
								["action"] = "invoke_niuzao",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & buff.ironskin_brew.remains < gcd.max & incoming_damage_3s > 0",
								["action"] = "ironskin_brew",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional > 1 & ( talent.black_ox_brew.enabled & cooldown.black_ox_brew.remains < 3 )",
								["action"] = "ironskin_brew",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.ironskin_brew.up & ( 2 - charges_fractional ) * recharge < buff.ironskin_brew.remains",
								["action"] = "purifying_brew",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "stagger.moderate",
								["action"] = "guard",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 5 * healing_sphere.count || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33",
								["action"] = "healing_elixir",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
							}, -- [20]
							{
								["action"] = "detox",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2 & buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.rushing_jade_wind.enabled & buff.blackout_combo.up & buff.rushing_jade_wind.up",
								["action"] = "tiger_palm",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( talent.invoke_niuzao_the_black_ox.enabled || talent.special_delivery.enabled ) & buff.blackout_combo.up",
								["action"] = "tiger_palm",
							}, -- [24]
							{
								["action"] = "blackout_strike",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & ( buff.bloodlust.down || ( buff.bloodlust.up & dot.breath_of_fire_dot.refreshable ) )",
								["action"] = "breath_of_fire",
							}, -- [28]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [29]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blackout_combo.enabled & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + gcd ) ) ) >= 65",
								["action"] = "tiger_palm",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "energy < 31",
								["action"] = "arcane_torrent",
							}, -- [32]
							{
								["action"] = "rushing_jade_wind",
								["enabled"] = true,
							}, -- [33]
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
					["version"] = 20190610.1033,
					["warnings"] = "Imported 2 action lists.\n",
					["profile"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# June 10, 2019 - 10:33\n\n# Changes:\n# - Relax Expel Harm a bit.\n# - Purify only if it won't prevent you from chaining ISB.\n# - Purifying Brew's stagger % is now a specialization option instead of hardcoded to the priority.\n# - Removed gift_of_the_ox entry to avoid confusion.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=spear_hand_strike\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\nactions+=/use_item,name=invocation_of_yulon\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/invoke_niuzao_the_black_ox,if=time_to_die>25\n\n# Ironskin Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/ironskin_brew,if=buff.blackout_combo.down&buff.ironskin_brew.remains<gcd.max&incoming_damage_3s>0\nactions+=/ironskin_brew,if=cooldown.brews.charges_fractional>1&(talent.black_ox_brew.enabled&cooldown.black_ox_brew.remains<3)\n\n# Purifying behaviour is based on normalization (iE the late expression triggers if stagger size increased over the last 30 ticks or 15 seconds).\nactions+=/purifying_brew,if=buff.ironskin_brew.up&(2-charges_fractional)*recharge<buff.ironskin_brew.remains\n\n# Guard / Healing Elixir\nactions+=/guard,if=stagger.moderate\nactions+=/expel_harm,if=health.pct<5*healing_sphere.count||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.brews.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\n\nactions+=/detox\n\nactions+=/rushing_jade_wind,if=spell_targets>=2&buff.rushing_jade_wind.down\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled||talent.special_delivery.enabled)&buff.blackout_combo.up\nactions+=/blackout_strike\nactions+=/keg_smash\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/rushing_jade_wind",
					["spec"] = 268,
				},
			},
		},
		["Tosku - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[581] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0,
					["aoe"] = 2,
					["package"] = "Vengeance",
					["gcdSync"] = true,
					["potionsReset"] = 20180919.1,
					["debuffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potion"] = "steelskin_potion",
					["throttleRefresh"] = false,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = false,
					["damage"] = true,
				},
				[577] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0,
					["aoe"] = 2,
					["package"] = "Havoc",
					["gcdSync"] = true,
					["potionsReset"] = 20180919.1,
					["debuffPadding"] = 0,
					["nameplateRange"] = 7,
					["cycle"] = false,
					["potion"] = "battle_potion_of_agility",
					["throttleRefresh"] = false,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["damageDots"] = false,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Havoc"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Havoc.simc",
					["builtIn"] = true,
					["date"] = 20190226.2347,
					["spec"] = 577,
					["desc"] = "# Havoc Demon Hunter\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Havoc.simc\n# February 26, 2019 - 23:23\n\n# Warnings:\n# - Using Demon Blades makes most Fury generation purely RNG driven and unpredictable, which will impact the quality of recommendations.\n# - Using Momentum is not recommended; Fel Rush will be recommended and the safety of Fel Rush cannot be detected by addons.\n\n# Changes:\n# - Added Consume Magic.\n# - Removed target_if check for Nemesis ability.\n# - Removed movement abilities from priority when not used for Momentum.\n# - Added Use Items to end of Cooldowns actionlist.\n# - Converted \"cooldown\" to \"action.X.cooldown\" where applicable.",
					["lists"] = {
						["normal"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.momentum.enabled & buff.prepared.down & time > 1",
								["action"] = "vengeful_retreat",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.waiting_for_momentum & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.waiting_for_momentum & ( active_enemies > desired_targets || raid_event.adds.in > 30 )",
								["action"] = "fel_barrage",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance",
								["action"] = "death_sweep",
							}, -- [4]
							{
								["action"] = "immolation_aura",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( ! raid_event.adds.exists || raid_event.adds.up ) & ! variable.waiting_for_momentum",
								["action"] = "eye_beam",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance",
								["action"] = "blade_dance",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 40",
								["action"] = "felblade",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blind_fury.enabled & ! variable.waiting_for_dark_slash & raid_event.adds.in > action.eye_beam.cooldown",
								["action"] = "eye_beam",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( talent.demon_blades.enabled || ! variable.waiting_for_momentum || fury.deficit < 30 || buff.metamorphosis.remains < 5 ) & ! variable.pooling_for_blade_dance & ! variable.waiting_for_dark_slash",
								["action"] = "annihilation",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( talent.demon_blades.enabled || ! variable.waiting_for_momentum || fury.deficit < 30 ) & ! variable.pooling_for_meta & ! variable.pooling_for_blade_dance & ! variable.waiting_for_dark_slash",
								["action"] = "chaos_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.blind_fury.enabled & raid_event.adds.in > action.eye_beam.cooldown",
								["action"] = "eye_beam",
							}, -- [12]
							{
								["action"] = "demons_bite",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 15 || buff.out_of_range.up",
								["action"] = "felblade",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.demon_blades.enabled",
								["action"] = "throw_glaive",
							}, -- [15]
						},
						["default"] = {
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["value"] = "talent.first_blood.enabled || spell_targets.blade_dance1 >= ( 3 - talent.trail_of_ruin.enabled )",
								["action"] = "variable",
								["var_name"] = "blade_dance",
							}, -- [3]
							{
								["enabled"] = true,
								["value"] = "! ( ! talent.nemesis.enabled || cooldown.nemesis.ready || cooldown.nemesis.remains > time_to_die || cooldown.nemesis.remains > 60 )",
								["action"] = "variable",
								["var_name"] = "waiting_for_nemesis",
							}, -- [4]
							{
								["enabled"] = true,
								["value"] = "! talent.demonic.enabled & cooldown.metamorphosis.remains < 6 & fury.deficit > 30 & ( ! variable.waiting_for_nemesis || cooldown.nemesis.remains < 10 )",
								["action"] = "variable",
								["var_name"] = "pooling_for_meta",
							}, -- [5]
							{
								["enabled"] = true,
								["value"] = "variable.blade_dance & ( fury < 75 - talent.first_blood.enabled * 20 )",
								["action"] = "variable",
								["var_name"] = "pooling_for_blade_dance",
							}, -- [6]
							{
								["enabled"] = true,
								["value"] = "talent.demonic.enabled & ! talent.blind_fury.enabled & cooldown.eye_beam.remains < ( gcd.max * 2 ) & fury.deficit > 20",
								["action"] = "variable",
								["var_name"] = "pooling_for_eye_beam",
							}, -- [7]
							{
								["enabled"] = true,
								["value"] = "talent.dark_slash.enabled & ! variable.pooling_for_blade_dance & ! variable.pooling_for_meta & cooldown.dark_slash.up",
								["action"] = "variable",
								["var_name"] = "waiting_for_dark_slash",
							}, -- [8]
							{
								["enabled"] = true,
								["value"] = "talent.momentum.enabled & ! buff.momentum.up",
								["action"] = "variable",
								["var_name"] = "waiting_for_momentum",
							}, -- [9]
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "gcd.remains = 0",
								["list_name"] = "cooldown",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 35",
								["action"] = "pick_up_fragment",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "talent.dark_slash.enabled & ( variable.waiting_for_dark_slash || debuff.dark_slash.up )",
								["list_name"] = "dark_slash",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "talent.demonic.enabled",
								["list_name"] = "demonic",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "normal",
							}, -- [15]
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
								["criteria"] = "! azerite.chaotic_transformation.enabled",
								["action"] = "metamorphosis",
							}, -- [6]
						},
						["demonic"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance",
								["action"] = "death_sweep",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.up || raid_event.adds.in > 25",
								["action"] = "eye_beam",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! cooldown.eye_beam.up || buff.metamorphosis.up ) & raid_event.adds.in > 30 ) || active_enemies > desired_targets",
								["action"] = "fel_barrage",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance & ! cooldown.metamorphosis.ready & ( cooldown.eye_beam.remains > ( 5 - azerite.revolving_blades.rank * 3 ) || ( raid_event.adds.in > action.blade_dance.cooldown & raid_event.adds.in < 25 ) )",
								["action"] = "blade_dance",
							}, -- [4]
							{
								["action"] = "immolation_aura",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance",
								["action"] = "annihilation",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 40",
								["action"] = "felblade",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance & ! variable.pooling_for_eye_beam",
								["action"] = "chaos_strike",
							}, -- [8]
							{
								["action"] = "demons_bite",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.out_of_range.up",
								["action"] = "throw_glaive",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.demon_blades.enabled",
								["action"] = "throw_glaive",
							}, -- [11]
						},
						["cooldown"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ( talent.demonic.enabled || variable.pooling_for_meta || variable.waiting_for_nemesis ) || time_to_die < 25",
								["action"] = "metamorphosis",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.demonic.enabled & ( ! azerite.chaotic_transformation.enabled || ( cooldown.eye_beam.remains > 20 & cooldown.blade_dance.remains > gcd.max ) )",
								["action"] = "metamorphosis",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.exists & debuff.nemesis.down & ( active_enemies > desired_targets || raid_event.adds.in > 60 )",
								["action"] = "nemesis",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists",
								["action"] = "nemesis",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.remains > 25 || time_to_die < 60",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "variable_intensity_gigavolt_oscillating_reactor",
								["action"] = "variable_intensity_gigavolt_oscillating_reactor",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "galecallers_boon",
								["action"] = "galecallers_boon",
								["sync"] = "fel_barrage",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "galecallers_boon",
								["action"] = "galecallers_boon",
								["criteria"] = "! talent.fel_barrage.enabled",
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
						},
						["dark_slash"] = {
							{
								["enabled"] = true,
								["criteria"] = "fury >= 80 & ( ! variable.blade_dance || ! cooldown.blade_dance.ready )",
								["action"] = "dark_slash",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "debuff.dark_slash.up",
								["action"] = "annihilation",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.dark_slash.up",
								["action"] = "chaos_strike",
							}, -- [3]
						},
					},
					["version"] = 20190226.2347,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 12: Unsupported action 'pick_up_fragment'.\n\nImported 6 action lists.\n",
					["author"] = "SimulationCraft",
					["profile"] = "# Havoc Demon Hunter\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Havoc.simc\n# February 26, 2019 - 23:23\n\n# Warnings:\n# - Using Demon Blades makes most Fury generation purely RNG driven and unpredictable, which will impact the quality of recommendations.\n# - Using Momentum is not recommended; Fel Rush will be recommended and the safety of Fel Rush cannot be detected by addons.\n\n# Changes:\n# - Added Consume Magic.\n# - Removed target_if check for Nemesis ability.\n# - Removed movement abilities from priority when not used for Momentum.\n# - Added Use Items to end of Cooldowns actionlist.\n# - Converted \"cooldown\" to \"action.X.cooldown\" where applicable.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/augmentation\nactions.precombat+=/food\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/metamorphosis,if=!azerite.chaotic_transformation.enabled\n\n# Executed every time the actor is available.\nactions=disrupt\nactions+=/consume_magic\nactions+=/variable,name=blade_dance,value=talent.first_blood.enabled||spell_targets.blade_dance1>=(3-talent.trail_of_ruin.enabled)\nactions+=/variable,name=waiting_for_nemesis,value=!(!talent.nemesis.enabled||cooldown.nemesis.ready||cooldown.nemesis.remains>time_to_die||cooldown.nemesis.remains>60)\nactions+=/variable,name=pooling_for_meta,value=!talent.demonic.enabled&cooldown.metamorphosis.remains<6&fury.deficit>30&(!variable.waiting_for_nemesis||cooldown.nemesis.remains<10)\nactions+=/variable,name=pooling_for_blade_dance,value=variable.blade_dance&(fury<75-talent.first_blood.enabled*20)\nactions+=/variable,name=pooling_for_eye_beam,value=talent.demonic.enabled&!talent.blind_fury.enabled&cooldown.eye_beam.remains<(gcd.max*2)&fury.deficit>20\nactions+=/variable,name=waiting_for_dark_slash,value=talent.dark_slash.enabled&!variable.pooling_for_blade_dance&!variable.pooling_for_meta&cooldown.dark_slash.up\nactions+=/variable,name=waiting_for_momentum,value=talent.momentum.enabled&!buff.momentum.up\nactions+=/disrupt\nactions+=/call_action_list,name=cooldown,if=gcd.remains=0\nactions+=/pick_up_fragment,if=fury.deficit>=35\nactions+=/call_action_list,name=dark_slash,if=talent.dark_slash.enabled&(variable.waiting_for_dark_slash||debuff.dark_slash.up)\nactions+=/run_action_list,name=demonic,if=talent.demonic.enabled\nactions+=/run_action_list,name=normal\n\nactions.cooldown=metamorphosis,if=!(talent.demonic.enabled||variable.pooling_for_meta||variable.waiting_for_nemesis)||time_to_die<25\nactions.cooldown+=/metamorphosis,if=talent.demonic.enabled&(!azerite.chaotic_transformation.enabled||(cooldown.eye_beam.remains>20&cooldown.blade_dance.remains>gcd.max))\nactions.cooldown+=/nemesis,if=raid_event.adds.exists&debuff.nemesis.down&(active_enemies>desired_targets||raid_event.adds.in>60)\nactions.cooldown+=/nemesis,if=!raid_event.adds.exists\nactions.cooldown+=/potion,if=buff.metamorphosis.remains>25||time_to_die<60\nactions.cooldown+=/use_item,name=variable_intensity_gigavolt_oscillating_reactor\nactions.cooldown+=/use_item,name=galecallers_boon,sync=fel_barrage\nactions.cooldown+=/use_item,name=galecallers_boon,if=!talent.fel_barrage.enabled\nactions.cooldown+=/use_items\n\nactions.dark_slash=dark_slash,if=fury>=80&(!variable.blade_dance||!cooldown.blade_dance.ready)\nactions.dark_slash+=/annihilation,if=debuff.dark_slash.up\nactions.dark_slash+=/chaos_strike,if=debuff.dark_slash.up\n\nactions.demonic=death_sweep,if=variable.blade_dance\nactions.demonic+=/eye_beam,if=raid_event.adds.up||raid_event.adds.in>25\nactions.demonic+=/fel_barrage,if=((!cooldown.eye_beam.up||buff.metamorphosis.up)&raid_event.adds.in>30)||active_enemies>desired_targets\nactions.demonic+=/blade_dance,if=variable.blade_dance&!cooldown.metamorphosis.ready&(cooldown.eye_beam.remains>(5-azerite.revolving_blades.rank*3)||(raid_event.adds.in>action.blade_dance.cooldown&raid_event.adds.in<25))\nactions.demonic+=/immolation_aura\nactions.demonic+=/annihilation,if=!variable.pooling_for_blade_dance\nactions.demonic+=/felblade,if=fury.deficit>=40\nactions.demonic+=/chaos_strike,if=!variable.pooling_for_blade_dance&!variable.pooling_for_eye_beam\n# actions.demonic+=/fel_rush,if=talent.demon_blades.enabled&!cooldown.eye_beam.ready&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions.demonic+=/demons_bite\nactions.demonic+=/throw_glaive,if=buff.out_of_range.up\n# actions.demonic+=/fel_rush,if=movement.distance>15||buff.out_of_range.up\n# actions.demonic+=/vengeful_retreat,if=movement.distance>15\nactions.demonic+=/throw_glaive,if=talent.demon_blades.enabled\n\nactions.normal=vengeful_retreat,if=talent.momentum.enabled&buff.prepared.down&time>1\nactions.normal+=/fel_rush,if=variable.waiting_for_momentum&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\n# actions.normal+=/fel_rush,if=talent.fel_mastery.enabled&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions.normal+=/fel_barrage,if=!variable.waiting_for_momentum&(active_enemies>desired_targets||raid_event.adds.in>30)\nactions.normal+=/death_sweep,if=variable.blade_dance\nactions.normal+=/immolation_aura\nactions.normal+=/eye_beam,if=active_enemies>1&(!raid_event.adds.exists||raid_event.adds.up)&!variable.waiting_for_momentum\nactions.normal+=/blade_dance,if=variable.blade_dance\nactions.normal+=/felblade,if=fury.deficit>=40\nactions.normal+=/eye_beam,if=!talent.blind_fury.enabled&!variable.waiting_for_dark_slash&raid_event.adds.in>action.eye_beam.cooldown\nactions.normal+=/annihilation,if=(talent.demon_blades.enabled||!variable.waiting_for_momentum||fury.deficit<30||buff.metamorphosis.remains<5)&!variable.pooling_for_blade_dance&!variable.waiting_for_dark_slash\nactions.normal+=/chaos_strike,if=(talent.demon_blades.enabled||!variable.waiting_for_momentum||fury.deficit<30)&!variable.pooling_for_meta&!variable.pooling_for_blade_dance&!variable.waiting_for_dark_slash\nactions.normal+=/eye_beam,if=talent.blind_fury.enabled&raid_event.adds.in>action.eye_beam.cooldown\nactions.normal+=/demons_bite\n# actions.normal+=/fel_rush,if=!talent.momentum.enabled&raid_event.movement.in>charges*10&talent.demon_blades.enabled\nactions.normal+=/felblade,if=movement.distance>15||buff.out_of_range.up\n# actions.normal+=/fel_rush,if=movement.distance>15||(buff.out_of_range.up&!talent.momentum.enabled)\n# actions.normal+=/vengeful_retreat,if=movement.distance>15\nactions.normal+=/throw_glaive,if=talent.demon_blades.enabled",
				},
				["Vengeance"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Vengeance.simc",
					["builtIn"] = true,
					["date"] = 20181211.1749,
					["spec"] = 581,
					["desc"] = "# Vengeance Demon Hunter\nhttps://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Vengeance.simc\n# December 11, 2018 - 16:43\n\n# Changes:\n# - Added Disrupt to default action list.\n# - Converted use_item entries for trinkets to use_items; removed conditions.\n# - Added some incoming damage / charge criteria to Demon Spikes.\n# - Reserve a charge of Infernal Strike at all times.\n# - Added Soul Barrier.",
					["profile"] = "# Vengeance Demon Hunter\nhttps://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Vengeance.simc\n# December 11, 2018 - 16:43\n\n# Changes:\n# - Added Disrupt to default action list.\n# - Converted use_item entries for trinkets to use_items; removed conditions.\n# - Added some incoming damage / charge criteria to Demon Spikes.\n# - Reserve a charge of Infernal Strike at all times.\n# - Added Soul Barrier.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/augmentation\nactions.precombat+=/food\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/disrupt\nactions+=/consume_magic\nactions+=/use_items\nactions+=/call_action_list,name=brand,if=talent.charred_flesh.enabled\nactions+=/call_action_list,name=defensives\nactions+=/call_action_list,name=normal\n\n# Fiery Brand Rotation\nactions.brand=sigil_of_flame,if=cooldown.fiery_brand.remains<2\nactions.brand+=/infernal_strike,if=cooldown.fiery_brand.remains=0\nactions.brand+=/fiery_brand\nactions.brand+=/immolation_aura,if=dot.fiery_brand.ticking\nactions.brand+=/fel_devastation,if=dot.fiery_brand.ticking\nactions.brand+=/infernal_strike,if=dot.fiery_brand.ticking\nactions.brand+=/sigil_of_flame,if=dot.fiery_brand.ticking\n\n# Defensives\nactions.defensives=demon_spikes,if=(full_recharge_time<1&incoming_damage_3s)||(active_enemies>3&incoming_damage_3s&buff.demon_spikes.down)||(incoming_damage_5s>0.25*health.max)\nactions.defensives=soul_barrier,if=(active_enemies>3&incoming_damage_3s&buff.demon_spikes.down)||(incoming_damage_5s>0.4*health.max)\nactions.defensives+=/metamorphosis\nactions.defensives+=/fiery_brand\n\n# Normal Rotation\nactions.normal=infernal_strike,if=full_recharge_time<1\nactions.normal+=/spirit_bomb,if=soul_fragments>=4\nactions.normal+=/soul_cleave,if=!talent.spirit_bomb.enabled\nactions.normal+=/soul_cleave,if=talent.spirit_bomb.enabled&soul_fragments=0\nactions.normal+=/immolation_aura,if=pain<=90\nactions.normal+=/felblade,if=pain<=70\nactions.normal+=/fracture,if=soul_fragments<=3\nactions.normal+=/fel_devastation\nactions.normal+=/sigil_of_flame\nactions.normal+=/shear\nactions.normal+=/throw_glaive",
					["version"] = 20181211.1749,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nImported 5 action lists.\n",
					["lists"] = {
						["brand"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fiery_brand.remains < 2",
								["action"] = "sigil_of_flame",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fiery_brand.remains = 0",
								["action"] = "infernal_strike",
							}, -- [2]
							{
								["action"] = "fiery_brand",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "immolation_aura",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "fel_devastation",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "infernal_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "sigil_of_flame",
							}, -- [7]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.charred_flesh.enabled",
								["action"] = "call_action_list",
								["list_name"] = "brand",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "defensives",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "normal",
							}, -- [7]
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
						},
						["defensives"] = {
							{
								["enabled"] = true,
								["criteria"] = "( full_recharge_time < 1 & incoming_damage_3s ) || ( active_enemies > 3 & incoming_damage_3s & buff.demon_spikes.down ) || ( incoming_damage_5s > 0.25 * health.max )",
								["action"] = "demon_spikes",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies > 3 & incoming_damage_3s & buff.demon_spikes.down ) || ( incoming_damage_5s > 0.4 * health.max )",
								["action"] = "soul_barrier",
							}, -- [2]
							{
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "fiery_brand",
								["enabled"] = true,
							}, -- [4]
						},
						["normal"] = {
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < 1",
								["action"] = "infernal_strike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= 4",
								["action"] = "spirit_bomb",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.spirit_bomb.enabled",
								["action"] = "soul_cleave",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.spirit_bomb.enabled & soul_fragments = 0",
								["action"] = "soul_cleave",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "pain <= 90",
								["action"] = "immolation_aura",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "pain <= 70",
								["action"] = "felblade",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments <= 3",
								["action"] = "fracture",
							}, -- [7]
							{
								["action"] = "fel_devastation",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "sigil_of_flame",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "shear",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "throw_glaive",
								["enabled"] = true,
							}, -- [11]
						},
					},
					["author"] = "SimC",
				},
			},
		},
		["Tosh - Kil'jaeden"] = {
			["toggles"] = {
				["cooldowns"] = {
					["value"] = true,
				},
			},
			["minimapIcon"] = true,
			["displays"] = {
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -617.02685546875,
					["y"] = 648.054565429688,
				},
				["Primary"] = {
					["zoom"] = 0,
					["y"] = -111.992607116699,
					["border"] = {
						["fit"] = false,
					},
					["queue"] = {
						["height"] = 22,
						["width"] = 22,
					},
					["rel"] = "CENTER",
					["x"] = -166.004470825195,
					["primaryWidth"] = 36,
					["primaryHeight"] = 36,
					["targets"] = {
						["enabled"] = false,
						["font"] = "Expressway",
					},
					["numIcons"] = 2,
					["keybindings"] = {
						["y"] = 6,
						["fontSize"] = 16,
						["anchor"] = "TOPLEFT",
						["x"] = 0,
						["font"] = "Expressway",
					},
					["delays"] = {
						["anchor"] = "BOTTOMRIGHT",
						["font"] = "Expressway",
						["fontSize"] = 14,
					},
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["zoom"] = 0,
					["y"] = 665.052001953125,
					["x"] = -912.0517578125,
					["targets"] = {
						["font"] = "Expressway",
					},
					["keybindings"] = {
						["font"] = "Expressway",
					},
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -515.023681640625,
					["y"] = 654.05517578125,
				},
			},
			["packs"] = {
				["Shadow"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc",
					["builtIn"] = true,
					["date"] = 20181230.2119,
					["author"] = "SimC",
					["desc"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc\n# December 30, 2018 - 21:18\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.",
					["lists"] = {
						["single"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up & cooldown.void_bolt.remains >= 1.5 & azerite.searing_dialogue.rank >= 1",
								["action"] = "mind_sear",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || cooldown.shadow_word_death.charges = 2 || ( cooldown.shadow_word_death.charges = 1 & cooldown.shadow_word_death.remains < gcd.max )",
								["action"] = "shadow_word_death",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [7]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.voidform.up || ( cooldown.shadow_word_death.charges = 2 & buff.voidform.stack < 15 )",
								["action"] = "shadow_word_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.dots_up",
								["action"] = "mind_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.remains > 4 & dot.vampiric_touch.remains > 4",
								["action"] = "void_torrent",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 4 & ! talent.misery.enabled & ! talent.dark_void.enabled",
								["action"] = "shadow_word_pain",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 6 || ( talent.misery.enabled & dot.shadow_word_pain.refreshable )",
								["action"] = "vampiric_touch",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
								["criteria"] = "azerite.searing_dialogue.rank >= 3",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [16]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [17]
						},
						["default"] = {
							{
								["action"] = "silence",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || target.time_to_die <= 80 || target.health.pct < 35",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "dot.shadow_word_pain.ticking & dot.vampiric_touch.ticking",
								["var_name"] = "dots_up",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "fireblood",
							}, -- [5]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "ancestral_call",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "spell_targets.mind_sear > ( 5 + 1 * talent.misery.enabled )",
								["list_name"] = "aoe",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "cleave",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies = 1",
								["list_name"] = "single",
							}, -- [11]
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
								["criteria"] = "! buff.shadowform.up",
								["action"] = "shadowform",
							}, -- [6]
							{
								["action"] = "mind_blast",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "mind_blast",
								["enabled"] = true,
							}, -- [8]
						},
						["aoe"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.dark_void.enabled & dot.shadow_word_pain.remains > travel_time",
								["action"] = "void_bolt",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [5]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [8]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [9]
						},
						["cleave"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || buff.voidform.down",
								["action"] = "shadow_word_death",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [6]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.mind_sear < 4 & azerite.searing_dialogue.rank = 0 ) || ( spell_targets.mind_sear < 3 & azerite.searing_dialogue.rank = 1 ) || ( spell_targets.mind_sear < 2 & azerite.searing_dialogue.rank >= 2 )",
								["action"] = "mind_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 5 & raid_event.adds.duration < 2 ) || raid_event.adds.duration > 2",
								["action"] = "shadow_crash",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 4 & ( ! talent.misery.enabled & ! talent.dark_void.enabled )",
								["action"] = "shadow_word_pain",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die > 6 )",
								["action"] = "vampiric_touch",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.refreshable & ( talent.misery.enabled & target.time_to_die > 4 )",
								["action"] = "vampiric_touch",
							}, -- [12]
							{
								["action"] = "void_torrent",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
								["criteria"] = "spell_targets.mind_sear > 1",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [15]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [16]
						},
					},
					["version"] = 20181230.2119,
					["warnings"] = "WARNING:  The import for 'single' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - harvested_thoughts\n\nImported 5 action lists.\n",
					["profile"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc\n# December 30, 2018 - 21:18\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/mind_blast\nactions.precombat+=/shadow_word_void\n\n# Executed every time the actor is available.\nactions=silence\nactions+=/use_items\nactions+=/potion,if=buff.bloodlust.react||target.time_to_die<=80||target.health.pct<35\nactions+=/variable,name=dots_up,op=set,value=dot.shadow_word_pain.ticking&dot.vampiric_touch.ticking\nactions+=/fireblood,if=buff.voidform.up\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/ancestral_call,if=buff.voidform.up\nactions+=/run_action_list,name=aoe,if=spell_targets.mind_sear>(5+1*talent.misery.enabled)\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single,if=active_enemies=1\n\nactions.aoe=void_eruption\nactions.aoe+=/dark_ascension,if=buff.voidform.down\nactions.aoe+=/void_bolt,if=talent.dark_void.enabled&dot.shadow_word_pain.remains>travel_time\nactions.aoe+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.aoe+=/dark_void,if=raid_event.adds.in>10\nactions.aoe+=/mindbender\nactions.aoe+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.aoe+=/mind_sear,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.aoe+=/shadow_word_pain\n\nactions.cleave=void_eruption\nactions.cleave+=/dark_ascension,if=buff.voidform.down\nactions.cleave+=/void_bolt\nactions.cleave+=/shadow_word_death,if=target.time_to_die<3||buff.voidform.down\nactions.cleave+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.cleave+=/dark_void,if=raid_event.adds.in>10\nactions.cleave+=/mindbender\nactions.cleave+=/mind_blast,if=(spell_targets.mind_sear<4&azerite.searing_dialogue.rank=0)||(spell_targets.mind_sear<3&azerite.searing_dialogue.rank=1)||(spell_targets.mind_sear<2&azerite.searing_dialogue.rank>=2)\nactions.cleave+=/shadow_crash,if=(raid_event.adds.in>5&raid_event.adds.duration<2)||raid_event.adds.duration>2\nactions.cleave+=/shadow_word_pain,if=refreshable&target.time_to_die>4&(!talent.misery.enabled&!talent.dark_void.enabled)\nactions.cleave+=/vampiric_touch,if=refreshable&(target.time_to_die>6)\nactions.cleave+=/vampiric_touch,if=dot.shadow_word_pain.refreshable&(talent.misery.enabled&target.time_to_die>4)\nactions.cleave+=/void_torrent\nactions.cleave+=/mind_sear,if=spell_targets.mind_sear>1,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.cleave+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.cleave+=/shadow_word_pain\n\nactions.single=void_eruption\nactions.single+=/dark_ascension,if=buff.voidform.down\nactions.single+=/void_bolt\nactions.single+=/mind_sear,if=buff.harvested_thoughts.up&cooldown.void_bolt.remains>=1.5&azerite.searing_dialogue.rank>=1\nactions.single+=/shadow_word_death,if=target.time_to_die<3||cooldown.shadow_word_death.charges=2||(cooldown.shadow_word_death.charges=1&cooldown.shadow_word_death.remains<gcd.max)\nactions.single+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.single+=/dark_void,if=raid_event.adds.in>10\nactions.single+=/mindbender\nactions.single+=/shadow_word_death,if=!buff.voidform.up||(cooldown.shadow_word_death.charges=2&buff.voidform.stack<15)\nactions.single+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.single+=/mind_blast,if=variable.dots_up\nactions.single+=/void_torrent,if=dot.shadow_word_pain.remains>4&dot.vampiric_touch.remains>4\nactions.single+=/shadow_word_pain,if=refreshable&target.time_to_die>4&!talent.misery.enabled&!talent.dark_void.enabled\nactions.single+=/vampiric_touch,if=refreshable&target.time_to_die>6||(talent.misery.enabled&dot.shadow_word_pain.refreshable)\nactions.single+=/mind_sear,if=azerite.searing_dialogue.rank>=3,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.single+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.single+=/shadow_word_pain",
					["spec"] = 258,
				},
			},
			["notifications"] = {
				["y"] = 537.033508300781,
				["x"] = -99.0065765380859,
			},
			["iconStore"] = {
				["minimapPos"] = 166.10719463682,
				["hide"] = true,
			},
			["specs"] = {
				[258] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0.25,
					["package"] = "Shadow",
					["throttleRefresh"] = false,
					["damageExpiration"] = 6,
					["nameplates"] = false,
					["potionsReset"] = 20180919.1,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potion"] = "potion_of_rising_death",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
				},
			},
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
		},
		["Yorman - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[103] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["package"] = "Feral",
					["throttleRefresh"] = false,
					["gcdSync"] = true,
					["aoe"] = 3,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_agility",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 3,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
				[104] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["throttleRefresh"] = false,
					["package"] = "Guardian",
					["gcdSync"] = true,
					["aoe"] = 3,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "steelskin_potion",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 6,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
				[102] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["package"] = "Balance",
					["throttleRefresh"] = false,
					["gcdSync"] = true,
					["aoe"] = 3,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_rising_death",
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Feral"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Feral.simc",
					["builtIn"] = true,
					["date"] = 20190123.1046,
					["spec"] = 103,
					["desc"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Feral.simc\n# January 23, 2019 - 10:46\n\n# Changes:\n# - Added Skull Bash.\n# - Added Brutal Slash/Swipe to opener in multi-target.\n# - Placed Cat Form after Prowl since Prowl triggers Cat Form.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Check for target count for swipe_cat in generators list -- not just Scent of Blood.\n# - Added backup plan for opener.\n# - Using ShmooDude's edits.",
					["profile"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Feral.simc\n# January 23, 2019 - 10:46\n\n# Changes:\n# - Added Skull Bash.\n# - Added Brutal Slash/Swipe to opener in multi-target.\n# - Placed Cat Form after Prowl since Prowl triggers Cat Form.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Check for target count for swipe_cat in generators list -- not just Scent of Blood.\n# - Added backup plan for opener.\n# - Using ShmooDude's edits.\n\n# Feral Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Feral.simc\n# January 5, 2019 - 22:28\n\n# Changes:\n# - Added Skull Bash.\n# - Added Brutal Slash/Swipe to opener in multi-target.\n# - Placed Cat Form after Prowl since Prowl triggers Cat Form.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Check for target count for swipe_cat in generators list -- not just Scent of Blood.\n# - Added backup plan for opener.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/variable,name=rip_ticks,value=8\nactions.precombat+=/regrowth,if=talent.bloodtalons.enabled\nactions.precombat+=/prowl\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/berserk\n\n# Executed every time the actor is available.\nactions=auto_attack,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/skull_bash\nactions+=/call_action_list,name=opener,if=!opener_done&(buff.berserk.up||buff.incarnation.up)\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/call_action_list,name=cooldowns\nactions+=/ferocious_bite,target_if=talent.sabertooth.enabled&combo_points>spell_targets.thrash_cat&dot.rip.ticking&dot.rip.remains<3&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\nactions+=/call_action_list,name=finishers,if=combo_points>4\nactions+=/call_action_list,name=generators_aoe,if=combo_points<5&spell_targets.thrash_cat>1\nactions+=/call_action_list,name=generators,if=combo_points<5\n\nactions.cooldowns=berserk,if=energy>=30&(cooldown.tigers_fury.remains>5||cooldown.tigers_fury.remains<1)\nactions.cooldowns+=/incarnation,if=energy>=30\nactions.cooldowns+=/use_items,if=buff.tigers_fury.up\nactions.cooldowns+=/tigers_fury,if=energy.deficit>=50||buff.tigers_fury.down\nactions.cooldowns+=/berserking\nactions.cooldowns+=/pool_resource,for_next=1\nactions.cooldowns+=/feral_frenzy,if=combo_points=0\nactions.cooldowns+=/potion,name=battle_potion_of_agility,if=target.time_to_die<65||(time_to_die<180&(buff.berserk.up||buff.incarnation.up))\nactions.cooldowns+=/shadowmeld,if=combo_points<5&energy>=action.rake.cost&dot.rake.pmultiplier<2.1&buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.incarnation.enabled||cooldown.incarnation.remains>18)&!buff.incarnation.up\n\nactions.finishers=regrowth,if=buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.stack<2\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.down\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/primal_wrath,target_if=spell_targets.primal_wrath>1+talent.sabertooth.enabled\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,target_if=!talent.sabertooth.enabled&refreshable&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,target_if=talent.sabertooth.enabled&(!ticking||remains<=duration*0.3&persistent_multiplier>dot.rip.pmultiplier)&target.time_to_die>dot.rip.remains+variable.rip_ticks*(1+dot.rip.ticking*3)*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.remains<12\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/maim,if=buff.iron_jaws.up\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/ferocious_bite,max_energy=1\n\nactions.generators=variable,name=rake_ttd,value=(1+(spell_targets.thrash_cat-1)*!talent.brutal_slash.enabled)*action.rake.tick_time\nactions.generators+=/regrowth,if=talent.bloodtalons.enabled&buff.predatory_swiftness.up&buff.bloodtalons.down&combo_points=4&dot.rake.remains<4&target.time_to_die>dot.rake.remains+variable.rake_ttd\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,target_if=(!ticking||!talent.bloodtalons.enabled&refreshable)&target.time_to_die>dot.rake.remains+variable.rake_ttd\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,target_if=talent.bloodtalons.enabled&buff.bloodtalons.up&remains<=7&persistent_multiplier>dot.rake.pmultiplier*0.85&target.time_to_die>dot.rake.remains+variable.rake_ttd\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/brutal_slash,if=(buff.tigers_fury.up||(charges>=2&cooldown.tigers_fury.remains>full_recharge_time))&raid_event.adds.in>full_recharge_time\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/moonfire_cat,target_if=refreshable&target.time_to_die>remains+(2+2*(spell_targets.thrash_cat-1)*!talent.brutal_slash.enabled)*dot.moonfire_cat.tick_time\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=refreshable&(spell_targets.thrash_cat>1||(azerite.wild_fleshrending.enabled&target.time_to_die>remains+action.thrash_cat.tick_time))\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/shred,if=dot.rake.remains>(action.shred.cost+action.rake.cost-energy)%energy.regen||buff.clearcasting.react||!(target.time_to_die>dot.rake.remains+variable.rake_ttd)\n\nactions.generators_aoe=pool_resource,for_next=1\nactions.generators_aoe+=/thrash_cat,if=refreshable&spell_targets.thrash_cat>2||talent.scent_of_blood.enabled&buff.scent_of_blood.down&spell_targets.thrash_cat>3\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/brutal_slash,if=spell_targets.brutal_slash>desired_targets\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/swipe_cat,if=buff.scent_of_blood.up\n\nactions.opener=tigers_fury\nactions.opener+=/rake,if=!ticking||buff.prowl.up\nactions.opener+=/primal_wrath,if=active_enemies>1&combo_points>1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)\nactions.opener+=/rip,if=active_enemies=1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&dot.rake.ticking&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)",
					["version"] = 20190123.1046,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nImported 7 action lists.\n",
					["lists"] = {
						["opener"] = {
							{
								["action"] = "tigers_fury",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || buff.prowl.up",
								["action"] = "rake",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & combo_points > 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
								["action"] = "primal_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & dot.rake.ticking & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
								["action"] = "rip",
							}, -- [4]
						},
						["generators_aoe"] = {
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & spell_targets.thrash_cat > 2 || talent.scent_of_blood.enabled & buff.scent_of_blood.down & spell_targets.thrash_cat > 3",
								["action"] = "thrash_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > desired_targets",
								["action"] = "brutal_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.scent_of_blood.up",
								["action"] = "swipe_cat",
							}, -- [6]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "auto_attack",
							}, -- [1]
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! opener_done & ( buff.berserk.up || buff.incarnation.up )",
								["list_name"] = "opener",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up || buff.shadowmeld.up",
								["action"] = "rake",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.sabertooth.enabled & combo_points > spell_targets.thrash_cat & dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["action"] = "ferocious_bite",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "combo_points > 4",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "combo_points < 5 & spell_targets.thrash_cat > 1",
								["list_name"] = "generators_aoe",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "combo_points < 5",
								["list_name"] = "generators",
							}, -- [10]
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
								["value"] = "8",
								["var_name"] = "rip_ticks",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled",
								["action"] = "regrowth",
							}, -- [5]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [9]
						},
						["generators"] = {
							{
								["value"] = "( 1 + ( spell_targets.thrash_cat - 1 ) * ! talent.brutal_slash.enabled ) * action.rake.tick_time",
								["var_name"] = "rake_ttd",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.predatory_swiftness.up & buff.bloodtalons.down & combo_points = 4 & dot.rake.remains < 4 & target.time_to_die > dot.rake.remains + variable.rake_ttd",
								["action"] = "regrowth",
							}, -- [2]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! ticking || ! talent.bloodtalons.enabled & refreshable ) & target.time_to_die > dot.rake.remains + variable.rake_ttd",
								["action"] = "rake",
							}, -- [4]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.up & remains <= 7 & persistent_multiplier > dot.rake.pmultiplier * 0.85 & target.time_to_die > dot.rake.remains + variable.rake_ttd",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( buff.tigers_fury.up || ( charges >= 2 & cooldown.tigers_fury.remains > full_recharge_time ) ) & raid_event.adds.in > full_recharge_time",
								["action"] = "brutal_slash",
							}, -- [8]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > remains + ( 2 + 2 * ( spell_targets.thrash_cat - 1 ) * ! talent.brutal_slash.enabled ) * dot.moonfire_cat.tick_time",
								["action"] = "moonfire_cat",
							}, -- [10]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( spell_targets.thrash_cat > 1 || ( azerite.wild_fleshrending.enabled & target.time_to_die > remains + action.thrash_cat.tick_time ) )",
								["action"] = "thrash_cat",
							}, -- [12]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [14]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "dot.rake.remains > ( action.shred.cost + action.rake.cost - energy ) % energy.regen || buff.clearcasting.react || ! ( target.time_to_die > dot.rake.remains + variable.rake_ttd )",
								["action"] = "shred",
							}, -- [16]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.predatory_swiftness.up & talent.bloodtalons.enabled & buff.bloodtalons.stack < 2",
								["action"] = "regrowth",
							}, -- [1]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.down",
								["action"] = "savage_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.primal_wrath > 1 + talent.sabertooth.enabled",
								["action"] = "primal_wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.sabertooth.enabled & refreshable & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["action"] = "rip",
							}, -- [7]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.sabertooth.enabled & ( ! ticking || remains <= duration * 0.3 & persistent_multiplier > dot.rip.pmultiplier ) & target.time_to_die > dot.rip.remains + variable.rip_ticks * ( 1 + dot.rip.ticking * 3 ) * action.rip.tick_time",
								["action"] = "rip",
							}, -- [9]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.remains < 12",
								["action"] = "savage_roar",
							}, -- [11]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.iron_jaws.up",
								["action"] = "maim",
							}, -- [13]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [14]
							{
								["max_energy"] = "1",
								["action"] = "ferocious_bite",
								["enabled"] = true,
							}, -- [15]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "energy >= 30 & ( cooldown.tigers_fury.remains > 5 || cooldown.tigers_fury.remains < 1 )",
								["action"] = "berserk",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "energy >= 30",
								["action"] = "incarnation",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "use_items",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit >= 50 || buff.tigers_fury.down",
								["action"] = "tigers_fury",
							}, -- [4]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "combo_points = 0",
								["action"] = "feral_frenzy",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "potion",
								["criteria"] = "target.time_to_die < 65 || ( time_to_die < 180 & ( buff.berserk.up || buff.incarnation.up ) )",
								["potion"] = "battle_potion_of_agility",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & energy >= action.rake.cost & dot.rake.pmultiplier < 2.1 & buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.incarnation.enabled || cooldown.incarnation.remains > 18 ) & ! buff.incarnation.up",
								["action"] = "shadowmeld",
							}, -- [9]
						},
					},
					["author"] = "SimC",
				},
				["Balance"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Balance.simc",
					["builtIn"] = true,
					["date"] = 20190106.2123,
					["author"] = "SimC",
					["desc"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Balance.simc\n# January 6, 2019 - 21:19\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Adjusted sf_targets variable for addon syntax.\n# - Added Use Items.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).",
					["lists"] = {
						["default"] = {
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "berserking",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "arcane_torrent",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "lights_judgment",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "fireblood",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "ancestral_call",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ca_inc.remains > 30",
								["action"] = "use_items",
							}, -- [9]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "azerite.lively_spirit.enabled & ( cooldown.incarnation.remains < 2 || cooldown.celestial_alignment.remains < 12 )",
								["action"] = "innervate",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "astral_power >= 40",
								["action"] = "incarnation",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "astral_power >= 40 & ( ! azerite.lively_spirit.enabled || buff.lively_spirit.up ) & ( buff.starlord.stack >= 2 || ! talent.starlord.enabled || ! azerite.streaking_stars.enabled )",
								["action"] = "celestial_alignment",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & solar_wrath.ap_check",
								["action"] = "fury_of_elune",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & ap_check",
								["action"] = "force_of_nature",
							}, -- [15]
							{
								["enabled"] = true,
								["buff_name"] = "starlord",
								["action"] = "cancel_buff",
								["criteria"] = "buff.starlord.remains < 8 & ! solar_wrath.ap_check",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( buff.starlord.stack < 3 || buff.starlord.remains >= 8 ) & spell_targets >= variable.sf_targets & ( target.time_to_die + 1 ) * spell_targets > cost % 2.5",
								["action"] = "starfall",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( talent.starlord.enabled & ( buff.starlord.stack < 3 || buff.starlord.remains >= 8 & buff.arcanic_pulsar.stack < 8 ) || ! talent.starlord.enabled & ( buff.arcanic_pulsar.stack < 8 || buff.ca_inc.up ) ) & spell_targets.starfall < variable.sf_targets & buff.lunar_empowerment.stack + buff.solar_empowerment.stack < 4 & buff.solar_empowerment.stack < 3 & buff.lunar_empowerment.stack < 3 & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.starsurge ) || target.time_to_die <= execute_time * astral_power % 40 || ! solar_wrath.ap_check",
								["action"] = "starsurge",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 4 + spell_targets & ( spell_targets > 1 + talent.twin_moons.enabled || dot.moonfire.ticking ) & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.sunfire ) )",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 6 & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.moonfire ) )",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) >= 6 & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.stellar_flare ) )",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "new_moon",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "half_moon",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "full_moon",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.solar_empowerment.stack < 3 & ( ap_check || buff.lunar_empowerment.stack = 3 ) & ( ( buff.warrior_of_elune.up || buff.lunar_empowerment.up || spell_targets >= 2 & ! buff.solar_empowerment.up || azerite.dawning_sun.enabled & ! buff.dawning_sun.up ) & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ( ! prev.lunar_strike & ! talent.incarnation.enabled || prev.solar_wrath ) ) || azerite.streaking_stars.enabled & buff.ca_inc.up & prev.solar_wrath )",
								["action"] = "lunar_strike",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "azerite.streaking_stars.rank < 3 || ! buff.ca_inc.up || ! prev.solar_wrath",
								["action"] = "solar_wrath",
							}, -- [26]
							{
								["action"] = "sunfire",
								["enabled"] = true,
							}, -- [27]
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
								["op"] = "set",
								["action"] = "variable",
								["value"] = "4 + ( talent.twin_moons.enabled & ( azerite.arcanic_pulsar.enabled || talent.starlord.enabled ) ) - ( ! azerite.arcanic_pulsar.enabled & ! talent.starlord.enabled & talent.stellar_drift.enabled )",
								["var_name"] = "sf_targets",
							}, -- [4]
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "solar_wrath",
								["enabled"] = true,
							}, -- [8]
						},
					},
					["version"] = 20190106.2123,
					["warnings"] = "Imported 2 action lists.\n",
					["spec"] = 102,
					["profile"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Balance.simc\n# January 6, 2019 - 21:19\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Adjusted sf_targets variable for addon syntax.\n# - Added Use Items.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Azerite Variables\n# actions.precombat+=/variable,name=az_ss,value=azerite.streaking_stars.rank\n# actions.precombat+=/variable,name=az_ds,value=azerite.dawning_sun.rank\n# actions.precombat+=/variable,name=az_ap,value=azerite.arcanic_pulsar.rank\n# Starfall v Starsurge target cutoff\nactions.precombat+=/variable,name=sf_targets,op=set,value=4+(talent.twin_moons.enabled&(azerite.arcanic_pulsar.enabled||talent.starlord.enabled))-(!azerite.arcanic_pulsar.enabled&!talent.starlord.enabled&talent.stellar_drift.enabled)\nactions.precombat+=/moonkin_form\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/solar_wrath\n\n# Executed every time the actor is available.\nactions=solar_beam\nactions+=/potion,if=buff.ca_inc.up\nactions+=/blood_fury,if=buff.ca_inc.up\nactions+=/berserking,if=buff.ca_inc.up\nactions+=/arcane_torrent,if=buff.ca_inc.up\nactions+=/lights_judgment,if=buff.ca_inc.up\nactions+=/fireblood,if=buff.ca_inc.up\nactions+=/ancestral_call,if=buff.ca_inc.up\n\n# CDs\nactions+=/use_items,if=cooldown.ca_inc.remains>30\nactions+=/warrior_of_elune\nactions+=/innervate,if=azerite.lively_spirit.enabled&(cooldown.incarnation.remains<2||cooldown.celestial_alignment.remains<12)\nactions+=/incarnation,if=astral_power>=40\nactions+=/celestial_alignment,if=astral_power>=40&(!azerite.lively_spirit.enabled||buff.lively_spirit.up)&(buff.starlord.stack>=2||!talent.starlord.enabled||!azerite.streaking_stars.enabled)\nactions+=/fury_of_elune,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&solar_wrath.ap_check\nactions+=/force_of_nature,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&ap_check\n\n# Spenders\nactions+=/cancel_buff,name=starlord,if=buff.starlord.remains<8&!solar_wrath.ap_check\nactions+=/starfall,if=(buff.starlord.stack<3||buff.starlord.remains>=8)&spell_targets>=variable.sf_targets&(target.time_to_die+1)*spell_targets>cost%2.5\nactions+=/starsurge,if=(talent.starlord.enabled&(buff.starlord.stack<3||buff.starlord.remains>=8&buff.arcanic_pulsar.stack<8)||!talent.starlord.enabled&(buff.arcanic_pulsar.stack<8||buff.ca_inc.up))&spell_targets.starfall<variable.sf_targets&buff.lunar_empowerment.stack+buff.solar_empowerment.stack<4&buff.solar_empowerment.stack<3&buff.lunar_empowerment.stack<3&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.starsurge)||target.time_to_die<=execute_time*astral_power%40||!solar_wrath.ap_check\n\n# DoTs\nactions+=/sunfire,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=4+spell_targets&(spell_targets>1+talent.twin_moons.enabled||dot.moonfire.ticking)&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.sunfire))\nactions+=/moonfire,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=6&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.moonfire))\nactions+=/stellar_flare,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))>=6&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.stellar_flare))\n\n# Generators\nactions+=/new_moon,if=ap_check\nactions+=/half_moon,if=ap_check\nactions+=/full_moon,if=ap_check\nactions+=/lunar_strike,if=buff.solar_empowerment.stack<3&(ap_check||buff.lunar_empowerment.stack=3)&((buff.warrior_of_elune.up||buff.lunar_empowerment.up||spell_targets>=2&!buff.solar_empowerment.up||azerite.dawning_sun.enabled&!buff.dawning_sun.up)&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||(!prev.lunar_strike&!talent.incarnation.enabled||prev.solar_wrath))||azerite.streaking_stars.enabled&buff.ca_inc.up&prev.solar_wrath)\nactions+=/solar_wrath,if=azerite.streaking_stars.rank<3||!buff.ca_inc.up||!prev.solar_wrath\n\n# Fallthru for movement\nactions+=/sunfire",
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Guardian.simc",
					["builtIn"] = true,
					["date"] = 20181023.2243,
					["author"] = "SimC",
					["desc"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Guardian.simc\n# October 23, 2018 - 10:42 PM\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.",
					["lists"] = {
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > 0.1 * health.max & buff.ironfur.remains < gcd * 2",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.current < 0.6 * health.max",
								["action"] = "frenzied_regeneration",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "barkskin",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & health.pct < 35 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [4]
						},
						["cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "lunar_beam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "bristling_fur",
							}, -- [9]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [10]
						},
						["default"] = {
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 10 & active_enemies < 4",
								["action"] = "maul",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cost = 0 || ( rage > cost & azerite.layered_mane.enabled & active_enemies > 2 )",
								["action"] = "ironfur",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack = dot.thrash_bear.max_stacks",
								["action"] = "pulverize",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.moonfire.refreshable & active_enemies < 2",
								["action"] = "moonfire",
							}, -- [7]
							{
								["action"] = "incarnation",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.down & active_enemies > 1 ) || ( buff.incarnation.up & active_enemies > 4 )",
								["action"] = "thrash_bear",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation.down & active_enemies > 4",
								["action"] = "swipe_bear",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.ticking",
								["action"] = "mangle",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & active_enemies < 2",
								["action"] = "moonfire",
							}, -- [12]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "maul",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "azerite.power_of_the_moon.rank > 1 & active_enemies = 1",
								["action"] = "moonfire",
							}, -- [15]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [16]
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
								["action"] = "bear_form",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20181023.2243,
					["warnings"] = "Imported 4 action lists.\n",
					["profile"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Guardian.simc\n# October 23, 2018 - 10:42 PM\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/bear_form\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=skull_bash\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\nactions+=/maul,if=rage.deficit<10&active_enemies<4\nactions+=/ironfur,if=cost=0||(rage>cost&azerite.layered_mane.enabled&active_enemies>2)\nactions+=/pulverize,if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks\nactions+=/moonfire,if=dot.moonfire.refreshable&active_enemies<2\nactions+=/incarnation\nactions+=/thrash_bear,if=(buff.incarnation.down&active_enemies>1)||(buff.incarnation.up&active_enemies>4)\nactions+=/swipe_bear,if=buff.incarnation.down&active_enemies>4\nactions+=/mangle,if=dot.thrash_bear.ticking\nactions+=/moonfire,if=buff.galactic_guardian.up&active_enemies<2\nactions+=/thrash_bear\nactions+=/maul\n# Fill with Moonfire with PotMx2\nactions+=/moonfire,if=azerite.power_of_the_moon.rank>1&active_enemies=1\nactions+=/swipe_bear\n\nactions.mitigation=ironfur,if=incoming_damage_5s>0.1*health.max&buff.ironfur.remains<gcd*2\nactions.mitigation+=/frenzied_regeneration,if=health.current<0.6*health.max\nactions.mitigation+=/barkskin,if=health.pct<50&incoming_damage_5s>0.25*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&health.pct<35&incoming_damage_5s>0.25*health.max\n\nactions.cooldowns=potion\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/arcane_torrent\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\n# actions.cooldowns+=/barkskin,if=buff.bear_form.up\nactions.cooldowns+=/lunar_beam,if=buff.bear_form.up\nactions.cooldowns+=/bristling_fur,if=buff.bear_form.up\nactions.cooldowns+=/use_items",
					["spec"] = 104,
				},
			},
		},
		["Default"] = {
			["runOnce"] = {
				["autoconvertDelayBackToText_20190422"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["enabledArcaneMageOnce_20190309"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertDelayTextToSweep_20190420_1"] = true,
				["reviseDisplayModes_20180709"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelayTextToSweep_20190420"] = true,
				["autoconvertDelayFadeToCheckbox_20190418"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["minimapIcon"] = true,
			["displays"] = {
				["AOE"] = {
					["delays"] = {
						["extend"] = false,
					},
					["rel"] = "CENTER",
					["zoom"] = 0,
					["targets"] = {
						["font"] = "Expressway",
					},
					["keybindings"] = {
						["font"] = "Expressway",
					},
					["x"] = -872.04931640625,
					["y"] = 674.0526123046875,
				},
				["Primary"] = {
					["primaryWidth"] = 36,
					["rel"] = "CENTER",
					["numIcons"] = 2,
					["zoom"] = 0,
					["delays"] = {
						["font"] = "Expressway",
						["extend"] = false,
						["fontSize"] = 14,
						["anchor"] = "BOTTOMRIGHT",
					},
					["queue"] = {
						["width"] = 26,
						["height"] = 26,
					},
					["y"] = -192.8557434082031,
					["x"] = -181.9937133789063,
					["primaryHeight"] = 36,
					["border"] = {
						["fit"] = false,
					},
					["targets"] = {
						["font"] = "Expressway",
						["enabled"] = false,
					},
					["keybindings"] = {
						["fontSize"] = 16,
						["y"] = 6,
						["font"] = "Expressway",
						["anchor"] = "TOPLEFT",
						["x"] = 0,
					},
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = 641.0540771484375,
					["x"] = -607.0261840820313,
					["delays"] = {
						["extend"] = false,
					},
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["y"] = 640.0541381835938,
					["x"] = -544.0252685546875,
					["delays"] = {
						["extend"] = false,
					},
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
								["action"] = "rising_sun_kick",
								["criteria"] = "( talent.whirling_dragon_punch.enabled & cooldown.whirling_dragon_punch.remains < 5 ) & cooldown.fists_of_fury.remains > 3",
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
								["action"] = "tiger_palm",
								["criteria"] = "chi.max - chi >= 2 & ( ! talent.hit_combo.enabled || ! prev_gcd.1.tiger_palm )",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "! prev_gcd.1.blackout_kick & ( buff.bok_proc.up || ( talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi < 4 ) )",
								["cycle_targets"] = 1,
							}, -- [11]
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
								["criteria"] = "buff.serenity.up",
								["action"] = "call_action_list",
								["list_name"] = "serenity",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 2 & ! prev_gcd.1.tiger_palm",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cd",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [10]
						},
						["st"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "chi >= 5",
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
								["action"] = "blackout_kick",
								["criteria"] = "! prev_gcd.1.blackout_kick & ( cooldown.rising_sun_kick.remains > 3 || chi >= 3 ) & ( cooldown.fists_of_fury.remains > 4 || chi >= 4 || ( chi = 2 & prev_gcd.1.tiger_palm ) ) & buff.swift_roundhouse.stack < 2",
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
								["action"] = "tiger_palm",
								["criteria"] = "! prev_gcd.1.tiger_palm & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [12]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "active_enemies < 3 || prev_gcd.1.spinning_crane_kick",
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
					},
					["version"] = 20181212.2313,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nWARNING:  The import for 'st' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - swift_roundhouse\n\nImported 6 action lists.\n",
					["profile"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# December 12, 2018 - 23:12\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst,if=(!talent.serenity.enabled||!talent.fist_of_the_white_tiger.enabled)\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\n# Touch of Karma on cooldown, if Good Karma is enabled equal to 100% of maximum health\nactions+=/touch_of_karma,interval=90,pct_health=0.5\n# Potion if Serenity or Storm, Earth, and Fire are up or you are running serenity and a main stat trinket procs, or you are under the effect of bloodlust, or target time to die is greater or equal to 60\nactions+=/potion,if=buff.serenity.up||buff.storm_earth_and_fire.up||(!talent.serenity.enabled&trinket.proc.agility.react)||buff.bloodlust.react||target.time_to_die<=60\nactions+=/call_action_list,name=serenity,if=buff.serenity.up\nactions+=/fist_of_the_white_tiger,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=3\nactions+=/tiger_palm,cycle_targets=1,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=2&!prev_gcd.1.tiger_palm\nactions+=/call_action_list,name=cd\n# Call the ST action list if there are 2 or less enemies\nactions+=/call_action_list,name=st,if=active_enemies<3\n# Call the AoE action list if there are 3 or more enemies\nactions+=/call_action_list,name=aoe,if=active_enemies>=3\n\n# Actions.AoE is intended for use with Hectic_Add_Cleave and currently needs to be optimized\nactions.aoe=rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch.enabled&cooldown.whirling_dragon_punch.remains<5)&cooldown.fists_of_fury.remains>3\nactions.aoe+=/whirling_dragon_punch\nactions.aoe+=/energizing_elixir,if=!prev_gcd.1.tiger_palm&chi<=1&energy<50\nactions.aoe+=/fists_of_fury\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions.aoe+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(((chi>3||cooldown.fists_of_fury.remains>6)&(chi>=5||cooldown.fists_of_fury.remains>2))||energy.time_to_max<=3)\nactions.aoe+=/chi_burst,if=chi<=3\nactions.aoe+=/fist_of_the_white_tiger,if=chi.max-chi>=3\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(!talent.hit_combo.enabled||!prev_gcd.1.tiger_palm)\nactions.aoe+=/chi_wave\n# actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(buff.bok_proc.up||(talent.hit_combo.enabled&prev_gcd.1.tiger_palm&chi<4))\n\n# Cooldowns\nactions.cd=invoke_xuen_the_white_tiger\nactions.cd+=/use_item,name=lustrous_golden_plumage\nactions.cd+=/use_items\nactions.cd+=/blood_fury\nactions.cd+=/berserking\n# Use Arcane Torrent if you are missing at least 1 Chi and won't cap energy within 0.5 seconds\nactions.cd+=/arcane_torrent,if=chi.max-chi>=1&energy.time_to_max>=0.5\nactions.cd+=/lights_judgment\nactions.cd+=/fireblood\nactions.cd+=/ancestral_call\nactions.cd+=/touch_of_death,if=target.time_to_die>9\nactions.cd+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||(cooldown.fists_of_fury.remains<=6&chi>=3&cooldown.rising_sun_kick.remains<=1)||target.time_to_die<=15\nactions.cd+=/serenity,if=cooldown.rising_sun_kick.remains<=2||target.time_to_die<=12\n\n# Serenity priority\nactions.serenity=rising_sun_kick,cycle_targets=1,if=active_enemies<3||prev_gcd.1.spinning_crane_kick\nactions.serenity+=/fists_of_fury,if=(buff.bloodlust.up&prev_gcd.1.rising_sun_kick)||buff.serenity.remains<1||(active_enemies>1&active_enemies<5)\nactions.serenity+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(active_enemies>=3||(active_enemies=2&prev_gcd.1.blackout_kick))\nactions.serenity+=/blackout_kick,cycle_targets=1\n\nactions.st=whirling_dragon_punch\nactions.st+=/rising_sun_kick,cycle_targets=1,if=chi>=5\nactions.st+=/fists_of_fury\nactions.st+=/rising_sun_kick,cycle_targets=1\nactions.st+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&buff.dance_of_chiji.up\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.st+=/fist_of_the_white_tiger,if=chi<=2\nactions.st+=/energizing_elixir,if=chi<=3&energy<50\nactions.st+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(cooldown.rising_sun_kick.remains>3||chi>=3)&(cooldown.fists_of_fury.remains>4||chi>=4||(chi=2&prev_gcd.1.tiger_palm))&buff.swift_roundhouse.stack<2\nactions.st+=/chi_wave\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1||chi.max-chi>=2\nactions.st+=/tiger_palm,cycle_targets=1,if=!prev_gcd.1.tiger_palm&chi.max-chi>=2\n# actions.st+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3&buff.swift_roundhouse.stack<2,interrupt=1",
					["author"] = "SimC",
				},
				["Shadow"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc",
					["builtIn"] = true,
					["date"] = 20181230.2119,
					["author"] = "SimC",
					["desc"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc\n# December 30, 2018 - 21:18\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.",
					["lists"] = {
						["single"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up & cooldown.void_bolt.remains >= 1.5 & azerite.searing_dialogue.rank >= 1",
								["action"] = "mind_sear",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || cooldown.shadow_word_death.charges = 2 || ( cooldown.shadow_word_death.charges = 1 & cooldown.shadow_word_death.remains < gcd.max )",
								["action"] = "shadow_word_death",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [7]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.voidform.up || ( cooldown.shadow_word_death.charges = 2 & buff.voidform.stack < 15 )",
								["action"] = "shadow_word_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.dots_up",
								["action"] = "mind_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.remains > 4 & dot.vampiric_touch.remains > 4",
								["action"] = "void_torrent",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 4 & ! talent.misery.enabled & ! talent.dark_void.enabled",
								["action"] = "shadow_word_pain",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 6 || ( talent.misery.enabled & dot.shadow_word_pain.refreshable )",
								["action"] = "vampiric_touch",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["criteria"] = "azerite.searing_dialogue.rank >= 3",
								["chain"] = "1",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [16]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [17]
						},
						["default"] = {
							{
								["action"] = "silence",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || target.time_to_die <= 80 || target.health.pct < 35",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "dot.shadow_word_pain.ticking & dot.vampiric_touch.ticking",
								["var_name"] = "dots_up",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "fireblood",
							}, -- [5]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "ancestral_call",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear > ( 5 + 1 * talent.misery.enabled )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "run_action_list",
								["list_name"] = "cleave",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [11]
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
								["criteria"] = "! buff.shadowform.up",
								["action"] = "shadowform",
							}, -- [6]
							{
								["action"] = "mind_blast",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "mind_blast",
								["enabled"] = true,
							}, -- [8]
						},
						["aoe"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.dark_void.enabled & dot.shadow_word_pain.remains > travel_time",
								["action"] = "void_bolt",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [5]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [8]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [9]
						},
						["cleave"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || buff.voidform.down",
								["action"] = "shadow_word_death",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [6]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.mind_sear < 4 & azerite.searing_dialogue.rank = 0 ) || ( spell_targets.mind_sear < 3 & azerite.searing_dialogue.rank = 1 ) || ( spell_targets.mind_sear < 2 & azerite.searing_dialogue.rank >= 2 )",
								["action"] = "mind_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 5 & raid_event.adds.duration < 2 ) || raid_event.adds.duration > 2",
								["action"] = "shadow_crash",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 4 & ( ! talent.misery.enabled & ! talent.dark_void.enabled )",
								["action"] = "shadow_word_pain",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die > 6 )",
								["action"] = "vampiric_touch",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.refreshable & ( talent.misery.enabled & target.time_to_die > 4 )",
								["action"] = "vampiric_touch",
							}, -- [12]
							{
								["action"] = "void_torrent",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["criteria"] = "spell_targets.mind_sear > 1",
								["chain"] = "1",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [15]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [16]
						},
					},
					["version"] = 20181230.2119,
					["warnings"] = "WARNING:  The import for 'single' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - harvested_thoughts\n\nImported 5 action lists.\n",
					["spec"] = 258,
					["profile"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Priest_Shadow.simc\n# December 30, 2018 - 21:18\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/mind_blast\nactions.precombat+=/shadow_word_void\n\n# Executed every time the actor is available.\nactions=silence\nactions+=/use_items\nactions+=/potion,if=buff.bloodlust.react||target.time_to_die<=80||target.health.pct<35\nactions+=/variable,name=dots_up,op=set,value=dot.shadow_word_pain.ticking&dot.vampiric_touch.ticking\nactions+=/fireblood,if=buff.voidform.up\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/ancestral_call,if=buff.voidform.up\nactions+=/run_action_list,name=aoe,if=spell_targets.mind_sear>(5+1*talent.misery.enabled)\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single,if=active_enemies=1\n\nactions.aoe=void_eruption\nactions.aoe+=/dark_ascension,if=buff.voidform.down\nactions.aoe+=/void_bolt,if=talent.dark_void.enabled&dot.shadow_word_pain.remains>travel_time\nactions.aoe+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.aoe+=/dark_void,if=raid_event.adds.in>10\nactions.aoe+=/mindbender\nactions.aoe+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.aoe+=/mind_sear,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.aoe+=/shadow_word_pain\n\nactions.cleave=void_eruption\nactions.cleave+=/dark_ascension,if=buff.voidform.down\nactions.cleave+=/void_bolt\nactions.cleave+=/shadow_word_death,if=target.time_to_die<3||buff.voidform.down\nactions.cleave+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.cleave+=/dark_void,if=raid_event.adds.in>10\nactions.cleave+=/mindbender\nactions.cleave+=/mind_blast,if=(spell_targets.mind_sear<4&azerite.searing_dialogue.rank=0)||(spell_targets.mind_sear<3&azerite.searing_dialogue.rank=1)||(spell_targets.mind_sear<2&azerite.searing_dialogue.rank>=2)\nactions.cleave+=/shadow_crash,if=(raid_event.adds.in>5&raid_event.adds.duration<2)||raid_event.adds.duration>2\nactions.cleave+=/shadow_word_pain,if=refreshable&target.time_to_die>4&(!talent.misery.enabled&!talent.dark_void.enabled)\nactions.cleave+=/vampiric_touch,if=refreshable&(target.time_to_die>6)\nactions.cleave+=/vampiric_touch,if=dot.shadow_word_pain.refreshable&(talent.misery.enabled&target.time_to_die>4)\nactions.cleave+=/void_torrent\nactions.cleave+=/mind_sear,if=spell_targets.mind_sear>1,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.cleave+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.cleave+=/shadow_word_pain\n\nactions.single=void_eruption\nactions.single+=/dark_ascension,if=buff.voidform.down\nactions.single+=/void_bolt\nactions.single+=/mind_sear,if=buff.harvested_thoughts.up&cooldown.void_bolt.remains>=1.5&azerite.searing_dialogue.rank>=1\nactions.single+=/shadow_word_death,if=target.time_to_die<3||cooldown.shadow_word_death.charges=2||(cooldown.shadow_word_death.charges=1&cooldown.shadow_word_death.remains<gcd.max)\nactions.single+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.single+=/dark_void,if=raid_event.adds.in>10\nactions.single+=/mindbender\nactions.single+=/shadow_word_death,if=!buff.voidform.up||(cooldown.shadow_word_death.charges=2&buff.voidform.stack<15)\nactions.single+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.single+=/mind_blast,if=variable.dots_up\nactions.single+=/void_torrent,if=dot.shadow_word_pain.remains>4&dot.vampiric_touch.remains>4\nactions.single+=/shadow_word_pain,if=refreshable&target.time_to_die>4&!talent.misery.enabled&!talent.dark_void.enabled\nactions.single+=/vampiric_touch,if=refreshable&target.time_to_die>6||(talent.misery.enabled&dot.shadow_word_pain.refreshable)\nactions.single+=/mind_sear,if=azerite.searing_dialogue.rank>=3,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.single+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.single+=/shadow_word_pain",
				},
				["Vengeance"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Vengeance.simc",
					["builtIn"] = true,
					["date"] = 20181211.1749,
					["spec"] = 581,
					["desc"] = "# Vengeance Demon Hunter\nhttps://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Vengeance.simc\n# December 11, 2018 - 16:43\n\n# Changes:\n# - Added Disrupt to default action list.\n# - Converted use_item entries for trinkets to use_items; removed conditions.\n# - Added some incoming damage / charge criteria to Demon Spikes.\n# - Reserve a charge of Infernal Strike at all times.\n# - Added Soul Barrier.",
					["profile"] = "# Vengeance Demon Hunter\nhttps://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Demon_Hunter_Vengeance.simc\n# December 11, 2018 - 16:43\n\n# Changes:\n# - Added Disrupt to default action list.\n# - Converted use_item entries for trinkets to use_items; removed conditions.\n# - Added some incoming damage / charge criteria to Demon Spikes.\n# - Reserve a charge of Infernal Strike at all times.\n# - Added Soul Barrier.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/augmentation\nactions.precombat+=/food\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/disrupt\nactions+=/consume_magic\nactions+=/use_items\nactions+=/call_action_list,name=brand,if=talent.charred_flesh.enabled\nactions+=/call_action_list,name=defensives\nactions+=/call_action_list,name=normal\n\n# Fiery Brand Rotation\nactions.brand=sigil_of_flame,if=cooldown.fiery_brand.remains<2\nactions.brand+=/infernal_strike,if=cooldown.fiery_brand.remains=0\nactions.brand+=/fiery_brand\nactions.brand+=/immolation_aura,if=dot.fiery_brand.ticking\nactions.brand+=/fel_devastation,if=dot.fiery_brand.ticking\nactions.brand+=/infernal_strike,if=dot.fiery_brand.ticking\nactions.brand+=/sigil_of_flame,if=dot.fiery_brand.ticking\n\n# Defensives\nactions.defensives=demon_spikes,if=(full_recharge_time<1&incoming_damage_3s)||(active_enemies>3&incoming_damage_3s&buff.demon_spikes.down)||(incoming_damage_5s>0.25*health.max)\nactions.defensives=soul_barrier,if=(active_enemies>3&incoming_damage_3s&buff.demon_spikes.down)||(incoming_damage_5s>0.4*health.max)\nactions.defensives+=/metamorphosis\nactions.defensives+=/fiery_brand\n\n# Normal Rotation\nactions.normal=infernal_strike,if=full_recharge_time<1\nactions.normal+=/spirit_bomb,if=soul_fragments>=4\nactions.normal+=/soul_cleave,if=!talent.spirit_bomb.enabled\nactions.normal+=/soul_cleave,if=talent.spirit_bomb.enabled&soul_fragments=0\nactions.normal+=/immolation_aura,if=pain<=90\nactions.normal+=/felblade,if=pain<=70\nactions.normal+=/fracture,if=soul_fragments<=3\nactions.normal+=/fel_devastation\nactions.normal+=/sigil_of_flame\nactions.normal+=/shear\nactions.normal+=/throw_glaive",
					["version"] = 20181211.1749,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nImported 5 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["brand"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fiery_brand.remains < 2",
								["action"] = "sigil_of_flame",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fiery_brand.remains = 0",
								["action"] = "infernal_strike",
							}, -- [2]
							{
								["action"] = "fiery_brand",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "immolation_aura",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "fel_devastation",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "infernal_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.fiery_brand.ticking",
								["action"] = "sigil_of_flame",
							}, -- [7]
						},
						["default"] = {
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "talent.charred_flesh.enabled",
								["list_name"] = "brand",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "defensives",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "normal",
							}, -- [7]
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
						},
						["defensives"] = {
							{
								["enabled"] = true,
								["criteria"] = "( full_recharge_time < 1 & incoming_damage_3s ) || ( active_enemies > 3 & incoming_damage_3s & buff.demon_spikes.down ) || ( incoming_damage_5s > 0.25 * health.max )",
								["action"] = "demon_spikes",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies > 3 & incoming_damage_3s & buff.demon_spikes.down ) || ( incoming_damage_5s > 0.4 * health.max )",
								["action"] = "soul_barrier",
							}, -- [2]
							{
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "fiery_brand",
								["enabled"] = true,
							}, -- [4]
						},
						["normal"] = {
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < 1",
								["action"] = "infernal_strike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= 4",
								["action"] = "spirit_bomb",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.spirit_bomb.enabled",
								["action"] = "soul_cleave",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.spirit_bomb.enabled & soul_fragments = 0",
								["action"] = "soul_cleave",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "pain <= 90",
								["action"] = "immolation_aura",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "pain <= 70",
								["action"] = "felblade",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments <= 3",
								["action"] = "fracture",
							}, -- [7]
							{
								["action"] = "fel_devastation",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "sigil_of_flame",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "shear",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "throw_glaive",
								["enabled"] = true,
							}, -- [11]
						},
					},
				},
				["Balance"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190721.233,
					["author"] = "SimC",
					["desc"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/\n# July 21, 2019 - 20:41\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n# - Removed Lively Spirit condition for Celestial Alignment; you'll have it or you won't since Innervate is higher priority.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
								["criteria"] = "! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.starlord.enabled || buff.starlord.up ) & ! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "guardian_of_azeroth",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["effect_name"] = "cyclotronic_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "shiver_venom_relic",
								["action"] = "shiver_venom_relic",
								["criteria"] = "! buff.ca_inc.up & dot.shiver_venom.stack >= 5",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ca_inc.remains > 30",
								["action"] = "blood_of_the_enemy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( astral_power < 25 || cooldown.ca_inc.remains > 30 ) & dot.sunfire.remains > 10 & dot.moonfire.remains > 10 & ( ! talent.stellar_flare.enabled || dot.stellar_flare.remains > 10 )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [8]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "the_unbound_force",
							}, -- [12]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( ! variable.az_ss || ! buff.ca_inc.up ) & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "focused_azerite_beam",
							}, -- [14]
							{
								["action"] = "thorns",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( buff.memory_of_lucid_dreams.up || ( ( cooldown.memory_of_lucid_dreams.remains > 20 || ! essence.memory_of_lucid_dreams.major ) & ap_check ) ) & ( buff.memory_of_lucid_dreams.up || ap_check ) & dot.sunfire.remains > 8 & dot.moonfire.remains > 12 & ( dot.stellar_flare.remains > 6 || ! talent.stellar_flare.enabled )",
								["action"] = "incarnation",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( buff.memory_of_lucid_dreams.up || ( ( cooldown.memory_of_lucid_dreams.remains > 20 || ! essence.memory_of_lucid_dreams.major ) & ap_check ) ) & ( dot.sunfire.remains > 2 & dot.moonfire.ticking & ( dot.stellar_flare.ticking || ! talent.stellar_flare.enabled ) )",
								["action"] = "celestial_alignment",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & solar_wrath.ap_check",
								["action"] = "fury_of_elune",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & ap_check",
								["action"] = "force_of_nature",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.starlord.remains < 3 & ! solar_wrath.ap_check",
								["action"] = "cancel_buff",
								["buff_name"] = "starlord",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( buff.starlord.stack < 3 || buff.starlord.remains >= 8 ) & spell_targets >= variable.sf_targets & ( target.time_to_die + 1 ) * spell_targets > cost % 2.5",
								["action"] = "starfall",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( talent.starlord.enabled & ( buff.starlord.stack < 3 || buff.starlord.remains >= 5 & buff.arcanic_pulsar.stack < 8 ) || ! talent.starlord.enabled & ( buff.arcanic_pulsar.stack < 8 || buff.ca_inc.up ) ) & spell_targets.starfall < variable.sf_targets & buff.lunar_empowerment.stack + buff.solar_empowerment.stack < 4 & buff.solar_empowerment.stack < 3 & buff.lunar_empowerment.stack < 3 & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.starsurge ) || target.time_to_die <= execute_time * astral_power % 40 || ! solar_wrath.ap_check",
								["action"] = "starsurge",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up & buff.ca_inc.remains < gcd.max & azerite.streaking_stars.rank & dot.moonfire.remains > remains",
								["action"] = "sunfire",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up & buff.ca_inc.remains < gcd.max & azerite.streaking_stars.rank",
								["action"] = "moonfire",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= ceil ( floor ( 2 % spell_targets ) * 1.5 ) + 2 * spell_targets & ( spell_targets > 1 + talent.twin_moons.enabled || dot.moonfire.ticking ) & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.sunfire ) & ( buff.ca_inc.remains > remains || ! buff.ca_inc.up )",
								["cycle_targets"] = 1,
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 6 & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.moonfire ) & ( buff.ca_inc.remains > remains || ! buff.ca_inc.up )",
								["cycle_targets"] = 1,
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) >= 5 & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.stellar_flare )",
								["cycle_targets"] = 1,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "new_moon",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "half_moon",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "full_moon",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.solar_empowerment.stack < 3 & ( ap_check || buff.lunar_empowerment.stack = 3 ) & ( ( buff.warrior_of_elune.up || buff.lunar_empowerment.up || spell_targets >= 2 & ! buff.solar_empowerment.up ) & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up ) || azerite.streaking_stars.rank & buff.ca_inc.up & prev.solar_wrath )",
								["action"] = "lunar_strike",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "azerite.streaking_stars.rank < 3 || ! buff.ca_inc.up || ! prev.solar_wrath",
								["action"] = "solar_wrath",
							}, -- [34]
							{
								["action"] = "sunfire",
								["enabled"] = true,
							}, -- [35]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "4",
								["var_name"] = "sf_targets",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "azerite.arcanic_pulsar.enabled",
								["var_name"] = "sf_targets",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "talent.starlord.enabled",
								["var_name"] = "sf_targets",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "azerite.streaking_stars.rank > 2 & azerite.arcanic_pulsar.enabled",
								["var_name"] = "sf_targets",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "sub",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "! talent.twin_moons.enabled",
								["var_name"] = "sf_targets",
							}, -- [5]
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "potion",
								["dynamic_prepot"] = "1",
							}, -- [8]
							{
								["action"] = "solar_wrath",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [10]
						},
					},
					["version"] = 20190721.233,
					["warnings"] = "Imported 2 action lists.\n",
					["spec"] = 102,
					["profile"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/\n# July 21, 2019 - 20:41\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n# - Removed Lively Spirit condition for Celestial Alignment; you'll have it or you won't since Innervate is higher priority.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n\n# Azerite variables\n# actions.precombat+=/variable,name=az_ss,value=azerite.streaking_stars.rank\n# actions.precombat+=/variable,name=az_ap,value=azerite.arcanic_pulsar.rank\n\n# Starfall v Starsurge target cutoff\nactions.precombat=variable,name=sf_targets,value=4\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=azerite.arcanic_pulsar.enabled\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=talent.starlord.enabled\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=azerite.streaking_stars.rank>2&azerite.arcanic_pulsar.enabled\nactions.precombat+=/variable,name=sf_targets,op=sub,value=1,if=!talent.twin_moons.enabled\nactions.precombat+=/moonkin_form\n\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/potion,dynamic_prepot=1\nactions.precombat+=/solar_wrath\nactions.precombat+=/starsurge\n\n# Executed every time the actor is available.\nactions=solar_beam\n# CDs\nactions+=/berserking,if=buff.ca_inc.up\nactions+=/use_item,name=azsharas_font_of_power,if=!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/guardian_of_azeroth,if=(!talent.starlord.enabled||buff.starlord.up)&!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/use_item,effect_name=cyclotronic_blast,if=!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/use_item,name=shiver_venom_relic,if=!buff.ca_inc.up&dot.shiver_venom.stack>=5\nactions+=/blood_of_the_enemy,if=cooldown.ca_inc.remains>30\nactions+=/memory_of_lucid_dreams,if=!buff.ca_inc.up&(astral_power<25||cooldown.ca_inc.remains>30)&dot.sunfire.remains>10&dot.moonfire.remains>10&(!talent.stellar_flare.enabled||dot.stellar_flare.remains>10)\nactions+=/purifying_blast\nactions+=/ripple_in_space\nactions+=/concentrated_flame\nactions+=/the_unbound_force,if=buff.reckless_force.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/worldvein_resonance\nactions+=/focused_azerite_beam,if=(!variable.az_ss||!buff.ca_inc.up)&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/thorns\nactions+=/use_items\nactions+=/warrior_of_elune\n# actions+=/innervate,if=azerite.lively_spirit.enabled&(cooldown.incarnation.remains<2||cooldown.celestial_alignment.remains<12)\nactions+=/incarnation,if=!buff.ca_inc.up&(buff.memory_of_lucid_dreams.up||((cooldown.memory_of_lucid_dreams.remains>20||!essence.memory_of_lucid_dreams.major)&ap_check))&(buff.memory_of_lucid_dreams.up||ap_check)&dot.sunfire.remains>8&dot.moonfire.remains>12&(dot.stellar_flare.remains>6||!talent.stellar_flare.enabled)\nactions+=/celestial_alignment,if=!buff.ca_inc.up&(buff.memory_of_lucid_dreams.up||((cooldown.memory_of_lucid_dreams.remains>20||!essence.memory_of_lucid_dreams.major)&ap_check))&(dot.sunfire.remains>2&dot.moonfire.ticking&(dot.stellar_flare.ticking||!talent.stellar_flare.enabled))\nactions+=/fury_of_elune,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&solar_wrath.ap_check\nactions+=/force_of_nature,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&ap_check\n\n# Spenders\nactions+=/cancel_buff,name=starlord,if=buff.starlord.remains<3&!solar_wrath.ap_check\nactions+=/starfall,if=(buff.starlord.stack<3||buff.starlord.remains>=8)&spell_targets>=variable.sf_targets&(target.time_to_die+1)*spell_targets>cost%2.5\nactions+=/starsurge,if=(talent.starlord.enabled&(buff.starlord.stack<3||buff.starlord.remains>=5&buff.arcanic_pulsar.stack<8)||!talent.starlord.enabled&(buff.arcanic_pulsar.stack<8||buff.ca_inc.up))&spell_targets.starfall<variable.sf_targets&buff.lunar_empowerment.stack+buff.solar_empowerment.stack<4&buff.solar_empowerment.stack<3&buff.lunar_empowerment.stack<3&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.starsurge)||target.time_to_die<=execute_time*astral_power%40||!solar_wrath.ap_check\nactions+=/sunfire,if=buff.ca_inc.up&buff.ca_inc.remains<gcd.max&azerite.streaking_stars.rank&dot.moonfire.remains>remains\nactions+=/moonfire,if=buff.ca_inc.up&buff.ca_inc.remains<gcd.max&azerite.streaking_stars.rank\n\n# DoTs\nactions+=/sunfire,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=ceil(floor(2%spell_targets)*1.5)+2*spell_targets&(spell_targets>1+talent.twin_moons.enabled||dot.moonfire.ticking)&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.sunfire)&(buff.ca_inc.remains>remains||!buff.ca_inc.up)\nactions+=/moonfire,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=6&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.moonfire)&(buff.ca_inc.remains>remains||!buff.ca_inc.up)\nactions+=/stellar_flare,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))>=5&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.stellar_flare)\n\n# Generators\nactions+=/new_moon,if=ap_check\nactions+=/half_moon,if=ap_check\nactions+=/full_moon,if=ap_check\nactions+=/lunar_strike,if=buff.solar_empowerment.stack<3&(ap_check||buff.lunar_empowerment.stack=3)&((buff.warrior_of_elune.up||buff.lunar_empowerment.up||spell_targets>=2&!buff.solar_empowerment.up)&(!azerite.streaking_stars.rank||!buff.ca_inc.up)||azerite.streaking_stars.rank&buff.ca_inc.up&prev.solar_wrath)\nactions+=/solar_wrath,if=azerite.streaking_stars.rank<3||!buff.ca_inc.up||!prev.solar_wrath\n\n# Fallthru for movement\nactions+=/sunfire",
				},
				["Arcane"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190401.15,
					["spec"] = 62,
					["desc"] = "# Arcane Mage\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:02\n\n# Changes:\n# - start_burn_phase, stop_burn_phase, and average_burn_length are handled by the addon.\n# - target.time_to_die -> (boss&time_to_die) so that we don't excessively burn on trash if we don't want to.",
					["lists"] = {
						["conserve"] = {
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = 0",
								["action"] = "charged_up",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "nether_tempest",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack <= 2 & ( cooldown.arcane_power.remains > 10 || active_enemies <= 2 )",
								["action"] = "arcane_orb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rule_of_threes.up & buff.arcane_charge.stack > 3",
								["action"] = "arcane_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & ! buff.arcane_power.react & cooldown.arcane_power.remains > 20",
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & ( full_recharge_time <= execute_time || full_recharge_time <= cooldown.arcane_power.remains || ( boss & time_to_die <= cooldown.arcane_power.remains ) )",
								["action"] = "rune_of_power",
							}, -- [7]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "mana.pct <= 95 & buff.clearcasting.react",
								["action"] = "arcane_missiles",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.arcane_charge.stack = buff.arcane_charge.max_stack ) & ( ( mana.pct <= variable.conserve_mana ) || ( cooldown.arcane_power.remains > cooldown.rune_of_power.full_recharge_time & mana.pct <= variable.conserve_mana + 25 ) ) || ( talent.arcane_orb.enabled & cooldown.arcane_orb.remains <= gcd & cooldown.arcane_power.remains > 10 ) ) || mana.pct <= ( variable.conserve_mana - 10 )",
								["action"] = "arcane_barrage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct <= 95",
								["action"] = "supernova",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( mana.pct >= variable.conserve_mana || buff.arcane_charge.stack = 3 )",
								["action"] = "arcane_explosion",
							}, -- [11]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [13]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "burn_phase || ( boss & time_to_die < average_burn_length )",
								["action"] = "call_action_list",
								["list_name"] = "burn",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.arcane_power.remains = 0 & cooldown.evocation.remains <= average_burn_length & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack || ( talent.charged_up.enabled & cooldown.charged_up.remains = 0 ) ) )",
								["action"] = "call_action_list",
								["list_name"] = "burn",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! burn_phase",
								["action"] = "call_action_list",
								["list_name"] = "conserve",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [5]
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
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "summon_arcane_familiar",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "60 + ( 20 * azerite.equipoise.enabled )",
								["var_name"] = "conserve_mana",
							}, -- [6]
							{
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [10]
						},
						["burn"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack <= 1",
								["action"] = "charged_up",
							}, -- [1]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.rune_of_power.down & buff.arcane_power.down",
								["action"] = "nether_tempest",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rule_of_threes.up & talent.overpowered.enabled & active_enemies < 3",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.down",
								["action"] = "lights_judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.arcane_power.up & ( mana.pct >= 50 || cooldown.arcane_power.remains = 0 ) & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack )",
								["action"] = "rune_of_power",
							}, -- [6]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "arcane_power",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.up || ( boss & time_to_die < cooldown.arcane_power.remains )",
								["action"] = "use_items",
							}, -- [9]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( talent.rune_of_power.enabled & buff.rune_of_power.remains <= buff.presence_of_mind.max_stack * action.arcane_blast.execute_time ) || buff.arcane_power.remains <= buff.presence_of_mind.max_stack * action.arcane_blast.execute_time",
								["action"] = "presence_of_mind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_power.up & ( buff.berserking.up || buff.blood_fury.up || ! ( race.troll || race.orc ) )",
								["action"] = "potion",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = 0 || ( active_enemies < 3 || ( active_enemies < 2 & talent.resonance.enabled ) )",
								["action"] = "arcane_orb",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( buff.arcane_charge.stack = buff.arcane_charge.max_stack )",
								["action"] = "arcane_barrage",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "arcane_explosion",
							}, -- [17]
							{
								["enabled"] = true,
								["chain"] = "1",
								["criteria"] = "buff.clearcasting.react & active_enemies < 3 & ( talent.amplification.enabled || ( ! talent.overpowered.enabled & azerite.arcane_pummeling.rank >= 2 ) || buff.arcane_power.down )",
								["action"] = "arcane_missiles",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "arcane_blast",
							}, -- [19]
							{
								["interrupt_if"] = "mana.pct>=85",
								["interrupt_immediate"] = "1",
								["action"] = "evocation",
								["enabled"] = true,
							}, -- [20]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [21]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance >= 10",
								["action"] = "blink",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance >= 10",
								["action"] = "blink",
							}, -- [2]
							{
								["action"] = "presence_of_mind",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_missiles",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "arcane_orb",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "supernova",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20190401.15,
					["warnings"] = "Imported 5 action lists.\n",
					["author"] = "SimulationCraft",
					["profile"] = "# Arcane Mage\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:02\n\n# Changes:\n# - start_burn_phase, stop_burn_phase, and average_burn_length are handled by the addon.\n# - target.time_to_die -> (boss&time_to_die) so that we don't excessively burn on trash if we don't want to.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\nactions.precombat+=/summon_arcane_familiar\n# conserve_mana is the mana percentage we want to go down to during conserve. It needs to leave enough room to worst case scenario spam AB only during AP.\nactions.precombat+=/variable,name=conserve_mana,op=set,value=60+(20*azerite.equipoise.enabled)\nactions.precombat+=/snapshot_stats\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/arcane_blast\n\n# Executed every time the actor is available.\n# Interrupt the boss when possible.\nactions=counterspell\n# Go to Burn Phase when already burning, or when boss will die soon.\nactions+=/call_action_list,name=burn,if=burn_phase||(boss&time_to_die<average_burn_length)\n# Start Burn Phase when Arcane Power is ready and Evocation will be ready (on average) before the burn phase is over. Also make sure we got 4 Arcane Charges, or can get 4 Arcane Charges with Charged Up.\nactions+=/call_action_list,name=burn,if=(cooldown.arcane_power.remains=0&cooldown.evocation.remains<=average_burn_length&(buff.arcane_charge.stack=buff.arcane_charge.max_stack||(talent.charged_up.enabled&cooldown.charged_up.remains=0)))\nactions+=/call_action_list,name=conserve,if=!burn_phase\nactions+=/call_action_list,name=movement\n\n# Increment our burn phase counter. Whenever we enter the `burn` actions without being in a burn phase, it means that we are about to start one.\n# actions.burn=variable,name=total_burns,op=add,value=1,if=!burn_phase\n# actions.burn+=/start_burn_phase,if=!burn_phase\n# End the burn phase when we just evocated.\n# actions.burn+=/stop_burn_phase,if=burn_phase&prev_gcd.1.evocation&target.time_to_die>average_burn_length&burn_phase_duration>0\n# Less than 1 instead of equals to 0, because of pre-cast Arcane Blast\nactions.burn+=/charged_up,if=buff.arcane_charge.stack<=1\nactions.burn+=/mirror_image\nactions.burn+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.rune_of_power.down&buff.arcane_power.down\n# When running Overpowered, and we got a Rule of Threes proc (AKA we got our 4th Arcane Charge via Charged Up), use it before using RoP+AP, because the mana reduction is otherwise largely wasted since the AB was free anyway.\nactions.burn+=/arcane_blast,if=buff.rule_of_threes.up&talent.overpowered.enabled&active_enemies<3\nactions.burn+=/lights_judgment,if=buff.arcane_power.down\nactions.burn+=/rune_of_power,if=!buff.arcane_power.up&(mana.pct>=50||cooldown.arcane_power.remains=0)&(buff.arcane_charge.stack=buff.arcane_charge.max_stack)\nactions.burn+=/berserking\nactions.burn+=/arcane_power\nactions.burn+=/use_items,if=buff.arcane_power.up||(boss&time_to_die<cooldown.arcane_power.remains)\nactions.burn+=/blood_fury\nactions.burn+=/fireblood\nactions.burn+=/ancestral_call\nactions.burn+=/presence_of_mind,if=(talent.rune_of_power.enabled&buff.rune_of_power.remains<=buff.presence_of_mind.max_stack*action.arcane_blast.execute_time)||buff.arcane_power.remains<=buff.presence_of_mind.max_stack*action.arcane_blast.execute_time\nactions.burn+=/potion,if=buff.arcane_power.up&(buff.berserking.up||buff.blood_fury.up||!(race.troll||race.orc))\nactions.burn+=/arcane_orb,if=buff.arcane_charge.stack=0||(active_enemies<3||(active_enemies<2&talent.resonance.enabled))\nactions.burn+=/arcane_barrage,if=active_enemies>=3&(buff.arcane_charge.stack=buff.arcane_charge.max_stack)\nactions.burn+=/arcane_explosion,if=active_enemies>=3\n# Ignore Arcane Missiles during Arcane Power, aside from some very specific exceptions, like not having Overpowered talented & running 3x Arcane Pummeling.\nactions.burn+=/arcane_missiles,if=buff.clearcasting.react&active_enemies<3&(talent.amplification.enabled||(!talent.overpowered.enabled&azerite.arcane_pummeling.rank>=2)||buff.arcane_power.down),chain=1\nactions.burn+=/arcane_blast,if=active_enemies<3\n# Now that we're done burning, we can update the average_burn_length with the length of this burn.\n# actions.burn+=/variable,name=average_burn_length,op=set,value=(variable.average_burn_length*variable.total_burns-variable.average_burn_length+(burn_phase_duration))%variable.total_burns\nactions.burn+=/evocation,interrupt_if=mana.pct>=85,interrupt_immediate=1\n# For the rare occasion where we go oom before evocation is back up. (Usually because we get very bad rng so the burn is cut very short)\nactions.burn+=/arcane_barrage\n\nactions.conserve=mirror_image\nactions.conserve+=/charged_up,if=buff.arcane_charge.stack=0\nactions.conserve+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.rune_of_power.down&buff.arcane_power.down\nactions.conserve+=/arcane_orb,if=buff.arcane_charge.stack<=2&(cooldown.arcane_power.remains>10||active_enemies<=2)\n# Arcane Blast shifts up in priority when running rule of threes.\nactions.conserve+=/arcane_blast,if=buff.rule_of_threes.up&buff.arcane_charge.stack>3\nactions.conserve+=/use_item,name=tidestorm_codex,if=buff.rune_of_power.down&!buff.arcane_power.react&cooldown.arcane_power.remains>20\nactions.conserve+=/rune_of_power,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&(full_recharge_time<=execute_time||full_recharge_time<=cooldown.arcane_power.remains||(boss&time_to_die<=cooldown.arcane_power.remains))\nactions.conserve+=/arcane_missiles,if=mana.pct<=95&buff.clearcasting.react,chain=1\n# During conserve, we still just want to continue not dropping charges as long as possible.So keep 'burning' as long as possible (aka conserve_mana threshhold) and then swap to a 4x AB->Abarr conserve rotation. If we do not have 4 AC, we can dip slightly lower to get a 4th AC. We also sustain at a higher mana percentage when we plan to use a Rune of Power during conserve phase, so we can burn during the Rune of Power.\nactions.conserve+=/arcane_barrage,if=((buff.arcane_charge.stack=buff.arcane_charge.max_stack)&((mana.pct<=variable.conserve_mana)||(cooldown.arcane_power.remains>cooldown.rune_of_power.full_recharge_time&mana.pct<=variable.conserve_mana+25))||(talent.arcane_orb.enabled&cooldown.arcane_orb.remains<=gcd&cooldown.arcane_power.remains>10))||mana.pct<=(variable.conserve_mana-10)\n# Supernova is barely worth casting, which is why it is so far down, only just above AB. \nactions.conserve+=/supernova,if=mana.pct<=95\n# Keep 'burning' in aoe situations until conserve_mana pct. After that only cast AE with 3 Arcane charges, since it's almost equal mana cost to a 3 stack AB anyway. At that point AoE rotation will be AB x3 -> AE -> Abarr\nactions.conserve+=/arcane_explosion,if=active_enemies>=3&(mana.pct>=variable.conserve_mana||buff.arcane_charge.stack=3)\nactions.conserve+=/arcane_blast\nactions.conserve+=/arcane_barrage\n\nactions.movement=shimmer,if=movement.distance>=10\nactions.movement+=/blink,if=movement.distance>=10\nactions.movement+=/presence_of_mind\nactions.movement+=/arcane_missiles\nactions.movement+=/arcane_orb\nactions.movement+=/supernova",
				},
				["Protection Paladin"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190810.2255,
					["author"] = "SimC",
					["desc"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 22:35\n\n# Changes\n# - Added Rebuke.",
					["lists"] = {
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "fireblood",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
								["criteria"] = "cooldown.seraphim.remains <= 10 || ! talent.seraphim.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "( debuff.razor_coral_debuff.stack > 7 & buff.avenging_wrath.up ) || debuff.razor_coral_debuff.stack = 0",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_of_the_righteous.charges_fractional >= 2",
								["action"] = "seraphim",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || cooldown.seraphim.remains < 2 || ! talent.seraphim.enabled",
								["action"] = "avenging_wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_of_the_righteous.charges_fractional <= 0.5",
								["action"] = "bastion_of_light",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up",
								["action"] = "potion",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up || ! talent.seraphim.enabled",
								["action"] = "use_items",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
								["criteria"] = "( ( cooldown.judgment.full_recharge_time > 4 || ( ! talent.crusaders_judgment.enabled & prev_gcd.1.judgment ) ) & cooldown.avengers_shield.remains > 4 & buff.seraphim.remains > 4 ) || ( buff.seraphim.remains < 4 )",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "merekthas_fang",
								["action"] = "merekthas_fang",
								["criteria"] = "! buff.avenging_wrath.up & ( buff.seraphim.up || ! talent.seraphim.enabled )",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [11]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & action.shield_of_the_righteous.charges > 2 & ! ( buff.aegis_of_light.up & buff.ardent_defender.up & buff.guardian_of_ancient_kings.up & buff.divine_shield.up & buff.potion.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & talent.bastion_of_light.enabled & action.shield_of_the_righteous.charges < 1",
								["action"] = "bastion_of_light",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "light_of_the_protector",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( health.pct < 40 )",
								["action"] = "hand_of_the_protector",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_10000ms < health.max * 1.25 ) & health.pct < 55 & talent.righteous_protector.enabled",
								["action"] = "light_of_the_protector",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_13000ms < health.max * 1.6 ) & health.pct < 55",
								["action"] = "light_of_the_protector",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_6000ms < health.max * 0.7 ) & health.pct < 65 & talent.righteous_protector.enabled",
								["action"] = "hand_of_the_protector",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( incoming_damage_9000ms < health.max * 1.2 ) & health.pct < 55",
								["action"] = "hand_of_the_protector",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "aegis_of_light",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "guardian_of_ancient_kings",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & talent.final_stand.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "divine_shield",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & incoming_damage_2500ms > health.max * 0.4 & ! ( buff.aegis_of_light.up || buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "ardent_defender",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled & health.pct < 15",
								["action"] = "lay_on_hands",
							}, -- [13]
						},
						["default"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avengers_valor.up & cooldown.shield_of_the_righteous.charges_fractional >= 2.5 ) & ( cooldown.seraphim.remains > gcd || ! talent.seraphim.enabled )",
								["action"] = "shield_of_the_righteous",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & ! talent.seraphim.enabled ) || buff.seraphim.up & buff.avengers_valor.up",
								["action"] = "shield_of_the_righteous",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up & buff.avenging_wrath.remains < 4 & ! talent.seraphim.enabled ) || ( buff.seraphim.remains < 4 & buff.seraphim.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.seraphim.up & buff.seraphim.remains < 3",
								["action"] = "lights_judgment",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.judgment.remains < gcd & cooldown.judgment.charges_fractional > 1 & cooldown_react ) || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "avengers_shield",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.seraphim.enabled || buff.seraphim.up",
								["action"] = "lights_judgment",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "blessed_hammer",
								["strikes"] = "3",
							}, -- [13]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [15]
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
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20190810.2255,
					["warnings"] = "Imported 4 action lists.\n",
					["spec"] = 66,
					["profile"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 22:35\n\n# Changes\n# - Added Rebuke.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lights_judgment\n\n# Executed every time the actor is available.\nactions=rebuke\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=mitigation\n# Dumping SotR charges\nactions+=/shield_of_the_righteous,if=(buff.avengers_valor.up&cooldown.shield_of_the_righteous.charges_fractional>=2.5)&(cooldown.seraphim.remains>gcd||!talent.seraphim.enabled)\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&!talent.seraphim.enabled)||buff.seraphim.up&buff.avengers_valor.up\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&buff.avenging_wrath.remains<4&!talent.seraphim.enabled)||(buff.seraphim.remains<4&buff.seraphim.up)\nactions+=/lights_judgment,if=buff.seraphim.up&buff.seraphim.remains<3\nactions+=/consecration,if=!consecration.up\nactions+=/judgment,if=(cooldown.judgment.remains<gcd&cooldown.judgment.charges_fractional>1&cooldown_react)||!talent.crusaders_judgment.enabled\nactions+=/avengers_shield,if=cooldown_react\nactions+=/judgment,if=cooldown_react||!talent.crusaders_judgment.enabled\nactions+=/lights_judgment,if=!talent.seraphim.enabled||buff.seraphim.up\nactions+=/blessed_hammer,strikes=3\nactions+=/hammer_of_the_righteous\nactions+=/consecration\n\nactions.cooldowns=fireblood,if=buff.avenging_wrath.up\nactions.cooldowns+=/use_item,name=azsharas_font_of_power,if=cooldown.seraphim.remains<=10||!talent.seraphim.enabled\nactions.cooldowns+=/use_item,name=ashvanes_razor_coral,if=(debuff.razor_coral_debuff.stack>7&buff.avenging_wrath.up)||debuff.razor_coral_debuff.stack=0\nactions.cooldowns+=/seraphim,if=cooldown.shield_of_the_righteous.charges_fractional>=2\nactions.cooldowns+=/avenging_wrath,if=buff.seraphim.up||cooldown.seraphim.remains<2||!talent.seraphim.enabled\nactions.cooldowns+=/bastion_of_light,if=cooldown.shield_of_the_righteous.charges_fractional<=0.5\nactions.cooldowns+=/potion,if=buff.avenging_wrath.up\nactions.cooldowns+=/use_items,if=buff.seraphim.up||!talent.seraphim.enabled\nactions.cooldowns+=/use_item,name=grongs_primal_rage,if=((cooldown.judgment.full_recharge_time>4||(!talent.crusaders_judgment.enabled&prev_gcd.1.judgment))&cooldown.avengers_shield.remains>4&buff.seraphim.remains>4)||(buff.seraphim.remains<4)\nactions.cooldowns+=/use_item,name=merekthas_fang,if=!buff.avenging_wrath.up&(buff.seraphim.up||!talent.seraphim.enabled)\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\n\nactions.mitigation=shield_of_the_righteous,if=!talent.seraphim.enabled&action.shield_of_the_righteous.charges>2&!(buff.aegis_of_light.up&buff.ardent_defender.up&buff.guardian_of_ancient_kings.up&buff.divine_shield.up&buff.potion.up)\nactions.mitigation+=/bastion_of_light,if=!talent.seraphim.enabled&talent.bastion_of_light.enabled&action.shield_of_the_righteous.charges<1\nactions.mitigation+=/light_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/hand_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_10000ms<health.max*1.25)&health.pct<55&talent.righteous_protector.enabled\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_13000ms<health.max*1.6)&health.pct<55\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_6000ms<health.max*0.7)&health.pct<65&talent.righteous_protector.enabled\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_9000ms<health.max*1.2)&health.pct<55\nactions.mitigation+=/aegis_of_light,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=!talent.seraphim.enabled&talent.final_stand.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=!talent.seraphim.enabled&health.pct<15",
				},
				["Retribution"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190810,
					["spec"] = 70,
					["desc"] = "# Retribution Paladin\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 23:15\n\n# Changes:\n# - Updated for 8.2.\n# - Fix cast/channel CDs checks for AW/Crusade.",
					["profile"] = "# Retribution Paladin\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 23:15\n\n# Changes:\n# - Updated for 8.2.\n# - Fix cast/channel CDs checks for AW/Crusade.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/arcane_torrent,if=!talent.wake_of_ashes.enabled\n\n# Executed every time the actor is available.\nactions=rebuke\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=generators\n\nactions.trinkets+=/use_item,name=razdunks_big_red_button\nactions.trinkets+=/use_item,name=jes_howler,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.trinkets+=/use_item,name=vial_of_animated_blood,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<18)||(cooldown.avenging_wrath.remains>30||cooldown.crusade.remains>30)\nactions.trinkets+=/use_item,name=dooms_fury,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<18\nactions.trinkets+=/use_item,name=galecallers_beak,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<15\nactions.trinkets+=/use_item,name=bygone_bee_almanac,if=buff.avenging_wrath.up||buff.crusade.up\nactions.trinkets+=/use_item,name=merekthas_fang,if=(!raid_event.adds.exists||raid_event.adds.in>15)||spell_targets.divine_storm>=2\nactions.trinkets+=/use_item,name=plunderbeards_flask,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||!buff.crusade.up&cooldown.crusade.remains>45\nactions.trinkets+=/use_item,name=berserkers_juju,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||!buff.crusade.up&cooldown.crusade.remains>45\nactions.trinkets+=/use_item,name=endless_tincture_of_fractional_power,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>45||cooldown.crusade.remains>45\nactions.trinkets+=/use_item,name=pearl_divers_compass,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10\nactions.trinkets+=/use_item,name=first_mates_spyglass,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=15\nactions.trinkets+=/use_item,name=whirlwings_plumage,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.trinkets+=/use_item,name=dread_gladiators_badge,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.trinkets+=/use_item,name=dread_aspirants_medallion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.trinkets+=/use_item,name=grongs_primal_rage,if=!buff.avenging_wrath.up&!buff.crusade.up\nactions.trinkets+=/use_item,name=sinister_gladiators_badge,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=15\nactions.trinkets+=/use_item,name=sinister_gladiators_medallion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.remains<=20\nactions.trinkets+=/use_item,name=azsharas_font_of_power,if=!talent.crusade.enabled&cooldown.avenging_wrath.remains<5||talent.crusade.enabled&cooldown.crusade.remains<5&time>10||holy_power>=3&time<10&talent.wake_of_ashes.enabled\nactions.trinkets+=/use_item,name=vision_of_demise,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||cooldown.avenging_wrath.remains>=30||cooldown.crusade.remains>=30\nactions.trinkets+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||(buff.avenging_wrath.remains>=20||buff.crusade.stack=10&buff.crusade.remains>15)&(cooldown.guardian_of_azeroth.remains>90||time_to_die<30||!essence.condensed_lifeforce.major)\nactions.trinkets+=/use_item,name=knot_of_ancient_fury,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack>=10||cooldown.avenging_wrath.remains>30||!buff.crusade.up&cooldown.crusade.remains>30\nactions.trinkets+=/use_items,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\n\nactions.cooldowns=potion,if=(cooldown.guardian_of_azeroth.remains>90||!essence.condensed_lifeforce.major)&(buff.bloodlust.react||buff.avenging_wrath.up&buff.avenging_wrath.remains>18||buff.crusade.up&buff.crusade.remains<25)\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||(!raid_event.adds.exists||raid_event.adds.in>75)\nactions.cooldowns+=/fireblood,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/shield_of_vengeance,if=buff.seething_rage.down&buff.memory_of_lucid_dreams.down\nactions.cooldowns+=/call_action_list,name=trinkets\nactions.cooldowns+=/the_unbound_force,if=time<=2||buff.reckless_force.up\nactions.cooldowns+=/blood_of_the_enemy,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10\nactions.cooldowns+=/guardian_of_azeroth,if=!talent.crusade.enabled&(cooldown.avenging_wrath.remains<5&holy_power>=3&(buff.inquisition.up||!talent.inquisition.enabled)||cooldown.avenging_wrath.remains>=45)||(talent.crusade.enabled&cooldown.crusade.remains<gcd&holy_power>=4||holy_power>=3&time<10&talent.wake_of_ashes.enabled||cooldown.crusade.remains>=45)\nactions.cooldowns+=/worldvein_resonance,if=cooldown.avenging_wrath.remains<gcd&holy_power>=3||cooldown.crusade.remains<gcd&holy_power>=4||cooldown.avenging_wrath.remains>=45||cooldown.crusade.remains>=45\nactions.cooldowns+=/focused_azerite_beam,if=(!raid_event.adds.exists||raid_event.adds.in>30||spell_targets.divine_storm>=2)&(buff.avenging_wrath.down&buff.crusade.down)&(cooldown.blade_of_justice.remains>gcd*3&cooldown.judgment.remains>gcd*3)\nactions.cooldowns+=/memory_of_lucid_dreams,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10)&holy_power<=3\nactions.cooldowns+=/purifying_blast,if=(!raid_event.adds.exists||raid_event.adds.in>30||spell_targets.divine_storm>=2)\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast,if=(buff.avenging_wrath.down&buff.crusade.down)&(cooldown.blade_of_justice.remains>gcd*3&cooldown.judgment.remains>gcd*3)\nactions.cooldowns+=/avenging_wrath,if=(!talent.inquisition.enabled||buff.inquisition.up)&holy_power>=3\nactions.cooldowns+=/crusade,if=holy_power>=4||holy_power>=3&time<10&talent.wake_of_ashes.enabled\n\nactions.finishers=variable,name=wings_pool,value=!equipped.169314&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>gcd*3||cooldown.crusade.remains>gcd*3)||equipped.169314&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>gcd*6||cooldown.crusade.remains>gcd*6)\nactions.finishers+=/variable,name=ds_castable,value=spell_targets.divine_storm>=2&!talent.righteous_verdict.enabled||spell_targets.divine_storm>=3&talent.righteous_verdict.enabled||buff.empyrean_power.up&debuff.judgment.down&buff.divine_purpose.down&buff.avenging_wrath_autocrit.down\nactions.finishers+=/inquisition,if=buff.inquisition.down||buff.avenging_wrath.down&(buff.inquisition.remains<8&holy_power>=3||talent.execution_sentence.enabled&cooldown.execution_sentence.remains<10&buff.inquisition.remains<15||cooldown.avenging_wrath.remains<15&buff.inquisition.remains<20&holy_power>=3)\nactions.finishers+=/execution_sentence,if=spell_targets.divine_storm<=2&(!talent.crusade.enabled&cooldown.avenging_wrath.remains>10||talent.crusade.enabled&buff.crusade.down&cooldown.crusade.remains>10||buff.crusade.stack>=7)\nactions.finishers+=/divine_storm,if=variable.ds_castable&variable.wings_pool&((!talent.execution_sentence.enabled||(spell_targets.divine_storm>=2||cooldown.execution_sentence.remains>gcd*2))||(cooldown.avenging_wrath.remains>gcd*3&cooldown.avenging_wrath.remains<10||cooldown.crusade.remains>gcd*3&cooldown.crusade.remains<10||buff.crusade.up&buff.crusade.stack<10))\nactions.finishers+=/templars_verdict,if=variable.wings_pool&(!talent.execution_sentence.enabled||cooldown.execution_sentence.remains>gcd*2||cooldown.avenging_wrath.remains>gcd*3&cooldown.avenging_wrath.remains<10||cooldown.crusade.remains>gcd*3&cooldown.crusade.remains<10||buff.crusade.up&buff.crusade.stack<10)\n\nactions.generators=variable,name=HoW,value=(!talent.hammer_of_wrath.enabled||target.health.pct>=20&(buff.avenging_wrath.down&buff.crusade.down))\nactions.generators+=/call_action_list,name=finishers,if=holy_power>=5||buff.memory_of_lucid_dreams.up||buff.seething_rage.up||buff.inquisition.down&holy_power>=3\nactions.generators+=/wake_of_ashes,if=(!raid_event.adds.exists||raid_event.adds.in>15||spell_targets.wake_of_ashes>=2)&(holy_power<=0||holy_power=1&cooldown.blade_of_justice.remains>gcd)&(cooldown.avenging_wrath.remains>10||talent.crusade.enabled&cooldown.crusade.remains>10)\nactions.generators+=/blade_of_justice,if=holy_power<=2||(holy_power=3&(cooldown.hammer_of_wrath.remains>gcd*2||variable.HoW))\nactions.generators+=/judgment,if=holy_power<=2||(holy_power<=4&(cooldown.blade_of_justice.remains>gcd*2||variable.HoW))\nactions.generators+=/hammer_of_wrath,if=holy_power<=4\nactions.generators+=/consecration,if=holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2\nactions.generators+=/call_action_list,name=finishers,if=talent.hammer_of_wrath.enabled&target.health.pct<=20||buff.avenging_wrath.up||buff.crusade.up\nactions.generators+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2&cooldown.consecration.remains>gcd*2)\nactions.generators+=/call_action_list,name=finishers\nactions.generators+=/concentrated_flame\nactions.generators+=/crusader_strike,if=holy_power<=4\nactions.generators+=/arcane_torrent,if=holy_power<=4",
					["version"] = 20190810,
					["warnings"] = "Imported 6 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generators",
							}, -- [3]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! talent.wake_of_ashes.enabled",
								["action"] = "arcane_torrent",
							}, -- [2]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.guardian_of_azeroth.remains > 90 || ! essence.condensed_lifeforce.major ) & ( buff.bloodlust.react || buff.avenging_wrath.up & buff.avenging_wrath.remains > 18 || buff.crusade.up & buff.crusade.remains < 25 )",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ( ! raid_event.adds.exists || raid_event.adds.in > 75 )",
								["action"] = "lights_judgment",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "fireblood",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.seething_rage.down & buff.memory_of_lucid_dreams.down",
								["action"] = "shield_of_vengeance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "time <= 2 || buff.reckless_force.up",
								["action"] = "the_unbound_force",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "blood_of_the_enemy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.crusade.enabled & ( cooldown.avenging_wrath.remains < 5 & holy_power >= 3 & ( buff.inquisition.up || ! talent.inquisition.enabled ) || cooldown.avenging_wrath.remains >= 45 ) || ( talent.crusade.enabled & cooldown.crusade.remains < gcd & holy_power >= 4 || holy_power >= 3 & time < 10 & talent.wake_of_ashes.enabled || cooldown.crusade.remains >= 45 )",
								["action"] = "guardian_of_azeroth",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avenging_wrath.remains < gcd & holy_power >= 3 || cooldown.crusade.remains < gcd & holy_power >= 4 || cooldown.avenging_wrath.remains >= 45 || cooldown.crusade.remains >= 45",
								["action"] = "worldvein_resonance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 30 || spell_targets.divine_storm >= 2 ) & ( buff.avenging_wrath.down & buff.crusade.down ) & ( cooldown.blade_of_justice.remains > gcd * 3 & cooldown.judgment.remains > gcd * 3 )",
								["action"] = "focused_azerite_beam",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 ) & holy_power <= 3",
								["action"] = "memory_of_lucid_dreams",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 30 || spell_targets.divine_storm >= 2 )",
								["action"] = "purifying_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["criteria"] = "( buff.avenging_wrath.down & buff.crusade.down ) & ( cooldown.blade_of_justice.remains > gcd * 3 & cooldown.judgment.remains > gcd * 3 )",
								["effect_name"] = "cyclotronic_blast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.inquisition.enabled || buff.inquisition.up ) & holy_power >= 3",
								["action"] = "avenging_wrath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 4 || holy_power >= 3 & time < 10 & talent.wake_of_ashes.enabled",
								["action"] = "crusade",
							}, -- [15]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "jes_howler",
								["action"] = "jes_howler",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "vial_of_animated_blood",
								["action"] = "vial_of_animated_blood",
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18 ) || ( cooldown.avenging_wrath.remains > 30 || cooldown.crusade.remains > 30 )",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "dooms_fury",
								["action"] = "dooms_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "galecallers_beak",
								["action"] = "galecallers_beak",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 15",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "bygone_bee_almanac",
								["action"] = "bygone_bee_almanac",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "merekthas_fang",
								["action"] = "merekthas_fang",
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 ) || spell_targets.divine_storm >= 2",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "plunderbeards_flask",
								["action"] = "plunderbeards_flask",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "berserkers_juju",
								["action"] = "berserkers_juju",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "endless_tincture_of_fractional_power",
								["action"] = "endless_tincture_of_fractional_power",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || cooldown.crusade.remains > 45",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "pearl_divers_compass",
								["action"] = "pearl_divers_compass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "first_mates_spyglass",
								["action"] = "first_mates_spyglass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 15",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "whirlwings_plumage",
								["action"] = "whirlwings_plumage",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "dread_gladiators_badge",
								["action"] = "dread_gladiators_badge",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "dread_aspirants_medallion",
								["action"] = "dread_aspirants_medallion",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "grongs_primal_rage",
								["action"] = "grongs_primal_rage",
								["criteria"] = "! buff.avenging_wrath.up & ! buff.crusade.up",
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "sinister_gladiators_badge",
								["action"] = "sinister_gladiators_badge",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 15",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "sinister_gladiators_medallion",
								["action"] = "sinister_gladiators_medallion",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
							}, -- [18]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
								["criteria"] = "! talent.crusade.enabled & cooldown.avenging_wrath.remains < 5 || talent.crusade.enabled & cooldown.crusade.remains < 5 & time > 10 || holy_power >= 3 & time < 10 & talent.wake_of_ashes.enabled",
							}, -- [19]
							{
								["enabled"] = true,
								["name"] = "vision_of_demise",
								["action"] = "vision_of_demise",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || cooldown.avenging_wrath.remains >= 30 || cooldown.crusade.remains >= 30",
							}, -- [20]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || ( buff.avenging_wrath.remains >= 20 || buff.crusade.stack = 10 & buff.crusade.remains > 15 ) & ( cooldown.guardian_of_azeroth.remains > 90 || time_to_die < 30 || ! essence.condensed_lifeforce.major )",
							}, -- [21]
							{
								["enabled"] = true,
								["name"] = "knot_of_ancient_fury",
								["action"] = "knot_of_ancient_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 30 || ! buff.crusade.up & cooldown.crusade.remains > 30",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["action"] = "use_items",
							}, -- [23]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! equipped.azsharas_font_of_power & ( ! talent.crusade.enabled & cooldown.avenging_wrath.remains > gcd * 3 || cooldown.crusade.remains > gcd * 3 ) || equipped.azsharas_font_of_power & ( ! talent.crusade.enabled & cooldown.avenging_wrath.remains > gcd * 6 || cooldown.crusade.remains > gcd * 6 )",
								["var_name"] = "wings_pool",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.divine_storm >= 2 & ! talent.righteous_verdict.enabled || spell_targets.divine_storm >= 3 & talent.righteous_verdict.enabled || buff.empyrean_power.up & debuff.judgment.down & buff.divine_purpose.down & buff.avenging_wrath_autocrit.down",
								["var_name"] = "ds_castable",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.inquisition.down || buff.avenging_wrath.down & ( buff.inquisition.remains < 8 & holy_power >= 3 || talent.execution_sentence.enabled & cooldown.execution_sentence.remains < 10 & buff.inquisition.remains < 15 || cooldown.avenging_wrath.remains < 15 & buff.inquisition.remains < 20 & holy_power >= 3 )",
								["action"] = "inquisition",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.divine_storm <= 2 & ( ! talent.crusade.enabled & cooldown.avenging_wrath.remains > 10 || talent.crusade.enabled & buff.crusade.down & cooldown.crusade.remains > 10 || buff.crusade.stack >= 7 )",
								["action"] = "execution_sentence",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & variable.wings_pool & ( ( ! talent.execution_sentence.enabled || ( spell_targets.divine_storm >= 2 || cooldown.execution_sentence.remains > gcd * 2 ) ) || ( cooldown.avenging_wrath.remains > gcd * 3 & cooldown.avenging_wrath.remains < 10 || cooldown.crusade.remains > gcd * 3 & cooldown.crusade.remains < 10 || buff.crusade.up & buff.crusade.stack < 10 ) )",
								["action"] = "divine_storm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.wings_pool & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > gcd * 2 || cooldown.avenging_wrath.remains > gcd * 3 & cooldown.avenging_wrath.remains < 10 || cooldown.crusade.remains > gcd * 3 & cooldown.crusade.remains < 10 || buff.crusade.up & buff.crusade.stack < 10 )",
								["action"] = "templars_verdict",
							}, -- [6]
						},
						["generators"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( ! talent.hammer_of_wrath.enabled || target.health.pct >= 20 & ( buff.avenging_wrath.down & buff.crusade.down ) )",
								["var_name"] = "HoW",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 5 || buff.memory_of_lucid_dreams.up || buff.seething_rage.up || buff.inquisition.down & holy_power >= 3",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 || spell_targets.wake_of_ashes >= 2 ) & ( holy_power <= 0 || holy_power = 1 & cooldown.blade_of_justice.remains > gcd ) & ( cooldown.avenging_wrath.remains > 10 || talent.crusade.enabled & cooldown.crusade.remains > 10 )",
								["action"] = "wake_of_ashes",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || ( holy_power = 3 & ( cooldown.hammer_of_wrath.remains > gcd * 2 || variable.HoW ) )",
								["action"] = "blade_of_justice",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || ( holy_power <= 4 & ( cooldown.blade_of_justice.remains > gcd * 2 || variable.HoW ) )",
								["action"] = "judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "hammer_of_wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2",
								["action"] = "consecration",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.hammer_of_wrath.enabled & target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd * 2 & cooldown.judgment.remains > gcd * 2 & cooldown.consecration.remains > gcd * 2 )",
								["action"] = "crusader_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [10]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "crusader_strike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "arcane_torrent",
							}, -- [13]
						},
					},
					["author"] = "SimC",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190729,
					["spec"] = 262,
					["desc"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/\n# July 29, 2019 - 19:00\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.",
					["profile"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/\n# July 29, 2019 - 19:00\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\n# actions.precombat+=/earth_elemental,if=!talent.primal_elementalist.enabled\n\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\nactions.precombat+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions.precombat+=/storm_elemental,if=talent.storm_elemental.enabled\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.precombat+=/lava_burst,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning<3\nactions.precombat+=/chain_lightning,if=spell_targets.chain_lightning>2\n\n# Executed every time the actor is available.\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions=bloodlust,if=azerite.ancestral_resonance.enabled\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion,if=expected_combat_length-time<30||fire_elemental.up||storm_elemental.up\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/use_items\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)&(!talent.ascendance.enabled||!cooldown.ascendance.up)\n# actions+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(fire_elemental.down&!talent.storm_elemental.enabled||storm_elemental.down&talent.storm_elemental.enabled)\nactions+=/concentrated_flame\nactions+=/blood_of_the_enemy\nactions+=/guardian_of_azeroth\nactions+=/focused_azerite_beam\nactions+=/purifying_blast\nactions+=/the_unbound_force\nactions+=/memory_of_lucid_dreams\nactions+=/ripple_in_space\nactions+=/worldvein_resonance\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/eye_of_the_storm,if=storm_elemental.up&buff.call_lightning.remains>=8\nactions+=/meteor\nactions+=/run_action_list,name=aoe,if=active_enemies>2&!funneling\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\n# Spread Flame Shock in <= 4 target fights, but not during SE uptime,unless you're fighting 3 targets and have less than 14 Wind Gust stacks.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(spell_targets.chain_lightning<(5-!talent.totem_mastery.enabled)||!talent.storm_elemental.enabled&(fire_elemental.remains>(14*spell_haste)||cooldown.fire_elemental.remains<(24-14*spell_haste)))&(!talent.storm_elemental.enabled||storm_elemental.down||spell_targets.chain_lightning=3&buff.wind_gust.stack<14)\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&storm_elemental.down&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\n\n# Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!\nactions.aoe+=/earthquake,if=!talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom>=(100-4*spell_targets.chain_lightning) || buff.master_of_the_elements.up || spell_targets.chain_lightning>3\nactions.aoe+=/earthquake,if=(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||buff.lava_surge.down||spell_targets.earthquake>=4)&(buff.stormkeeper.up||maelstrom>=(100-4*spell_targets.chain_lightning)||buff.master_of_the_elements.up||spell_targets.chain_lightning>3)\n# Make sure you don't lose a Stormkeeper.\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\n\n# Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)&dot.flame_shock.ticking\nactions.aoe+=/icefury,if=spell_targets.chain_lightning<4&!buff.ascendance.up\nactions.aoe+=/frost_shock,if=spell_targets.chain_lightning<4&buff.icefury.up&!buff.ascendance.up\n\n# Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Single Target Action Priority List\n# Ensure FS is active unless you have 14 or more stacks of Wind Gust from Storm Elemental. (Edge case: upcoming Asc but active SE; don't )\nactions.single_target=flame_shock,cycle_targets=1,if=(!ticking||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled||talent.storm_elemental.enabled&storm_elemental.down))&(buff.wind_gust.stack<14||azerite.igneous_potential.rank>=2||buff.lava_surge.up||!buff.bloodlust.up)&!buff.surge_of_power.up\n\n# Use Ascendance after you've spent all Lava Burst charges and only if neither Storm Elemental nor Icefury are currently active.\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&(storm_elemental.down||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\n\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead. Don't cast Elemental Blast during Storm Elemental unless you have 3x Natural Harmony. But in this case stop using Elemental Blast once you reach 14 stacks of Wind Gust.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)&(!(storm_elemental.up&talent.storm_elemental.enabled)||azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)\n\n# Keep SK for large or soon add waves. Unless you have Surge of Power, in which case you want to double buff Lightning Bolt by pooling Maelstrom beforehand. Example sequence: 100MS, ES, SK, LB, LvB, ES, LB\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(!talent.surge_of_power.enabled||buff.surge_of_power.up||maelstrom>=44)\n\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\n# Combine Stormkeeper with Master of the Elements or Surge of Power unless you have the Lava Shock trait and multiple stacks.\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack)<26&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n\n# Use Earthquake versus 2 targets, unless you have Lava Shock. Use Earthquake versus 1 target if you have Tectonic Thunder 3 times and NO Surge of Power enabled and NO Lava Shock.\nactions.single_target+=/earthquake,if=!funneling&(spell_targets.chain_lightning>1||azerite.tectonic_thunder.rank>=3&!talent.surge_of_power.enabled&azerite.lava_shock.rank<1)&azerite.lava_shock.rank*buff.lava_shock.stack<(36+3*azerite.tectonic_thunder.rank*spell_targets.chain_lightning)&(!talent.surge_of_power.enabled||!dot.flame_shock.refreshable||storm_elemental.up)&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled)\n\n# Cast Earth Shock with Master of the Elements talent but no active Surge of Power buff, and active Stormkeeper buff and Lava Burst coming off CD within the next GCD, and either active Master of the Elements buff, or no available Lava Burst while near MS cap, or single target and multiple Lava Shock traits and many stacks.\nactions.single_target+=/earth_shock,if=!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled||spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack<26)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)\n\n# You know what? I had some short explanation here once. But then the condition grew, and I had to split the one Earth Shock line into four...so you have to deal with this abomination now: Cast Earth Shock without Master of the Elements talent, and without having triple Igneous Potential and active Ascendance, and active Stormkeeper buff or near MS cap, or Storm Elemental is inactive, and we can't expect to get an additional use of Storm Elemental in the remaining fight from Surge of Power.\nactions.single_target+=/earth_shock,if=!talent.master_of_the_elements.enabled&!(azerite.igneous_potential.rank>2&buff.ascendance.up)&(buff.stormkeeper.up||maelstrom>=90+30*talent.call_the_thunder.enabled||!(storm_elemental.up&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))\n\n# Use Earth Shock if Surge of Power is talented, but neither it nor a DPS Elemental is active at the moment, and Lava Burst is ready or will be ready within the next GCD.\nactions.single_target+=/earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!(fire_elemental.up)||talent.storm_elemental.enabled&!(storm_elemental.up))\n\nactions.single_target+=/lightning_lasso,if=dot.flame_shock.ticking||cooldown.flame_shock.remains\n\n# Spam Lightning Bolts during Storm Elemental duration, if you don't have Igneous Potential or have it only once, and don't use Lightning Bolt during Bloodlust if you have a Lava Surge Proc.\nactions.single_target+=/lightning_bolt,if=storm_elemental.up&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2||!buff.lava_surge.up&buff.bloodlust.up)\n\n# Cast Lightning Bolt regardless of the previous condition if you'd lose a Stormkeeper stack or have Stormkeeper and Master of the Elements active.\nactions.single_target+=/lightning_bolt,if=(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\n\n# Use Frost Shock with Icefury and Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\n\nactions.single_target+=/lava_burst,if=buff.ascendance.up\n\n# Utilize Surge of Power to spread Flame Shock if multiple enemies are present.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&active_enemies>1&buff.surge_of_power.up\n\n# Use Lava Burst with Surge of Power if the last potential usage of Storm Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains)%150))<(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)))\n\n# Use Lava Burst with Surge of Power if the last potential usage of Fire Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))\n\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\n\n# Slightly game Icefury buff to hopefully buff some empowered Frost Shocks with Master of the Elements.\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)&(!talent.storm_elemental.enabled||storm_elemental.down)\n\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\n\n# Slightly delay using Icefury empowered Frost Shocks to empower them with Master of the Elements too.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack\n\nactions.single_target+=/lava_burst,if=cooldown_react\n\n# Don't accidentally use Surge of Power with Flame Shock during single target.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&!buff.surge_of_power.up\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\n\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\nactions.single_target+=/chain_lightning,if=buff.tectonic_thunder.up&!buff.stormkeeper.up&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20190729,
					["warnings"] = "Imported 4 action lists.\n",
					["author"] = "SimulationCraft",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ( spell_targets.chain_lightning < ( 5 - ! talent.totem_mastery.enabled ) || ! talent.storm_elemental.enabled & ( fire_elemental.remains > ( 14 * spell_haste ) || cooldown.fire_elemental.remains < ( 24 - 14 * spell_haste ) ) ) & ( ! talent.storm_elemental.enabled || storm_elemental.down || spell_targets.chain_lightning = 3 & buff.wind_gust.stack < 14 )",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( talent.storm_elemental.enabled & storm_elemental.down & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3",
								["action"] = "earthquake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || buff.lava_surge.down || spell_targets.earthquake >= 4 ) & ( buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3 )",
								["action"] = "earthquake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.remains < 3 * gcd * buff.stormkeeper.stack",
								["action"] = "chain_lightning",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down ) & dot.flame_shock.ticking",
								["action"] = "lava_burst",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & ! buff.ascendance.up",
								["action"] = "icefury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & buff.icefury.up & ! buff.ascendance.up",
								["action"] = "frost_shock",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "elemental_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [12]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_burst",
								["moving"] = "1",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [15]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [16]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "( ! ticking || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 2 * gcd || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 & ( ! talent.storm_elemental.enabled || talent.storm_elemental.enabled & storm_elemental.down ) ) & ( buff.wind_gust.stack < 14 || azerite.igneous_potential.rank >= 2 || buff.lava_surge.up || ! buff.bloodlust.up ) & ! buff.surge_of_power.up",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & cooldown.lava_burst.remains > 0 & ( storm_elemental.down || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled ) & ( ! ( storm_elemental.up & talent.storm_elemental.enabled ) || azerite.natural_harmony.rank = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( ! talent.surge_of_power.enabled || buff.surge_of_power.up || maelstrom >= 44 )",
								["action"] = "stormkeeper",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "liquid_magma_totem",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & spell_targets.chain_lightning < 2 & ( azerite.lava_shock.rank * buff.lava_shock.stack ) < 26 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & ( spell_targets.chain_lightning > 1 || azerite.tectonic_thunder.rank >= 3 & ! talent.surge_of_power.enabled & azerite.lava_shock.rank < 1 ) & azerite.lava_shock.rank * buff.lava_shock.stack < ( 36 + 3 * azerite.tectonic_thunder.rank * spell_targets.chain_lightning ) & ( ! talent.surge_of_power.enabled || ! dot.flame_shock.refreshable || storm_elemental.up ) & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled )",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || spell_targets.chain_lightning < 2 & ( azerite.lava_shock.rank * buff.lava_shock.stack < 26 ) & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd )",
								["action"] = "earth_shock",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled & ! ( azerite.igneous_potential.rank > 2 & buff.ascendance.up ) & ( buff.stormkeeper.up || maelstrom >= 90 + 30 * talent.call_the_thunder.enabled || ! ( storm_elemental.up & talent.storm_elemental.enabled ) & expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) >= 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) )",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.surge_of_power.enabled & ! buff.surge_of_power.up & cooldown.lava_burst.remains <= gcd & ( ! talent.storm_elemental.enabled & ! ( fire_elemental.up ) || talent.storm_elemental.enabled & ! ( storm_elemental.up ) )",
								["action"] = "earth_shock",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.ticking || cooldown.flame_shock.remains",
								["action"] = "lightning_lasso",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & talent.storm_elemental.enabled & ( azerite.igneous_potential.rank < 2 || ! buff.lava_surge.up & buff.bloodlust.up )",
								["action"] = "lightning_bolt",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( buff.stormkeeper.remains < 1.1 * gcd * buff.stormkeeper.stack || buff.stormkeeper.up & buff.master_of_the_elements.up )",
								["action"] = "lightning_bolt",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & active_enemies > 1 & buff.surge_of_power.up",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 75 & cooldown.lava_burst.remains <= 0 ) & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "icefury",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < 1.1 * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ! buff.surge_of_power.up",
								["cycle_targets"] = 1,
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & ( buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 ) )",
								["action"] = "totem_mastery",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.tectonic_thunder.up & ! buff.stormkeeper.up & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [28]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 6",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [31]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [32]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "expected_combat_length - time < 30 || fire_elemental.up || storm_elemental.up",
								["action"] = "potion",
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up ) & ( ! talent.ascendance.enabled || ! cooldown.ascendance.up )",
								["action"] = "storm_elemental",
							}, -- [7]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & buff.call_lightning.remains >= 8",
								["action"] = "eye_of_the_storm",
							}, -- [21]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & ! funneling",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [24]
						},
						["precombat"] = {
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled",
								["action"] = "storm_elemental",
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.elemental_blast.enabled & spell_targets.chain_lightning < 3",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 2",
								["action"] = "chain_lightning",
							}, -- [8]
						},
					},
				},
				["Feral"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190728.23,
					["spec"] = 103,
					["desc"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/\n# July 28, 2019 - 22:27\n\n# Changes:\n# - Added Skull Bash.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Convert target_if conditions to cycle_targets.\n# - Remove 'heart_essence' generic action.\n# - Add Balance Affinity priority.\n# - Reincorporate some of ShmooDude's edits.",
					["profile"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/\n# July 28, 2019 - 22:27\n\n# Changes:\n# - Added Skull Bash.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Convert target_if conditions to cycle_targets.\n# - Remove 'heart_essence' generic action.\n# - Add Balance Affinity priority.\n# - Reincorporate some of ShmooDude's edits.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# It is worth it for almost everyone to maintain thrash\nactions.precombat+=/variable,name=use_thrash,value=0\nactions.precombat+=/variable,name=use_thrash,value=2,if=azerite.wild_fleshrending.enabled\nactions.precombat+=/variable,name=rip_ticks,value=8\nactions.precombat+=/regrowth,if=buff.moonkin_form.down&talent.bloodtalons.enabled\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/prowl,if=buff.moonkin_form.down\nactions.precombat+=/cat_form,if=buff.moonkin_form.down\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/berserk,if=buff.moonkin_form.down\nactions.precombat+=/tigers_fury,if=buff.moonkin_form.down&buff.tigers_fury.down\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/run_action_list,name=balance,if=talent.balance_affinity.enabled&buff.moonkin_form.up\nactions+=/call_action_list,name=opener,if=!opener_done&(buff.berserk.up||buff.incarnation.up)\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/call_action_list,name=cooldowns\nactions+=/ferocious_bite,cycle_targets=1,if=dot.rip.ticking&dot.rip.remains<3&target.time_to_die>10&(talent.sabertooth.enabled)\nactions+=/ferocious_bite,cycle_targets=1,if=talent.sabertooth.enabled&combo_points>spell_targets.thrash_cat&dot.rip.ticking&dot.rip.remains<3&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\n# actions+=/regrowth,if=combo_points=5&buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/run_action_list,name=finishers,if=combo_points>4\nactions+=/call_action_list,name=generators_aoe,if=spell_targets.thrash_cat>1\nactions+=/run_action_list,name=generators\n\nactions.cooldowns=berserk,if=energy>=30&(cooldown.tigers_fury.remains>5||buff.tigers_fury.up)\nactions.cooldowns+=/tigers_fury,if=energy.deficit>=60||buff.tigers_fury.down\nactions.cooldowns+=/berserking\nactions.cooldowns+=/thorns,if=active_enemies>desired_targets||raid_event.adds.in>45\nactions.cooldowns+=/the_unbound_force,if=buff.reckless_force.up||buff.tigers_fury.up\nactions.cooldowns+=/memory_of_lucid_dreams,if=buff.tigers_fury.up&buff.berserk.down\nactions.cooldowns+=/blood_of_the_enemy,if=buff.tigers_fury.up\nactions.cooldowns+=/feral_frenzy,if=combo_points=0\nactions.cooldowns+=/focused_azerite_beam,if=active_enemies>desired_targets||(raid_event.adds.in>90&energy.deficit>=50)\nactions.cooldowns+=/purifying_blast,if=active_enemies>desired_targets||raid_event.adds.in>60\n# actions.cooldowns+=/heart_essence,if=buff.tigers_fury.up\nactions.cooldowns+=/incarnation,if=energy>=30&(cooldown.tigers_fury.remains>15||buff.tigers_fury.up)\nactions.cooldowns+=/potion,if=target.time_to_die<65||(time_to_die<180&(buff.berserk.up||buff.incarnation.up))\nactions.cooldowns+=/shadowmeld,if=combo_points<5&energy>=action.rake.cost&dot.rake.pmultiplier<2.1&buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.incarnation.enabled||cooldown.incarnation.remains>18)&!buff.incarnation.up\nactions.cooldowns+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||debuff.conductive_ink_debuff.up&target.time_to_pct_30<1.5||!debuff.conductive_ink_debuff.up&(debuff.razor_coral_debuff.stack>=25-10*debuff.blood_of_the_enemy.up||time_to_die<40)&buff.tigers_fury.remains>10\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast,if=(energy.deficit>=energy.regen*3)&buff.tigers_fury.down&!azerite.jungle_fury.enabled\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast,if=buff.tigers_fury.up&azerite.jungle_fury.enabled\nactions.cooldowns+=/use_item,effect_name=azsharas_font_of_power,if=energy.deficit>=50\nactions.cooldowns+=/use_items,if=buff.tigers_fury.up||time_to_die<20\n\nactions.finishers=regrowth,if=buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.stack<2\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.down\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/primal_wrath,cycle_targets=1,if=spell_targets.primal_wrath>1&dot.rip.remains<4\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/primal_wrath,cycle_targets=1,if=spell_targets.primal_wrath>=2\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,cycle_targets=1,if=!talent.sabertooth.enabled&refreshable&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,target_if=talent.sabertooth.enabled&(!ticking||remains<=duration*0.3&persistent_multiplier>dot.rip.pmultiplier)&target.time_to_die>dot.rip.remains+variable.rip_ticks*(1+dot.rip.ticking*3)*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.remains<12\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/maim,if=buff.iron_jaws.up\nactions.finishers+=/ferocious_bite,max_energy=1,cycle_targets=1\n\nactions.generators=regrowth,if=talent.bloodtalons.enabled&buff.predatory_swiftness.up&buff.bloodtalons.down&combo_points=4&dot.rake.remains<4\nactions.generators+=/regrowth,if=talent.bloodtalons.enabled&buff.bloodtalons.down&buff.predatory_swiftness.up&talent.lunar_inspiration.enabled&dot.rake.remains<1\nactions.generators+=/brutal_slash,if=spell_targets.brutal_slash>desired_targets\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=(refreshable)&(spell_targets.thrash_cat>2)\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=(talent.scent_of_blood.enabled&buff.scent_of_blood.down)&spell_targets.thrash_cat>3\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/swipe_cat,if=buff.scent_of_blood.up||(action.swipe_cat.damage*spell_targets.swipe_cat>(action.rake.damage+(action.rake_bleed.tick_damage*5)))\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,cycle_targets=1,if=!ticking||(!talent.bloodtalons.enabled&remains<duration*0.3)&target.time_to_die>4\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,cycle_targets=1,if=talent.bloodtalons.enabled&buff.bloodtalons.up&((remains<=7)&persistent_multiplier>dot.rake.pmultiplier*0.85)&target.time_to_die>4\n# With LI & BT, we can use moonfire to save BT charges, allowing us to better refresh rake\nactions.generators+=/moonfire_cat,if=buff.bloodtalons.up&buff.predatory_swiftness.down&combo_points<5\nactions.generators+=/brutal_slash,if=(buff.tigers_fury.up&(raid_event.adds.in>(1+max_charges-charges_fractional)*recharge_time))\nactions.generators+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=refreshable&((variable.use_thrash=2&(!buff.incarnation.up||azerite.wild_fleshrending.enabled))||spell_targets.thrash_cat>1)\n# actions.generators+=/thrash_cat,if=refreshable&variable.use_thrash=1&buff.clearcasting.react&(!buff.incarnation.up||azerite.wild_fleshrending.enabled)\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.generators+=/shred,if=dot.rake.remains>(action.shred.cost+action.rake.cost-energy)%energy.regen||buff.clearcasting.react\n\nactions.generators_aoe=pool_resource,for_next=1\nactions.generators_aoe+=/thrash_cat,if=(refreshable||active_dot.thrash_cat<active_enemies%2)&spell_targets.thrash_cat>2||talent.scent_of_blood.enabled&buff.scent_of_blood.down&spell_targets.thrash_cat>3\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/brutal_slash,if=spell_targets.brutal_slash>desired_targets\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/swipe_cat,if=buff.scent_of_blood.up\n\n# The opener generally follow the logic of the rest of the apl, but is separated out here for logical clarity\n# We will open with TF, you can safely cast this from stealth without breaking it.\nactions.opener=tigers_fury\n# Always open with rake, consuming stealth and one BT charge (if talented)\nactions.opener+=/rake,if=!ticking||buff.prowl.up\n# Lets make sure we end the opener \"sequence\" when our first rip is ticking\n# actions.opener+=/variable,name=opener_done,value=dot.rip.ticking\n# Break out of the action list\n# actions.opener+=/wait,sec=0.001,if=dot.rip.ticking\n# If we have LI, and haven't applied it yet use moonfire.\nactions.opener+=/moonfire_cat,if=!ticking\n# no need to wait for 5 CPs anymore, just rip and we are up and running\nactions.opener+=/primal_wrath,if=active_enemies>1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)\nactions.opener+=/rip,if=active_enemies=1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&dot.rake.ticking&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)\n\nactions.balance=sunfire,if=refreshable||(active_enemies>1&(dot.sunfire.refreshable||active_dot.sunfire<active_enemies))\nactions.balance+=/lunar_strike,if=active_enemies>4||(active_enemies>1&buff.lunar_empowerment.up)\nactions.balance+=/solar_wrath,if=active_enemies>2&buff.solar_empowerment.up\nactions.balance+=/starsurge\nactions.balance+=/solar_wrath,if=buff.solar_empowerment.up\nactions.balance+=/lunar_strike,if=buff.lunar_empowerment.up\nactions.balance+=/solar_wrath",
					["version"] = 20190728.23,
					["warnings"] = "Imported 8 action lists.\n",
					["lists"] = {
						["opener"] = {
							{
								["action"] = "tigers_fury",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || buff.prowl.up",
								["action"] = "rake",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "moonfire_cat",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
								["action"] = "primal_wrath",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & dot.rake.ticking & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
								["action"] = "rip",
							}, -- [5]
						},
						["generators_aoe"] = {
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || active_dot.thrash_cat < active_enemies % 2 ) & spell_targets.thrash_cat > 2 || talent.scent_of_blood.enabled & buff.scent_of_blood.down & spell_targets.thrash_cat > 3",
								["action"] = "thrash_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > desired_targets",
								["action"] = "brutal_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.scent_of_blood.up",
								["action"] = "swipe_cat",
							}, -- [6]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "talent.balance_affinity.enabled & buff.moonkin_form.up",
								["list_name"] = "balance",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! opener_done & ( buff.berserk.up || buff.incarnation.up )",
								["list_name"] = "opener",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up || buff.shadowmeld.up",
								["action"] = "rake",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > 10 & ( talent.sabertooth.enabled )",
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.sabertooth.enabled & combo_points > spell_targets.thrash_cat & dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "combo_points > 4",
								["list_name"] = "finishers",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "spell_targets.thrash_cat > 1",
								["list_name"] = "generators_aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "generators",
							}, -- [11]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "use_thrash",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["var_name"] = "use_thrash",
								["criteria"] = "azerite.wild_fleshrending.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "8",
								["var_name"] = "rip_ticks",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down & talent.bloodtalons.enabled",
								["action"] = "regrowth",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "prowl",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "cat_form",
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "berserk",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down & buff.tigers_fury.down",
								["action"] = "tigers_fury",
							}, -- [10]
						},
						["generators"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.predatory_swiftness.up & buff.bloodtalons.down & combo_points = 4 & dot.rake.remains < 4",
								["action"] = "regrowth",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down & buff.predatory_swiftness.up & talent.lunar_inspiration.enabled & dot.rake.remains < 1",
								["action"] = "regrowth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > desired_targets",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable ) & ( spell_targets.thrash_cat > 2 )",
								["action"] = "thrash_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( talent.scent_of_blood.enabled & buff.scent_of_blood.down ) & spell_targets.thrash_cat > 3",
								["action"] = "thrash_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.scent_of_blood.up || ( action.swipe_cat.damage * spell_targets.swipe_cat > ( action.rake.damage + ( action.rake_bleed.tick_damage * 5 ) ) )",
								["action"] = "swipe_cat",
							}, -- [9]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || ( ! talent.bloodtalons.enabled & remains < duration * 0.3 ) & target.time_to_die > 4",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.up & ( ( remains <= 7 ) & persistent_multiplier > dot.rake.pmultiplier * 0.85 ) & target.time_to_die > 4",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodtalons.up & buff.predatory_swiftness.down & combo_points < 5",
								["action"] = "moonfire_cat",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( buff.tigers_fury.up & ( raid_event.adds.in > ( 1 + max_charges - charges_fractional ) * recharge_time ) )",
								["action"] = "brutal_slash",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "moonfire_cat",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( ( variable.use_thrash = 2 & ( ! buff.incarnation.up || azerite.wild_fleshrending.enabled ) ) || spell_targets.thrash_cat > 1 )",
								["action"] = "thrash_cat",
							}, -- [18]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "dot.rake.remains > ( action.shred.cost + action.rake.cost - energy ) % energy.regen || buff.clearcasting.react",
								["action"] = "shred",
							}, -- [21]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.predatory_swiftness.up & talent.bloodtalons.enabled & buff.bloodtalons.stack < 2",
								["action"] = "regrowth",
							}, -- [1]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.down",
								["action"] = "savage_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.primal_wrath > 1 & dot.rip.remains < 4",
								["action"] = "primal_wrath",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.primal_wrath >= 2",
								["action"] = "primal_wrath",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.sabertooth.enabled & refreshable & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["action"] = "rip",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.sabertooth.enabled & ( ! ticking || remains <= duration * 0.3 & persistent_multiplier > dot.rip.pmultiplier ) & target.time_to_die > dot.rip.remains + variable.rip_ticks * ( 1 + dot.rip.ticking * 3 ) * action.rip.tick_time",
								["action"] = "rip",
							}, -- [11]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.remains < 12",
								["action"] = "savage_roar",
							}, -- [13]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.iron_jaws.up",
								["action"] = "maim",
							}, -- [15]
							{
								["max_energy"] = "1",
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [16]
						},
						["balance"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable || ( active_enemies > 1 & ( dot.sunfire.refreshable || active_dot.sunfire < active_enemies ) )",
								["action"] = "sunfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 4 || ( active_enemies > 1 & buff.lunar_empowerment.up )",
								["action"] = "lunar_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & buff.solar_empowerment.up",
								["action"] = "solar_wrath",
							}, -- [3]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.solar_empowerment.up",
								["action"] = "solar_wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.lunar_empowerment.up",
								["action"] = "lunar_strike",
							}, -- [6]
							{
								["action"] = "solar_wrath",
								["enabled"] = true,
							}, -- [7]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "energy >= 30 & ( cooldown.tigers_fury.remains > 5 || buff.tigers_fury.up )",
								["action"] = "berserk",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit >= 60 || buff.tigers_fury.down",
								["action"] = "tigers_fury",
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 45",
								["action"] = "thorns",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up || buff.tigers_fury.up",
								["action"] = "the_unbound_force",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & buff.berserk.down",
								["action"] = "memory_of_lucid_dreams",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "blood_of_the_enemy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_points = 0",
								["action"] = "feral_frenzy",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || ( raid_event.adds.in > 90 & energy.deficit >= 50 )",
								["action"] = "focused_azerite_beam",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 60",
								["action"] = "purifying_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "energy >= 30 & ( cooldown.tigers_fury.remains > 15 || buff.tigers_fury.up )",
								["action"] = "incarnation",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 65 || ( time_to_die < 180 & ( buff.berserk.up || buff.incarnation.up ) )",
								["action"] = "potion",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & energy >= action.rake.cost & dot.rake.pmultiplier < 2.1 & buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.incarnation.enabled || cooldown.incarnation.remains > 18 ) & ! buff.incarnation.up",
								["action"] = "shadowmeld",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || debuff.conductive_ink_debuff.up & target.time_to_pct_30 < 1.5 || ! debuff.conductive_ink_debuff.up & ( debuff.razor_coral_debuff.stack >= 25 - 10 * debuff.blood_of_the_enemy.up || time_to_die < 40 ) & buff.tigers_fury.remains > 10",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( energy.deficit >= energy.regen * 3 ) & buff.tigers_fury.down & ! azerite.jungle_fury.enabled",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & azerite.jungle_fury.enabled",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit >= 50",
								["action"] = "azsharas_font_of_power",
								["effect_name"] = "azsharas_font_of_power",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up || time_to_die < 20",
								["action"] = "use_items",
							}, -- [18]
						},
					},
					["author"] = "SimC",
				},
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190709.165,
					["author"] = "SimulationCraft",
					["desc"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/\n# July 9, 2019 - 16:50\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Refresh Frostbrand/Flametongue in AOE for FreezerBurn build.\n# - Don't use Earth Elemental (save it for utility).",
					["lists"] = {
						["filler"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "sundering",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ascendance.up & ! buff.molten_weapon.up & ! buff.icy_edge.up & ! buff.crackling_surge.up & ! debuff.earthen_spike.up",
								["action"] = "focused_azerite_beam",
							}, -- [2]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.lifeblood.stack < 4",
								["action"] = "worldvein_resonance",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.forceful_winds.enabled & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! azerite.primal_primer.enabled & talent.hot_hand.enabled & buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70 & ! buff.strength_of_earth.up",
								["action"] = "rockbiter",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storm.enabled & variable.OCPool_CL",
								["action"] = "crash_lightning",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_LL & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [12]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 + gcd & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [14]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [15]
						},
						["maintenance"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [2]
						},
						["asc"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [2]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [3]
						},
						["default_core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
								["action"] = "stormstrike",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( active_enemies > 1 & buff.gathering_storms.up & variable.furyCheck_SS )",
								["action"] = "stormstrike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck_LB & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_SS & variable.furyCheck_SS",
								["action"] = "stormstrike",
							}, -- [6]
						},
						["freezerburn_core"] = {
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & variable.furyCheck_LL & variable.CLPool_LL",
								["action"] = "lava_lash",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
								["action"] = "stormstrike",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( active_enemies > 1 & buff.gathering_storms.up & variable.furyCheck_SS )",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck_LB & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack > 7 & variable.furyCheck_LL & variable.CLPool_LL",
								["action"] = "lava_lash",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_SS & variable.furyCheck_SS & variable.CLPool_SS",
								["action"] = "stormstrike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "debuff.primal_primer.stack = 10 & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [9]
						},
						["precombat"] = {
							{
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "fireblood",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "ancestral_call",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [6]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.strike.remains > 0",
								["action"] = "ascendance",
							}, -- [11]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [12]
						},
						["priority"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= ( 8 - ( talent.forceful_winds.enabled * 3 ) ) & variable.freezerburn_enabled & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up || time < 5",
								["action"] = "the_unbound_force",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & active_enemies = 1 & variable.freezerburn_enabled & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled & buff.flametongue.remains < gcd & active_enemies > 1",
								["action"] = "flametongue",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled & buff.frostbrand.remains < gcd & active_enemies > 1",
								["action"] = "frostbrand",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.fury_of_air.up & maelstrom >= 20 & spell_targets.fury_of_air_damage >= ( 1 + variable.freezerburn_enabled )",
								["action"] = "fury_of_air",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.fury_of_air.up & & spell_targets.fury_of_air_damage < ( 1 + variable.freezerburn_enabled )",
								["action"] = "fury_of_air",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains <= 2 * gcd",
								["action"] = "totem_mastery",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & ( ! essence.blood_of_the_enemy.major || ( essence.blood_of_the_enemy.major & ( buff.seething_rage.up || cooldown.blood_of_the_enemy.remains > 40 ) ) )",
								["action"] = "sundering",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "focused_azerite_beam",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "purifying_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_frost.remains <= 2 * gcd ) & talent.hailstorm.enabled & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_fire.remains <= 2 * gcd )",
								["action"] = "flametongue",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_nature.remains <= 2 * gcd ) & maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [16]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["var_name"] = "cooldown_sync",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.stormstrike.cost ) )",
								["var_name"] = "furyCheck_SS",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.lava_lash.cost ) )",
								["var_name"] = "furyCheck_LL",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.crash_lightning.cost ) )",
								["var_name"] = "furyCheck_CL",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.frostbrand.cost ) )",
								["var_name"] = "furyCheck_FB",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.earthen_spike.cost ) )",
								["var_name"] = "furyCheck_ES",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + 40 ) )",
								["var_name"] = "furyCheck_LB",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( active_enemies > 1 || ( cooldown.lightning_bolt.remains >= 2 * gcd ) )",
								["var_name"] = "OCPool",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.stormstrike.cost ) ) )",
								["var_name"] = "OCPool_SS",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.lava_lash.cost ) ) )",
								["var_name"] = "OCPool_LL",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.crash_lightning.cost ) ) )",
								["var_name"] = "OCPool_CL",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.frostbrand.cost ) ) )",
								["var_name"] = "OCPool_FB",
							}, -- [13]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.lava_lash.cost )",
								["var_name"] = "CLPool_LL",
							}, -- [14]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.stormstrike.cost )",
								["var_name"] = "CLPool_SS",
							}, -- [15]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( talent.hot_hand.enabled & talent.hailstorm.enabled & azerite.primal_primer.enabled )",
								["var_name"] = "freezerburn_enabled",
							}, -- [16]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( ! variable.freezerburn_enabled & ( talent.boulderfist.enabled & talent.landslide.enabled & azerite.strength_of_earth.enabled ) )",
								["var_name"] = "rockslide_enabled",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.ascendance.up",
								["list_name"] = "asc",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "priority",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies < 3",
								["list_name"] = "maintenance",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.freezerburn_enabled",
								["list_name"] = "freezerburn_core",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! variable.freezerburn_enabled",
								["list_name"] = "default_core",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "maintenance",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [26]
						},
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
					},
					["version"] = 20190709.165,
					["warnings"] = "Imported 10 action lists.\n",
					["profile"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/\n# July 9, 2019 - 16:50\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Refresh Frostbrand/Flametongue in AOE for FreezerBurn build.\n# - Don't use Earth Elemental (save it for utility).\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/lightning_shield\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=wind_shear\n# Attempt to sync racial cooldowns with Ascendance or Feral Spirits, or use on cooldown if saving them will result in significant cooldown waste\nactions+=/variable,name=cooldown_sync,value=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\n# Do not use a maelstrom-costing ability if it will bring you to 0 maelstrom and cancel fury of air.\nactions+=/variable,name=furyCheck_SS,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.stormstrike.cost))\nactions+=/variable,name=furyCheck_LL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.lava_lash.cost))\nactions+=/variable,name=furyCheck_CL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.crash_lightning.cost))\nactions+=/variable,name=furyCheck_FB,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.frostbrand.cost))\nactions+=/variable,name=furyCheck_ES,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.earthen_spike.cost))\nactions+=/variable,name=furyCheck_LB,value=maelstrom>=(talent.fury_of_air.enabled*(6+40))\n# Attempt to pool maelstrom so you'll be able to cast a fully-powered lightning bolt as soon as it's available when fighting one target.\nactions+=/variable,name=OCPool,value=(active_enemies>1||(cooldown.lightning_bolt.remains>=2*gcd))\nactions+=/variable,name=OCPool_SS,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.stormstrike.cost)))\nactions+=/variable,name=OCPool_LL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.lava_lash.cost)))\nactions+=/variable,name=OCPool_CL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.crash_lightning.cost)))\nactions+=/variable,name=OCPool_FB,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.frostbrand.cost)))\n# Attempt to pool maelstrom for Crash Lightning if multiple targets are present.\nactions+=/variable,name=CLPool_LL,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.lava_lash.cost)\nactions+=/variable,name=CLPool_SS,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.stormstrike.cost)\nactions+=/variable,name=freezerburn_enabled,value=(talent.hot_hand.enabled&talent.hailstorm.enabled&azerite.primal_primer.enabled)\nactions+=/variable,name=rockslide_enabled,value=(!variable.freezerburn_enabled&(talent.boulderfist.enabled&talent.landslide.enabled&azerite.strength_of_earth.enabled))\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=priority\nactions+=/call_action_list,name=maintenance,if=active_enemies<3\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=freezerburn_core,if=variable.freezerburn_enabled\nactions+=/call_action_list,name=default_core,if=!variable.freezerburn_enabled\nactions+=/call_action_list,name=maintenance,if=active_enemies>=3\nactions+=/call_action_list,name=filler\n\nactions.asc=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions.cds=bloodlust,if=azerite.ancestral_resonance.enabled\nactions.cds+=/berserking,if=variable.cooldown_sync\nactions.cds+=/blood_fury,if=variable.cooldown_sync\nactions.cds+=/fireblood,if=variable.cooldown_sync\nactions.cds+=/ancestral_call,if=variable.cooldown_sync\n# Attempt to sync your DPS potion with a cooldown, unless the target is about to die.\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/guardian_of_azeroth\nactions.cds+=/memory_of_lucid_dreams\nactions.cds+=/feral_spirit\nactions.cds+=/blood_of_the_enemy\nactions.cds+=/ascendance,if=cooldown.strike.remains>0\nactions.cds+=/use_items\n# actions.cds+=/earth_elemental\n\nactions.default_core=earthen_spike,if=variable.furyCheck_ES\nactions.default_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.default_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.default_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.default_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.default_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS\n\nactions.filler=sundering,if=active_enemies<3\nactions.filler+=/focused_azerite_beam,if=!buff.ascendance.up&!buff.molten_weapon.up&!buff.icy_edge.up&!buff.crackling_surge.up&!debuff.earthen_spike.up\nactions.filler+=/purifying_blast\nactions.filler+=/concentrated_flame\nactions.filler+=/worldvein_resonance,if=buff.lifeblood.stack<4\nactions.filler+=/crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck_CL\nactions.filler+=/flametongue,if=talent.searing_assault.enabled\nactions.filler+=/lava_lash,if=!azerite.primal_primer.enabled&talent.hot_hand.enabled&buff.hot_hand.react\nactions.filler+=/crash_lightning,if=active_enemies>1&variable.furyCheck_CL\nactions.filler+=/rockbiter,if=maelstrom<70&!buff.strength_of_earth.up\nactions.filler+=/crash_lightning,if=talent.crashing_storm.enabled&variable.OCPool_CL\nactions.filler+=/lava_lash,if=variable.OCPool_LL&variable.furyCheck_LL\nactions.filler+=/rockbiter\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck_FB\nactions.filler+=/flametongue\n\nactions.freezerburn_core=lava_lash,cycle_targets=1,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/earthen_spike,if=variable.furyCheck_ES\nactions.freezerburn_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.freezerburn_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.freezerburn_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.freezerburn_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.freezerburn_core+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack>7&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS&variable.CLPool_SS\nactions.freezerburn_core+=/lava_lash,if=debuff.primal_primer.stack=10&variable.furyCheck_LL\n\nactions.maintenance=flametongue,if=!buff.flametongue.up\nactions.maintenance+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck_FB\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd\n\nactions.priority=crash_lightning,if=active_enemies>=(8-(talent.forceful_winds.enabled*3))&variable.freezerburn_enabled&variable.furyCheck_CL\nactions.priority+=/the_unbound_force,if=buff.reckless_force.up||time<5\nactions.priority+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&active_enemies=1&variable.freezerburn_enabled&variable.furyCheck_LL\nactions.priority+=/flametongue,if=variable.freezerburn_enabled&buff.flametongue.remains<gcd&active_enemies>1\nactions.priority+=/frostbrand,if=variable.freezerburn_enabled&buff.frostbrand.remains<gcd&active_enemies>1\nactions.priority+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.priority+=/fury_of_air,if=!buff.fury_of_air.up&maelstrom>=20&spell_targets.fury_of_air_damage>=(1+variable.freezerburn_enabled)\nactions.priority+=/fury_of_air,if=buff.fury_of_air.up&&spell_targets.fury_of_air_damage<(1+variable.freezerburn_enabled)\nactions.priority+=/totem_mastery,if=buff.resonance_totem.remains<=2*gcd\nactions.priority+=/sundering,if=active_enemies>=3&(!essence.blood_of_the_enemy.major||(essence.blood_of_the_enemy.major&(buff.seething_rage.up||cooldown.blood_of_the_enemy.remains>40)))\nactions.priority+=/focused_azerite_beam,if=active_enemies>=3\nactions.priority+=/purifying_blast,if=active_enemies>=3\nactions.priority+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\n# With Natural Harmony, elevate the priority of elemental attacks in order to maintain the buffs when they're about to expire.\nactions.priority+=/frostbrand,if=(azerite.natural_harmony.enabled&buff.natural_harmony_frost.remains<=2*gcd)&talent.hailstorm.enabled&variable.furyCheck_FB\nactions.priority+=/flametongue,if=(azerite.natural_harmony.enabled&buff.natural_harmony_fire.remains<=2*gcd)\nactions.priority+=/rockbiter,if=(azerite.natural_harmony.enabled&buff.natural_harmony_nature.remains<=2*gcd)&maelstrom<70",
					["spec"] = 263,
				},
				["Elemental Funnel"] = {
					["builtIn"] = true,
					["date"] = 20190709.163,
					["spec"] = 262,
					["desc"] = "# Elemental Shaman (Funneling)\n# https://github.com/simulationcraft/simc/\n# July 9, 2019 - 16:30",
					["profile"] = "# Elemental Shaman (Funneling)\n# https://github.com/simulationcraft/simc/\n# July 9, 2019 - 16:30\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\n# actions.precombat+=/earth_elemental,if=!talent.primal_elementalist.enabled\n\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\nactions.precombat+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions.precombat+=/storm_elemental,if=talent.storm_elemental.enabled\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.precombat+=/lava_burst,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning<3\nactions.precombat+=/chain_lightning,if=spell_targets.chain_lightning>2\n\n# Executed every time the actor is available.\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions=bloodlust,if=azerite.ancestral_resonance.enabled\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion,if=expected_combat_length-time<30||fire_elemental.up||storm_elemental.up\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)&(!talent.ascendance.enabled||!cooldown.ascendance.up)\n# actions+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(fire_elemental.down&!talent.storm_elemental.enabled||storm_elemental.down&talent.storm_elemental.enabled)\nactions+=/use_items\nactions+=/concentrated_flame\nactions+=/blood_of_the_enemy\nactions+=/guardian_of_azeroth\nactions+=/focused_azerite_beam\nactions+=/purifying_blast\nactions+=/the_unbound_force\nactions+=/memory_of_lucid_dreams\nactions+=/ripple_in_space\nactions+=/worldvein_resonance\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/eye_of_the_storm,if=storm_elemental.up&buff.call_lightning.remains>=8\nactions+=/meteor\nactions+=/run_action_list,name=aoe,if=active_enemies>5&(spell_targets.chain_lightning>5||spell_targets.lava_beam>5)\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\n# Spread Flame Shock in <= 4 target fights, but not during SE uptime,unless you're fighting 3 targets and have less than 14 Wind Gust stacks.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(spell_targets.chain_lightning<(5-!talent.totem_mastery.enabled)||!talent.storm_elemental.enabled&(fire_elemental.remains>(14*spell_haste)||cooldown.fire_elemental.remains<(24-14*spell_haste)))&(!talent.storm_elemental.enabled||storm_elemental.down||spell_targets.chain_lightning=3&buff.wind_gust.stack<14)\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&storm_elemental.down&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\n\n# Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!\nactions.aoe+=/earthquake,if=!talent.master_of_the_elements.enabled||buff.stormkeeper.up||maelstrom>=(100-4*spell_targets.chain_lightning)||buff.master_of_the_elements.up||spell_targets.chain_lightning>3\n\n# Make sure you don't lose a Stormkeeper.\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\n\n# Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)&dot.flame_shock.ticking\nactions.aoe+=/icefury,if=spell_targets.chain_lightning<4&!buff.ascendance.up\nactions.aoe+=/frost_shock,if=spell_targets.chain_lightning<4&buff.icefury.up&!buff.ascendance.up\n\n# Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Single Target Action Priority List\n# Ensure FS is active unless you have 14 or more stacks of Wind Gust from Storm Elemental. (Edge case: upcoming Asc but active SE; don't )\nactions.single_target=flame_shock,cycle_targets=1,if=(!ticking||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled||talent.storm_elemental.enabled&storm_elemental.down))&(buff.wind_gust.stack<14||azerite.igneous_potential.rank>=2||buff.lava_surge.up||!buff.bloodlust.up)&!buff.surge_of_power.up\n\n# Use Ascendance after you've spent all Lava Burst charges and only if neither Storm Elemental nor Icefury are currently active.\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&(storm_elemental.down||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\n\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead. Don't cast Elemental Blast during Storm Elemental unless you have 3x Natural Harmony. But in this case stop using Elemental Blast once you reach 14 stacks of Wind Gust.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)&(!(storm_elemental.up&talent.storm_elemental.enabled)||azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)\n\n# Keep SK for large or soon add waves. Unless you have Surge of Power, in which case you want to double buff Lightning Bolt by pooling Maelstrom beforehand. Example sequence: 100MS, ES, SK, LB, LvB, ES, LB\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(!talent.surge_of_power.enabled||buff.surge_of_power.up||maelstrom>=44)\n\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\n# Combine Stormkeeper with Master of the Elements or Surge of Power unless you have the Lava Shock trait and multiple stacks.\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack)<26&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n\n# Use Earthquake versus 2 targets, unless you have Lava Shock. Use Earthquake versus 1 target if you have Tectonic Thunder 3 times and NO Surge of Power enabled and NO Lava Shock.\nactions.single_target+=/earthquake,if=(spell_targets.chain_lightning>1||azerite.tectonic_thunder.rank>=3&!talent.surge_of_power.enabled&azerite.lava_shock.rank<1)&azerite.lava_shock.rank*buff.lava_shock.stack<(36+3*azerite.tectonic_thunder.rank*spell_targets.chain_lightning)&(!talent.surge_of_power.enabled||!dot.flame_shock.refreshable||storm_elemental.up)&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled)\n\n# Cast Earth Shock with Master of the Elements talent but no active Surge of Power buff, and active Stormkeeper buff and Lava Burst coming off CD within the next GCD, and either active Master of the Elements buff, or no available Lava Burst while near MS cap, or single target and multiple Lava Shock traits and many stacks.\nactions.single_target+=/earth_shock,if=!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled||spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack<26)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)\n\n# You know what? I had some short explanation here once. But then the condition grew, and I had to split the one Earth Shock line into four...so you have to deal with this abomination now: Cast Earth Shock without Master of the Elements talent, and without having triple Igneous Potential and active Ascendance, and active Stormkeeper buff or near MS cap, or Storm Elemental is inactive, and we can't expect to get an additional use of Storm Elemental in the remaining fight from Surge of Power.\nactions.single_target+=/earth_shock,if=!talent.master_of_the_elements.enabled&!(azerite.igneous_potential.rank>2&buff.ascendance.up)&(buff.stormkeeper.up||maelstrom>=90+30*talent.call_the_thunder.enabled||!(storm_elemental.up&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))\n\n# Use Earth Shock if Surge of Power is talented, but neither it nor a DPS Elemental is active at the moment, and Lava Burst is ready or will be ready within the next GCD.\nactions.single_target+=/earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!(fire_elemental.up)||talent.storm_elemental.enabled&!(storm_elemental.up))\nactions.single_target+=/lightning_lasso\n\n# Spam Lightning Bolts during Storm Elemental duration, if you don't have Igneous Potential or have it only once, and don't use Lightning Bolt during Bloodlust if you have a Lava Surge Proc.\nactions.single_target+=/lightning_bolt,if=storm_elemental.up&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2||!buff.lava_surge.up&buff.bloodlust.up)\n\n# Cast Lightning Bolt regardless of the previous condition if you'd lose a Stormkeeper stack or have Stormkeeper and Master of the Elements active.\nactions.single_target+=/lightning_bolt,if=(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\n\n# Use Frost Shock with Icefury and Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\n\nactions.single_target+=/lava_burst,if=buff.ascendance.up\n\n# Utilize Surge of Power to spread Flame Shock if multiple enemies are present.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&active_enemies>1&buff.surge_of_power.up\n\n# Use Lava Burst with Surge of Power if the last potential usage of Storm Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains)%150))<(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)))\n\n# Use Lava Burst with Surge of Power if the last potential usage of Fire Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))\n\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\n\n# Slightly game Icefury buff to hopefully buff some empowered Frost Shocks with Master of the Elements.\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)&(!talent.storm_elemental.enabled||storm_elemental.down)\n\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\n\n# Slightly delay using Icefury empowered Frost Shocks to empower them with Master of the Elements too.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack\n\nactions.single_target+=/lava_burst,if=cooldown_react\n\n# Don't accidentally use Surge of Power with Flame Shock during single target.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&!buff.surge_of_power.up\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\n\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\nactions.single_target+=/chain_lightning,if=buff.tectonic_thunder.up&!buff.stormkeeper.up&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20190709.163,
					["warnings"] = "Imported 4 action lists.\n",
					["author"] = "Secret People",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ( spell_targets.chain_lightning < ( 5 - ! talent.totem_mastery.enabled ) || ! talent.storm_elemental.enabled & ( cooldown.fire_elemental.remains > ( 120 + 14 * spell_haste ) || cooldown.fire_elemental.remains < ( 24 - 14 * spell_haste ) ) ) & ( ! talent.storm_elemental.enabled || storm_elemental.down || spell_targets.chain_lightning = 3 & buff.wind_gust.stack < 14 )",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( talent.storm_elemental.enabled & storm_elemental.down & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3",
								["action"] = "earthquake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.remains < 3 * gcd * buff.stormkeeper.stack",
								["action"] = "chain_lightning",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down ) & dot.flame_shock.ticking",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & ! buff.ascendance.up",
								["action"] = "icefury",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & buff.icefury.up & ! buff.ascendance.up",
								["action"] = "frost_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "elemental_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [11]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_burst",
								["moving"] = "1",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [14]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [15]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ! ticking || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 2 * gcd || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 & ( ! talent.storm_elemental.enabled || talent.storm_elemental.enabled & storm_elemental.down ) ) & ( buff.wind_gust.stack < 14 || azerite.igneous_potential.rank >= 2 || buff.lava_surge.up || ! buff.bloodlust.up ) & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & cooldown.lava_burst.remains > 0 & ( storm_elemental.down || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled ) & ( ! ( storm_elemental.up & talent.storm_elemental.enabled ) || azerite.natural_harmony.rank = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( ! talent.surge_of_power.enabled || buff.surge_of_power.up || maelstrom >= 44 )",
								["action"] = "stormkeeper",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "liquid_magma_totem",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & spell_targets.chain_lightning < 6 & ( azerite.lava_shock.rank * buff.lava_shock.stack ) < 36 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || ( azerite.lava_shock.rank * buff.lava_shock.stack < 36 ) & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd ) || ! talent.master_of_the_elements.enabled & ! ( azerite.igneous_potential.rank > 2 & buff.ascendance.up ) & ( buff.stormkeeper.up || maelstrom >= 90 + 30 * talent.call_the_thunder.enabled || ! ( storm_elemental.up & talent.storm_elemental.enabled ) & expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) >= 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) )",
								["action"] = "earth_shock",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.surge_of_power.enabled & ! buff.surge_of_power.up & cooldown.lava_burst.remains <= gcd & ( ! talent.storm_elemental.enabled & ! ( fire_elemental.up ) || talent.storm_elemental.enabled & ! ( storm_elemental.up ) )",
								["action"] = "earth_shock",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & talent.storm_elemental.enabled & ( azerite.igneous_potential.rank < 2 || ! buff.lava_surge.up & buff.bloodlust.up )",
								["action"] = "lightning_bolt",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & active_enemies > 1 & buff.surge_of_power.up",
								["action"] = "flame_shock",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 75 & cooldown.lava_burst.remains <= 0 ) & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "icefury",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < 1.1 * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & ( buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 ) )",
								["action"] = "totem_mastery",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [23]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 6",
								["action"] = "flame_shock",
								["moving"] = "1",
							}, -- [26]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [27]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "expected_combat_length - time < 30 || fire_elemental.up || storm_elemental.up",
								["action"] = "potion",
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up ) & ( ! talent.ascendance.enabled || ! cooldown.ascendance.up )",
								["action"] = "storm_elemental",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled || talent.primal_elementalist.enabled & ( fire_elemental.down & ! talent.storm_elemental.enabled || storm_elemental.down & talent.storm_elemental.enabled )",
								["action"] = "earth_elemental",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & buff.call_lightning.remains >= 8",
								["action"] = "eye_of_the_storm",
							}, -- [22]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 5 & ( spell_targets.chain_lightning > 5 || spell_targets.lava_beam > 5 )",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [25]
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
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled",
								["action"] = "storm_elemental",
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.elemental_blast.enabled",
								["action"] = "lava_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.stormkeeper.enabled & spell_targets > ( 20 + azerite.igneous_potential.rank > 0 )",
								["action"] = "chain_lightning",
							}, -- [13]
						},
					},
				},
				["Havoc"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190625.0925,
					["spec"] = 577,
					["desc"] = "# Havoc Demon Hunter\n# https://github.com/simulationcraft/simc/\n# June 25, 2019 - 09:25\n\n# Warnings:\n# - Using Demon Blades makes most Fury generation purely RNG driven and unpredictable, which will impact the quality of recommendations.\n# - Using Momentum is not recommended; Fel Rush will be recommended and the safety of Fel Rush cannot be detected by addons.",
					["lists"] = {
						["normal"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.momentum.enabled & buff.prepared.down & time > 1",
								["action"] = "vengeful_retreat",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.waiting_for_momentum & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! variable.waiting_for_momentum & ( active_enemies > desired_targets || raid_event.adds.in > 30 )",
								["action"] = "fel_barrage",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance",
								["action"] = "death_sweep",
							}, -- [4]
							{
								["action"] = "immolation_aura",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( ! raid_event.adds.exists || raid_event.adds.up ) & ! variable.waiting_for_momentum",
								["action"] = "eye_beam",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance",
								["action"] = "blade_dance",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 40",
								["action"] = "felblade",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blind_fury.enabled & ! variable.waiting_for_dark_slash & raid_event.adds.in > action.eye_beam.cooldown",
								["action"] = "eye_beam",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( talent.demon_blades.enabled || ! variable.waiting_for_momentum || fury.deficit < 30 || buff.metamorphosis.remains < 5 ) & ! variable.pooling_for_blade_dance & ! variable.waiting_for_dark_slash",
								["action"] = "annihilation",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( talent.demon_blades.enabled || ! variable.waiting_for_momentum || fury.deficit < 30 ) & ! variable.pooling_for_meta & ! variable.pooling_for_blade_dance & ! variable.waiting_for_dark_slash",
								["action"] = "chaos_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.blind_fury.enabled & raid_event.adds.in > action.eye_beam.cooldown",
								["action"] = "eye_beam",
							}, -- [12]
							{
								["action"] = "demons_bite",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 15 || buff.out_of_range.up",
								["action"] = "felblade",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "talent.demon_blades.enabled",
								["action"] = "throw_glaive",
							}, -- [15]
						},
						["essences"] = {
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "fury < 40 & buff.metamorphosis.up",
								["action"] = "memory_of_lucid_dreams",
							}, -- [9]
						},
						["default"] = {
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.first_blood.enabled || spell_targets.blade_dance1 >= ( 3 - talent.trail_of_ruin.enabled )",
								["var_name"] = "blade_dance",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! ( ! talent.nemesis.enabled || cooldown.nemesis.ready || cooldown.nemesis.remains > time_to_die || cooldown.nemesis.remains > 60 )",
								["var_name"] = "waiting_for_nemesis",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.demonic.enabled & cooldown.metamorphosis.remains < 6 & fury.deficit > 30 & ( ! variable.waiting_for_nemesis || cooldown.nemesis.remains < 10 )",
								["var_name"] = "pooling_for_meta",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.blade_dance & ( fury < 75 - talent.first_blood.enabled * 20 )",
								["var_name"] = "pooling_for_blade_dance",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.demonic.enabled & ! talent.blind_fury.enabled & cooldown.eye_beam.remains < ( gcd.max * 2 ) & fury.deficit > 20",
								["var_name"] = "pooling_for_eye_beam",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.dark_slash.enabled & ! variable.pooling_for_blade_dance & ! variable.pooling_for_meta & cooldown.dark_slash.up",
								["var_name"] = "waiting_for_dark_slash",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.momentum.enabled & ! buff.momentum.up",
								["var_name"] = "waiting_for_momentum",
							}, -- [9]
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "gcd.remains = 0",
								["list_name"] = "cooldown",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 35",
								["action"] = "pick_up_fragment",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "talent.dark_slash.enabled & ( variable.waiting_for_dark_slash || debuff.dark_slash.up )",
								["list_name"] = "dark_slash",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "talent.demonic.enabled",
								["list_name"] = "demonic",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "normal",
							}, -- [15]
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
								["criteria"] = "! azerite.chaotic_transformation.enabled",
								["action"] = "metamorphosis",
							}, -- [6]
						},
						["demonic"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance",
								["action"] = "death_sweep",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.up || raid_event.adds.in > 25",
								["action"] = "eye_beam",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! cooldown.eye_beam.up || buff.metamorphosis.up ) & raid_event.adds.in > 30 ) || active_enemies > desired_targets",
								["action"] = "fel_barrage",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance & ! cooldown.metamorphosis.ready & ( cooldown.eye_beam.remains > ( 5 - azerite.revolving_blades.rank * 3 ) || ( raid_event.adds.in > action.blade_dance.cooldown & raid_event.adds.in < 25 ) )",
								["action"] = "blade_dance",
							}, -- [4]
							{
								["action"] = "immolation_aura",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance",
								["action"] = "annihilation",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 40",
								["action"] = "felblade",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance & ! variable.pooling_for_eye_beam",
								["action"] = "chaos_strike",
							}, -- [8]
							{
								["action"] = "demons_bite",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.out_of_range.up",
								["action"] = "throw_glaive",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.demon_blades.enabled",
								["action"] = "throw_glaive",
							}, -- [11]
						},
						["cooldown"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ( talent.demonic.enabled || variable.pooling_for_meta || variable.waiting_for_nemesis ) || time_to_die < 25",
								["action"] = "metamorphosis",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.demonic.enabled & ( ! azerite.chaotic_transformation.enabled || ( cooldown.eye_beam.remains > 20 & cooldown.blade_dance.remains > gcd.max ) )",
								["action"] = "metamorphosis",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.exists & debuff.nemesis.down & ( active_enemies > desired_targets || raid_event.adds.in > 60 )",
								["action"] = "nemesis",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists",
								["action"] = "nemesis",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.remains > 25 || time_to_die < 60",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "variable_intensity_gigavolt_oscillating_reactor",
								["action"] = "variable_intensity_gigavolt_oscillating_reactor",
							}, -- [6]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "essences",
							}, -- [8]
						},
						["dark_slash"] = {
							{
								["enabled"] = true,
								["criteria"] = "fury >= 80 & ( ! variable.blade_dance || ! cooldown.blade_dance.ready )",
								["action"] = "dark_slash",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "debuff.dark_slash.up",
								["action"] = "annihilation",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.dark_slash.up",
								["action"] = "chaos_strike",
							}, -- [3]
						},
					},
					["version"] = 20190625.0925,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 12: Unsupported action 'pick_up_fragment'.\n\nImported 7 action lists.\n",
					["author"] = "SimulationCraft",
					["profile"] = "# Havoc Demon Hunter\n# https://github.com/simulationcraft/simc/\n# June 25, 2019 - 09:25\n\n# Warnings:\n# - Using Demon Blades makes most Fury generation purely RNG driven and unpredictable, which will impact the quality of recommendations.\n# - Using Momentum is not recommended; Fel Rush will be recommended and the safety of Fel Rush cannot be detected by addons.\n\n# Changes:\n# - Added Consume Magic.\n# - Removed target_if check for Nemesis ability.\n# - Removed movement abilities from priority when not used for Momentum.\n# - Added Use Items to end of Cooldowns actionlist.\n# - Converted \"cooldown\" to \"action.X.cooldown\" where applicable.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/augmentation\nactions.precombat+=/food\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/metamorphosis,if=!azerite.chaotic_transformation.enabled\n\n# Executed every time the actor is available.\nactions=disrupt\nactions+=/consume_magic\nactions+=/variable,name=blade_dance,value=talent.first_blood.enabled||spell_targets.blade_dance1>=(3-talent.trail_of_ruin.enabled)\nactions+=/variable,name=waiting_for_nemesis,value=!(!talent.nemesis.enabled||cooldown.nemesis.ready||cooldown.nemesis.remains>time_to_die||cooldown.nemesis.remains>60)\nactions+=/variable,name=pooling_for_meta,value=!talent.demonic.enabled&cooldown.metamorphosis.remains<6&fury.deficit>30&(!variable.waiting_for_nemesis||cooldown.nemesis.remains<10)\nactions+=/variable,name=pooling_for_blade_dance,value=variable.blade_dance&(fury<75-talent.first_blood.enabled*20)\nactions+=/variable,name=pooling_for_eye_beam,value=talent.demonic.enabled&!talent.blind_fury.enabled&cooldown.eye_beam.remains<(gcd.max*2)&fury.deficit>20\nactions+=/variable,name=waiting_for_dark_slash,value=talent.dark_slash.enabled&!variable.pooling_for_blade_dance&!variable.pooling_for_meta&cooldown.dark_slash.up\nactions+=/variable,name=waiting_for_momentum,value=talent.momentum.enabled&!buff.momentum.up\nactions+=/disrupt\nactions+=/call_action_list,name=cooldown,if=gcd.remains=0\nactions+=/pick_up_fragment,if=fury.deficit>=35\nactions+=/call_action_list,name=dark_slash,if=talent.dark_slash.enabled&(variable.waiting_for_dark_slash||debuff.dark_slash.up)\nactions+=/run_action_list,name=demonic,if=talent.demonic.enabled\nactions+=/run_action_list,name=normal\n\nactions.essences+=/concentrated_flame\nactions.essences+=/blood_of_the_enemy\nactions.essences+=/guardian_of_azeroth\nactions.essences+=/focused_azerite_beam\nactions.essences+=/purifying_blast\nactions.essences+=/the_unbound_force\nactions.essences+=/ripple_in_space\nactions.essences+=/worldvein_resonance\nactions.essences+=/memory_of_lucid_dreams,if=fury<40&buff.metamorphosis.up\n\nactions.cooldown=metamorphosis,if=!(talent.demonic.enabled||variable.pooling_for_meta||variable.waiting_for_nemesis)||time_to_die<25\nactions.cooldown+=/metamorphosis,if=talent.demonic.enabled&(!azerite.chaotic_transformation.enabled||(cooldown.eye_beam.remains>20&cooldown.blade_dance.remains>gcd.max))\nactions.cooldown+=/nemesis,if=raid_event.adds.exists&debuff.nemesis.down&(active_enemies>desired_targets||raid_event.adds.in>60)\nactions.cooldown+=/nemesis,if=!raid_event.adds.exists\nactions.cooldown+=/potion,if=buff.metamorphosis.remains>25||time_to_die<60\nactions.cooldown+=/use_item,name=variable_intensity_gigavolt_oscillating_reactor\nactions.cooldown+=/use_items\nactions.cooldown+=/call_action_list,name=essences\n\nactions.dark_slash=dark_slash,if=fury>=80&(!variable.blade_dance||!cooldown.blade_dance.ready)\nactions.dark_slash+=/annihilation,if=debuff.dark_slash.up\nactions.dark_slash+=/chaos_strike,if=debuff.dark_slash.up\n\nactions.demonic=death_sweep,if=variable.blade_dance\nactions.demonic+=/eye_beam,if=raid_event.adds.up||raid_event.adds.in>25\nactions.demonic+=/fel_barrage,if=((!cooldown.eye_beam.up||buff.metamorphosis.up)&raid_event.adds.in>30)||active_enemies>desired_targets\nactions.demonic+=/blade_dance,if=variable.blade_dance&!cooldown.metamorphosis.ready&(cooldown.eye_beam.remains>(5-azerite.revolving_blades.rank*3)||(raid_event.adds.in>action.blade_dance.cooldown&raid_event.adds.in<25))\nactions.demonic+=/immolation_aura\nactions.demonic+=/annihilation,if=!variable.pooling_for_blade_dance\nactions.demonic+=/felblade,if=fury.deficit>=40\nactions.demonic+=/chaos_strike,if=!variable.pooling_for_blade_dance&!variable.pooling_for_eye_beam\n# actions.demonic+=/fel_rush,if=talent.demon_blades.enabled&!cooldown.eye_beam.ready&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions.demonic+=/demons_bite\nactions.demonic+=/throw_glaive,if=buff.out_of_range.up\n# actions.demonic+=/fel_rush,if=movement.distance>15||buff.out_of_range.up\n# actions.demonic+=/vengeful_retreat,if=movement.distance>15\nactions.demonic+=/throw_glaive,if=talent.demon_blades.enabled\n\nactions.normal=vengeful_retreat,if=talent.momentum.enabled&buff.prepared.down&time>1\nactions.normal+=/fel_rush,if=variable.waiting_for_momentum&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\n# actions.normal+=/fel_rush,if=talent.fel_mastery.enabled&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions.normal+=/fel_barrage,if=!variable.waiting_for_momentum&(active_enemies>desired_targets||raid_event.adds.in>30)\nactions.normal+=/death_sweep,if=variable.blade_dance\nactions.normal+=/immolation_aura\nactions.normal+=/eye_beam,if=active_enemies>1&(!raid_event.adds.exists||raid_event.adds.up)&!variable.waiting_for_momentum\nactions.normal+=/blade_dance,if=variable.blade_dance\nactions.normal+=/felblade,if=fury.deficit>=40\nactions.normal+=/eye_beam,if=!talent.blind_fury.enabled&!variable.waiting_for_dark_slash&raid_event.adds.in>action.eye_beam.cooldown\nactions.normal+=/annihilation,if=(talent.demon_blades.enabled||!variable.waiting_for_momentum||fury.deficit<30||buff.metamorphosis.remains<5)&!variable.pooling_for_blade_dance&!variable.waiting_for_dark_slash\nactions.normal+=/chaos_strike,if=(talent.demon_blades.enabled||!variable.waiting_for_momentum||fury.deficit<30)&!variable.pooling_for_meta&!variable.pooling_for_blade_dance&!variable.waiting_for_dark_slash\nactions.normal+=/eye_beam,if=talent.blind_fury.enabled&raid_event.adds.in>action.eye_beam.cooldown\nactions.normal+=/demons_bite\n# actions.normal+=/fel_rush,if=!talent.momentum.enabled&raid_event.movement.in>charges*10&talent.demon_blades.enabled\nactions.normal+=/felblade,if=movement.distance>15||buff.out_of_range.up\n# actions.normal+=/fel_rush,if=movement.distance>15||(buff.out_of_range.up&!talent.momentum.enabled)\n# actions.normal+=/vengeful_retreat,if=movement.distance>15\nactions.normal+=/throw_glaive,if=talent.demon_blades.enabled",
				},
				["Frost Mage"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Frost.simc",
					["builtIn"] = true,
					["date"] = 20190201.2351,
					["author"] = "SimC",
					["desc"] = "# Frost Mage\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Frost.simc\n# February 1, 2019 - 23:51\n\n# Changes:\n# - Use 'time_to_die' instead of 'target.time_to_die' for last-second potion.",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ice_nova.ready & debuff.winters_chill.up",
								["action"] = "ice_nova",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ebonbolt.enabled & prev_gcd.1.ebonbolt & ( ! talent.glacial_spike.enabled || buff.icicles.stack < 4 || buff.brain_freeze.react )",
								["action"] = "flurry",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.glacial_spike.enabled & prev_gcd.1.glacial_spike & buff.brain_freeze.react",
								["action"] = "flurry",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.frostbolt & buff.brain_freeze.react & ( ! talent.glacial_spike.enabled || buff.icicles.stack < 4 )",
								["action"] = "flurry",
							}, -- [4]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || active_enemies > 1 & cast_time = 0 & buff.fingers_of_frost.react < 2",
								["action"] = "blizzard",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [7]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! action.frozen_orb.in_flight & ground_aoe.frozen_orb.remains = 0",
								["action"] = "ray_of_frost",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cast_time = 0 || active_enemies > 1",
								["action"] = "blizzard",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.brain_freeze.react || prev_gcd.1.ebonbolt || active_enemies > 1 & talent.splitting_ice.enabled",
								["action"] = "glacial_spike",
							}, -- [12]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_veins.down & buff.rune_of_power.down",
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
							}, -- [14]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [16]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [17]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.flurry & ! buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & talent.freezing_rain.enabled || active_enemies > 4",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "single",
							}, -- [5]
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
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "water_elemental",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [9]
						},
						["cooldowns"] = {
							{
								["action"] = "icy_veins",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.frozen_orb || time_to_die > 10 + cast_time & time_to_die < 20",
								["action"] = "rune_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.rune_of_power.enabled & active_enemies = 1 & cooldown.rune_of_power.full_recharge_time < cooldown.frozen_orb.remains",
								["action"] = "call_action_list",
								["list_name"] = "talent_rop",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.icy_veins || time_to_die < 70",
								["action"] = "potion",
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [11]
						},
						["aoe"] = {
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.ebonbolt || buff.brain_freeze.react & ( prev_gcd.1.frostbolt & ( buff.icicles.stack < 4 || ! talent.glacial_spike.enabled ) || prev_gcd.1.glacial_spike )",
								["action"] = "flurry",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react",
								["action"] = "ice_lance",
							}, -- [6]
							{
								["action"] = "ray_of_frost",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "glacial_spike",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "cone_of_cold",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.icy_veins.down & buff.rune_of_power.down",
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
							}, -- [11]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [13]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [14]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 10",
								["action"] = "blink",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ice_floes.down",
								["action"] = "ice_floes",
							}, -- [2]
						},
					},
					["version"] = 20190201.2351,
					["warnings"] = "Imported 6 action lists.\n",
					["spec"] = 64,
					["profile"] = "# Frost Mage\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Frost.simc\n# February 1, 2019 - 23:51\n\n# Changes:\n# - Use 'time_to_die' instead of 'target.time_to_die' for last-second potion.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\nactions.precombat+=/summon_water_elemental\nactions.precombat+=/snapshot_stats\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/frostbolt\n\n# Executed every time the actor is available.\nactions=counterspell\n# If the mage has FoF after casting instant Flurry, we can delay the Ice Lance and use other high priority action, if available.\nactions+=/ice_lance,if=prev_gcd.1.flurry&!buff.fingers_of_frost.react\nactions+=/call_action_list,name=cooldowns\n# The target threshold isn't exact. Between 3-5 targets, the differences between the ST and AoE action lists are rather small. However, Freezing Rain prefers using AoE action list sooner as it benefits greatly from the high priority Blizzard action.\nactions+=/call_action_list,name=aoe,if=active_enemies>3&talent.freezing_rain.enabled||active_enemies>4\nactions+=/call_action_list,name=single\n\n# With Freezing Rain, it's better to prioritize using Frozen Orb when both FO and Blizzard are off cooldown. Without Freezing Rain, the converse is true although the difference is miniscule until very high target counts.\nactions.aoe=frozen_orb\nactions.aoe+=/blizzard\nactions.aoe+=/comet_storm\nactions.aoe+=/ice_nova\n# Simplified Flurry conditions from the ST action list. Since the mage is generating far less Brain Freeze charges, the exact condition here isn't all that important.\nactions.aoe+=/flurry,if=prev_gcd.1.ebonbolt||buff.brain_freeze.react&(prev_gcd.1.frostbolt&(buff.icicles.stack<4||!talent.glacial_spike.enabled)||prev_gcd.1.glacial_spike)\nactions.aoe+=/ice_lance,if=buff.fingers_of_frost.react\n# The mage will generally be generating a lot of FoF charges when using the AoE action list. Trying to delay Ray of Frost until there are no FoF charges and no active Frozen Orbs would lead to it not being used at all.\nactions.aoe+=/ray_of_frost\nactions.aoe+=/ebonbolt\nactions.aoe+=/glacial_spike\n# Using Cone of Cold is mostly DPS neutral with the AoE target thresholds. It only becomes decent gain with roughly 7 or more targets.\nactions.aoe+=/cone_of_cold\nactions.aoe+=/use_item,name=tidestorm_codex,if=buff.icy_veins.down&buff.rune_of_power.down\nactions.aoe+=/frostbolt\nactions.aoe+=/call_action_list,name=movement\nactions.aoe+=/ice_lance\n\nactions.cooldowns=icy_veins\nactions.cooldowns+=/mirror_image\n# Rune of Power is always used with Frozen Orb. Any leftover charges at the end of the fight should be used, ideally if the boss doesn't die in the middle of the Rune buff.\nactions.cooldowns+=/rune_of_power,if=prev_gcd.1.frozen_orb||time_to_die>10+cast_time&time_to_die<20\n# On single target fights, the cooldown of Rune of Power is lower than the cooldown of Frozen Orb, this gives extra Rune of Power charges that should be used with active talents, if possible.\nactions.cooldowns+=/call_action_list,name=talent_rop,if=talent.rune_of_power.enabled&active_enemies=1&cooldown.rune_of_power.full_recharge_time<cooldown.frozen_orb.remains\nactions.cooldowns+=/potion,if=prev_gcd.1.icy_veins||time_to_die<70\nactions.cooldowns+=/use_items\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\n\nactions.movement=blink,if=movement.distance>10\nactions.movement+=/ice_floes,if=buff.ice_floes.down\n\n# In some situations, you can shatter Ice Nova even after already casting Flurry and Ice Lance. Otherwise this action is used when the mage has FoF after casting Flurry, see above.\nactions.single=ice_nova,if=cooldown.ice_nova.ready&debuff.winters_chill.up\n# Without GS, Ebonbolt is always shattered. With GS, Ebonbolt is shattered if it would waste Brain Freeze charge (i.e. when the mage starts casting Ebonbolt with Brain Freeze active) or when below 4 Icicles (if Ebonbolt is cast when the mage has 4-5 Icicles, it's better to use the Brain Freeze from it on Glacial Spike).\nactions.single+=/flurry,if=talent.ebonbolt.enabled&prev_gcd.1.ebonbolt&(!talent.glacial_spike.enabled||buff.icicles.stack<4||buff.brain_freeze.react)\n# Glacial Spike is always shattered.\nactions.single+=/flurry,if=talent.glacial_spike.enabled&prev_gcd.1.glacial_spike&buff.brain_freeze.react\n# Without GS, the mage just tries to shatter as many Frostbolts as possible. With GS, the mage only shatters Frostbolt that would put them at 1-3 Icicle stacks. Difference between shattering Frostbolt with 1-3 Icicles and 1-4 Icicles is small, but 1-3 tends to be better in more situations (the higher GS damage is, the more it leans towards 1-3). Forcing shatter on Frostbolt is still a small gain, so is not caring about FoF. Ice Lance is too weak to warrant delaying Brain Freeze Flurry.\nactions.single+=/flurry,if=prev_gcd.1.frostbolt&buff.brain_freeze.react&(!talent.glacial_spike.enabled||buff.icicles.stack<4)\nactions.single+=/frozen_orb\n# With Freezing Rain and at least 2 targets, Blizzard needs to be used with higher priority to make sure you can fit both instant Blizzards into a single Freezing Rain. Starting with three targets, Blizzard leaves the low priority filler role and is used on cooldown (and just making sure not to waste Brain Freeze charges) with or without Freezing Rain.\nactions.single+=/blizzard,if=active_enemies>2||active_enemies>1&cast_time=0&buff.fingers_of_frost.react<2\n# Trying to pool charges of FoF for anything isn't worth it. Use them as they come.\nactions.single+=/ice_lance,if=buff.fingers_of_frost.react\nactions.single+=/comet_storm\nactions.single+=/ebonbolt\n# Ray of Frost is used after all Fingers of Frost charges have been used and there isn't active Frozen Orb that could generate more. This is only a small gain against multiple targets, as Ray of Frost isn't too impactful.\nactions.single+=/ray_of_frost,if=!action.frozen_orb.in_flight&ground_aoe.frozen_orb.remains=0\n# Blizzard is used as low priority filler against 2 targets. When using Freezing Rain, it's a medium gain to use the instant Blizzard even against a single target, especially with low mastery.\nactions.single+=/blizzard,if=cast_time=0||active_enemies>1\n# Glacial Spike is used when there's a Brain Freeze proc active (i.e. only when it can be shattered). This is a small to medium gain in most situations. Low mastery leans towards using it when available. When using Splitting Ice and having another target nearby, it's slightly better to use GS when available, as the second target doesn't benefit from shattering the main target.\nactions.single+=/glacial_spike,if=buff.brain_freeze.react||prev_gcd.1.ebonbolt||active_enemies>1&talent.splitting_ice.enabled\nactions.single+=/ice_nova\nactions.single+=/use_item,name=tidestorm_codex,if=buff.icy_veins.down&buff.rune_of_power.down\nactions.single+=/frostbolt\nactions.single+=/call_action_list,name=movement\nactions.single+=/ice_lance",
				},
				["Fire"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Fire.simc",
					["builtIn"] = true,
					["date"] = 20181211.0847,
					["author"] = "SimulationCraft",
					["desc"] = "# Fire Mage\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Fire.simc\n# February 1, 2019 - 23:45\n\n# Changes:\n# - Use time_to_die rather than target.time_to_die for last-second ability usages.",
					["lists"] = {
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
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "60",
								["var_name"] = "combustion_rop_cutoff",
							}, -- [5]
							{
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "pyroblast",
								["enabled"] = true,
							}, -- [9]
						},
						["bm_combustion_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "lights_judgment",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "rune_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["action"] = "fire_blast",
								["criteria"] = "buff.blaster_master.down & ( talent.rune_of_power.enabled & action.rune_of_power.executing & action.rune_of_power.execute_remains < 0.6 || ( cooldown.combustion.ready || buff.combustion.up ) & ! talent.rune_of_power.enabled & ! action.pyroblast.in_flight & ! action.fireball.in_flight )",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [5]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "azerite.blaster_master.enabled & ( ( action.meteor.in_flight || prev_gcd.1.meteor || cooldown.meteor.remains > 5 ) || ! talent.meteor.enabled ) & ( buff.rune_of_power.up || ! talent.rune_of_power.enabled )",
								["use_off_gcd"] = "1",
								["action"] = "combustion",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.up",
								["action"] = "pyroblast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.up",
								["action"] = "pyroblast",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.combustion.remains",
								["action"] = "pyroblast",
							}, -- [15]
							{
								["action"] = "phoenix_flames",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.blaster_master.stack = 1 & buff.hot_streak.down & ! buff.pyroclasm.react & prev_gcd.1.pyroblast & ( buff.blaster_master.remains < 0.15 || gcd.remains < 0.15 )",
								["action"] = "fire_blast",
								["use_off_gcd"] = "1",
							}, -- [17]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["action"] = "fire_blast",
								["criteria"] = "buff.blaster_master.stack = 1 & ( action.scorch.executing & action.scorch.execute_remains < 0.15 || buff.blaster_master.remains < 0.15 )",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.down & ( cooldown.fire_blast.remains < cast_time || action.fire_blast.charges > 0 )",
								["action"] = "scorch",
							}, -- [19]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "buff.blaster_master.stack > 1 & ( prev_gcd.1.scorch & ! buff.hot_streak.up & ! action.scorch.executing || buff.blaster_master.remains < 0.15 )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max",
								["action"] = "dragons_breath",
							}, -- [22]
							{
								["action"] = "scorch",
								["enabled"] = true,
							}, -- [23]
						},
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "mirror_image",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.firestarter.enabled & firestarter.remains > full_recharge_time || cooldown.combustion.remains > variable.combustion_rop_cutoff & buff.combustion.down || time_to_die < cooldown.combustion.remains & buff.combustion.down",
								["action"] = "rune_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( talent.rune_of_power.enabled & cooldown.combustion.remains <= action.rune_of_power.cast_time || cooldown.combustion.ready ) & ! firestarter.active || buff.combustion.up",
								["action"] = "call_action_list",
								["list_name"] = "combustion_phase",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.up & buff.combustion.down",
								["action"] = "call_action_list",
								["list_name"] = "rop_phase",
							}, -- [5]
							{
								["value"] = "talent.rune_of_power.enabled & cooldown.rune_of_power.remains < cooldown.fire_blast.full_recharge_time & ( cooldown.combustion.remains > variable.combustion_rop_cutoff || firestarter.active ) & ( cooldown.rune_of_power.remains < time_to_die || action.rune_of_power.charges > 0 ) || cooldown.combustion.remains < action.fire_blast.full_recharge_time + cooldown.fire_blast.duration * azerite.blaster_master.enabled & ! firestarter.active & cooldown.combustion.remains < time_to_die || talent.firestarter.enabled & firestarter.active & firestarter.remains < cooldown.fire_blast.full_recharge_time + cooldown.fire_blast.duration * azerite.blaster_master.enabled",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "fire_blast_pooling",
							}, -- [6]
							{
								["value"] = "talent.rune_of_power.enabled & cooldown.rune_of_power.remains < cooldown.phoenix_flames.full_recharge_time & cooldown.combustion.remains > variable.combustion_rop_cutoff & ( cooldown.rune_of_power.remains < time_to_die || action.rune_of_power.charges > 0 ) || cooldown.combustion.remains < action.phoenix_flames.full_recharge_time & cooldown.combustion.remains < time_to_die",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "phoenix_pooling",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard_rotation",
							}, -- [8]
						},
						["rop_phase"] = {
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.flame_patch.enabled & active_enemies > 1 ) || active_enemies > 4 ) & buff.hot_streak.react",
								["action"] = "flamestrike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [3]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( cooldown.combustion.remains > 0 || firestarter.active & buff.rune_of_power.up ) & ( ! buff.heating_up.react & ! buff.hot_streak.react & ! prev_off_gcd.fire_blast & ( action.fire_blast.charges >= 2 || ( action.phoenix_flames.charges >= 1 & talent.phoenix_flames.enabled ) || ( talent.alexstraszas_fury.enabled & cooldown.dragons_breath.ready ) || ( talent.searing_touch.enabled & target.health.pct <= 30 ) || ( talent.firestarter.enabled & firestarter.active ) ) )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & buff.rune_of_power.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( cooldown.combustion.remains > 0 || firestarter.active & buff.rune_of_power.up ) & ( buff.heating_up.react & ( target.health.pct >= 30 || ! talent.searing_touch.enabled ) )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( cooldown.combustion.remains > 0 || firestarter.active & buff.rune_of_power.up ) & talent.searing_touch.enabled & target.health.pct <= 30 & ( buff.heating_up.react & ! action.scorch.executing || ! buff.heating_up.react & ! buff.hot_streak.react )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.up & talent.searing_touch.enabled & target.health.pct <= 30 & ( ! talent.flame_patch.enabled || active_enemies = 1 )",
								["action"] = "pyroblast",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! prev_gcd.1.phoenix_flames & buff.heating_up.react",
								["action"] = "phoenix_flames",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "scorch",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "dragons_breath",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( talent.flame_patch.enabled & active_enemies > 2 ) || active_enemies > 5",
								["action"] = "flamestrike",
							}, -- [13]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [14]
						},
						["combustion_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "lights_judgment",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "azerite.blaster_master.enabled & talent.flame_on.enabled",
								["action"] = "call_action_list",
								["list_name"] = "bm_combustion_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "rune_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [4]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( ! azerite.blaster_master.enabled || ! talent.flame_on.enabled ) & ( ( action.meteor.in_flight || prev_gcd.1.meteor || cooldown.meteor.remains > 5 ) || ! talent.meteor.enabled ) & ( buff.rune_of_power.up || ! talent.rune_of_power.enabled )",
								["use_off_gcd"] = "1",
								["action"] = "combustion",
							}, -- [5]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.flame_patch.enabled & active_enemies > 2 ) || active_enemies > 6 ) & buff.hot_streak.react",
								["action"] = "flamestrike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & buff.combustion.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [14]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( ! azerite.blaster_master.enabled || ! talent.flame_on.enabled ) & ( ( buff.combustion.up & ( buff.heating_up.react & ! action.pyroblast.in_flight & ! action.scorch.executing ) || ( action.scorch.execute_remains & buff.heating_up.down & buff.hot_streak.down & ! action.pyroblast.in_flight ) ) )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.up",
								["action"] = "pyroblast",
							}, -- [16]
							{
								["action"] = "phoenix_flames",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time & buff.combustion.up || buff.combustion.down",
								["action"] = "scorch",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max & buff.combustion.up",
								["action"] = "dragons_breath",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "scorch",
							}, -- [21]
						},
						["active_talents"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down & ( cooldown.combustion.remains > cooldown.living_bomb.duration || cooldown.combustion.ready )",
								["action"] = "living_bomb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.up & ( firestarter.remains > cooldown.meteor.duration || ! firestarter.active ) || cooldown.rune_of_power.remains > time_to_die & action.rune_of_power.charges < 1 || ( cooldown.meteor.duration < cooldown.combustion.remains || cooldown.combustion.ready ) & ! talent.rune_of_power.enabled & ( cooldown.meteor.duration < firestarter.remains || ! talent.firestarter.enabled || ! firestarter.active )",
								["action"] = "meteor",
							}, -- [2]
						},
						["standard_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.flame_patch.enabled & active_enemies > 1 & ! firestarter.active ) || active_enemies > 4 ) & buff.hot_streak.react",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & buff.hot_streak.remains < action.fireball.execute_time",
								["action"] = "pyroblast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & ( prev_gcd.1.fireball || firestarter.active || action.pyroblast.in_flight )",
								["action"] = "pyroblast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "pyroblast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["use_while_casting"] = "1",
								["criteria"] = "( cooldown.combustion.remains > 0 & buff.rune_of_power.down || firestarter.active ) & ! talent.kindling.enabled & ! variable.fire_blast_pooling & ( ( ( action.fireball.executing || action.pyroblast.executing ) & ( buff.heating_up.react || firestarter.active & ! buff.hot_streak.react & ! buff.heating_up.react ) ) || ( talent.searing_touch.enabled & target.health.pct <= 30 & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! action.pyroblast.in_flight & ! action.fireball.in_flight ) ) || ( firestarter.active & ( action.pyroblast.in_flight || action.fireball.in_flight ) & ! buff.heating_up.react & ! buff.hot_streak.react ) )",
								["use_off_gcd"] = "1",
								["action"] = "fire_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.kindling.enabled & buff.heating_up.react & ( cooldown.combustion.remains > full_recharge_time + 2 + talent.kindling.enabled || firestarter.remains > full_recharge_time || ( ! talent.rune_of_power.enabled || cooldown.rune_of_power.remains > time_to_die & action.rune_of_power.charges < 1 ) & cooldown.combustion.remains > time_to_die )",
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.up & talent.searing_touch.enabled & target.health.pct <= 30 & ( ( talent.flame_patch.enabled & active_enemies = 1 & ! firestarter.active ) || ( active_enemies < 4 & ! talent.flame_patch.enabled ) )",
								["action"] = "pyroblast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heating_up.react || ( ! buff.hot_streak.react & ( action.fire_blast.charges > 0 || talent.searing_touch.enabled & target.health.pct <= 30 ) ) ) & ! variable.phoenix_pooling",
								["action"] = "phoenix_flames",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "dragons_breath",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.combustion.remains > 20 || talent.firestarter.enabled & firestarter.remains > 20",
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 30 & talent.searing_touch.enabled",
								["action"] = "scorch",
							}, -- [13]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "scorch",
								["enabled"] = true,
							}, -- [15]
						},
						["trinkets"] = {
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [1]
						},
					},
					["version"] = 20181211.0847,
					["warnings"] = "Imported 8 action lists.\n",
					["profile"] = "# Fire Mage\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Mage_Fire.simc\n# February 1, 2019 - 23:45\n\n# Changes:\n# - Use time_to_die rather than target.time_to_die for last-second ability usages.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/arcane_intellect\n# This variable sets the time at which Rune of Power should start being saved for the next Combustion phase\nactions.precombat+=/variable,name=combustion_rop_cutoff,op=set,value=60\nactions.precombat+=/snapshot_stats\nactions.precombat+=/mirror_image\nactions.precombat+=/potion\nactions.precombat+=/pyroblast\n\n# Executed every time the actor is available.\nactions=counterspell\nactions+=/mirror_image,if=buff.combustion.down\nactions+=/rune_of_power,if=talent.firestarter.enabled&firestarter.remains>full_recharge_time||cooldown.combustion.remains>variable.combustion_rop_cutoff&buff.combustion.down||time_to_die<cooldown.combustion.remains&buff.combustion.down\nactions+=/call_action_list,name=combustion_phase,if=(talent.rune_of_power.enabled&cooldown.combustion.remains<=action.rune_of_power.cast_time||cooldown.combustion.ready)&!firestarter.active||buff.combustion.up\nactions+=/call_action_list,name=rop_phase,if=buff.rune_of_power.up&buff.combustion.down\nactions+=/variable,name=fire_blast_pooling,value=talent.rune_of_power.enabled&cooldown.rune_of_power.remains<cooldown.fire_blast.full_recharge_time&(cooldown.combustion.remains>variable.combustion_rop_cutoff||firestarter.active)&(cooldown.rune_of_power.remains<time_to_die||action.rune_of_power.charges>0)||cooldown.combustion.remains<action.fire_blast.full_recharge_time+cooldown.fire_blast.duration*azerite.blaster_master.enabled&!firestarter.active&cooldown.combustion.remains<time_to_die||talent.firestarter.enabled&firestarter.active&firestarter.remains<cooldown.fire_blast.full_recharge_time+cooldown.fire_blast.duration*azerite.blaster_master.enabled\nactions+=/variable,name=phoenix_pooling,value=talent.rune_of_power.enabled&cooldown.rune_of_power.remains<cooldown.phoenix_flames.full_recharge_time&cooldown.combustion.remains>variable.combustion_rop_cutoff&(cooldown.rune_of_power.remains<time_to_die||action.rune_of_power.charges>0)||cooldown.combustion.remains<action.phoenix_flames.full_recharge_time&cooldown.combustion.remains<time_to_die\nactions+=/call_action_list,name=standard_rotation\n\nactions.active_talents=living_bomb,if=active_enemies>1&buff.combustion.down&(cooldown.combustion.remains>cooldown.living_bomb.duration||cooldown.combustion.ready)\nactions.active_talents+=/meteor,if=buff.rune_of_power.up&(firestarter.remains>cooldown.meteor.duration||!firestarter.active)||cooldown.rune_of_power.remains>time_to_die&action.rune_of_power.charges<1||(cooldown.meteor.duration<cooldown.combustion.remains||cooldown.combustion.ready)&!talent.rune_of_power.enabled&(cooldown.meteor.duration<firestarter.remains||!talent.firestarter.enabled||!firestarter.active)\n\nactions.bm_combustion_phase=lights_judgment,if=buff.combustion.down\nactions.bm_combustion_phase+=/living_bomb,if=buff.combustion.down&active_enemies>1\nactions.bm_combustion_phase+=/rune_of_power,if=buff.combustion.down\nactions.bm_combustion_phase+=/fire_blast,use_while_casting=1,if=buff.blaster_master.down&(talent.rune_of_power.enabled&action.rune_of_power.executing&action.rune_of_power.execute_remains<0.6||(cooldown.combustion.ready||buff.combustion.up)&!talent.rune_of_power.enabled&!action.pyroblast.in_flight&!action.fireball.in_flight)\nactions.bm_combustion_phase+=/call_action_list,name=active_talents\nactions.bm_combustion_phase+=/combustion,use_off_gcd=1,use_while_casting=1,if=azerite.blaster_master.enabled&((action.meteor.in_flight||prev_gcd.1.meteor||cooldown.meteor.remains>5)||!talent.meteor.enabled)&(buff.rune_of_power.up||!talent.rune_of_power.enabled)\nactions.bm_combustion_phase+=/potion\nactions.bm_combustion_phase+=/blood_fury\nactions.bm_combustion_phase+=/berserking\nactions.bm_combustion_phase+=/fireblood\nactions.bm_combustion_phase+=/ancestral_call\nactions.bm_combustion_phase+=/call_action_list,name=trinkets\nactions.bm_combustion_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up\nactions.bm_combustion_phase+=/pyroblast,if=buff.hot_streak.up\nactions.bm_combustion_phase+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.combustion.remains\nactions.bm_combustion_phase+=/phoenix_flames\nactions.bm_combustion_phase+=/fire_blast,use_off_gcd=1,if=buff.blaster_master.stack=1&buff.hot_streak.down&!buff.pyroclasm.react&prev_gcd.1.pyroblast&(buff.blaster_master.remains<0.15||gcd.remains<0.15)\nactions.bm_combustion_phase+=/fire_blast,use_while_casting=1,if=buff.blaster_master.stack=1&(action.scorch.executing&action.scorch.execute_remains<0.15||buff.blaster_master.remains<0.15)\nactions.bm_combustion_phase+=/scorch,if=buff.hot_streak.down&(cooldown.fire_blast.remains<cast_time||action.fire_blast.charges>0)\nactions.bm_combustion_phase+=/fire_blast,use_while_casting=1,use_off_gcd=1,if=buff.blaster_master.stack>1&(prev_gcd.1.scorch&!buff.hot_streak.up&!action.scorch.executing||buff.blaster_master.remains<0.15)\nactions.bm_combustion_phase+=/living_bomb,if=buff.combustion.remains<gcd.max&active_enemies>1\nactions.bm_combustion_phase+=/dragons_breath,if=buff.combustion.remains<gcd.max\nactions.bm_combustion_phase+=/scorch\n\n# Combustion phase prepares abilities with a delay, then launches into the Combustion sequence\nactions.combustion_phase=lights_judgment,if=buff.combustion.down\nactions.combustion_phase+=/call_action_list,name=bm_combustion_phase,if=azerite.blaster_master.enabled&talent.flame_on.enabled\nactions.combustion_phase+=/rune_of_power,if=buff.combustion.down\nactions.combustion_phase+=/call_action_list,name=active_talents\nactions.combustion_phase+=/combustion,use_off_gcd=1,use_while_casting=1,if=(!azerite.blaster_master.enabled||!talent.flame_on.enabled)&((action.meteor.in_flight||prev_gcd.1.meteor||cooldown.meteor.remains>5)||!talent.meteor.enabled)&(buff.rune_of_power.up||!talent.rune_of_power.enabled)\nactions.combustion_phase+=/potion\nactions.combustion_phase+=/blood_fury\nactions.combustion_phase+=/berserking\nactions.combustion_phase+=/fireblood\nactions.combustion_phase+=/ancestral_call\nactions.combustion_phase+=/call_action_list,name=trinkets\nactions.combustion_phase+=/flamestrike,if=((talent.flame_patch.enabled&active_enemies>2)||active_enemies>6)&buff.hot_streak.react\nactions.combustion_phase+=/pyroblast,if=buff.pyroclasm.react&buff.combustion.remains>cast_time\nactions.combustion_phase+=/pyroblast,if=buff.hot_streak.react\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(!azerite.blaster_master.enabled||!talent.flame_on.enabled)&((buff.combustion.up&(buff.heating_up.react&!action.pyroblast.in_flight&!action.scorch.executing)||(action.scorch.execute_remains&buff.heating_up.down&buff.hot_streak.down&!action.pyroblast.in_flight)))\nactions.combustion_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up\nactions.combustion_phase+=/phoenix_flames\nactions.combustion_phase+=/scorch,if=buff.combustion.remains>cast_time&buff.combustion.up||buff.combustion.down\nactions.combustion_phase+=/living_bomb,if=buff.combustion.remains<gcd.max&active_enemies>1\nactions.combustion_phase+=/dragons_breath,if=buff.combustion.remains<gcd.max&buff.combustion.up\nactions.combustion_phase+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled\n\nactions.rop_phase=rune_of_power\nactions.rop_phase+=/flamestrike,if=((talent.flame_patch.enabled&active_enemies>1)||active_enemies>4)&buff.hot_streak.react\nactions.rop_phase+=/pyroblast,if=buff.hot_streak.react\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(cooldown.combustion.remains>0||firestarter.active&buff.rune_of_power.up)&(!buff.heating_up.react&!buff.hot_streak.react&!prev_off_gcd.fire_blast&(action.fire_blast.charges>=2||(action.phoenix_flames.charges>=1&talent.phoenix_flames.enabled)||(talent.alexstraszas_fury.enabled&cooldown.dragons_breath.ready)||(talent.searing_touch.enabled&target.health.pct<=30)||(talent.firestarter.enabled&firestarter.active)))\nactions.rop_phase+=/call_action_list,name=active_talents\nactions.rop_phase+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&buff.rune_of_power.remains>cast_time\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(cooldown.combustion.remains>0||firestarter.active&buff.rune_of_power.up)&(buff.heating_up.react&(target.health.pct>=30||!talent.searing_touch.enabled))\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(cooldown.combustion.remains>0||firestarter.active&buff.rune_of_power.up)&talent.searing_touch.enabled&target.health.pct<=30&(buff.heating_up.react&!action.scorch.executing||!buff.heating_up.react&!buff.hot_streak.react)\nactions.rop_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up&talent.searing_touch.enabled&target.health.pct<=30&(!talent.flame_patch.enabled||active_enemies=1)\nactions.rop_phase+=/phoenix_flames,if=!prev_gcd.1.phoenix_flames&buff.heating_up.react\nactions.rop_phase+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled\nactions.rop_phase+=/dragons_breath,if=active_enemies>2\nactions.rop_phase+=/flamestrike,if=(talent.flame_patch.enabled&active_enemies>2)||active_enemies>5\nactions.rop_phase+=/fireball\n\nactions.standard_rotation=flamestrike,if=((talent.flame_patch.enabled&active_enemies>1&!firestarter.active)||active_enemies>4)&buff.hot_streak.react\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&buff.hot_streak.remains<action.fireball.execute_time\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&(prev_gcd.1.fireball||firestarter.active||action.pyroblast.in_flight)\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&target.health.pct<=30&talent.searing_touch.enabled\nactions.standard_rotation+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains\nactions.standard_rotation+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=(cooldown.combustion.remains>0&buff.rune_of_power.down||firestarter.active)&!talent.kindling.enabled&!variable.fire_blast_pooling&(((action.fireball.executing||action.pyroblast.executing)&(buff.heating_up.react||firestarter.active&!buff.hot_streak.react&!buff.heating_up.react))||(talent.searing_touch.enabled&target.health.pct<=30&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!action.pyroblast.in_flight&!action.fireball.in_flight))||(firestarter.active&(action.pyroblast.in_flight||action.fireball.in_flight)&!buff.heating_up.react&!buff.hot_streak.react))\nactions.standard_rotation+=/fire_blast,if=talent.kindling.enabled&buff.heating_up.react&(cooldown.combustion.remains>full_recharge_time+2+talent.kindling.enabled||firestarter.remains>full_recharge_time||(!talent.rune_of_power.enabled||cooldown.rune_of_power.remains>time_to_die&action.rune_of_power.charges<1)&cooldown.combustion.remains>time_to_die)\nactions.standard_rotation+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.up&talent.searing_touch.enabled&target.health.pct<=30&((talent.flame_patch.enabled&active_enemies=1&!firestarter.active)||(active_enemies<4&!talent.flame_patch.enabled))\nactions.standard_rotation+=/phoenix_flames,if=(buff.heating_up.react||(!buff.hot_streak.react&(action.fire_blast.charges>0||talent.searing_touch.enabled&target.health.pct<=30)))&!variable.phoenix_pooling\nactions.standard_rotation+=/call_action_list,name=active_talents\nactions.standard_rotation+=/dragons_breath,if=active_enemies>1\nactions.standard_rotation+=/use_item,name=tidestorm_codex,if=cooldown.combustion.remains>20||talent.firestarter.enabled&firestarter.remains>20\nactions.standard_rotation+=/scorch,if=target.health.pct<=30&talent.searing_touch.enabled\nactions.standard_rotation+=/fireball\nactions.standard_rotation+=/scorch\n\nactions.trinkets=use_items",
					["spec"] = 63,
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
					["spec"] = 268,
					["profile"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\nactions+=/gift_of_the_ox,if=health<health.max*0.65\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(group&0.4||0.2)&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(group&0.4||0.2)&(buff.dampen_harm.down||buff.diffuse_magic.down)\nactions+=/use_item,name=lustrous_golden_plumage\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>25\n\n# Purifying behaviour is based on normalization (iE the late expression triggers if stagger size increased over the last 30 ticks or 15 seconds).\nactions+=/purifying_brew,if=stagger.pct>(6*(3-(cooldown.brews.charges_fractional)))&(stagger.last_tick_damage_1>((0.02+0.001*(3-cooldown.brews.charges_fractional))*stagger.last_tick_damage_30))\n\n# Ironskin Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/ironskin_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2&!buff.ironskin_brew.up\nactions+=/ironskin_brew,if=cooldown.brews.charges_fractional>1&(talent.black_ox_brew.enabled&cooldown.black_ox_brew.remains<3)\nactions+=/ironskin_brew\n\n# Guard / Healing Elixir\nactions+=/guard,if=stagger.moderate\nactions+=/expel_harm,if=health.pct<33||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.brews.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled||talent.special_delivery.enabled)&buff.blackout_combo.up\nactions+=/blackout_strike\nactions+=/keg_smash\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/rushing_jade_wind",
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190721.233,
					["author"] = "SimC",
					["desc"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/\n# July 21, 2019 - 22:05\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n# - Added ironfur_damage_threshold option.",
					["lists"] = {
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < gcd * 2",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.current < 0.6 * health.max",
								["action"] = "frenzied_regeneration",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "barkskin",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & health.pct < 35 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [4]
						},
						["cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "lunar_beam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "bristling_fur",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( dot.moonfire.ticking || active_enemies > 1 ) & dot.thrash_bear.ticking",
								["action"] = "incarnation",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [11]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [13]
						},
						["default"] = {
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 20 & active_enemies < 4",
								["action"] = "maul",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 20 & essence.conflict_and_strife.major & ! buff.sharpened_claws.up",
								["action"] = "maul",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cost = 0 || ( rage > cost & azerite.layered_mane.enabled & active_enemies > 2 )",
								["action"] = "ironfur",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack = dot.thrash_bear.max_stacks",
								["action"] = "pulverize",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.moonfire.refreshable & active_enemies < 2",
								["action"] = "moonfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.down & active_enemies > 1 ) || ( buff.incarnation.up & active_enemies > 4 )",
								["action"] = "thrash_bear",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation.down & active_enemies > 4",
								["action"] = "swipe_bear",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.ticking",
								["action"] = "mangle",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & active_enemies < 2",
								["action"] = "moonfire",
							}, -- [12]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "azerite.power_of_the_moon.rank > 1 & active_enemies = 1",
								["action"] = "moonfire",
							}, -- [14]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [15]
						},
						["precombat"] = {
							{
								["action"] = "bear_form",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20190721.233,
					["warnings"] = "Imported 4 action lists.\n",
					["profile"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/\n# July 21, 2019 - 22:05\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n# - Added ironfur_damage_threshold option.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/bear_form\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/memory_of_lucid_dreams\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=skull_bash\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\nactions+=/maul,if=rage.deficit<20&active_enemies<4\nactions+=/maul,if=rage.deficit<20&essence.conflict_and_strife.major&!buff.sharpened_claws.up\nactions+=/ironfur,if=cost=0||(rage>cost&azerite.layered_mane.enabled&active_enemies>2)\nactions+=/pulverize,target_if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks\nactions+=/moonfire,target_if=dot.moonfire.refreshable&active_enemies<2\nactions+=/thrash,if=(buff.incarnation.down&active_enemies>1)||(buff.incarnation.up&active_enemies>4)\nactions+=/swipe,if=buff.incarnation.down&active_enemies>4\nactions+=/mangle,if=dot.thrash_bear.ticking\nactions+=/moonfire,target_if=buff.galactic_guardian.up&active_enemies<2\nactions+=/thrash\n# Fill with Moonfire with PotMx2\nactions+=/moonfire,if=azerite.power_of_the_moon.rank>1&active_enemies=1\nactions+=/swipe\n\nactions.mitigation=ironfur,if=incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<gcd*2\nactions.mitigation+=/frenzied_regeneration,if=health.current<0.6*health.max\nactions.mitigation+=/barkskin,if=health.pct<50&incoming_damage_5s>0.25*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&health.pct<35&incoming_damage_5s>0.25*health.max\n\nactions.cooldowns=potion\n# actions.cooldowns+=/heart_essence\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/arcane_torrent\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\nactions.cooldowns+=/lunar_beam,if=buff.bear_form.up\nactions.cooldowns+=/bristling_fur,if=buff.bear_form.up\nactions.cooldowns+=/incarnation,if=(dot.moonfire.ticking||active_enemies>1)&dot.thrash_bear.ticking\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast\nactions.cooldowns+=/memory_of_lucid_dreams\nactions.cooldowns+=/use_items",
					["spec"] = 104,
				},
			},
			["toggles"] = {
				["mode"] = {
					["value"] = "single",
				},
			},
			["iconStore"] = {
				["minimapPos"] = 166.10719463682,
				["hide"] = true,
			},
			["specs"] = {
				[262] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["funnel_targets"] = 0,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["cycle"] = false,
					["potion"] = "potion_of_unbridled_fury",
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["abilities"] = {
						["earth_elemental"] = {
							["disabled"] = true,
						},
					},
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["package"] = "Elemental",
					["damageRange"] = 0,
				},
				[62] = {
					["maxRefresh"] = 10,
					["package"] = "Arcane",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleRefresh"] = false,
					["nameplates"] = true,
				},
				[263] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["nameplateRange"] = 8,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "superior_battle_potion_of_agility",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["package"] = "Enhancement",
					["damageRange"] = 0,
				},
				[64] = {
					["maxRefresh"] = 10,
					["package"] = "Frost Mage",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleRefresh"] = false,
					["nameplates"] = false,
				},
				[66] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Protection Paladin",
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["throttleRefresh"] = false,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_unbridled_fury",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["nameplateRange"] = 8,
					["damageRange"] = 0,
				},
				[70] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Retribution",
					["settings"] = {
						["check_wake_range"] = false,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["throttleRefresh"] = false,
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "potion_of_focused_resolve",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["nameplateRange"] = 8,
					["damageRange"] = 0,
				},
				[103] = {
					2, -- [1]
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["brutal_charges"] = 2,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["package"] = "Feral",
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "focused_resolve",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 3,
					["cycle"] = false,
					["damageRange"] = 0,
				},
				[577] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Havoc",
					["settings"] = {
						["recommend_movement"] = false,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["nameplateRange"] = 7,
					["cycle"] = false,
					["throttleRefresh"] = false,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["damage"] = true,
				},
				[258] = {
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["buffPadding"] = 0.25,
					["nameplates"] = false,
					["damageExpiration"] = 6,
					["package"] = "Shadow",
					["potionsReset"] = 20180919.1,
				},
				[581] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Vengeance",
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["nameplateRange"] = 8,
					["cycle"] = false,
					["throttleRefresh"] = false,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["damage"] = true,
				},
				[102] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Balance",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["throttleRefresh"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "unbridled_fury",
					["nameplates"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["cycle"] = false,
					["damageRange"] = 0,
				},
				[104] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Guardian",
					["settings"] = {
						["maul_rage"] = 20,
						["ironfur_damage_threshold"] = 5,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["throttleRefresh"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "focused_resolve",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["cycle"] = false,
					["damageRange"] = 0,
				},
				[269] = {
					["maxRefresh"] = 10,
					["package"] = "Windwalker",
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["cycle"] = true,
					["strict"] = false,
					["nameplateRange"] = 8,
					["throttleRefresh"] = false,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["damage"] = true,
				},
				[63] = {
					["maxRefresh"] = 10,
					["package"] = "Fire",
					["aoe"] = 3,
					["gcdSync"] = false,
					["damageDots"] = false,
					["buffPadding"] = 0,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleRefresh"] = false,
					["nameplates"] = false,
				},
				[268] = {
					["maxRefresh"] = 10,
					["package"] = "Brewmaster",
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["buffPadding"] = 0.25,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["throttleRefresh"] = false,
					["potionsReset"] = 20180919.1,
				},
			},
			["notifications"] = {
				["x"] = -99.00657653808594,
				["y"] = 537.0335083007813,
			},
		},
		["Koutetsu - Frostwolf"] = {
			["runOnce"] = {
				["autoconvertDelayBackToText_20190422"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["autoconvertDelayTextToSweep_20190420"] = true,
				["autoconvertDelayFadeToCheckbox_20190418"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelayTextToSweep_20190420_1"] = true,
			},
			["specs"] = {
				[263] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["package"] = "Enhancement",
					["cycle"] = false,
					["potion"] = "battle_potion_of_agility",
					["buffPadding"] = 0,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["nameplates"] = true,
					["nameplateRange"] = 8,
				},
				[262] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["package"] = "Elemental",
					["cycle"] = false,
					["potion"] = "battle_potion_of_intellect",
					["buffPadding"] = 0,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["nameplates"] = false,
					["nameplateRange"] = 8,
				},
			},
			["displays"] = {
				["Defensives"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["Primary"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["AOE"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["Interrupts"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier22/T22_Shaman_Enhancement.simc",
					["builtIn"] = true,
					["date"] = 20190222.2344,
					["author"] = "SimulationCraft",
					["desc"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Enhancement.simc\n# February 22, 2019 - 23:42\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Refresh Frostbrand/Flametongue in AOE for FreezerBurn build.",
					["lists"] = {
						["filler"] = {
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.forceful_winds.enabled & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! azerite.primal_primer.enabled & talent.hot_hand.enabled & buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70 & ! buff.strength_of_earth.up",
								["action"] = "rockbiter",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storm.enabled & variable.OCPool_CL",
								["action"] = "crash_lightning",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_LL & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [8]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 + gcd & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [10]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [11]
						},
						["maintenance"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [2]
						},
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
						["asc"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [2]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [3]
						},
						["freezerburn_core"] = {
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & variable.furyCheck_LL & variable.CLPool_LL",
								["action"] = "lava_lash",
								["target_if"] = "",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
								["action"] = "stormstrike",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( active_enemies > 1 & buff.gathering_storms.up & variable.furyCheck_SS )",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck_LB & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack > 7 & variable.furyCheck_LL & variable.CLPool_LL",
								["action"] = "lava_lash",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_SS & variable.furyCheck_SS & variable.CLPool_SS",
								["action"] = "stormstrike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "debuff.primal_primer.stack = 10 & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [9]
						},
						["default_core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
								["action"] = "stormstrike",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( active_enemies > 1 & buff.gathering_storms.up & variable.furyCheck_SS )",
								["action"] = "stormstrike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck_LB & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_SS & variable.furyCheck_SS",
								["action"] = "stormstrike",
							}, -- [6]
						},
						["priority"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= ( 8 - ( talent.forceful_winds.enabled * 3 ) ) & variable.freezerburn_enabled & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & active_enemies = 1 & variable.freezerburn_enabled & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled & buff.flametongue.remains < gcd & active_enemies > 1",
								["action"] = "flametongue",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled & buff.frostbrand.remains < gcd & active_enemies > 1",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.fury_of_air.up & maelstrom >= 20 & spell_targets.fury_of_air_damage >= ( 1 + variable.freezerburn_enabled )",
								["action"] = "fury_of_air",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.fury_of_air.up & spell_targets.fury_of_air_damage < ( 1 + variable.freezerburn_enabled )",
								["action"] = "fury_of_air",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains <= 2 * gcd",
								["action"] = "totem_mastery",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "sundering",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_frost.remains <= 2 * gcd ) & talent.hailstorm.enabled & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_fire.remains <= 2 * gcd )",
								["action"] = "flametongue",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_nature.remains <= 2 * gcd ) & maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [13]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "fireblood",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "ancestral_call",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [6]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.strike.remains > 0",
								["action"] = "ascendance",
							}, -- [8]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [9]
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
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["value"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["var_name"] = "cooldown_sync",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [2]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.stormstrike.cost ) )",
								["var_name"] = "furyCheck_SS",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [3]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.lava_lash.cost ) )",
								["var_name"] = "furyCheck_LL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [4]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.crash_lightning.cost ) )",
								["var_name"] = "furyCheck_CL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [5]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.frostbrand.cost ) )",
								["var_name"] = "furyCheck_FB",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [6]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.earthen_spike.cost ) )",
								["var_name"] = "furyCheck_ES",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [7]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + 40 ) )",
								["var_name"] = "furyCheck_LB",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [8]
							{
								["value"] = "( active_enemies > 1 || ( cooldown.lightning_bolt.remains >= 2 * gcd ) )",
								["var_name"] = "OCPool",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [9]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.stormstrike.cost ) ) )",
								["var_name"] = "OCPool_SS",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [10]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.lava_lash.cost ) ) )",
								["var_name"] = "OCPool_LL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [11]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.crash_lightning.cost ) ) )",
								["var_name"] = "OCPool_CL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [12]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.frostbrand.cost ) ) )",
								["var_name"] = "OCPool_FB",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [13]
							{
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.lava_lash.cost )",
								["var_name"] = "CLPool_LL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [14]
							{
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.stormstrike.cost )",
								["var_name"] = "CLPool_SS",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [15]
							{
								["value"] = "( talent.hot_hand.enabled & talent.hailstorm.enabled & azerite.primal_primer.enabled )",
								["var_name"] = "freezerburn_enabled",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [16]
							{
								["value"] = "( ! variable.freezerburn_enabled & ( talent.boulderfist.enabled & talent.landslide.enabled & azerite.strength_of_earth.enabled ) )",
								["var_name"] = "rockslide_enabled",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.ascendance.up",
								["list_name"] = "asc",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "priority",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies < 3",
								["list_name"] = "maintenance",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.freezerburn_enabled",
								["list_name"] = "freezerburn_core",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! variable.freezerburn_enabled",
								["list_name"] = "default_core",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "maintenance",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [28]
						},
					},
					["version"] = 20190222.2344,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 18: Unsupported action 'auto_attack'.\n\nWARNING:  The import for 'freezerburn_core' required some automated changes.\nLine 1: Removed max:X check (not available in emulation) -- (1x).\n\nImported 10 action lists.\n",
					["spec"] = 263,
					["profile"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Enhancement.simc\n# February 22, 2019 - 23:42\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Refresh Frostbrand/Flametongue in AOE for FreezerBurn build.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/lightning_shield\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=wind_shear\n# Attempt to sync racial cooldowns with Ascendance or Feral Spirits, or use on cooldown if saving them will result in significant cooldown waste\nactions+=/variable,name=cooldown_sync,value=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\n# Do not use a maelstrom-costing ability if it will bring you to 0 maelstrom and cancel fury of air.\nactions+=/variable,name=furyCheck_SS,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.stormstrike.cost))\nactions+=/variable,name=furyCheck_LL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.lava_lash.cost))\nactions+=/variable,name=furyCheck_CL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.crash_lightning.cost))\nactions+=/variable,name=furyCheck_FB,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.frostbrand.cost))\nactions+=/variable,name=furyCheck_ES,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.earthen_spike.cost))\nactions+=/variable,name=furyCheck_LB,value=maelstrom>=(talent.fury_of_air.enabled*(6+40))\n# Attempt to pool maelstrom so you'll be able to cast a fully-powered lightning bolt as soon as it's available when fighting one target.\nactions+=/variable,name=OCPool,value=(active_enemies>1||(cooldown.lightning_bolt.remains>=2*gcd))\nactions+=/variable,name=OCPool_SS,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.stormstrike.cost)))\nactions+=/variable,name=OCPool_LL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.lava_lash.cost)))\nactions+=/variable,name=OCPool_CL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.crash_lightning.cost)))\nactions+=/variable,name=OCPool_FB,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.frostbrand.cost)))\n# Attempt to pool maelstrom for Crash Lightning if multiple targets are present.\nactions+=/variable,name=CLPool_LL,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.lava_lash.cost)\nactions+=/variable,name=CLPool_SS,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.stormstrike.cost)\nactions+=/variable,name=freezerburn_enabled,value=(talent.hot_hand.enabled&talent.hailstorm.enabled&azerite.primal_primer.enabled)\nactions+=/variable,name=rockslide_enabled,value=(!variable.freezerburn_enabled&(talent.boulderfist.enabled&talent.landslide.enabled&azerite.strength_of_earth.enabled))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=priority\nactions+=/call_action_list,name=maintenance,if=active_enemies<3\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=freezerburn_core,if=variable.freezerburn_enabled\nactions+=/call_action_list,name=default_core,if=!variable.freezerburn_enabled\nactions+=/call_action_list,name=maintenance,if=active_enemies>=3\nactions+=/call_action_list,name=filler\n\nactions.asc=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions.cds=bloodlust,if=azerite.ancestral_resonance.enabled\nactions.cds+=/berserking,if=variable.cooldown_sync\nactions.cds+=/blood_fury,if=variable.cooldown_sync\nactions.cds+=/fireblood,if=variable.cooldown_sync\nactions.cds+=/ancestral_call,if=variable.cooldown_sync\n# Attempt to sync your DPS potion with a cooldown, unless the target is about to die.\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=cooldown.strike.remains>0\nactions.cds+=/earth_elemental\n\nactions.default_core=earthen_spike,if=variable.furyCheck_ES\nactions.default_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.default_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.default_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.default_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.default_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS\n\nactions.filler=sundering\nactions.filler+=/crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck_CL\nactions.filler+=/flametongue,if=talent.searing_assault.enabled\nactions.filler+=/lava_lash,if=!azerite.primal_primer.enabled&talent.hot_hand.enabled&buff.hot_hand.react\nactions.filler+=/crash_lightning,if=active_enemies>1&variable.furyCheck_CL\nactions.filler+=/rockbiter,if=maelstrom<70&!buff.strength_of_earth.up\nactions.filler+=/crash_lightning,if=talent.crashing_storm.enabled&variable.OCPool_CL\nactions.filler+=/lava_lash,if=variable.OCPool_LL&variable.furyCheck_LL\nactions.filler+=/rockbiter\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck_FB\nactions.filler+=/flametongue\n\nactions.freezerburn_core=lava_lash,target_if=max:debuff.primal_primer.stack,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/earthen_spike,if=variable.furyCheck_ES\nactions.freezerburn_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.freezerburn_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.freezerburn_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.freezerburn_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.freezerburn_core+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack>7&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS&variable.CLPool_SS\nactions.freezerburn_core+=/lava_lash,if=debuff.primal_primer.stack=10&variable.furyCheck_LL\n\nactions.maintenance=flametongue,if=!buff.flametongue.up\nactions.maintenance+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck_FB\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd\n\nactions.priority=crash_lightning,if=active_enemies>=(8-(talent.forceful_winds.enabled*3))&variable.freezerburn_enabled&variable.furyCheck_CL\nactions.priority+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&active_enemies=1&variable.freezerburn_enabled&variable.furyCheck_LL\nactions.priority+=/flametongue,if=variable.freezerburn_enabled&buff.flametongue.remains<gcd&active_enemies>1\nactions.priority+=/frostbrand,if=variable.freezerburn_enabled&buff.frostbrand.remains<gcd&active_enemies>1\nactions.priority+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.priority+=/fury_of_air,if=!buff.fury_of_air.up&maelstrom>=20&spell_targets.fury_of_air_damage>=(1+variable.freezerburn_enabled)\nactions.priority+=/fury_of_air,if=buff.fury_of_air.up&spell_targets.fury_of_air_damage<(1+variable.freezerburn_enabled)\nactions.priority+=/totem_mastery,if=buff.resonance_totem.remains<=2*gcd\nactions.priority+=/sundering,if=active_enemies>=3\nactions.priority+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\n# With Natural Harmony, elevate the priority of elemental attacks in order to maintain the buffs when they're about to expire.\nactions.priority+=/frostbrand,if=(azerite.natural_harmony.enabled&buff.natural_harmony_frost.remains<=2*gcd)&talent.hailstorm.enabled&variable.furyCheck_FB\nactions.priority+=/flametongue,if=(azerite.natural_harmony.enabled&buff.natural_harmony_fire.remains<=2*gcd)\nactions.priority+=/rockbiter,if=(azerite.natural_harmony.enabled&buff.natural_harmony_nature.remains<=2*gcd)&maelstrom<70",
				},
				["Elemental Funnel"] = {
					["builtIn"] = true,
					["date"] = 20190625.0952,
					["author"] = "Punahele",
					["desc"] = "# Elemental Shaman (Funneling)\n# https://github.com/simulationcraft/simc/\n# June 25, 2019 - 09:52",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( spell_targets.chain_lightning < ( 5 - ! talent.totem_mastery.enabled ) || ! talent.storm_elemental.enabled & ( cooldown.fire_elemental.remains > ( 120 + 14 * spell_haste ) || cooldown.fire_elemental.remains < ( 24 - 14 * spell_haste ) ) ) & ( ! talent.storm_elemental.enabled || storm_elemental.down || spell_targets.chain_lightning = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( talent.storm_elemental.enabled & storm_elemental.down & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3",
								["action"] = "earthquake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.remains < 3 * gcd * buff.stormkeeper.stack",
								["action"] = "chain_lightning",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down ) & dot.flame_shock.ticking",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & ! buff.ascendance.up",
								["action"] = "icefury",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & buff.icefury.up & ! buff.ascendance.up",
								["action"] = "frost_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "elemental_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [11]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["moving"] = "1",
								["action"] = "lava_burst",
								["criteria"] = "talent.ascendance.enabled",
							}, -- [13]
							{
								["enabled"] = true,
								["moving"] = "1",
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
							}, -- [14]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [15]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ! ticking || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 2 * gcd || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 & ( ! talent.storm_elemental.enabled || talent.storm_elemental.enabled & storm_elemental.down ) ) & ( buff.wind_gust.stack < 14 || azerite.igneous_potential.rank >= 2 || buff.lava_surge.up || ! buff.bloodlust.up ) & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & cooldown.lava_burst.remains > 0 & ( storm_elemental.down || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled ) & ( ! ( storm_elemental.up & talent.storm_elemental.enabled ) || azerite.natural_harmony.rank = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( ! talent.surge_of_power.enabled || buff.surge_of_power.up || maelstrom >= 44 )",
								["action"] = "stormkeeper",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "liquid_magma_totem",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & spell_targets.chain_lightning < 6 & ( azerite.lava_shock.rank * buff.lava_shock.stack ) < 36 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || ( azerite.lava_shock.rank * buff.lava_shock.stack < 36 ) & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd ) || ! talent.master_of_the_elements.enabled & ! ( azerite.igneous_potential.rank > 2 & buff.ascendance.up ) & ( buff.stormkeeper.up || maelstrom >= 90 + 30 * talent.call_the_thunder.enabled || ! ( storm_elemental.up & talent.storm_elemental.enabled ) & expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) >= 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) )",
								["action"] = "earth_shock",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.surge_of_power.enabled & ! buff.surge_of_power.up & cooldown.lava_burst.remains <= gcd & ( ! talent.storm_elemental.enabled & ! ( fire_elemental.up ) || talent.storm_elemental.enabled & ! ( storm_elemental.up ) )",
								["action"] = "earth_shock",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & talent.storm_elemental.enabled & ( azerite.igneous_potential.rank < 2 || ! buff.lava_surge.up & buff.bloodlust.up )",
								["action"] = "lightning_bolt",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & active_enemies > 1 & buff.surge_of_power.up",
								["action"] = "flame_shock",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 75 & cooldown.lava_burst.remains <= 0 ) & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "icefury",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < 1.1 * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & ( buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 ) )",
								["action"] = "totem_mastery",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [23]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["moving"] = "1",
								["action"] = "flame_shock",
								["criteria"] = "refreshable",
							}, -- [25]
							{
								["enabled"] = true,
								["moving"] = "1",
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
							}, -- [26]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [27]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "expected_combat_length - time < 30 || fire_elemental.up || storm_elemental.up",
								["action"] = "potion",
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up ) & ( ! talent.ascendance.enabled || ! cooldown.ascendance.up )",
								["action"] = "storm_elemental",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.primal_elementalist.enabled || talent.primal_elementalist.enabled & ( fire_elemental.down & ! talent.storm_elemental.enabled || storm_elemental.down & talent.storm_elemental.enabled )",
								["action"] = "earth_elemental",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & buff.call_lightning.remains >= 8",
								["action"] = "eye_of_the_storm",
							}, -- [22]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 5 & ( spell_targets.chain_lightning > 5 || spell_targets.lava_beam > 5 )",
								["list_name"] = "aoe",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [25]
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
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled",
								["action"] = "storm_elemental",
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.elemental_blast.enabled",
								["action"] = "lava_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.stormkeeper.enabled & spell_targets > ( 20 + azerite.igneous_potential.rank > 0 )",
								["action"] = "chain_lightning",
							}, -- [13]
						},
					},
					["version"] = 20190625.0952,
					["warnings"] = "Imported 4 action lists.\n",
					["profile"] = "# Elemental Shaman (Funneling)\n# https://github.com/simulationcraft/simc/\n# June 25, 2019 - 09:52\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\n# actions.precombat+=/earth_elemental,if=!talent.primal_elementalist.enabled\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.precombat+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions.precombat+=/storm_elemental,if=talent.storm_elemental.enabled\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.precombat+=/lava_burst,if=!talent.elemental_blast.enabled\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.precombat+=/chain_lightning,if=!talent.stormkeeper.enabled&spell_targets>(20+azerite.igneous_potential.rank>0)\n \n# Executed every time the actor is available.\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions=bloodlust,if=azerite.ancestral_resonance.enabled\n\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion,if=expected_combat_length-time<30||fire_elemental.up||storm_elemental.up\n\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)&(!talent.ascendance.enabled||!cooldown.ascendance.up)\nactions+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(fire_elemental.down&!talent.storm_elemental.enabled||storm_elemental.down&talent.storm_elemental.enabled)\nactions+=/use_items\nactions+=/concentrated_flame\nactions+=/blood_of_the_enemy\nactions+=/guardian_of_azeroth\nactions+=/focused_azerite_beam\nactions+=/purifying_blast\nactions+=/the_unbound_force\nactions+=/memory_of_lucid_dreams\nactions+=/ripple_in_space\nactions+=/worldvein_resonance\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/eye_of_the_storm,if=storm_elemental.up&buff.call_lightning.remains>=8\nactions+=/meteor\nactions+=/run_action_list,name=aoe,if=active_enemies>5&(spell_targets.chain_lightning>5||spell_targets.lava_beam>5)\nactions+=/run_action_list,name=single_target\n \n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\n\n# Spread Flame Shock in <= 4 target fights, but not during SE uptime,unless you're fighting 3 targets and have less than 14 Wind Gust stacks.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(spell_targets.chain_lightning<(5-!talent.totem_mastery.enabled)||!talent.storm_elemental.enabled&(cooldown.fire_elemental.remains>(120+14*spell_haste)||cooldown.fire_elemental.remains<(24-14*spell_haste)))&(!talent.storm_elemental.enabled||storm_elemental.down||spell_targets.chain_lightning=3&buff.wind_gust.stack<14)\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&storm_elemental.down&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\n\n# Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!\nactions.aoe+=/earthquake,if=!talent.master_of_the_elements.enabled||buff.stormkeeper.up||maelstrom>=(100-4*spell_targets.chain_lightning)||buff.master_of_the_elements.up||spell_targets.chain_lightning>3\n\n# Make sure you don't lose a Stormkeeper.\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\n\n# Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)&dot.flame_shock.ticking\nactions.aoe+=/icefury,if=spell_targets.chain_lightning<4&!buff.ascendance.up\nactions.aoe+=/frost_shock,if=spell_targets.chain_lightning<4&buff.icefury.up&!buff.ascendance.up\n\n# Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,target_if=refreshable\nactions.aoe+=/frost_shock,moving=1\n \n# Single Target Action Priority List\n# Ensure FS is active unless you have 14 or more stacks of Wind Gust from Storm Elemental. (Edge case: upcoming Asc but active SE; don't )\nactions.single_target=flame_shock,target_if=(!ticking||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled||talent.storm_elemental.enabled&storm_elemental.down))&(buff.wind_gust.stack<14||azerite.igneous_potential.rank>=2||buff.lava_surge.up||!buff.bloodlust.up)&!buff.surge_of_power.up\n\n# Use Ascendance after you've spent all Lava Burst charges and only if neither Storm Elemental nor Icefury are currently active.\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&(storm_elemental.down||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\n\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead. Don't cast Elemental Blast during Storm Elemental unless you have 3x Natural Harmony in which case you stop using Elemental Blast once you reach 14 stacks of Wind Gust.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)&(!(storm_elemental.up&talent.storm_elemental.enabled)||azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)\n\n# Keep SK for large or soon add waves. Unless you have Surge of Power, in which case you want to double buff Lightning Bolt by pooling Maelstrom beforehand. Example sequence: 100MS, ES, SK, LB, LvB, ES, LB\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(!talent.surge_of_power.enabled||buff.surge_of_power.up||maelstrom>=44)\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\n# Combine Stormkeeper with Master of the Elements or Surge of Power.\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&spell_targets.chain_lightning<6&(azerite.lava_shock.rank*buff.lava_shock.stack)<36&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n\n# There might come an update for this line with some SoP logic.\n# actions.single_target+=/earthquake,if=(spell_targets.chain_lightning>1&azerite.lava_shock.rank*buff.lava_shock.stack<36)&(!talent.surge_of_power.enabled||!dot.flame_shock.refreshable||storm_elemental.up)&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||maelstrom>=92)\n# Boy...what a condition. With Master of the Elements pool Maelstrom up to 8 Maelstrom below the cap to ensure it's used with Earth Shock. Without Master of the Elements, use Earth Shock either if Stormkeeper is up, Maelstrom is 10 Maelstrom below the cap or less, or either Storm Elemental isn't talented or it's not active and your last Storm Elemental of the fight will have only a partial duration.\nactions.single_target+=/earth_shock,if=!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled||(azerite.lava_shock.rank*buff.lava_shock.stack<36)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)||!talent.master_of_the_elements.enabled&!(azerite.igneous_potential.rank>2&buff.ascendance.up)&(buff.stormkeeper.up||maelstrom>=90+30*talent.call_the_thunder.enabled||!(storm_elemental.up&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))\n\n# Use Earth Shock if Surge of Power is talented, but neither it nor a DPS Elemental is active at the moment, and Lava Burst is ready or will be within the next GCD.\nactions.single_target+=/earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!(fire_elemental.up)||talent.storm_elemental.enabled&!(storm_elemental.up))\n\n# Cast Lightning Bolts during Storm Elemental duration.\nactions.single_target+=/lightning_bolt,if=storm_elemental.up&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2||!buff.lava_surge.up&buff.bloodlust.up)\n\n# Use Frost Shock with Icefury and Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\nactions.single_target+=/lava_burst,if=buff.ascendance.up\n\n# Utilize Surge of Power to spread Flame Shock if multiple enemies are present.\nactions.single_target+=/flame_shock,target_if=refreshable&active_enemies>1&buff.surge_of_power.up\n\n# Use Lava Burst with Surge of Power if the last potential usage of a DPS Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains)%150))<(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)))\n\n# Use Lava Burst with Surge of Power if the last potential usage of a DPS Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack\nactions.single_target+=/lava_burst,if=cooldown_react\n\n# Don't accidentally use Surge of Power with Flame Shock during single target.\nactions.single_target+=/flame_shock,target_if=refreshable&!buff.surge_of_power.up\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\n\n# Slightly game Icefury buff to hopefully buff some with Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,target_if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["spec"] = 262,
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190625.095,
					["spec"] = 262,
					["desc"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/\n# June 25, 2019 - 09:45\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.",
					["profile"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/\n# June 25, 2019 - 09:45\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\n# actions.precombat+=/earth_elemental,if=!talent.primal_elementalist.enabled\n\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\nactions.precombat+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions.precombat+=/storm_elemental,if=talent.storm_elemental.enabled\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.precombat+=/lava_burst,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning<3\nactions.precombat+=/chain_lightning,if=spell_targets.chain_lightning>2\n\n# Executed every time the actor is available.\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions=bloodlust,if=azerite.ancestral_resonance.enabled\n\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion,if=expected_combat_length-time<30||fire_elemental.up||storm_elemental.up\n\n# Interrupt of casts.\nactions+=/wind_shear\n\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)&(!talent.ascendance.enabled||!cooldown.ascendance.up)\n# actions+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(fire_elemental.down&!talent.storm_elemental.enabled||storm_elemental.down&talent.storm_elemental.enabled)\nactions+=/use_items\nactions+=/concentrated_flame\nactions+=/blood_of_the_enemy\nactions+=/guardian_of_azeroth\nactions+=/focused_azerite_beam\nactions+=/purifying_blast\nactions+=/the_unbound_force\nactions+=/memory_of_lucid_dreams\nactions+=/ripple_in_space\nactions+=/worldvein_resonance\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/eye_of_the_storm,if=storm_elemental.up&buff.call_lightning.remains>=8\nactions+=/meteor\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\n\n# Spread Flame Shock in <= 4 target fights, but not during SE uptime,unless you're fighting 3 targets and have less than 14 Wind Gust stacks.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(spell_targets.chain_lightning<(5-!talent.totem_mastery.enabled)||!talent.storm_elemental.enabled&(fire_elemental.remains>(14*spell_haste)||cooldown.fire_elemental.remains<(24-14*spell_haste)))&(!talent.storm_elemental.enabled||storm_elemental.down||spell_targets.chain_lightning=3&buff.wind_gust.stack<14)\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&storm_elemental.down&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\n\n# Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!\nactions.aoe+=/earthquake,if=!talent.master_of_the_elements.enabled||buff.stormkeeper.up||maelstrom>=(100-4*spell_targets.chain_lightning)||buff.master_of_the_elements.up||spell_targets.chain_lightning>3\n\n# Make sure you don't lose a Stormkeeper.\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\n\n# Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)&dot.flame_shock.ticking\nactions.aoe+=/icefury,if=spell_targets.chain_lightning<4&!buff.ascendance.up\nactions.aoe+=/frost_shock,if=spell_targets.chain_lightning<4&buff.icefury.up&!buff.ascendance.up\n\n# Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Single Target Action Priority List\n# Ensure FS is active unless you have 14 or more stacks of Wind Gust from Storm Elemental. (Edge case: upcoming Asc but active SE; don't )\nactions.single_target=flame_shock,cycle_targets=1,if=(!ticking||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120))&(buff.wind_gust.stack<14||azerite.igneous_potential.rank>=2||buff.lava_surge.up||!buff.bloodlust.up)&!buff.surge_of_power.up\n\n# Use Ascendance after you've spent all Lava Burst charges and only if neither Storm Elemental nor Icefury are currently active.\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&(storm_elemental.down||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\n\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead. Don't cast Elemental Blast during Storm Elemental unless you have 3x Natural Harmony. But in this case stop using Elemental Blast once you reach 14 stacks of Wind Gust.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)&(!(storm_elemental.up&talent.storm_elemental.enabled)||azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)\n\n# Keep SK for large or soon add waves. Unless you have Surge of Power, in which case you want to double buff Lightning Bolt by pooling Maelstrom beforehand. Example sequence: 100MS, ES, SK, LB, LvB, ES, LB\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(!talent.surge_of_power.enabled||buff.surge_of_power.up||maelstrom>=44)\n\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\n# Combine Stormkeeper with Master of the Elements or Surge of Power unless you have the Lava Shock trait and multiple stacks.\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack)<26&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n\n# Use Earthquake versus 2 targets, unless you have Lava Shock. Use Earthquake versus 1 target if you have Tectonic Thunder 3 times and NO Surge of Power enabled and NO Lava Shock.\nactions.single_target+=/earthquake,if=(spell_targets.chain_lightning>1||azerite.tectonic_thunder.rank>=3&!talent.surge_of_power.enabled&azerite.lava_shock.rank<1)&azerite.lava_shock.rank*buff.lava_shock.stack<(36+3*azerite.tectonic_thunder.rank*spell_targets.chain_lightning)&(!talent.surge_of_power.enabled||!dot.flame_shock.refreshable||storm_elemental.up)&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled)\n\n# Cast Earth Shock with Master of the Elements talent but no active Surge of Power buff, and active Stormkeeper buff and Lava Burst coming off CD within the next GCD, and either active Master of the Elements buff, or no available Lava Burst while near MS cap, or single target and multiple Lava Shock traits and many stacks.\nactions.single_target+=/earth_shock,if=!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled||spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack<26)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)\n\n# You know what? I had some short explanation here once. But then the condition grew, and I had to split the one Earth Shock line into four...so you have to deal with this abomination now: Cast Earth Shock without Master of the Elements talent, and without having triple Igneous Potential and active Ascendance, and active Stormkeeper buff or near MS cap, or Storm Elemental is inactive, and we can't expect to get an additional use of Storm Elemental in the remaining fight from Surge of Power.\nactions.single_target+=/earth_shock,if=!talent.master_of_the_elements.enabled&!(azerite.igneous_potential.rank>2&buff.ascendance.up)&(buff.stormkeeper.up||maelstrom>=90+30*talent.call_the_thunder.enabled||!(storm_elemental.up&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))\n\n# Use Earth Shock if Surge of Power is talented, but neither it nor a DPS Elemental is active at the moment, and Lava Burst is ready or will be ready within the next GCD.\nactions.single_target+=/earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!fire_elemental.up||talent.storm_elemental.enabled&!storm_elemental.up)\n\n# Spam Lightning Bolts during Storm Elemental duration, if you don't have Igneous Potential or have it only once, and don't use Lightning Bolt during Bloodlust if you have a Lava Surge Proc.\nactions.single_target+=/lightning_bolt,if=storm_elemental.up&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2||!buff.lava_surge.up&buff.bloodlust.up)\n\n# Cast Lightning Bolt regardless of the previous condition if you'd lose a Stormkeeper stack or have Stormkeeper and Master of the Elements active.\nactions.single_target+=lightning_bolt,if=(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\n\n# Use Frost Shock with Icefury and Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\n\nactions.single_target+=/lava_burst,if=buff.ascendance.up\n\n# Utilize Surge of Power to spread Flame Shock if multiple enemies are present.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&active_enemies>1&buff.surge_of_power.up\n\n# Use Lava Burst with Surge of Power if the last potential usage of a Storm Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains)%150))<(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)))\n\n# Use Lava Burst with Surge of Power if the last potential usage of a Fire Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))\n\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\n  \n# Slightly game Icefury buff to hopefully buff some empowered Frost Shocks with Master of the Elements.\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)&(!talent.storm_elemental.enabled||storm_elemental.down)\n\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\n\n# Slightly delay using Icefury empowered Frost Shocks to empower them with Master of the Elements too.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack\n\nactions.single_target+=/lava_burst,if=cooldown_react\n\n# Don't accidentally use Surge of Power with Flame Shock during single target.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&!buff.surge_of_power.up\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\n\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\nactions.single_target+=/chain_lightning,if=buff.tectonic_thunder.up&!buff.stormkeeper.up&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20190625.095,
					["warnings"] = "Imported 4 action lists.\n",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( spell_targets.chain_lightning < ( 5 - ! talent.totem_mastery.enabled ) || ! talent.storm_elemental.enabled & ( fire_elemental.remains > ( 14 * spell_haste ) || cooldown.fire_elemental.remains < ( 24 - 14 * spell_haste ) ) ) & ( ! talent.storm_elemental.enabled || storm_elemental.down || spell_targets.chain_lightning = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( talent.storm_elemental.enabled & storm_elemental.down & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3",
								["action"] = "earthquake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.remains < 3 * gcd * buff.stormkeeper.stack",
								["action"] = "chain_lightning",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.lava_surge.up & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down ) & dot.flame_shock.ticking",
								["action"] = "lava_burst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & ! buff.ascendance.up",
								["action"] = "icefury",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning < 4 & buff.icefury.up & ! buff.ascendance.up",
								["action"] = "frost_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "elemental_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [11]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["moving"] = "1",
								["action"] = "lava_burst",
								["criteria"] = "talent.ascendance.enabled",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["moving"] = "1",
								["criteria"] = "refreshable",
							}, -- [14]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [15]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ! ticking || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 2 * gcd || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 & ( ! talent.storm_elemental.enabled || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 ) ) & ( buff.wind_gust.stack < 14 || azerite.igneous_potential.rank >= 2 || buff.lava_surge.up || ! buff.bloodlust.up ) & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & cooldown.lava_burst.remains > 0 & ( storm_elemental.down || ! talent.storm_elemental.enabled ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled ) & ( ! ( storm_elemental.up & talent.storm_elemental.enabled ) || azerite.natural_harmony.rank = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( ! talent.surge_of_power.enabled || buff.surge_of_power.up || maelstrom >= 44 )",
								["action"] = "stormkeeper",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "liquid_magma_totem",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & spell_targets.chain_lightning < 2 & ( azerite.lava_shock.rank * buff.lava_shock.stack ) < 26 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.chain_lightning > 1 || azerite.tectonic_thunder.rank >= 3 & ! talent.surge_of_power.enabled & azerite.lava_shock.rank < 1 ) & azerite.lava_shock.rank * buff.lava_shock.stack < ( 36 + 3 * azerite.tectonic_thunder.rank * spell_targets.chain_lightning ) & ( ! talent.surge_of_power.enabled || ! dot.flame_shock.refreshable || storm_elemental.up ) & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled )",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || spell_targets.chain_lightning < 2 & ( azerite.lava_shock.rank * buff.lava_shock.stack < 26 ) & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd )",
								["action"] = "earth_shock",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled & ! ( azerite.igneous_potential.rank > 2 & buff.ascendance.up ) & ( buff.stormkeeper.up || maelstrom >= 90 + 30 * talent.call_the_thunder.enabled || ! ( storm_elemental.up & talent.storm_elemental.enabled ) & expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) >= 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) )",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.surge_of_power.enabled & ! buff.surge_of_power.up & cooldown.lava_burst.remains <= gcd & ( ! talent.storm_elemental.enabled & ! fire_elemental.up || talent.storm_elemental.enabled & ! storm_elemental.up )",
								["action"] = "earth_shock",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & talent.storm_elemental.enabled & ( azerite.igneous_potential.rank < 2 || ! buff.lava_surge.up & buff.bloodlust.up )",
								["action"] = "lightning_bolt",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( buff.stormkeeper.remains < 1.1 * gcd * buff.stormkeeper.stack || buff.stormkeeper.up & buff.master_of_the_elements.up )",
								["action"] = "lightning_bolt",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & active_enemies > 1 & buff.surge_of_power.up",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 75 & cooldown.lava_burst.remains <= 0 ) & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "icefury",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < 1.1 * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & ( buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 ) )",
								["action"] = "totem_mastery",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.tectonic_thunder.up & ! buff.stormkeeper.up & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [27]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["moving"] = "1",
								["criteria"] = "refreshable",
							}, -- [29]
							{
								["enabled"] = true,
								["moving"] = "1",
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
							}, -- [30]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [31]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "expected_combat_length - time < 30 || fire_elemental.up || storm_elemental.up",
								["action"] = "potion",
							}, -- [2]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up ) & ( ! talent.ascendance.enabled || ! cooldown.ascendance.up )",
								["action"] = "storm_elemental",
							}, -- [6]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & buff.call_lightning.remains >= 8",
								["action"] = "eye_of_the_storm",
							}, -- [21]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["list_name"] = "aoe",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
							}, -- [24]
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
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled",
								["action"] = "storm_elemental",
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! talent.elemental_blast.enabled & spell_targets.chain_lightning < 3",
								["action"] = "lava_burst",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.chain_lightning > 2",
								["action"] = "chain_lightning",
							}, -- [12]
						},
					},
					["author"] = "SimulationCraft",
				},
			},
		},
		["Toshmonk - Kil'jaeden"] = {
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
					["strict"] = false,
					["cycle"] = true,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_bursting_blood",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["package"] = "Windwalker",
					["damage"] = true,
				},
				[268] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["throttleRefresh"] = false,
					["package"] = "Brewmaster",
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potion"] = "battle_potion_of_agility",
					["debuffPadding"] = 0,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
				},
			},
			["displays"] = {
				["AOE"] = {
					["rel"] = "CENTER",
					["x"] = -769.043151855469,
					["y"] = 552.045288085938,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["zoom"] = 0,
					["x"] = -107.001953125,
					["primaryHeight"] = 32,
					["y"] = -172.996322631836,
					["numIcons"] = 2,
					["primaryWidth"] = 32,
					["queue"] = {
						["height"] = 24,
						["width"] = 24,
					},
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -523.0205078125,
					["y"] = 541.048034667969,
				},
				["Interrupts"] = {
					["rel"] = "CENTER",
					["x"] = -460.020111083984,
					["y"] = 533.047485351563,
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
								["action"] = "rising_sun_kick",
								["criteria"] = "( talent.whirling_dragon_punch.enabled & cooldown.whirling_dragon_punch.remains < 5 ) & cooldown.fists_of_fury.remains > 3",
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
								["action"] = "tiger_palm",
								["criteria"] = "chi.max - chi >= 2 & ( ! talent.hit_combo.enabled || ! prev_gcd.1.tiger_palm )",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "! prev_gcd.1.blackout_kick & ( buff.bok_proc.up || ( talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi < 4 ) )",
								["cycle_targets"] = 1,
							}, -- [11]
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
								["criteria"] = "buff.serenity.up",
								["action"] = "call_action_list",
								["list_name"] = "serenity",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 2 & ! prev_gcd.1.tiger_palm",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cd",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [10]
						},
						["st"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "chi >= 5",
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
								["action"] = "blackout_kick",
								["criteria"] = "! prev_gcd.1.blackout_kick & ( cooldown.rising_sun_kick.remains > 3 || chi >= 3 ) & ( cooldown.fists_of_fury.remains > 4 || chi >= 4 || ( chi = 2 & prev_gcd.1.tiger_palm ) ) & buff.swift_roundhouse.stack < 2",
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
								["action"] = "tiger_palm",
								["criteria"] = "! prev_gcd.1.tiger_palm & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [12]
						},
						["serenity"] = {
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "active_enemies < 3 || prev_gcd.1.spinning_crane_kick",
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
					},
					["version"] = 20181212.2313,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 1: Unsupported action 'auto_attack'.\n\nWARNING:  The import for 'st' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - swift_roundhouse\n\nImported 6 action lists.\n",
					["profile"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Windwalker.simc\n# December 12, 2018 - 23:12\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst,if=(!talent.serenity.enabled||!talent.fist_of_the_white_tiger.enabled)\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\n# Touch of Karma on cooldown, if Good Karma is enabled equal to 100% of maximum health\nactions+=/touch_of_karma,interval=90,pct_health=0.5\n# Potion if Serenity or Storm, Earth, and Fire are up or you are running serenity and a main stat trinket procs, or you are under the effect of bloodlust, or target time to die is greater or equal to 60\nactions+=/potion,if=buff.serenity.up||buff.storm_earth_and_fire.up||(!talent.serenity.enabled&trinket.proc.agility.react)||buff.bloodlust.react||target.time_to_die<=60\nactions+=/call_action_list,name=serenity,if=buff.serenity.up\nactions+=/fist_of_the_white_tiger,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=3\nactions+=/tiger_palm,cycle_targets=1,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=2&!prev_gcd.1.tiger_palm\nactions+=/call_action_list,name=cd\n# Call the ST action list if there are 2 or less enemies\nactions+=/call_action_list,name=st,if=active_enemies<3\n# Call the AoE action list if there are 3 or more enemies\nactions+=/call_action_list,name=aoe,if=active_enemies>=3\n\n# Actions.AoE is intended for use with Hectic_Add_Cleave and currently needs to be optimized\nactions.aoe=rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch.enabled&cooldown.whirling_dragon_punch.remains<5)&cooldown.fists_of_fury.remains>3\nactions.aoe+=/whirling_dragon_punch\nactions.aoe+=/energizing_elixir,if=!prev_gcd.1.tiger_palm&chi<=1&energy<50\nactions.aoe+=/fists_of_fury\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions.aoe+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(((chi>3||cooldown.fists_of_fury.remains>6)&(chi>=5||cooldown.fists_of_fury.remains>2))||energy.time_to_max<=3)\nactions.aoe+=/chi_burst,if=chi<=3\nactions.aoe+=/fist_of_the_white_tiger,if=chi.max-chi>=3\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(!talent.hit_combo.enabled||!prev_gcd.1.tiger_palm)\nactions.aoe+=/chi_wave\n# actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(buff.bok_proc.up||(talent.hit_combo.enabled&prev_gcd.1.tiger_palm&chi<4))\n\n# Cooldowns\nactions.cd=invoke_xuen_the_white_tiger\nactions.cd+=/use_item,name=lustrous_golden_plumage\nactions.cd+=/use_items\nactions.cd+=/blood_fury\nactions.cd+=/berserking\n# Use Arcane Torrent if you are missing at least 1 Chi and won't cap energy within 0.5 seconds\nactions.cd+=/arcane_torrent,if=chi.max-chi>=1&energy.time_to_max>=0.5\nactions.cd+=/lights_judgment\nactions.cd+=/fireblood\nactions.cd+=/ancestral_call\nactions.cd+=/touch_of_death,if=target.time_to_die>9\nactions.cd+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||(cooldown.fists_of_fury.remains<=6&chi>=3&cooldown.rising_sun_kick.remains<=1)||target.time_to_die<=15\nactions.cd+=/serenity,if=cooldown.rising_sun_kick.remains<=2||target.time_to_die<=12\n\n# Serenity priority\nactions.serenity=rising_sun_kick,cycle_targets=1,if=active_enemies<3||prev_gcd.1.spinning_crane_kick\nactions.serenity+=/fists_of_fury,if=(buff.bloodlust.up&prev_gcd.1.rising_sun_kick)||buff.serenity.remains<1||(active_enemies>1&active_enemies<5)\nactions.serenity+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&(active_enemies>=3||(active_enemies=2&prev_gcd.1.blackout_kick))\nactions.serenity+=/blackout_kick,cycle_targets=1\n\nactions.st=whirling_dragon_punch\nactions.st+=/rising_sun_kick,cycle_targets=1,if=chi>=5\nactions.st+=/fists_of_fury\nactions.st+=/rising_sun_kick,cycle_targets=1\nactions.st+=/spinning_crane_kick,if=!prev_gcd.1.spinning_crane_kick&buff.dance_of_chiji.up\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.st+=/fist_of_the_white_tiger,if=chi<=2\nactions.st+=/energizing_elixir,if=chi<=3&energy<50\nactions.st+=/blackout_kick,cycle_targets=1,if=!prev_gcd.1.blackout_kick&(cooldown.rising_sun_kick.remains>3||chi>=3)&(cooldown.fists_of_fury.remains>4||chi>=4||(chi=2&prev_gcd.1.tiger_palm))&buff.swift_roundhouse.stack<2\nactions.st+=/chi_wave\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1||chi.max-chi>=2\nactions.st+=/tiger_palm,cycle_targets=1,if=!prev_gcd.1.tiger_palm&chi.max-chi>=2\n# actions.st+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3&buff.swift_roundhouse.stack<2,interrupt=1",
					["author"] = "SimC",
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
					["spec"] = 268,
					["profile"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Monk_Brewmaster.simc\n# September 30, 2018 - 4:30\n\n# Changes:\n# - Relax Expel Harm a bit.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/spear_hand_strike\nactions+=/gift_of_the_ox,if=health<health.max*0.65\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(group&0.4||0.2)&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(group&0.4||0.2)&(buff.dampen_harm.down||buff.diffuse_magic.down)\nactions+=/use_item,name=lustrous_golden_plumage\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/invoke_niuzao_the_black_ox,if=target.time_to_die>25\n\n# Purifying behaviour is based on normalization (iE the late expression triggers if stagger size increased over the last 30 ticks or 15 seconds).\nactions+=/purifying_brew,if=stagger.pct>(6*(3-(cooldown.brews.charges_fractional)))&(stagger.last_tick_damage_1>((0.02+0.001*(3-cooldown.brews.charges_fractional))*stagger.last_tick_damage_30))\n\n# Ironskin Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/ironskin_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2&!buff.ironskin_brew.up\nactions+=/ironskin_brew,if=cooldown.brews.charges_fractional>1&(talent.black_ox_brew.enabled&cooldown.black_ox_brew.remains<3)\nactions+=/ironskin_brew\n\n# Guard / Healing Elixir\nactions+=/guard,if=stagger.moderate\nactions+=/expel_harm,if=health.pct<33||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.brews.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled||talent.special_delivery.enabled)&buff.blackout_combo.up\nactions+=/blackout_strike\nactions+=/keg_smash\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/chi_burst\nactions+=/chi_wave\nactions+=/tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/rushing_jade_wind",
				},
			},
			["notifications"] = {
				["y"] = 533.033386230469,
				["x"] = -63.003662109375,
			},
			["minimapIcon"] = true,
			["iconStore"] = {
				["minimapPos"] = 170.126342107798,
				["hide"] = true,
			},
		},
		["Zallie - Frostwolf"] = {
			["runOnce"] = {
				["autoconvertDelayBackToText_20190422"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelayFadeToCheckbox_20190418"] = true,
				["autoconvertDelayTextToSweep_20190420"] = true,
				["reviseDisplayModes_20180709"] = true,
				["autoconvertDelayTextToSweep_20190420_1"] = true,
			},
			["specs"] = {
				[258] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0,
					["nameplates"] = false,
					["package"] = "Shadow",
					["gcdSync"] = true,
					["aoe"] = 3,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_rising_death",
					["throttleRefresh"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["damageDots"] = false,
					["damage"] = true,
				},
				[256] = {
					["potionsReset"] = 20180919.1,
				},
			},
			["displays"] = {
				["Defensives"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["Primary"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["AOE"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
				["Interrupts"] = {
					["delays"] = {
						["extend"] = false,
						["type"] = "CDSW",
					},
				},
			},
			["packs"] = {
				["Shadow"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190401.1434,
					["author"] = "SimC",
					["desc"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:35\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.",
					["lists"] = {
						["single"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up & cooldown.void_bolt.remains >= 1.5 & azerite.searing_dialogue.rank >= 1",
								["action"] = "mind_sear",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || cooldown.shadow_word_death.charges = 2 || ( cooldown.shadow_word_death.charges = 1 & cooldown.shadow_word_death.remains < gcd.max )",
								["action"] = "shadow_word_death",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.mindbender.enabled || ( buff.voidform.stack > 18 || time_to_die < 15 )",
								["action"] = "mindbender",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.voidform.up || ( cooldown.shadow_word_death.charges = 2 & buff.voidform.stack < 15 )",
								["action"] = "shadow_word_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.dots_up & ( ( raid_event.movement.in > cast_time + 0.5 & raid_event.movement.in < 4 ) || ! talent.shadow_word_void.enabled || buff.voidform.down || buff.voidform.stack > 14 & ( insanity < 70 || charges_fractional > 1.33 ) || buff.voidform.stack <= 14 & ( insanity < 60 || charges_fractional > 1.33 ) )",
								["action"] = "mind_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.remains > 4 & dot.vampiric_touch.remains > 4 & buff.voidform.up",
								["action"] = "void_torrent",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 4 & ! talent.misery.enabled & ! talent.dark_void.enabled",
								["action"] = "shadow_word_pain",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 6 || ( talent.misery.enabled & dot.shadow_word_pain.refreshable )",
								["action"] = "vampiric_touch",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [15]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [16]
						},
						["cleave"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & azerite.thought_harvester.rank >= 1",
								["action"] = "vampiric_touch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up",
								["action"] = "mind_sear",
							}, -- [4]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || buff.voidform.down",
								["action"] = "shadow_word_death",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10 & ( dot.shadow_word_pain.refreshable || time_to_die > 30 )",
								["action"] = "dark_void",
							}, -- [8]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear < variable.mind_blast_targets",
								["action"] = "mind_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 5 & raid_event.adds.duration < 2 ) || raid_event.adds.duration > 2",
								["action"] = "shadow_crash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.misery.enabled & ( refreshable & target.time_to_die > ( ( - 1.2 + 3.3 * spell_targets.mind_sear ) * variable.swp_trait_ranks_check * ( 1 - 0.012 * azerite.searing_dialogue.rank * spell_targets.mind_sear ) ) )",
								["action"] = "shadow_word_pain",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die > ( ( 1 + 3.3 * spell_targets.mind_sear ) * variable.vt_trait_ranks_check * ( 1 + 0.10 * azerite.searing_dialogue.rank * spell_targets.mind_sear ) ) )",
								["action"] = "vampiric_touch",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.refreshable & ( ( talent.misery.enabled & target.time_to_die > ( ( 1.0 + 2.0 * spell_targets.mind_sear ) * variable.vt_mis_trait_ranks_check * ( variable.vt_mis_sd_check * spell_targets.mind_sear ) ) ) )",
								["action"] = "vampiric_touch",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "void_torrent",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
								["criteria"] = "spell_targets.mind_sear > 1",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [17]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [18]
						},
						["default"] = {
							{
								["action"] = "silence",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || time_to_die <= 80 || target.health.pct < 35",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "dot.shadow_word_pain.ticking & dot.vampiric_touch.ticking",
								["var_name"] = "dots_up",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "cleave",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies = 1",
								["list_name"] = "single",
							}, -- [6]
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
								["op"] = "set",
								["action"] = "variable",
								["value"] = "floor ( ( 4.5 + azerite.whispers_of_the_damned.rank ) % ( 1 + 0.27 * azerite.searing_dialogue.rank ) )",
								["var_name"] = "mind_blast_targets",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.07 * azerite.death_throes.rank + 0.2 * azerite.thought_harvester.rank ) * ( 1 - 0.09 * azerite.thought_harvester.rank * azerite.searing_dialogue.rank )",
								["var_name"] = "swp_trait_ranks_check",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.04 * azerite.thought_harvester.rank - 0.05 * azerite.spiteful_apparitions.rank )",
								["var_name"] = "vt_trait_ranks_check",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.07 * azerite.death_throes.rank - 0.03 * azerite.thought_harvester.rank - 0.055 * azerite.spiteful_apparitions.rank ) * ( 1 - 0.027 * azerite.thought_harvester.rank * azerite.searing_dialogue.rank )",
								["var_name"] = "vt_mis_trait_ranks_check",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 - 0.014 * azerite.searing_dialogue.rank",
								["var_name"] = "vt_mis_sd_check",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadowform.up",
								["action"] = "shadowform",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear < 2 || azerite.thought_harvester.rank = 0",
								["action"] = "mind_blast",
							}, -- [12]
							{
								["action"] = "vampiric_touch",
								["enabled"] = true,
							}, -- [13]
						},
					},
					["version"] = 20190401.1434,
					["warnings"] = "Imported 4 action lists.\n",
					["spec"] = 258,
					["profile"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:35\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/variable,name=mind_blast_targets,op=set,value=floor((4.5+azerite.whispers_of_the_damned.rank)%(1+0.27*azerite.searing_dialogue.rank))\nactions.precombat+=/variable,name=swp_trait_ranks_check,op=set,value=(1-0.07*azerite.death_throes.rank+0.2*azerite.thought_harvester.rank)*(1-0.09*azerite.thought_harvester.rank*azerite.searing_dialogue.rank)\nactions.precombat+=/variable,name=vt_trait_ranks_check,op=set,value=(1-0.04*azerite.thought_harvester.rank-0.05*azerite.spiteful_apparitions.rank)\nactions.precombat+=/variable,name=vt_mis_trait_ranks_check,op=set,value=(1-0.07*azerite.death_throes.rank-0.03*azerite.thought_harvester.rank-0.055*azerite.spiteful_apparitions.rank)*(1-0.027*azerite.thought_harvester.rank*azerite.searing_dialogue.rank)\nactions.precombat+=/variable,name=vt_mis_sd_check,op=set,value=1-0.014*azerite.searing_dialogue.rank\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/mind_blast,if=spell_targets.mind_sear<2||azerite.thought_harvester.rank=0\nactions.precombat+=/vampiric_touch\n\n# Executed every time the actor is available.\nactions=silence\nactions+=/use_items\nactions+=/potion,if=buff.bloodlust.react||time_to_die<=80||target.health.pct<35\nactions+=/variable,name=dots_up,op=set,value=dot.shadow_word_pain.ticking&dot.vampiric_touch.ticking\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single,if=active_enemies=1\n\nactions.cleave=void_eruption\nactions.cleave+=/dark_ascension,if=buff.voidform.down\nactions.cleave+=/vampiric_touch,if=!ticking&azerite.thought_harvester.rank>=1\nactions.cleave+=/mind_sear,if=buff.harvested_thoughts.up\nactions.cleave+=/void_bolt\nactions.cleave+=/shadow_word_death,if=target.time_to_die<3||buff.voidform.down\nactions.cleave+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.cleave+=/dark_void,if=raid_event.adds.in>10&(dot.shadow_word_pain.refreshable||time_to_die>30)\nactions.cleave+=/mindbender\nactions.cleave+=/mind_blast,if=spell_targets.mind_sear<variable.mind_blast_targets\nactions.cleave+=/shadow_crash,if=(raid_event.adds.in>5&raid_event.adds.duration<2)||raid_event.adds.duration>2\nactions.cleave+=/shadow_word_pain,cycle_targets=1,if=!talent.misery.enabled&(refreshable&target.time_to_die>((-1.2+3.3*spell_targets.mind_sear)*variable.swp_trait_ranks_check*(1-0.012*azerite.searing_dialogue.rank*spell_targets.mind_sear)))\nactions.cleave+=/vampiric_touch,cycle_targets=1,if=refreshable&(target.time_to_die>((1+3.3*spell_targets.mind_sear)*variable.vt_trait_ranks_check*(1+0.10*azerite.searing_dialogue.rank*spell_targets.mind_sear)))\nactions.cleave+=/vampiric_touch,cycle_targets=1,if=dot.shadow_word_pain.refreshable&((talent.misery.enabled&target.time_to_die>((1.0+2.0*spell_targets.mind_sear)*variable.vt_mis_trait_ranks_check*(variable.vt_mis_sd_check*spell_targets.mind_sear))))\nactions.cleave+=/void_torrent,if=buff.voidform.up\nactions.cleave+=/mind_sear,if=spell_targets.mind_sear>1,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.cleave+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.cleave+=/shadow_word_pain\n\nactions.single=void_eruption\nactions.single+=/dark_ascension,if=buff.voidform.down\nactions.single+=/void_bolt\nactions.single+=/mind_sear,if=buff.harvested_thoughts.up&cooldown.void_bolt.remains>=1.5&azerite.searing_dialogue.rank>=1\nactions.single+=/shadow_word_death,if=target.time_to_die<3||cooldown.shadow_word_death.charges=2||(cooldown.shadow_word_death.charges=1&cooldown.shadow_word_death.remains<gcd.max)\nactions.single+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.single+=/dark_void,if=raid_event.adds.in>10\nactions.single+=/mindbender,if=talent.mindbender.enabled||(buff.voidform.stack>18||time_to_die<15)\nactions.single+=/shadow_word_death,if=!buff.voidform.up||(cooldown.shadow_word_death.charges=2&buff.voidform.stack<15)\nactions.single+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.single+=/mind_blast,if=variable.dots_up&((raid_event.movement.in>cast_time+0.5&raid_event.movement.in<4)||!talent.shadow_word_void.enabled||buff.voidform.down||buff.voidform.stack>14&(insanity<70||charges_fractional>1.33)||buff.voidform.stack<=14&(insanity<60||charges_fractional>1.33))\nactions.single+=/void_torrent,if=dot.shadow_word_pain.remains>4&dot.vampiric_touch.remains>4&buff.voidform.up\nactions.single+=/shadow_word_pain,if=refreshable&target.time_to_die>4&!talent.misery.enabled&!talent.dark_void.enabled\nactions.single+=/vampiric_touch,if=refreshable&target.time_to_die>6||(talent.misery.enabled&dot.shadow_word_pain.refreshable)\nactions.single+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.single+=/shadow_word_pain",
				},
			},
		},
		["Toshaman - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[263] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0.25,
					["throttleRefresh"] = false,
					["package"] = "Enhancement",
					["gcdSync"] = true,
					["aoe"] = 2,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_agility",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["damageDots"] = false,
					["damage"] = true,
				},
				[262] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0.25,
					["throttleRefresh"] = false,
					["package"] = "Elemental",
					["gcdSync"] = true,
					["aoe"] = 3,
					["debuffPadding"] = 0,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_intellect",
					["nameplates"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["damageDots"] = false,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/Tier22/T22_Shaman_Enhancement.simc",
					["builtIn"] = true,
					["date"] = 20190123.193,
					["author"] = "SimulationCraft",
					["desc"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Enhancement.simc\n# January 23, 2019 - 19:30\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Refresh Frostbrand/Flametongue in AOE for FreezerBurn build.",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 15 & time < gcd",
								["action"] = "rockbiter",
							}, -- [1]
						},
						["maintenance"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.flametongue.up",
								["action"] = "flametongue",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & ! buff.frostbrand.up & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [2]
						},
						["freezerburn_core"] = {
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & variable.furyCheck_LL & variable.CLPool_LL",
								["action"] = "lava_lash",
								["target_if"] = "",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
								["action"] = "stormstrike",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( active_enemies > 1 & buff.gathering_storms.up & variable.furyCheck_SS )",
								["action"] = "stormstrike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck_LB & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack > 7 & variable.furyCheck_LL & variable.CLPool_LL",
								["action"] = "lava_lash",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_SS & variable.furyCheck_SS & variable.CLPool_SS",
								["action"] = "stormstrike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "debuff.primal_primer.stack = 10 & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [9]
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
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "lightning_shield",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
						},
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["value"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["var_name"] = "cooldown_sync",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [2]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.stormstrike.cost ) )",
								["var_name"] = "furyCheck_SS",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [3]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.lava_lash.cost ) )",
								["var_name"] = "furyCheck_LL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [4]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.crash_lightning.cost ) )",
								["var_name"] = "furyCheck_CL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [5]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.frostbrand.cost ) )",
								["var_name"] = "furyCheck_FB",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [6]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.earthen_spike.cost ) )",
								["var_name"] = "furyCheck_ES",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [7]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + 40 ) )",
								["var_name"] = "furyCheck_LB",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [8]
							{
								["value"] = "( active_enemies > 1 || ( cooldown.lightning_bolt.remains >= 2 * gcd ) )",
								["var_name"] = "OCPool",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [9]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.stormstrike.cost ) ) )",
								["var_name"] = "OCPool_SS",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [10]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.lava_lash.cost ) ) )",
								["var_name"] = "OCPool_LL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [11]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.crash_lightning.cost ) ) )",
								["var_name"] = "OCPool_CL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [12]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.frostbrand.cost ) ) )",
								["var_name"] = "OCPool_FB",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [13]
							{
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.lava_lash.cost )",
								["var_name"] = "CLPool_LL",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [14]
							{
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.stormstrike.cost )",
								["var_name"] = "CLPool_SS",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [15]
							{
								["value"] = "( talent.hot_hand.enabled & talent.hailstorm.enabled & azerite.primal_primer.enabled )",
								["var_name"] = "freezerburn_enabled",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [16]
							{
								["value"] = "( ! variable.freezerburn_enabled & ( talent.boulderfist.enabled & talent.landslide.enabled & azerite.strength_of_earth.enabled ) )",
								["var_name"] = "rockslide_enabled",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "auto_attack",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.ascendance.up",
								["list_name"] = "asc",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "priority",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies < 3",
								["list_name"] = "maintenance",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.freezerburn_enabled",
								["list_name"] = "freezerburn_core",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! variable.freezerburn_enabled",
								["list_name"] = "default_core",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies >= 3",
								["list_name"] = "maintenance",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [28]
						},
						["default_core"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
								["action"] = "stormstrike",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormbringer.up || ( active_enemies > 1 & buff.gathering_storms.up & variable.furyCheck_SS )",
								["action"] = "stormstrike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.overcharge.enabled & active_enemies = 1 & variable.furyCheck_LB & maelstrom >= 40",
								["action"] = "lightning_bolt",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_SS & variable.furyCheck_SS",
								["action"] = "stormstrike",
							}, -- [6]
						},
						["priority"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= ( 8 - ( talent.forceful_winds.enabled * 3 ) ) & variable.freezerburn_enabled & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & active_enemies = 1 & variable.freezerburn_enabled & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled & buff.flametongue.remains < gcd & active_enemies > 1",
								["action"] = "flametongue",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled & buff.frostbrand.remains < gcd & active_enemies > 1",
								["action"] = "frostbrand",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.fury_of_air.up & maelstrom >= 20 & spell_targets.fury_of_air_damage >= ( 1 + variable.freezerburn_enabled )",
								["action"] = "fury_of_air",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.fury_of_air.up & & spell_targets.fury_of_air_damage < ( 1 + variable.freezerburn_enabled )",
								["action"] = "fury_of_air",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.resonance_totem.remains <= 2 * gcd",
								["action"] = "totem_mastery",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "sundering",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_frost.remains <= 2 * gcd ) & talent.hailstorm.enabled & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_fire.remains <= 2 * gcd )",
								["action"] = "flametongue",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_nature.remains <= 2 * gcd ) & maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [13]
						},
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "fireblood",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "ancestral_call",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [6]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.strike.remains > 0",
								["action"] = "ascendance",
							}, -- [8]
							{
								["action"] = "earth_elemental",
								["enabled"] = true,
							}, -- [9]
						},
						["asc"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.crash_lightning.up & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [2]
							{
								["action"] = "windstrike",
								["enabled"] = true,
							}, -- [3]
						},
						["filler"] = {
							{
								["action"] = "sundering",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.forceful_winds.enabled & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! azerite.primal_primer.enabled & talent.hot_hand.enabled & buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70 & ! buff.strength_of_earth.up",
								["action"] = "rockbiter",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.crashing_storm.enabled & variable.OCPool_CL",
								["action"] = "crash_lightning",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_LL & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [8]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 + gcd & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [10]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [11]
						},
					},
					["version"] = 20190123.193,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 18: Unsupported action 'auto_attack'.\n\nWARNING:  The import for 'freezerburn_core' required some automated changes.\nLine 1: Removed max:X check (not available in emulation) -- (1x).\n\nImported 10 action lists.\n",
					["profile"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Enhancement.simc\n# January 23, 2019 - 19:30\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Refresh Frostbrand/Flametongue in AOE for FreezerBurn build.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/lightning_shield\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=wind_shear\n# Attempt to sync racial cooldowns with Ascendance or Feral Spirits, or use on cooldown if saving them will result in significant cooldown waste\nactions+=/variable,name=cooldown_sync,value=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\n# Do not use a maelstrom-costing ability if it will bring you to 0 maelstrom and cancel fury of air.\nactions+=/variable,name=furyCheck_SS,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.stormstrike.cost))\nactions+=/variable,name=furyCheck_LL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.lava_lash.cost))\nactions+=/variable,name=furyCheck_CL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.crash_lightning.cost))\nactions+=/variable,name=furyCheck_FB,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.frostbrand.cost))\nactions+=/variable,name=furyCheck_ES,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.earthen_spike.cost))\nactions+=/variable,name=furyCheck_LB,value=maelstrom>=(talent.fury_of_air.enabled*(6+40))\n# Attempt to pool maelstrom so you'll be able to cast a fully-powered lightning bolt as soon as it's available when fighting one target.\nactions+=/variable,name=OCPool,value=(active_enemies>1||(cooldown.lightning_bolt.remains>=2*gcd))\nactions+=/variable,name=OCPool_SS,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.stormstrike.cost)))\nactions+=/variable,name=OCPool_LL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.lava_lash.cost)))\nactions+=/variable,name=OCPool_CL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.crash_lightning.cost)))\nactions+=/variable,name=OCPool_FB,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.frostbrand.cost)))\n# Attempt to pool maelstrom for Crash Lightning if multiple targets are present.\nactions+=/variable,name=CLPool_LL,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.lava_lash.cost)\nactions+=/variable,name=CLPool_SS,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.stormstrike.cost)\nactions+=/variable,name=freezerburn_enabled,value=(talent.hot_hand.enabled&talent.hailstorm.enabled&azerite.primal_primer.enabled)\nactions+=/variable,name=rockslide_enabled,value=(!variable.freezerburn_enabled&(talent.boulderfist.enabled&talent.landslide.enabled&azerite.strength_of_earth.enabled))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=priority\nactions+=/call_action_list,name=maintenance,if=active_enemies<3\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=freezerburn_core,if=variable.freezerburn_enabled\nactions+=/call_action_list,name=default_core,if=!variable.freezerburn_enabled\nactions+=/call_action_list,name=maintenance,if=active_enemies>=3\nactions+=/call_action_list,name=filler\n\nactions.asc=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions.cds=bloodlust,if=azerite.ancestral_resonance.enabled\nactions.cds+=/berserking,if=variable.cooldown_sync\nactions.cds+=/blood_fury,if=variable.cooldown_sync\nactions.cds+=/fireblood,if=variable.cooldown_sync\nactions.cds+=/ancestral_call,if=variable.cooldown_sync\n# Attempt to sync your DPS potion with a cooldown, unless the target is about to die.\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=cooldown.strike.remains>0\nactions.cds+=/earth_elemental\n\nactions.default_core=earthen_spike,if=variable.furyCheck_ES\nactions.default_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.default_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.default_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.default_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.default_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS\n\nactions.filler=sundering\nactions.filler+=/crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck_CL\nactions.filler+=/flametongue,if=talent.searing_assault.enabled\nactions.filler+=/lava_lash,if=!azerite.primal_primer.enabled&talent.hot_hand.enabled&buff.hot_hand.react\nactions.filler+=/crash_lightning,if=active_enemies>1&variable.furyCheck_CL\nactions.filler+=/rockbiter,if=maelstrom<70&!buff.strength_of_earth.up\nactions.filler+=/crash_lightning,if=talent.crashing_storm.enabled&variable.OCPool_CL\nactions.filler+=/lava_lash,if=variable.OCPool_LL&variable.furyCheck_LL\nactions.filler+=/rockbiter\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck_FB\nactions.filler+=/flametongue\n\nactions.freezerburn_core=lava_lash,target_if=max:debuff.primal_primer.stack,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/earthen_spike,if=variable.furyCheck_ES\nactions.freezerburn_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.freezerburn_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.freezerburn_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.freezerburn_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.freezerburn_core+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack>7&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS&variable.CLPool_SS\nactions.freezerburn_core+=/lava_lash,if=debuff.primal_primer.stack=10&variable.furyCheck_LL\n\nactions.maintenance=flametongue,if=!buff.flametongue.up\nactions.maintenance+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck_FB\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd\n\nactions.priority=crash_lightning,if=active_enemies>=(8-(talent.forceful_winds.enabled*3))&variable.freezerburn_enabled&variable.furyCheck_CL\nactions.priority+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&active_enemies=1&variable.freezerburn_enabled&variable.furyCheck_LL\nactions.priority+=/flametongue,if=variable.freezerburn_enabled&buff.flametongue.remains<gcd&active_enemies>1\nactions.priority+=/frostbrand,if=variable.freezerburn_enabled&buff.frostbrand.remains<gcd&active_enemies>1\nactions.priority+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.priority+=/fury_of_air,if=!buff.fury_of_air.up&maelstrom>=20&spell_targets.fury_of_air_damage>=(1+variable.freezerburn_enabled)\nactions.priority+=/fury_of_air,if=buff.fury_of_air.up&&spell_targets.fury_of_air_damage<(1+variable.freezerburn_enabled)\nactions.priority+=/totem_mastery,if=buff.resonance_totem.remains<=2*gcd\nactions.priority+=/sundering,if=active_enemies>=3\nactions.priority+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\n# With Natural Harmony, elevate the priority of elemental attacks in order to maintain the buffs when they're about to expire.\nactions.priority+=/frostbrand,if=(azerite.natural_harmony.enabled&buff.natural_harmony_frost.remains<=2*gcd)&talent.hailstorm.enabled&variable.furyCheck_FB\nactions.priority+=/flametongue,if=(azerite.natural_harmony.enabled&buff.natural_harmony_fire.remains<=2*gcd)\nactions.priority+=/rockbiter,if=(azerite.natural_harmony.enabled&buff.natural_harmony_nature.remains<=2*gcd)&maelstrom<70",
					["spec"] = 263,
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Elemental.simc",
					["builtIn"] = true,
					["date"] = 20190201.2107,
					["spec"] = 262,
					["desc"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Elemental.simc\n# January 2, 2019 - 20:55\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Fix Ascendance with Storm Elemental; remove time check.",
					["profile"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Elemental.simc\n# January 2, 2019 - 20:55\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Fix Ascendance with Storm Elemental; remove time check.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\n# actions.precombat+=/earth_elemental,if=!talent.primal_elementalist.enabled\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\nactions.precombat+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\n\n# Executed every time the actor is available.\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions=bloodlust,if=azerite.ancestral_resonance.enabled\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\n# actions+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(cooldown.fire_elemental.remains<120&!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120&talent.storm_elemental.enabled)\nactions+=/use_items\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/run_action_list,name=aoe,if=active_enemies>2&(spell_targets.chain_lightning>2||spell_targets.lava_beam>2)\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&!storm_elemental.up&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\n\n# Spread Flame Shock in <=4 target fights, but not during SE uptime, unless you're fighting 3 targets and have less than 14 Wind Gust stacks.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&spell_targets.chain_lightning<5&(!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120||spell_targets.chain_lightning=3&buff.wind_gust.stack<14)\n\n# Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!\nactions.aoe+=/earthquake,if=!talent.master_of_the_elements.enabled||buff.stormkeeper.up||maelstrom>=(100-4*spell_targets.chain_lightning)||buff.master_of_the_elements.up||spell_targets.chain_lightning>3\n\n# Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.\nactions.aoe+=/lava_burst,if=(buff.lava_surge.up||buff.ascendance.up)&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120)\n\n# Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||cooldown.storm_elemental.remains<120)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n\n# Single Target Action Priority List\n# Ensure FS is active unless you have 14 or more stacks of Wind Gust from Storm Elemental. (Edge case: upcoming Asc but active SE; don't )\nactions.single_target=flame_shock,if=(!ticking||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<120))&buff.wind_gust.stack<14&!buff.surge_of_power.up\n\n# Use Ascendance after you've spent all Lava Burst charges and only if neither Storm Elemental nor Icefury are currently active.\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&(!talent.storm_elemental.enabled||(!storm_elemental.up&cooldown.storm_elemental.remains>15))&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\n\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead. Don't cast Elemental Blast during Storm Elemental unless you have 3x Natural Harmony in which case you stop using Elemental Blast once you reach 14 stacks of Wind Gust.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)&(!(storm_elemental.up&talent.storm_elemental.enabled)||azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)\n\n# Keep SK for large or soon add waves. Unless you have Surge of Power, in which case you want to double buff Lightning Bolt by pooling Maelstrom beforehand. Example sequence: 100MS, ES, SK, LB, LvB, ES, LB\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(!talent.surge_of_power.enabled||buff.surge_of_power.up||maelstrom>=44)\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\n# Combine Stormkeeper with Master of the Elements or Surge of Power.\nactions.single_target+=/lightning_bolt,if=buff.stormkeeper.up&spell_targets.chain_lightning<2&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n\n# There might come an update for this line with some SoP logic.\nactions.single_target+=/earthquake,if=active_enemies>1&spell_targets.chain_lightning>1&(!talent.surge_of_power.enabled||!dot.flame_shock.refreshable||storm_elemental.up)&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||maelstrom>=92)\n\n# Boy...what a condition. With Master of the Elements pool Maelstrom up to 8 Maelstrom below the cap to ensure it's used with Earth Shock. Without Master of the Elements, use Earth Shock either if Stormkeeper is up, Maelstrom is 10 Maelstrom below the cap or less, or either Storm Elemental isn't talented or it's not active and your last Storm Elemental of the fight will have only a partial duration.\nactions.single_target+=/earth_shock,if=!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||maelstrom>=92+30*talent.call_the_thunder.enabled||buff.stormkeeper.up&active_enemies<2)||!talent.master_of_the_elements.enabled&(buff.stormkeeper.up||maelstrom>=90+30*talent.call_the_thunder.enabled||!(storm_elemental.up&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))\n\n# Use Earth Shock if Surge of Power is talented, but neither it nor a DPS Elemental is active at the moment, and Lava Burst is ready or will be within the next GCD.\nactions.single_target+=/earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!(fire_elemental.up)||talent.storm_elemental.enabled&!(storm_elemental.up))\n\n# Cast Lightning Bolts during Storm Elemental duration.\nactions.single_target+=/lightning_bolt,if=storm_elemental.up&talent.storm_elemental.enabled\n\n# Use Frost Shock with Icefury and Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\nactions.single_target+=/lava_burst,if=buff.ascendance.up\n\n# Utilize Surge of Power to spread Flame Shock if multiple enemies are present.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&active_enemies>1&buff.surge_of_power.up\n\n# Use Lava Burst with Surge of Power if the last potential usage of a DPS Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains)%150))<(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)))\n\n# Use Lava Burst with Surge of Power if the last potential usage of a DPS Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.single_target+=/lava_burst,if=cooldown_react\n\n# Don't accidentally use Surge of Power with Flame Shock during single target.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&!buff.surge_of_power.up\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\n\n# Slightly game Icefury buff to hopefully buff some with Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\nactions.single_target+=/icefury,if=talent.icefury.enabled\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20190201.2107,
					["warnings"] = "Imported 4 action lists.\n",
					["author"] = "SimulationCraft",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled",
								["action"] = "stormkeeper",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & ( talent.storm_elemental.enabled & ! storm_elemental.up & cooldown.storm_elemental.remains > 15 || ! talent.storm_elemental.enabled )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled",
								["action"] = "liquid_magma_totem",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & spell_targets.chain_lightning < 5 & ( ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 || spell_targets.chain_lightning = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom >= ( 100 - 4 * spell_targets.chain_lightning ) || buff.master_of_the_elements.up || spell_targets.chain_lightning > 3",
								["action"] = "earthquake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.lava_surge.up || buff.ascendance.up ) & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 )",
								["action"] = "lava_burst",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & spell_targets.chain_lightning < 4 & ( ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 )",
								["action"] = "elemental_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_beam",
							}, -- [8]
							{
								["action"] = "chain_lightning",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["moving"] = "1",
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_burst",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["moving"] = "1",
								["criteria"] = "refreshable",
							}, -- [11]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [12]
						},
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ! ticking || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 2 * gcd || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 & ( ! talent.storm_elemental.enabled || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 120 ) ) & buff.wind_gust.stack < 14 & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.ascendance.enabled & cooldown.lava_burst.remains > 0 & ( ! talent.storm_elemental.enabled || ( ! storm_elemental.up & cooldown.storm_elemental.remains > 15 ) ) & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "ascendance",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled & ( talent.master_of_the_elements.enabled & buff.master_of_the_elements.up & maelstrom < 60 || ! talent.master_of_the_elements.enabled ) & ( ! ( storm_elemental.up & talent.storm_elemental.enabled ) || azerite.natural_harmony.rank = 3 & buff.wind_gust.stack < 14 )",
								["action"] = "elemental_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 ) & ( ! talent.surge_of_power.enabled || buff.surge_of_power.up || maelstrom >= 44 )",
								["action"] = "stormkeeper",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.liquid_magma_totem.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "liquid_magma_totem",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.stormkeeper.up & spell_targets.chain_lightning < 2 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & spell_targets.chain_lightning > 1 & ( ! talent.surge_of_power.enabled || ! dot.flame_shock.refreshable || storm_elemental.up ) & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || maelstrom >= 92 )",
								["action"] = "earthquake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || buff.stormkeeper.up & active_enemies < 2 ) || ! talent.master_of_the_elements.enabled & ( buff.stormkeeper.up || maelstrom >= 90 + 30 * talent.call_the_thunder.enabled || ! ( storm_elemental.up & talent.storm_elemental.enabled ) & expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) >= 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) )",
								["action"] = "earth_shock",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.surge_of_power.enabled & ! buff.surge_of_power.up & cooldown.lava_burst.remains <= gcd & ( ! talent.storm_elemental.enabled & ! ( fire_elemental.up ) || talent.storm_elemental.enabled & ! ( storm_elemental.up ) )",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "storm_elemental.up & talent.storm_elemental.enabled",
								["action"] = "lightning_bolt",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & active_enemies > 1 & buff.surge_of_power.up",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & ( buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 ) )",
								["action"] = "totem_mastery",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled",
								["action"] = "icefury",
							}, -- [21]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["moving"] = "1",
								["criteria"] = "refreshable",
							}, -- [23]
							{
								["enabled"] = true,
								["moving"] = "1",
								["criteria"] = "movement.distance > 6",
								["action"] = "flame_shock",
							}, -- [24]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [25]
						},
						["default"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & buff.resonance_totem.remains < 2",
								["action"] = "totem_mastery",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & ( ! talent.icefury.enabled || ! buff.icefury.up & ! cooldown.icefury.up )",
								["action"] = "storm_elemental",
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "blood_fury",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up",
								["action"] = "berserking",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "fireblood",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.ascendance.enabled || buff.ascendance.up || cooldown.ascendance.remains > 50",
								["action"] = "ancestral_call",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single_target",
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
								["action"] = "totem_mastery",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "talent.stormkeeper.enabled & ( raid_event.adds.count < 3 || raid_event.adds.in > 50 )",
								["action"] = "stormkeeper",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled",
								["action"] = "fire_elemental",
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.elemental_blast.enabled",
								["action"] = "elemental_blast",
							}, -- [9]
						},
					},
				},
			},
		},
		["Toshtrial - The Forgotten Coast"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[258] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["aoe"] = 3,
					["package"] = "Shadow",
					["damageExpiration"] = 6,
					["potionsReset"] = 20180919.1,
					["throttleRefresh"] = false,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_rising_death",
					["debuffPadding"] = 0,
					["nameplates"] = false,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0,
				},
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Shadow"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190401.1434,
					["author"] = "SimC",
					["desc"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:35\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.",
					["lists"] = {
						["single"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up & cooldown.void_bolt.remains >= 1.5 & azerite.searing_dialogue.rank >= 1",
								["action"] = "mind_sear",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || cooldown.shadow_word_death.charges = 2 || ( cooldown.shadow_word_death.charges = 1 & cooldown.shadow_word_death.remains < gcd.max )",
								["action"] = "shadow_word_death",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.mindbender.enabled || ( buff.voidform.stack > 18 || time_to_die < 15 )",
								["action"] = "mindbender",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! buff.voidform.up || ( cooldown.shadow_word_death.charges = 2 & buff.voidform.stack < 15 )",
								["action"] = "shadow_word_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.dots_up & ( ( raid_event.movement.in > cast_time + 0.5 & raid_event.movement.in < 4 ) || ! talent.shadow_word_void.enabled || buff.voidform.down || buff.voidform.stack > 14 & ( insanity < 70 || charges_fractional > 1.33 ) || buff.voidform.stack <= 14 & ( insanity < 60 || charges_fractional > 1.33 ) )",
								["action"] = "mind_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.remains > 4 & dot.vampiric_touch.remains > 4 & buff.voidform.up",
								["action"] = "void_torrent",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 4 & ! talent.misery.enabled & ! talent.dark_void.enabled",
								["action"] = "shadow_word_pain",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 6 || ( talent.misery.enabled & dot.shadow_word_pain.refreshable )",
								["action"] = "vampiric_touch",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [15]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [16]
						},
						["cleave"] = {
							{
								["action"] = "void_eruption",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.down",
								["action"] = "dark_ascension",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & azerite.thought_harvester.rank >= 1",
								["action"] = "vampiric_touch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up",
								["action"] = "mind_sear",
							}, -- [4]
							{
								["action"] = "void_bolt",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || buff.voidform.down",
								["action"] = "shadow_word_death",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10 & ( dot.shadow_word_pain.refreshable || time_to_die > 30 )",
								["action"] = "dark_void",
							}, -- [8]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear < variable.mind_blast_targets",
								["action"] = "mind_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 5 & raid_event.adds.duration < 2 ) || raid_event.adds.duration > 2",
								["action"] = "shadow_crash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.misery.enabled & ( refreshable & target.time_to_die > ( ( - 1.2 + 3.3 * spell_targets.mind_sear ) * variable.swp_trait_ranks_check * ( 1 - 0.012 * azerite.searing_dialogue.rank * spell_targets.mind_sear ) ) )",
								["action"] = "shadow_word_pain",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die > ( ( 1 + 3.3 * spell_targets.mind_sear ) * variable.vt_trait_ranks_check * ( 1 + 0.10 * azerite.searing_dialogue.rank * spell_targets.mind_sear ) ) )",
								["action"] = "vampiric_touch",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.refreshable & ( ( talent.misery.enabled & target.time_to_die > ( ( 1.0 + 2.0 * spell_targets.mind_sear ) * variable.vt_mis_trait_ranks_check * ( variable.vt_mis_sd_check * spell_targets.mind_sear ) ) ) )",
								["action"] = "vampiric_touch",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "void_torrent",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
								["criteria"] = "spell_targets.mind_sear > 1",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [17]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [18]
						},
						["default"] = {
							{
								["action"] = "silence",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || time_to_die <= 80 || target.health.pct < 35",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "dot.shadow_word_pain.ticking & dot.vampiric_touch.ticking",
								["var_name"] = "dots_up",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "cleave",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies = 1",
								["list_name"] = "single",
							}, -- [6]
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
								["op"] = "set",
								["action"] = "variable",
								["value"] = "floor ( ( 4.5 + azerite.whispers_of_the_damned.rank ) % ( 1 + 0.27 * azerite.searing_dialogue.rank ) )",
								["var_name"] = "mind_blast_targets",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.07 * azerite.death_throes.rank + 0.2 * azerite.thought_harvester.rank ) * ( 1 - 0.09 * azerite.thought_harvester.rank * azerite.searing_dialogue.rank )",
								["var_name"] = "swp_trait_ranks_check",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.04 * azerite.thought_harvester.rank - 0.05 * azerite.spiteful_apparitions.rank )",
								["var_name"] = "vt_trait_ranks_check",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.07 * azerite.death_throes.rank - 0.03 * azerite.thought_harvester.rank - 0.055 * azerite.spiteful_apparitions.rank ) * ( 1 - 0.027 * azerite.thought_harvester.rank * azerite.searing_dialogue.rank )",
								["var_name"] = "vt_mis_trait_ranks_check",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 - 0.014 * azerite.searing_dialogue.rank",
								["var_name"] = "vt_mis_sd_check",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadowform.up",
								["action"] = "shadowform",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear < 2 || azerite.thought_harvester.rank = 0",
								["action"] = "mind_blast",
							}, -- [12]
							{
								["action"] = "vampiric_touch",
								["enabled"] = true,
							}, -- [13]
						},
					},
					["version"] = 20190401.1434,
					["warnings"] = "Imported 4 action lists.\n",
					["spec"] = 258,
					["profile"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:35\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/variable,name=mind_blast_targets,op=set,value=floor((4.5+azerite.whispers_of_the_damned.rank)%(1+0.27*azerite.searing_dialogue.rank))\nactions.precombat+=/variable,name=swp_trait_ranks_check,op=set,value=(1-0.07*azerite.death_throes.rank+0.2*azerite.thought_harvester.rank)*(1-0.09*azerite.thought_harvester.rank*azerite.searing_dialogue.rank)\nactions.precombat+=/variable,name=vt_trait_ranks_check,op=set,value=(1-0.04*azerite.thought_harvester.rank-0.05*azerite.spiteful_apparitions.rank)\nactions.precombat+=/variable,name=vt_mis_trait_ranks_check,op=set,value=(1-0.07*azerite.death_throes.rank-0.03*azerite.thought_harvester.rank-0.055*azerite.spiteful_apparitions.rank)*(1-0.027*azerite.thought_harvester.rank*azerite.searing_dialogue.rank)\nactions.precombat+=/variable,name=vt_mis_sd_check,op=set,value=1-0.014*azerite.searing_dialogue.rank\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/mind_blast,if=spell_targets.mind_sear<2||azerite.thought_harvester.rank=0\nactions.precombat+=/vampiric_touch\n\n# Executed every time the actor is available.\nactions=silence\nactions+=/use_items\nactions+=/potion,if=buff.bloodlust.react||time_to_die<=80||target.health.pct<35\nactions+=/variable,name=dots_up,op=set,value=dot.shadow_word_pain.ticking&dot.vampiric_touch.ticking\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single,if=active_enemies=1\n\nactions.cleave=void_eruption\nactions.cleave+=/dark_ascension,if=buff.voidform.down\nactions.cleave+=/vampiric_touch,if=!ticking&azerite.thought_harvester.rank>=1\nactions.cleave+=/mind_sear,if=buff.harvested_thoughts.up\nactions.cleave+=/void_bolt\nactions.cleave+=/shadow_word_death,if=target.time_to_die<3||buff.voidform.down\nactions.cleave+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.cleave+=/dark_void,if=raid_event.adds.in>10&(dot.shadow_word_pain.refreshable||time_to_die>30)\nactions.cleave+=/mindbender\nactions.cleave+=/mind_blast,if=spell_targets.mind_sear<variable.mind_blast_targets\nactions.cleave+=/shadow_crash,if=(raid_event.adds.in>5&raid_event.adds.duration<2)||raid_event.adds.duration>2\nactions.cleave+=/shadow_word_pain,cycle_targets=1,if=!talent.misery.enabled&(refreshable&target.time_to_die>((-1.2+3.3*spell_targets.mind_sear)*variable.swp_trait_ranks_check*(1-0.012*azerite.searing_dialogue.rank*spell_targets.mind_sear)))\nactions.cleave+=/vampiric_touch,cycle_targets=1,if=refreshable&(target.time_to_die>((1+3.3*spell_targets.mind_sear)*variable.vt_trait_ranks_check*(1+0.10*azerite.searing_dialogue.rank*spell_targets.mind_sear)))\nactions.cleave+=/vampiric_touch,cycle_targets=1,if=dot.shadow_word_pain.refreshable&((talent.misery.enabled&target.time_to_die>((1.0+2.0*spell_targets.mind_sear)*variable.vt_mis_trait_ranks_check*(variable.vt_mis_sd_check*spell_targets.mind_sear))))\nactions.cleave+=/void_torrent,if=buff.voidform.up\nactions.cleave+=/mind_sear,if=spell_targets.mind_sear>1,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.cleave+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.cleave+=/shadow_word_pain\n\nactions.single=void_eruption\nactions.single+=/dark_ascension,if=buff.voidform.down\nactions.single+=/void_bolt\nactions.single+=/mind_sear,if=buff.harvested_thoughts.up&cooldown.void_bolt.remains>=1.5&azerite.searing_dialogue.rank>=1\nactions.single+=/shadow_word_death,if=target.time_to_die<3||cooldown.shadow_word_death.charges=2||(cooldown.shadow_word_death.charges=1&cooldown.shadow_word_death.remains<gcd.max)\nactions.single+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\nactions.single+=/dark_void,if=raid_event.adds.in>10\nactions.single+=/mindbender,if=talent.mindbender.enabled||(buff.voidform.stack>18||time_to_die<15)\nactions.single+=/shadow_word_death,if=!buff.voidform.up||(cooldown.shadow_word_death.charges=2&buff.voidform.stack<15)\nactions.single+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\nactions.single+=/mind_blast,if=variable.dots_up&((raid_event.movement.in>cast_time+0.5&raid_event.movement.in<4)||!talent.shadow_word_void.enabled||buff.voidform.down||buff.voidform.stack>14&(insanity<70||charges_fractional>1.33)||buff.voidform.stack<=14&(insanity<60||charges_fractional>1.33))\nactions.single+=/void_torrent,if=dot.shadow_word_pain.remains>4&dot.vampiric_touch.remains>4&buff.voidform.up\nactions.single+=/shadow_word_pain,if=refreshable&target.time_to_die>4&!talent.misery.enabled&!talent.dark_void.enabled\nactions.single+=/vampiric_touch,if=refreshable&target.time_to_die>6||(talent.misery.enabled&dot.shadow_word_pain.refreshable)\nactions.single+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.single+=/shadow_word_pain",
				},
			},
		},
	},
}
