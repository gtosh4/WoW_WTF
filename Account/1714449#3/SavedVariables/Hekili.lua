
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Toshpal - Kil'jaeden"] = "Toshpal - Kil'jaeden",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshmonk - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Toshpal - Kil'jaeden"] = {
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[70] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0,
					["nameplates"] = true,
					["package"] = "Retribution",
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["throttleRefresh"] = false,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "battle_potion_of_strength",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
				},
				[66] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0,
					["nameplates"] = true,
					["package"] = "Protection Paladin",
					["damageExpiration"] = 8,
					["potionsReset"] = 20180919.1,
					["throttleRefresh"] = false,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potion"] = "potion_of_bursting_blood",
					["debuffPadding"] = 0,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
				},
			},
			["displays"] = {
				["Interrupts"] = {
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
								["action"] = "grongs_primal_rage",
								["criteria"] = "( ( cooldown.judgment.full_recharge_time > 4 || ( ! talent.crusaders_judgment.enabled & prev_gcd.1.judgment ) ) & cooldown.avengers_shield.remains > 4 & buff.seraphim.remains > 4 ) || ( buff.seraphim.remains < 4 )",
								["name"] = "grongs_primal_rage",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "merekthas_fang",
								["criteria"] = "! buff.avenging_wrath.up & ( buff.seraphim.up || ! talent.seraphim.enabled )",
								["name"] = "merekthas_fang",
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
					["profile"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Protection.simc\n# February 17, 2019 - 00:26\n\n# Changes\n# - Added Rebuke.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lights_judgment\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/rebuke\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\n# Dumping SotR charges\nactions+=/shield_of_the_righteous,if=(buff.avengers_valor.up&cooldown.shield_of_the_righteous.charges_fractional>=2.5)&(cooldown.seraphim.remains>gcd||!talent.seraphim.enabled)\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&!talent.seraphim.enabled)||buff.seraphim.up&buff.avengers_valor.up\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&buff.avenging_wrath.remains<4&!talent.seraphim.enabled)||(buff.seraphim.remains<4&buff.seraphim.up)\nactions+=/lights_judgment,if=buff.seraphim.up&buff.seraphim.remains<3\nactions+=/consecration,if=!consecration.up\nactions+=/judgment,if=(cooldown.judgment.remains<gcd&cooldown.judgment.charges_fractional>1&cooldown_react)||!talent.crusaders_judgment.enabled\nactions+=/avengers_shield,if=cooldown_react\nactions+=/judgment,if=cooldown_react||!talent.crusaders_judgment.enabled\nactions+=/lights_judgment,if=!talent.seraphim.enabled||buff.seraphim.up\nactions+=/blessed_hammer,strikes=2\nactions+=/hammer_of_the_righteous\nactions+=/consecration\n\nactions.cooldowns=fireblood,if=buff.avenging_wrath.up\nactions.cooldowns+=/seraphim,if=cooldown.shield_of_the_righteous.charges_fractional>=2\nactions.cooldowns+=/avenging_wrath,if=buff.seraphim.up||cooldown.seraphim.remains<2||!talent.seraphim.enabled\nactions.cooldowns+=/bastion_of_light,if=cooldown.shield_of_the_righteous.charges_fractional<=0\nactions.cooldowns+=/potion,if=buff.avenging_wrath.up\nactions.cooldowns+=/use_items,if=buff.seraphim.up||!talent.seraphim.enabled\nactions.cooldowns+=/use_item,name=grongs_primal_rage,if=((cooldown.judgment.full_recharge_time>4||(!talent.crusaders_judgment.enabled&prev_gcd.1.judgment))&cooldown.avengers_shield.remains>4&buff.seraphim.remains>4)||(buff.seraphim.remains<4)\nactions.cooldowns+=/use_item,name=merekthas_fang,if=!buff.avenging_wrath.up&(buff.seraphim.up||!talent.seraphim.enabled)\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\n\nactions.mitigation=shield_of_the_righteous,if=!talent.seraphim.enabled&action.shield_of_the_righteous.charges>2&!(buff.aegis_of_light.up&buff.ardent_defender.up&buff.guardian_of_ancient_kings.up&buff.divine_shield.up&buff.potion.up)\nactions.mitigation+=/bastion_of_light,if=!talent.seraphim.enabled&talent.bastion_of_light.enabled&action.shield_of_the_righteous.charges<1\nactions.mitigation+=/light_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/hand_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_10000ms<health.max*1.25)&health.pct<55&talent.righteous_protector.enabled\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_13000ms<health.max*1.6)&health.pct<55\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_6000ms<health.max*0.7)&health.pct<65&talent.righteous_protector.enabled\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_9000ms<health.max*1.2)&health.pct<55\nactions.mitigation+=/aegis_of_light,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=!talent.seraphim.enabled&talent.final_stand.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=!talent.seraphim.enabled&health.pct<15",
					["spec"] = 66,
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
					["author"] = "SimC",
					["lists"] = {
						["opener"] = {
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_ES_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:execution_sentence",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & talent.execution_sentence.enabled & ! talent.hammer_of_wrath.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_CS:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:crusader_strike:templars_verdict",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & ! talent.execution_sentence.enabled & ! talent.hammer_of_wrath.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_ES_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:execution_sentence",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & talent.execution_sentence.enabled & talent.hammer_of_wrath.enabled",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_HoW:shield_of_vengeance:blade_of_justice:judgment:crusade:templars_verdict:wake_of_ashes:templars_verdict:hammer_of_wrath:templars_verdict",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.crusade.enabled & ! talent.execution_sentence.enabled & talent.hammer_of_wrath.enabled",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "sequence",
								["name"] = "wake_opener_Inq:shield_of_vengeance:blade_of_justice:judgment:inquisition:avenging_wrath:wake_of_ashes",
								["criteria"] = "talent.wake_of_ashes.enabled & talent.inquisition.enabled",
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
								["action"] = "ramping_amplitude_gigavolt_engine",
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up )",
								["name"] = "ramping_amplitude_gigavolt_engine",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "grongs_primal_rage",
								["criteria"] = "! buff.avenging_wrath.up & ! buff.crusade.up",
								["name"] = "grongs_primal_rage",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "razdunks_big_red_button",
								["action"] = "razdunks_big_red_button",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "jes_howler",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10",
								["name"] = "jes_howler",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "vial_of_animated_blood",
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18 ) || ( cooldown.avenging_wrath.remains > 30 || cooldown.crusade.remains > 30 )",
								["name"] = "vial_of_animated_blood",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "dooms_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 18",
								["name"] = "dooms_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "galecallers_beak",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains < 15",
								["name"] = "galecallers_beak",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "bygone_bee_almanac",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up",
								["name"] = "bygone_bee_almanac",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "merekthas_fang",
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.in > 15 ) || spell_targets.divine_storm >= 2",
								["name"] = "merekthas_fang",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "plunderbeards_flask",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
								["name"] = "plunderbeards_flask",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "berserkers_juju",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || ! buff.crusade.up & cooldown.crusade.remains > 45",
								["name"] = "berserkers_juju",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "endless_tincture_of_fractional_power",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 45 || cooldown.crusade.remains > 45",
								["name"] = "endless_tincture_of_fractional_power",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "pearl_divers_compass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10",
								["name"] = "pearl_divers_compass",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "first_mates_spyglass",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 15",
								["name"] = "first_mates_spyglass",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "whirlwings_plumage",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
								["name"] = "whirlwings_plumage",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "dread_gladiators_badge",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
								["name"] = "dread_gladiators_badge",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "dread_aspirants_medallion",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.remains <= 20",
								["name"] = "dread_aspirants_medallion",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "knot_of_ancient_fury",
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack >= 10 || cooldown.avenging_wrath.remains > 30 || ! buff.crusade.up & cooldown.crusade.remains > 30",
								["name"] = "knot_of_ancient_fury",
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
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "ds_castable",
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
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "HoW",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 5",
								["action"] = "call_action_list",
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
								["criteria"] = "talent.hammer_of_wrath.enabled & ( target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up )",
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
				},
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
					["buffPadding"] = 0.25,
					["throttleRefresh"] = false,
					["package"] = "Feral",
					["damageExpiration"] = 3,
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potion"] = "battle_potion_of_agility",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
				},
				[104] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0.25,
					["package"] = "Guardian",
					["throttleRefresh"] = false,
					["damageExpiration"] = 6,
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potion"] = "steelskin_potion",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
				},
				[102] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0.25,
					["throttleRefresh"] = false,
					["package"] = "Balance",
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
					["author"] = "SimC",
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
								["criteria"] = "! opener_done & ( buff.berserk.up || buff.incarnation.up )",
								["action"] = "call_action_list",
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
								["criteria"] = "combo_points > 4",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & spell_targets.thrash_cat > 1",
								["action"] = "call_action_list",
								["list_name"] = "generators_aoe",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5",
								["action"] = "call_action_list",
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
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "rip_ticks",
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
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "rake_ttd",
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
								["criteria"] = "target.time_to_die < 65 || ( time_to_die < 180 & ( buff.berserk.up || buff.incarnation.up ) )",
								["potion"] = "battle_potion_of_agility",
								["action"] = "potion",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & energy >= action.rake.cost & dot.rake.pmultiplier < 2.1 & buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.incarnation.enabled || cooldown.incarnation.remains > 18 ) & ! buff.incarnation.up",
								["action"] = "shadowmeld",
							}, -- [9]
						},
					},
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
								["action"] = "cancel_buff",
								["criteria"] = "buff.starlord.remains < 8 & ! solar_wrath.ap_check",
								["buff_name"] = "starlord",
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
								["action"] = "sunfire",
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 4 + spell_targets & ( spell_targets > 1 + talent.twin_moons.enabled || dot.moonfire.ticking ) & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.sunfire ) )",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 6 & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.moonfire ) )",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) >= 6 & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.stellar_flare ) )",
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
					["profile"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Balance.simc\n# January 6, 2019 - 21:19\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Adjusted sf_targets variable for addon syntax.\n# - Added Use Items.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Azerite Variables\n# actions.precombat+=/variable,name=az_ss,value=azerite.streaking_stars.rank\n# actions.precombat+=/variable,name=az_ds,value=azerite.dawning_sun.rank\n# actions.precombat+=/variable,name=az_ap,value=azerite.arcanic_pulsar.rank\n# Starfall v Starsurge target cutoff\nactions.precombat+=/variable,name=sf_targets,op=set,value=4+(talent.twin_moons.enabled&(azerite.arcanic_pulsar.enabled||talent.starlord.enabled))-(!azerite.arcanic_pulsar.enabled&!talent.starlord.enabled&talent.stellar_drift.enabled)\nactions.precombat+=/moonkin_form\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/solar_wrath\n\n# Executed every time the actor is available.\nactions=solar_beam\nactions+=/potion,if=buff.ca_inc.up\nactions+=/blood_fury,if=buff.ca_inc.up\nactions+=/berserking,if=buff.ca_inc.up\nactions+=/arcane_torrent,if=buff.ca_inc.up\nactions+=/lights_judgment,if=buff.ca_inc.up\nactions+=/fireblood,if=buff.ca_inc.up\nactions+=/ancestral_call,if=buff.ca_inc.up\n\n# CDs\nactions+=/use_items,if=cooldown.ca_inc.remains>30\nactions+=/warrior_of_elune\nactions+=/innervate,if=azerite.lively_spirit.enabled&(cooldown.incarnation.remains<2||cooldown.celestial_alignment.remains<12)\nactions+=/incarnation,if=astral_power>=40\nactions+=/celestial_alignment,if=astral_power>=40&(!azerite.lively_spirit.enabled||buff.lively_spirit.up)&(buff.starlord.stack>=2||!talent.starlord.enabled||!azerite.streaking_stars.enabled)\nactions+=/fury_of_elune,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&solar_wrath.ap_check\nactions+=/force_of_nature,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&ap_check\n\n# Spenders\nactions+=/cancel_buff,name=starlord,if=buff.starlord.remains<8&!solar_wrath.ap_check\nactions+=/starfall,if=(buff.starlord.stack<3||buff.starlord.remains>=8)&spell_targets>=variable.sf_targets&(target.time_to_die+1)*spell_targets>cost%2.5\nactions+=/starsurge,if=(talent.starlord.enabled&(buff.starlord.stack<3||buff.starlord.remains>=8&buff.arcanic_pulsar.stack<8)||!talent.starlord.enabled&(buff.arcanic_pulsar.stack<8||buff.ca_inc.up))&spell_targets.starfall<variable.sf_targets&buff.lunar_empowerment.stack+buff.solar_empowerment.stack<4&buff.solar_empowerment.stack<3&buff.lunar_empowerment.stack<3&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.starsurge)||target.time_to_die<=execute_time*astral_power%40||!solar_wrath.ap_check\n\n# DoTs\nactions+=/sunfire,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=4+spell_targets&(spell_targets>1+talent.twin_moons.enabled||dot.moonfire.ticking)&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.sunfire))\nactions+=/moonfire,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=6&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.moonfire))\nactions+=/stellar_flare,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))>=6&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.stellar_flare))\n\n# Generators\nactions+=/new_moon,if=ap_check\nactions+=/half_moon,if=ap_check\nactions+=/full_moon,if=ap_check\nactions+=/lunar_strike,if=buff.solar_empowerment.stack<3&(ap_check||buff.lunar_empowerment.stack=3)&((buff.warrior_of_elune.up||buff.lunar_empowerment.up||spell_targets>=2&!buff.solar_empowerment.up||azerite.dawning_sun.enabled&!buff.dawning_sun.up)&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||(!prev.lunar_strike&!talent.incarnation.enabled||prev.solar_wrath))||azerite.streaking_stars.enabled&buff.ca_inc.up&prev.solar_wrath)\nactions+=/solar_wrath,if=azerite.streaking_stars.rank<3||!buff.ca_inc.up||!prev.solar_wrath\n\n# Fallthru for movement\nactions+=/sunfire",
					["spec"] = 102,
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
					["spec"] = 104,
					["profile"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Guardian.simc\n# October 23, 2018 - 10:42 PM\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/bear_form\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=skull_bash\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\nactions+=/maul,if=rage.deficit<10&active_enemies<4\nactions+=/ironfur,if=cost=0||(rage>cost&azerite.layered_mane.enabled&active_enemies>2)\nactions+=/pulverize,if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks\nactions+=/moonfire,if=dot.moonfire.refreshable&active_enemies<2\nactions+=/incarnation\nactions+=/thrash_bear,if=(buff.incarnation.down&active_enemies>1)||(buff.incarnation.up&active_enemies>4)\nactions+=/swipe_bear,if=buff.incarnation.down&active_enemies>4\nactions+=/mangle,if=dot.thrash_bear.ticking\nactions+=/moonfire,if=buff.galactic_guardian.up&active_enemies<2\nactions+=/thrash_bear\nactions+=/maul\n# Fill with Moonfire with PotMx2\nactions+=/moonfire,if=azerite.power_of_the_moon.rank>1&active_enemies=1\nactions+=/swipe_bear\n\nactions.mitigation=ironfur,if=incoming_damage_5s>0.1*health.max&buff.ironfur.remains<gcd*2\nactions.mitigation+=/frenzied_regeneration,if=health.current<0.6*health.max\nactions.mitigation+=/barkskin,if=health.pct<50&incoming_damage_5s>0.25*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&health.pct<35&incoming_damage_5s>0.25*health.max\n\nactions.cooldowns=potion\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/arcane_torrent\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\n# actions.cooldowns+=/barkskin,if=buff.bear_form.up\nactions.cooldowns+=/lunar_beam,if=buff.bear_form.up\nactions.cooldowns+=/bristling_fur,if=buff.bear_form.up\nactions.cooldowns+=/use_items",
				},
			},
		},
		["Default"] = {
			["toggles"] = {
				["essences"] = {
					["value"] = false,
				},
				["mode"] = {
					["value"] = "single",
				},
			},
			["minimapIcon"] = true,
			["displays"] = {
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = 641.0541381835938,
					["x"] = -607.0261840820312,
					["delays"] = {
						["extend"] = false,
					},
				},
				["Primary"] = {
					["border"] = {
						["fit"] = false,
					},
					["rel"] = "CENTER",
					["numIcons"] = 2,
					["zoom"] = 0,
					["delays"] = {
						["font"] = "Expressway",
						["anchor"] = "BOTTOMRIGHT",
						["fontSize"] = 14,
						["extend"] = false,
					},
					["queue"] = {
						["width"] = 26,
						["height"] = 26,
					},
					["y"] = -214.4906921386719,
					["x"] = -8.300203323364258,
					["primaryHeight"] = 36,
					["keybindings"] = {
						["fontSize"] = 16,
						["y"] = 6,
						["x"] = 0,
						["anchor"] = "TOPLEFT",
						["font"] = "Expressway",
					},
					["targets"] = {
						["font"] = "Expressway",
						["enabled"] = false,
					},
					["primaryWidth"] = 36,
				},
				["AOE"] = {
					["delays"] = {
						["extend"] = false,
					},
					["rel"] = "CENTER",
					["zoom"] = 0,
					["targets"] = {
						["font"] = "Expressway",
					},
					["y"] = 674.0526123046875,
					["x"] = -872.04931640625,
					["keybindings"] = {
						["font"] = "Expressway",
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
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20191111,
					["spec"] = 269,
					["desc"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/\n# November 11, 2019\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).",
					["lists"] = {
						["cd"] = {
							{
								["action"] = "invoke_xuen",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "variable_intensity_gigavolt_oscillating_reactor",
								["action"] = "variable_intensity_gigavolt_oscillating_reactor",
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
								["action"] = "call_action_list",
								["list_name"] = "tod",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.storm_earth_and_fire.charges = 2 || ( cooldown.fists_of_fury.remains <= 9 & chi >= 3 & cooldown.whirling_dragon_punch.remains <= 14 & cooldown.touch_of_death.remains >= 90 ) || time_to_die <= 15 || dot.touch_of_death.remains",
								["action"] = "storm_earth_and_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.concentrated_flame_burn.remains <= 2",
								["action"] = "concentrated_flame",
							}, -- [12]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "the_unbound_force",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "focused_azerite_beam",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["name"] = "pocketsized_computation_device",
								["action"] = "cyclotronic_blast",
								["criteria"] = "dot.touch_of_death.remains",
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "( ( equipped.cyclotronic_blast & cooldown.cyclotronic_blast.remains >= 20 ) || ! equipped.cyclotronic_blast ) & ( debuff.razor_coral_debuff.down || ( ! equipped.dribbling_inkpod || target.time_to_pct_30 < 8 ) & buff.storm_earth_and_fire.remains > 13 || time_to_die < 21 )",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.rising_sun_kick.remains <= 2 || time_to_die <= 12",
								["action"] = "serenity",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "energy < 40 & buff.storm_earth_and_fire.up",
								["action"] = "memory_of_lucid_dreams",
							}, -- [20]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( equipped.cyclotronic_blast & cooldown.cyclotronic_blast.remains <= 20 ) || ! equipped.cyclotronic_blast",
								["action"] = "use_items",
							}, -- [22]
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
								["criteria"] = "combo_strike & ( ( ( chi > 3 || cooldown.fists_of_fury.remains > 6 ) & ( chi >= 5 || cooldown.fists_of_fury.remains > 2 ) ) || energy.time_to_max <= 3 )",
								["action"] = "spinning_crane_kick",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2",
								["action"] = "reverse_harm",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3",
								["action"] = "chi_burst",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "chi.max - chi >= 2 & ( ! talent.hit_combo.enabled || ! combo_break )",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! combo_break",
								["action"] = "chi_wave",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & ( buff.bok_proc.up || ( talent.hit_combo.enabled & prev_gcd.1.tiger_palm & chi < 4 ) )",
								["cycle_targets"] = 1,
							}, -- [12]
						},
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["interval"] = "90",
								["pct_health"] = "0.5",
								["action"] = "touch_of_karma",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up || buff.storm_earth_and_fire.up || ( ! talent.serenity.enabled & trinket.proc.agility.react ) || buff.bloodlust.react || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.serenity.up",
								["action"] = "call_action_list",
								["list_name"] = "serenity",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) ) & chi.max - chi >= 2",
								["action"] = "reverse_harm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) || ( energy.time_to_max < 4 & cooldown.fists_of_fury.remains < 1.5 ) ) & chi.max - chi >= 3",
								["action"] = "fist_of_the_white_tiger",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "! combo_break & ( energy.time_to_max < 1 || ( talent.serenity.enabled & cooldown.serenity.remains < 2 ) || ( energy.time_to_max < 4 & cooldown.fists_of_fury.remains < 1.5 ) ) & chi.max - chi >= 2 & ! dot.touch_of_death.remains",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cd",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! ptr & active_enemies < 3 & azerite.open_palm_strikes.enabled & ! azerite.glory_of_the_dawn.enabled",
								["action"] = "call_action_list",
								["list_name"] = "rskless",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [11]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.serenity.enabled || ! talent.fist_of_the_white_tiger.enabled )",
								["action"] = "chi_burst",
							}, -- [2]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [3]
						},
						["rskless"] = {
							{
								["action"] = "whirling_dragon_punch",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "fists_of_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "buff.storm_earth_and_fire.up || cooldown.whirling_dragon_punch.remains < 4",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down & active_enemies > 1",
								["action"] = "rushing_jade_wind",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2",
								["action"] = "reverse_harm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 2",
								["action"] = "fist_of_the_white_tiger",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "chi <= 3 & energy < 50",
								["action"] = "energizing_elixir",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & buff.dance_of_chiji.react",
								["action"] = "spinning_crane_kick",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & ( cooldown.fists_of_fury.remains > 4 || chi >= 4 || ( chi = 2 & prev_gcd.1.tiger_palm ) )",
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
								["criteria"] = "prev_gcd.1.blackout_kick & chi > 3",
								["action"] = "flying_serpent_kick",
								["interrupt"] = "1",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["criteria"] = "chi.max - chi < 2",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "rising_sun_kick",
								["cycle_targets"] = 1,
							}, -- [15]
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
								["criteria"] = "talent.hit_combo.enabled & energy.time_to_max < 2 & prev_gcd.1.blackout_kick & chi <= 2",
								["action"] = "fist_of_the_white_tiger",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hit_combo.enabled & energy.time_to_max < 1 & prev_gcd.1.blackout_kick & chi.max - chi >= 2",
								["action"] = "tiger_palm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "combo_strike & ( active_enemies >= 3 || ( talent.hit_combo.enabled & prev_gcd.1.blackout_kick ) || ( active_enemies = 2 & prev_gcd.1.blackout_kick ) )",
								["action"] = "spinning_crane_kick",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["cycle_targets"] = 1,
							}, -- [6]
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
								["criteria"] = "buff.rushing_jade_wind.down & active_enemies > 1",
								["action"] = "rushing_jade_wind",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 2",
								["action"] = "reverse_harm",
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
								["criteria"] = "combo_strike & buff.dance_of_chiji.react",
								["action"] = "spinning_crane_kick",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "blackout_kick",
								["criteria"] = "combo_strike & ( cooldown.rising_sun_kick.remains > 3 || chi >= 3 ) & ( cooldown.fists_of_fury.remains > 4 || chi >= 4 || ( chi = 2 & prev_gcd.1.tiger_palm ) )",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "chi.max - chi >= 1 & active_enemies = 1 || chi.max - chi >= 2",
								["action"] = "chi_burst",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "tiger_palm",
								["criteria"] = "combo_strike & chi.max - chi >= 2",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.blackout_kick & chi > 3",
								["action"] = "flying_serpent_kick",
								["interrupt"] = "1",
							}, -- [14]
						},
						["tod"] = {
							{
								["enabled"] = true,
								["criteria"] = "equipped.cyclotronic_blast & target.time_to_die > 9 & cooldown.cyclotronic_blast.remains <= 2",
								["action"] = "touch_of_death",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.cyclotronic_blast & equipped.dribbling_inkpod & time_to_die > 9 & ( target.time_to_pct_30 >= 130 || target.time_to_pct_30 < 8 )",
								["action"] = "touch_of_death",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.cyclotronic_blast & ! equipped.dribbling_inkpod & time_to_die > 9",
								["action"] = "touch_of_death",
							}, -- [3]
						},
					},
					["version"] = 20191111,
					["warnings"] = "Imported 8 action lists.\n",
					["author"] = "SimC",
					["profile"] = "# Windwalker Monk\n# https://github.com/simulationcraft/simc/\n# November 11, 2019\n\n# Changes:\n# - Remove Spear Hand Strike condtions (handled by addon).\n# - Remove FSK recommendation (will become a pref).\n# - Change target_if to cycle_targets.\n# - Remove energy cap check for Fists of Fury (sim difference is negligible, but play difference is significant).\n# - Added Use Items (trinkets, etc.).\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst,if=(!talent.serenity.enabled||!talent.fist_of_the_white_tiger.enabled)\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\n# actions=auto_attack\nactions+=/spear_hand_strike\nactions+=/touch_of_karma,interval=90,pct_health=0.5\n# Potion if Serenity or Storm, Earth, and Fire are up or you are running serenity and a main stat trinket procs, or you are under the effect of bloodlust, or target time to die is greater or equal to 60\nactions+=/potion,if=buff.serenity.up||buff.storm_earth_and_fire.up||(!talent.serenity.enabled&trinket.proc.agility.react)||buff.bloodlust.react||target.time_to_die<=60\nactions+=/call_action_list,name=serenity,if=buff.serenity.up\nactions+=/reverse_harm,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2))&chi.max-chi>=2\nactions+=/fist_of_the_white_tiger,if=(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2)||(energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5))&chi.max-chi>=3\nactions+=/tiger_palm,cycle_targets=1,if=!combo_break&(energy.time_to_max<1||(talent.serenity.enabled&cooldown.serenity.remains<2)||(energy.time_to_max<4&cooldown.fists_of_fury.remains<1.5))&chi.max-chi>=2&!dot.touch_of_death.remains\nactions+=/call_action_list,name=cd\n# Call the RSKLess action list if Open Palm Strikes' is enabled, and Glory of the Dawm's rank is not enabled\nactions+=/call_action_list,name=rskless,if=!ptr&active_enemies<3&azerite.open_palm_strikes.enabled&!azerite.glory_of_the_dawn.enabled\n# Call the ST action list if there are 2 or less enemies\nactions+=/call_action_list,name=st,if=active_enemies<3\n# Call the AoE action list if there are 3 or more enemies\nactions+=/call_action_list,name=aoe,if=active_enemies>=3\n\n# Actions.AoE is intended for use with Hectic_Add_Cleave and currently needs to be optimized\nactions.aoe=rising_sun_kick,cycle_targets=1,if=(talent.whirling_dragon_punch.enabled&cooldown.whirling_dragon_punch.remains<5)&cooldown.fists_of_fury.remains>3\nactions.aoe+=/whirling_dragon_punch\nactions.aoe+=/energizing_elixir,if=!prev_gcd.1.tiger_palm&chi<=1&energy<50\nactions.aoe+=/fists_of_fury\nactions.aoe+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions.aoe+=/spinning_crane_kick,if=combo_strike&(((chi>3||cooldown.fists_of_fury.remains>6)&(chi>=5||cooldown.fists_of_fury.remains>2))||energy.time_to_max<=3)\nactions.aoe+=/reverse_harm,if=chi.max-chi>=2\nactions.aoe+=/chi_burst,if=chi<=3\nactions.aoe+=/fist_of_the_white_tiger,if=chi.max-chi>=3\nactions.aoe+=/tiger_palm,cycle_targets=1,if=chi.max-chi>=2&(!talent.hit_combo.enabled||!combo_break)\nactions.aoe+=/chi_wave,if=!combo_break\n# actions.aoe+=/flying_serpent_kick,if=buff.bok_proc.down,interrupt=1\nactions.aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&(buff.bok_proc.up||(talent.hit_combo.enabled&prev_gcd.1.tiger_palm&chi<4))\n\n# Cooldowns\nactions.cd=invoke_xuen_the_white_tiger\nactions.cd+=/use_items\nactions.cd+=/use_item,name=variable_intensity_gigavolt_oscillating_reactor\nactions.cd+=/blood_fury\nactions.cd+=/berserking\n# Use Arcane Torrent if you are missing at least 1 Chi and won't cap energy within 0.5 seconds\nactions.cd+=/arcane_torrent,if=chi.max-chi>=1&energy.time_to_max>=0.5\nactions.cd+=/lights_judgment\nactions.cd+=/fireblood\nactions.cd+=/ancestral_call\nactions.cd+=/call_action_list,name=tod\nactions.cd+=/storm_earth_and_fire,if=cooldown.storm_earth_and_fire.charges=2||(cooldown.fists_of_fury.remains<=9&chi>=3&cooldown.whirling_dragon_punch.remains<=14&cooldown.touch_of_death.remains>=90)||time_to_die<=15||dot.touch_of_death.remains\nactions.cd+=/concentrated_flame,if=dot.concentrated_flame_burn.remains<=2\nactions.cd+=/blood_of_the_enemy\nactions.cd+=/the_unbound_force\nactions.cd+=/purifying_blast\nactions.cd+=/focused_azerite_beam\nactions.cd+=/use_item,name=pocketsized_computation_device,if=dot.touch_of_death.remains\nactions.cd+=/use_item,name=ashvanes_razor_coral,if=((equipped.cyclotronic_blast&cooldown.cyclotronic_blast.remains>=20)||!equipped.cyclotronic_blast)&(debuff.razor_coral_debuff.down||(!equipped.dribbling_inkpod||target.time_to_pct_30<8)&buff.storm_earth_and_fire.remains>13||time_to_die<21)\nactions.cd+=/serenity,if=cooldown.rising_sun_kick.remains<=2||time_to_die<=12\nactions.cd+=/memory_of_lucid_dreams,if=energy<40&buff.storm_earth_and_fire.up\nactions.cd+=/ripple_in_space\nactions.cd+=/use_items,if=(equipped.cyclotronic_blast&cooldown.cyclotronic_blast.remains<=20)||!equipped.cyclotronic_blast\n\nactions.rskless=whirling_dragon_punch\nactions.rskless+=/fists_of_fury\nactions.rskless+=/rising_sun_kick,cycle_targets=1,if=buff.storm_earth_and_fire.up||cooldown.whirling_dragon_punch.remains<4\nactions.rskless+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.rskless+=/reverse_harm,if=chi.max-chi>=2\nactions.rskless+=/fist_of_the_white_tiger,if=chi<=2\nactions.rskless+=/energizing_elixir,if=chi<=3&energy<50\nactions.rskless+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.react\nactions.rskless+=/blackout_kick,cycle_targets=1,if=combo_strike&(cooldown.fists_of_fury.remains>4||chi>=4||(chi=2&prev_gcd.1.tiger_palm))\nactions.rskless+=/chi_wave\nactions.rskless+=/chi_burst,if=chi.max-chi>=1&active_enemies=1||chi.max-chi>=2\nactions.rskless+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3,interrupt=1\nactions.rskless+=/rising_sun_kick,cycle_targets=1,if=chi.max-chi<2\nactions.rskless+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2\nactions.rskless+=/rising_sun_kick,cycle_targets=1\n\n# Serenity priority\nactions.serenity=rising_sun_kick,cycle_targets=1,if=active_enemies<3||prev_gcd.1.spinning_crane_kick\nactions.serenity+=/fists_of_fury,if=(buff.bloodlust.up&prev_gcd.1.rising_sun_kick)||buff.serenity.remains<1||(active_enemies>1&active_enemies<5)\nactions.serenity+=/fist_of_the_white_tiger,if=talent.hit_combo.enabled&energy.time_to_max<2&prev_gcd.1.blackout_kick&chi<=2\nactions.serenity+=/tiger_palm,if=talent.hit_combo.enabled&energy.time_to_max<1&prev_gcd.1.blackout_kick&chi.max-chi>=2\nactions.serenity+=/spinning_crane_kick,if=combo_strike&(active_enemies>=3||(talent.hit_combo.enabled&prev_gcd.1.blackout_kick)||(active_enemies=2&prev_gcd.1.blackout_kick))\nactions.serenity+=/blackout_kick,cycle_targets=1\n\nactions.st=whirling_dragon_punch\nactions.st+=/rising_sun_kick,cycle_targets=1,if=chi>=5\nactions.st+=/fists_of_fury\nactions.st+=/rising_sun_kick,cycle_targets=1\nactions.st+=/rushing_jade_wind,if=buff.rushing_jade_wind.down&active_enemies>1\nactions.st+=/reverse_harm,if=chi.max-chi>=2\nactions.st+=/fist_of_the_white_tiger,if=chi<=2\nactions.st+=/energizing_elixir,if=chi<=3&energy<50\nactions.st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.react\nactions.st+=/blackout_kick,cycle_targets=1,if=combo_strike&(cooldown.rising_sun_kick.remains>3||chi>=3)&(cooldown.fists_of_fury.remains>4||chi>=4||(chi=2&prev_gcd.1.tiger_palm))\nactions.st+=/chi_wave\nactions.st+=/chi_burst,if=chi.max-chi>=1&active_enemies=1||chi.max-chi>=2\nactions.st+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.max-chi>=2\nactions.st+=/flying_serpent_kick,if=prev_gcd.1.blackout_kick&chi>3,interrupt=1\n\nactions.tod=touch_of_death,if=equipped.cyclotronic_blast&target.time_to_die>9&cooldown.cyclotronic_blast.remains<=2\nactions.tod+=/touch_of_death,if=!equipped.cyclotronic_blast&equipped.dribbling_inkpod&time_to_die>9&(target.time_to_pct_30>=130||target.time_to_pct_30<8)\nactions.tod+=/touch_of_death,if=!equipped.cyclotronic_blast&!equipped.dribbling_inkpod&time_to_die>9",
				},
				["Shadow"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200124,
					["author"] = "SimC",
					["desc"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/\n# January 21, 2020\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n# - Converted target.time_to_die to time_to_die where applicable.",
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
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.harvested_thoughts.up & cooldown.void_bolt.remains >= 1.5 & azerite.searing_dialogue.rank >= 1",
								["action"] = "mind_sear",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 || cooldown.shadow_word_death.charges = 2 || ( cooldown.shadow_word_death.charges = 1 & cooldown.shadow_word_death.remains < gcd.max )",
								["action"] = "shadow_word_death",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10",
								["action"] = "dark_void",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.mindbender.enabled || ( buff.voidform.stack > 18 || time_to_die < 15 )",
								["action"] = "mindbender",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.voidform.up || ( cooldown.shadow_word_death.charges = 2 & buff.voidform.stack < 15 )",
								["action"] = "shadow_word_death",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 5 & raid_event.adds.duration < 20",
								["action"] = "shadow_crash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.dots_up & ( ( raid_event.movement.in > cast_time + 0.5 & raid_event.movement.in < 4 ) || ! talent.shadow_word_void.enabled || buff.voidform.down || buff.voidform.stack > 14 & ( insanity < 70 || charges_fractional > 1.33 ) || buff.voidform.stack <= 14 & ( insanity < 60 || charges_fractional > 1.33 ) )",
								["action"] = "mind_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "dot.shadow_word_pain.remains > 4 & dot.vampiric_touch.remains > 4 & buff.voidform.up",
								["action"] = "void_torrent",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time_to_die > 4 & ! talent.misery.enabled & ! talent.dark_void.enabled",
								["action"] = "shadow_word_pain",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time_to_die > 6 || ( talent.misery.enabled & dot.shadow_word_pain.refreshable )",
								["action"] = "vampiric_touch",
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
								["action"] = "bag_of_tricks",
								["enabled"] = true,
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
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "floor ( ( 4.5 + azerite.whispers_of_the_damned.rank ) % ( 1 + 0.27 * azerite.searing_dialogue.rank ) )",
								["var_name"] = "mind_blast_targets",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.07 * azerite.death_throes.rank + 0.2 * azerite.thought_harvester.rank ) * ( 1 - 0.09 * azerite.thought_harvester.rank * azerite.searing_dialogue.rank )",
								["var_name"] = "swp_trait_ranks_check",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.04 * azerite.thought_harvester.rank - 0.05 * azerite.spiteful_apparitions.rank )",
								["var_name"] = "vt_trait_ranks_check",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( 1 - 0.07 * azerite.death_throes.rank - 0.03 * azerite.thought_harvester.rank - 0.055 * azerite.spiteful_apparitions.rank ) * ( 1 - 0.027 * azerite.thought_harvester.rank * azerite.searing_dialogue.rank )",
								["var_name"] = "vt_mis_trait_ranks_check",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 - 0.014 * azerite.searing_dialogue.rank",
								["var_name"] = "vt_mis_sd_check",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadowform.up",
								["action"] = "shadowform",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear < 2 || azerite.thought_harvester.rank = 0",
								["action"] = "mind_blast",
							}, -- [9]
							{
								["action"] = "vampiric_touch",
								["enabled"] = true,
							}, -- [10]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "( buff.voidform.stack > 20 & insanity <= 50 ) || buff.voidform.stack > ( 26 + 7 * buff.bloodlust.up ) || ( current_insanity_drain * ( ( gcd.max * 2 ) + action.mind_blast.cast_time ) ) > insanity",
								["action"] = "memory_of_lucid_dreams",
							}, -- [1]
							{
								["action"] = "blood_of_the_enemy",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 15",
								["action"] = "guardian_of_azeroth",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear >= 2 || raid_event.adds.in > 60",
								["action"] = "focused_azerite_beam",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.mind_sear >= 2 || raid_event.adds.in > 60",
								["action"] = "purifying_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "concentrated_flame",
								["criteria"] = "time <= 10 || ( buff.chorus_of_insanity.stack >= 15 & buff.voidform.up ) || full_recharge_time < gcd || time_to_die < 5",
								["line_cd"] = "6",
							}, -- [6]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "reaping_flames",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.voidform.up & buff.chorus_of_insanity.stack > 20 ) || azerite.chorus_of_insanity.rank = 0",
								["action"] = "call_action_list",
								["list_name"] = "crit_cds",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
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
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "shadow_word_death",
								["criteria"] = "time_to_die < 3 || buff.voidform.down",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.stack > 10 + ( 10 * buff.bloodlust.up )",
								["action"] = "surrender_to_madness",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 10 & ( dot.shadow_word_pain.refreshable || time_to_die > 30 )",
								["action"] = "dark_void",
							}, -- [9]
							{
								["action"] = "mindbender",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "mind_blast",
								["criteria"] = "spell_targets.mind_sear < variable.mind_blast_targets",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.adds.in > 5 & raid_event.adds.duration < 2 ) || raid_event.adds.duration > 2",
								["action"] = "shadow_crash",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "shadow_word_pain",
								["criteria"] = "! talent.misery.enabled & refreshable & time_to_die > ( ( - 1.2 + 3.3 * spell_targets.mind_sear ) * variable.swp_trait_ranks_check * ( 1 - 0.012 * azerite.searing_dialogue.rank * spell_targets.mind_sear ) )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "vampiric_touch",
								["criteria"] = "refreshable & time_to_die > ( ( 1 + 3.3 * spell_targets.mind_sear ) * variable.vt_trait_ranks_check * ( 1 + 0.10 * azerite.searing_dialogue.rank * spell_targets.mind_sear ) )",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "vampiric_touch",
								["criteria"] = "dot.shadow_word_pain.refreshable & ( talent.misery.enabled & time_to_die > ( ( 1.0 + 2.0 * spell_targets.mind_sear ) * variable.vt_mis_trait_ranks_check * ( variable.vt_mis_sd_check * spell_targets.mind_sear ) ) )",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.voidform.up",
								["action"] = "void_torrent",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "mind_sear",
								["interrupt_if"] = "ticks>=2",
								["interrupt_immediate"] = "1",
								["criteria"] = "spell_targets.mind_sear > 1",
								["chain"] = "1",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "mind_flay",
								["interrupt_if"] = "ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)",
								["interrupt_immediate"] = "1",
								["chain"] = "1",
							}, -- [18]
							{
								["action"] = "shadow_word_pain",
								["enabled"] = true,
							}, -- [19]
						},
						["crit_cds"] = {
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [2]
						},
					},
					["version"] = 20200124,
					["warnings"] = "Imported 6 action lists.\n",
					["spec"] = 258,
					["profile"] = "# Shadow Priest\n# https://github.com/simulationcraft/simc/\n# January 21, 2020\n\n# Changes:\n# - Added Silence.\n# - Converted target_if syntax.\n# - Converted target.time_to_die to time_to_die where applicable.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/variable,name=mind_blast_targets,op=set,value=floor((4.5+azerite.whispers_of_the_damned.rank)%(1+0.27*azerite.searing_dialogue.rank))\nactions.precombat+=/variable,name=swp_trait_ranks_check,op=set,value=(1-0.07*azerite.death_throes.rank+0.2*azerite.thought_harvester.rank)*(1-0.09*azerite.thought_harvester.rank*azerite.searing_dialogue.rank)\nactions.precombat+=/variable,name=vt_trait_ranks_check,op=set,value=(1-0.04*azerite.thought_harvester.rank-0.05*azerite.spiteful_apparitions.rank)\nactions.precombat+=/variable,name=vt_mis_trait_ranks_check,op=set,value=(1-0.07*azerite.death_throes.rank-0.03*azerite.thought_harvester.rank-0.055*azerite.spiteful_apparitions.rank)*(1-0.027*azerite.thought_harvester.rank*azerite.searing_dialogue.rank)\nactions.precombat+=/variable,name=vt_mis_sd_check,op=set,value=1-0.014*azerite.searing_dialogue.rank\nactions.precombat+=/shadowform,if=!buff.shadowform.up\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/mind_blast,if=spell_targets.mind_sear<2||azerite.thought_harvester.rank=0\nactions.precombat+=/vampiric_touch\n\n# Executed every time the actor is available.\nactions=silence\nactions+=/use_items\nactions+=/potion,if=buff.bloodlust.react||time_to_die<=80||target.health.pct<35\nactions+=/variable,name=dots_up,op=set,value=dot.shadow_word_pain.ticking&dot.vampiric_touch.ticking\nactions+=/fireblood,if=buff.voidform.up\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/ancestral_call,if=buff.voidform.up\nactions+=/bag_of_tricks\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single,if=active_enemies=1\n\n+ # Use Memory of Lucid Dreams right before you are about to fall out of Voidform\nactions.cds=memory_of_lucid_dreams,if=(buff.voidform.stack>20&insanity<=50)||buff.voidform.stack>(26+7*buff.bloodlust.up)||(current_insanity_drain*((gcd.max*2)+action.mind_blast.cast_time))>insanity\nactions.cds+=/blood_of_the_enemy\nactions.cds+=/guardian_of_azeroth,if=buff.voidform.stack>15\nactions.cds+=/focused_azerite_beam,if=spell_targets.mind_sear>=2||raid_event.adds.in>60\nactions.cds+=/purifying_blast,if=spell_targets.mind_sear>=2||raid_event.adds.in>60\n# Wait at least 6s between casting CF. Use the first cast ASAP to get it on CD, then every subsequent cast should be used when Chorus of Insanity is active or it will recharge in the next gcd, or the target is about to die.\nactions.cds+=/concentrated_flame,line_cd=6,if=time<=10||(buff.chorus_of_insanity.stack>=15&buff.voidform.up)||full_recharge_time<gcd||time_to_die<5\nactions.cds+=/ripple_in_space\nactions.cds+=/reaping_flames\nactions.cds+=/worldvein_resonance\n# Use these cooldowns in between your 1st and 2nd Void Bolt in your 2nd Voidform when you have Chorus of Insanity active\nactions.cds+=/call_action_list,name=crit_cds,if=(buff.voidform.up&buff.chorus_of_insanity.stack>20)||azerite.chorus_of_insanity.rank=0\n# Default fallback for usable items: Use on cooldown.\nactions.cds+=/use_items\n\nactions.cleave=void_eruption\nactions.cleave+=/dark_ascension,if=buff.voidform.down\nactions.cleave+=/vampiric_touch,if=!ticking&azerite.thought_harvester.rank>=1\nactions.cleave+=/mind_sear,if=buff.harvested_thoughts.up\nactions.cleave+=/void_bolt\nactions.cleave+=/call_action_list,name=cds\nactions.cleave+=/shadow_word_death,cycle_targets=1,if=time_to_die<3||buff.voidform.down\nactions.cleave+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\n# Use Dark Void on CD unless adds are incoming in 10s or less.\nactions.cleave+=/dark_void,if=raid_event.adds.in>10&(dot.shadow_word_pain.refreshable||time_to_die>30)\nactions.cleave+=/mindbender\nactions.cleave+=/mind_blast,cycle_targets=1,if=spell_targets.mind_sear<variable.mind_blast_targets\nactions.cleave+=/shadow_crash,if=(raid_event.adds.in>5&raid_event.adds.duration<2)||raid_event.adds.duration>2\nactions.cleave+=/shadow_word_pain,cycle_targets=1,if=!talent.misery.enabled&refreshable&time_to_die>((-1.2+3.3*spell_targets.mind_sear)*variable.swp_trait_ranks_check*(1-0.012*azerite.searing_dialogue.rank*spell_targets.mind_sear))\nactions.cleave+=/vampiric_touch,cycle_targets=1,if=refreshable&time_to_die>((1+3.3*spell_targets.mind_sear)*variable.vt_trait_ranks_check*(1+0.10*azerite.searing_dialogue.rank*spell_targets.mind_sear))\nactions.cleave+=/vampiric_touch,cycle_targets=1,if=dot.shadow_word_pain.refreshable&(talent.misery.enabled&time_to_die>((1.0+2.0*spell_targets.mind_sear)*variable.vt_mis_trait_ranks_check*(variable.vt_mis_sd_check*spell_targets.mind_sear)))\nactions.cleave+=/void_torrent,if=buff.voidform.up\nactions.cleave+=/mind_sear,if=spell_targets.mind_sear>1,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2\nactions.cleave+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.cleave+=/shadow_word_pain\n\nactions.crit_cds=use_item,name=azsharas_font_of_power\nactions.crit_cds+=/use_item,effect_name=cyclotronic_blast\n\nactions.single=void_eruption\nactions.single+=/dark_ascension,if=buff.voidform.down\nactions.single+=/void_bolt\nactions.single+=/call_action_list,name=cds\n# Use Mind Sear on ST only if you get a Thought Harvester Proc with at least 1 Searing Dialogue Trait.\nactions.single+=/mind_sear,if=buff.harvested_thoughts.up&cooldown.void_bolt.remains>=1.5&azerite.searing_dialogue.rank>=1\n# Use SWD before capping charges, or the target is about to die.\nactions.single+=/shadow_word_death,if=target.time_to_die<3||cooldown.shadow_word_death.charges=2||(cooldown.shadow_word_death.charges=1&cooldown.shadow_word_death.remains<gcd.max)\nactions.single+=/surrender_to_madness,if=buff.voidform.stack>10+(10*buff.bloodlust.up)\n+ # Use Dark Void on CD unless adds are incoming in 10s or less.\nactions.single+=/dark_void,if=raid_event.adds.in>10\n# Use Mindbender at 19 or more stacks, or if the target will die in less than 15s.\nactions.single+=/mindbender,if=talent.mindbender.enabled||(buff.voidform.stack>18||time_to_die<15)\nactions.single+=/shadow_word_death,if=!buff.voidform.up||(cooldown.shadow_word_death.charges=2&buff.voidform.stack<15)\n# Use Shadow Crash on CD unless there are adds incoming.\nactions.single+=/shadow_crash,if=raid_event.adds.in>5&raid_event.adds.duration<20\n# Bank the Shadow Word: Void charges for a bit to try and avoid overcapping on Insanity.\nactions.single+=/mind_blast,if=variable.dots_up&((raid_event.movement.in>cast_time+0.5&raid_event.movement.in<4)||!talent.shadow_word_void.enabled||buff.voidform.down||buff.voidform.stack>14&(insanity<70||charges_fractional>1.33)||buff.voidform.stack<=14&(insanity<60||charges_fractional>1.33))\nactions.single+=/void_torrent,if=dot.shadow_word_pain.remains>4&dot.vampiric_touch.remains>4&buff.voidform.up\nactions.single+=/shadow_word_pain,if=refreshable&time_to_die>4&!talent.misery.enabled&!talent.dark_void.enabled\nactions.single+=/vampiric_touch,if=refreshable&time_to_die>6||(talent.misery.enabled&dot.shadow_word_pain.refreshable)\nactions.single+=/mind_flay,chain=1,interrupt_immediate=1,interrupt_if=ticks>=2&(cooldown.void_bolt.up||cooldown.mind_blast.up)\nactions.single+=/shadow_word_pain",
				},
				["Elemental"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190810.2145,
					["spec"] = 262,
					["desc"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 21:00\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.\n# - Integrate funneling into the APL (merges lists in current SimC).",
					["profile"] = "# Elemental Shaman\n# https://github.com/simulationcraft/simc/\n# August 10, 2019 - 21:00\n\n# Changes:\n# - Use X_elemental.up rather than checking cooldowns to see if elementals are active.\n# - Disabled Earth Elemental entries.\n# - Remove Ascendance time/BL check.\n# - Add Eye of the Storm / Meteor.\n# - Integrate funneling into the APL (merges lists in current SimC).\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\n# actions.precombat+=/earth_elemental,if=!talent.primal_elementalist.enabled\n\n# Use Stormkeeper precombat unless some adds will spawn soon.\nactions.precombat+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n\nactions.precombat+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions.precombat+=/storm_elemental,if=talent.storm_elemental.enabled\nactions.precombat+=/potion\nactions.precombat+=/elemental_blast,if=talent.elemental_blast.enabled\nactions.precombat+=/lava_burst,if=!talent.elemental_blast.enabled&spell_targets.chain_lightning<3\nactions.precombat+=/chain_lightning,if=spell_targets.chain_lightning>2\n\n# Executed every time the actor is available.\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions=bloodlust,if=azerite.ancestral_resonance.enabled\n# In-combat potion is preferentially linked to your Elemental, unless combat will end shortly\nactions+=/potion,if=expected_combat_length-time<30||fire_elemental.up||storm_elemental.up\n# Interrupt of casts.\nactions+=/wind_shear\nactions+=/totem_mastery,if=talent.totem_mastery.enabled&buff.resonance_totem.remains<2\nactions+=/use_items\nactions+=/fire_elemental,if=!talent.storm_elemental.enabled\nactions+=/storm_elemental,if=talent.storm_elemental.enabled&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)&(!talent.ascendance.enabled||!cooldown.ascendance.up)\n# actions+=/earth_elemental,if=!talent.primal_elementalist.enabled||talent.primal_elementalist.enabled&(fire_elemental.down&!talent.storm_elemental.enabled||storm_elemental.down&talent.storm_elemental.enabled)\nactions+=/concentrated_flame\nactions+=/blood_of_the_enemy\nactions+=/guardian_of_azeroth\nactions+=/focused_azerite_beam\nactions+=/purifying_blast\nactions+=/the_unbound_force\nactions+=/memory_of_lucid_dreams\nactions+=/ripple_in_space\nactions+=/worldvein_resonance\nactions+=/blood_fury,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/berserking,if=!talent.ascendance.enabled||buff.ascendance.up\nactions+=/fireblood,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/ancestral_call,if=!talent.ascendance.enabled||buff.ascendance.up||cooldown.ascendance.remains>50\nactions+=/eye_of_the_storm,if=storm_elemental.up&buff.call_lightning.remains>=8\nactions+=/meteor\nactions+=/run_action_list,name=aoe,if=active_enemies>2&!funneling\nactions+=/run_action_list,name=single_target\n\n# Multi target action priority list\nactions.aoe=stormkeeper,if=talent.stormkeeper.enabled\n# Spread Flame Shock in <= 4 target fights, but not during SE uptime,unless you're fighting 3 targets and have less than 14 Wind Gust stacks.\nactions.aoe+=/flame_shock,cycle_targets=1,if=refreshable&(spell_targets.chain_lightning<(5-!talent.totem_mastery.enabled)||!talent.storm_elemental.enabled&(fire_elemental.remains>(14*spell_haste)||cooldown.fire_elemental.remains<(24-14*spell_haste)))&(!talent.storm_elemental.enabled||storm_elemental.down||spell_targets.chain_lightning=3&buff.wind_gust.stack<14)\nactions.aoe+=/ascendance,if=talent.ascendance.enabled&(talent.storm_elemental.enabled&storm_elemental.down&cooldown.storm_elemental.remains>15||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\nactions.aoe+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled\n\n# Try to game Earthquake with Master of the Elements buff when fighting 3 targets. Don't overcap Maelstrom!\nactions.aoe+=/earthquake,if=!talent.master_of_the_elements.enabled || buff.stormkeeper.up || maelstrom>=(100-4*spell_targets.chain_lightning) || buff.master_of_the_elements.up || spell_targets.chain_lightning>3\nactions.aoe+=/earthquake,if=(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||buff.lava_surge.down||spell_targets.earthquake>=4)&(buff.stormkeeper.up||maelstrom>=(100-4*spell_targets.chain_lightning)||buff.master_of_the_elements.up||spell_targets.chain_lightning>3)\n# Make sure you don't lose a Stormkeeper.\nactions.aoe+=/chain_lightning,if=buff.stormkeeper.remains<3*gcd*buff.stormkeeper.stack\n\n# Only cast Lava Burst on three targets if it is an instant and Storm Elemental is NOT active.\nactions.aoe+=/lava_burst,if=buff.lava_surge.up&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)&dot.flame_shock.ticking\nactions.aoe+=/icefury,if=spell_targets.chain_lightning<4&!buff.ascendance.up\nactions.aoe+=/frost_shock,if=spell_targets.chain_lightning<4&buff.icefury.up&!buff.ascendance.up\n\n# Use Elemental Blast against up to 3 targets as long as Storm Elemental is not active.\nactions.aoe+=/elemental_blast,if=talent.elemental_blast.enabled&spell_targets.chain_lightning<4&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.aoe+=/lava_beam,if=talent.ascendance.enabled\nactions.aoe+=/chain_lightning\nactions.aoe+=/lava_burst,moving=1,if=talent.ascendance.enabled\nactions.aoe+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.aoe+=/frost_shock,moving=1\n\n# Default Action Priority List\n# We don't need to support 'variable.funneling' -- addon has 'funneling' internally, based on spec settings.\n# actions.single_target=variable,name=funneling,value=active_enemies>1&(spell_targets.chain_lightning<2||spell_targets.lava_beam<2)\n# Ensure FS is active unless you have 14 or more stacks of Wind Gust from Storm Elemental. (Edge case: upcoming Asc but active SE; don't )\nactions.single_target=flame_shock,cycle_targets=1,if=(!ticking||talent.storm_elemental.enabled&cooldown.storm_elemental.remains<2*gcd||dot.flame_shock.remains<=gcd||talent.ascendance.enabled&dot.flame_shock.remains<(cooldown.ascendance.remains+buff.ascendance.duration)&cooldown.ascendance.remains<4&(!talent.storm_elemental.enabled||talent.storm_elemental.enabled&storm_elemental.down))&(buff.wind_gust.stack<14||azerite.igneous_potential.rank>=2||buff.lava_surge.up||!buff.bloodlust.up)&!buff.surge_of_power.up\n# Use Ascendance after you've spent all Lava Burst charges and only if neither Storm Elemental nor Icefury are currently active.\nactions.single_target+=/ascendance,if=talent.ascendance.enabled&cooldown.lava_burst.remains>0&(storm_elemental.down||!talent.storm_elemental.enabled)&(!talent.icefury.enabled||!buff.icefury.up&!cooldown.icefury.up)\n# Don't use Elemental Blast if you could cast a Master of the Elements empowered Earth Shock instead. Don't cast Elemental Blast during Storm Elemental unless you have 3x Natural Harmony. But in this case stop using Elemental Blast once you reach 14 stacks of Wind Gust.\nactions.single_target+=/elemental_blast,if=talent.elemental_blast.enabled&(talent.master_of_the_elements.enabled&buff.master_of_the_elements.up&maelstrom<60||!talent.master_of_the_elements.enabled)&(!(storm_elemental.up&talent.storm_elemental.enabled)||azerite.natural_harmony.rank=3&buff.wind_gust.stack<14)\n# Keep SK for large or soon add waves. Unless you have Surge of Power, in which case you want to double buff Lightning Bolt by pooling Maelstrom beforehand. Example sequence: 100MS, ES, SK, LB, LvB, ES, LB\nactions.single_target+=/stormkeeper,if=talent.stormkeeper.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)&(!talent.surge_of_power.enabled||buff.surge_of_power.up||maelstrom>=44)\nactions.single_target+=/liquid_magma_totem,if=talent.liquid_magma_totem.enabled&(raid_event.adds.count<3||raid_event.adds.in>50)\n# Combine Stormkeeper with Master of the Elements or Surge of Power unless you have the Lava Shock trait and multiple stacks, unless funneling.\nactions.single_target+=/lightning_bolt,if=!funneling&buff.stormkeeper.up&spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack)<26&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n# Same, but when funneling, cast LB unless there are 6+ targets.\nactions.single_target+=/chain_lightning,if=funneling&buff.stormkeeper.up&(azerite.lava_shock.rank*buff.lava_shock.stack)<36&(buff.master_of_the_elements.up&!talent.surge_of_power.enabled||buff.surge_of_power.up)\n# If not funneling, use Earthquake versus 2 targets, unless you have Lava Shock. Use Earthquake versus 1 target if you have Tectonic Thunder 3 times and NO Surge of Power enabled and NO Lava Shock.\nactions.single_target+=/earthquake,if=!funneling&((spell_targets.chain_lightning>1||azerite.tectonic_thunder.rank>=3&!talent.surge_of_power.enabled&azerite.lava_shock.rank<1)&azerite.lava_shock.rank*buff.lava_shock.stack<(36+3*azerite.tectonic_thunder.rank*spell_targets.chain_lightning)&(!talent.surge_of_power.enabled||!dot.flame_shock.refreshable||storm_elemental.up)&(!talent.master_of_the_elements.enabled||buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled))\n# Cast Earth Shock with Master of the Elements talent but no active Surge of Power buff, and active Stormkeeper buff and Lava Burst coming off CD within the next GCD, and either active Master of the Elements buff, or no available Lava Burst while near MS cap, or single target and multiple Lava Shock traits and many stacks.\nactions.single_target+=/earth_shock,if=!funneling&!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled||spell_targets.chain_lightning<2&(azerite.lava_shock.rank*buff.lava_shock.stack<26)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)\n# Same as previous, but without (re)checking CL targets while funneling.\nactions.single_target+=/earth_shock,if=funneling&!buff.surge_of_power.up&talent.master_of_the_elements.enabled&(buff.master_of_the_elements.up||cooldown.lava_burst.remains>0&maelstrom>=92+30*talent.call_the_thunder.enabled||(azerite.lava_shock.rank*buff.lava_shock.stack<36)&buff.stormkeeper.up&cooldown.lava_burst.remains<=gcd)\n# Current Elemental APL won't use Lasso while funneling, so I'm respecting that here.\nactions.single_target+=/lightning_lasso\n# You know what? I had some short explanation here once. But then the condition grew, and I had to split the one Earth Shock line into four...so you have to deal with this abomination now: Cast Earth Shock without Master of the Elements talent, and without having triple Igneous Potential and active Ascendance, and active Stormkeeper buff or near MS cap, or Storm Elemental is inactive, and we can't expect to get an additional use of Storm Elemental in the remaining fight from Surge of Power.\nactions.single_target+=/earth_shock,if=!talent.master_of_the_elements.enabled&!(azerite.igneous_potential.rank>2&buff.ascendance.up)&(buff.stormkeeper.up||maelstrom>=90+30*talent.call_the_thunder.enabled||!(storm_elemental.up&talent.storm_elemental.enabled)&expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)>=30*(1+(azerite.echo_of_the_elementals.rank>=2)))\n# Use Earth Shock if Surge of Power is talented, but neither it nor a DPS Elemental is active at the moment, and Lava Burst is ready or will be ready within the next GCD.\nactions.single_target+=/earth_shock,if=talent.surge_of_power.enabled&!buff.surge_of_power.up&cooldown.lava_burst.remains<=gcd&(!talent.storm_elemental.enabled&!(fire_elemental.up)||talent.storm_elemental.enabled&!(storm_elemental.up))\nactions.single_target+=/lightning_lasso,if=dot.flame_shock.ticking||cooldown.flame_shock.remains\n# If not funneling, spam Lightning Bolts during Storm Elemental duration, if you don't have Igneous Potential or have it only once, and don't use Lightning Bolt during Bloodlust if you have a Lava Surge Proc.\nactions.single_target+=/lightning_bolt,if=!funneling&storm_elemental.up&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2||!buff.lava_surge.up&buff.bloodlust.up)\n# If not funneling, cast Lightning Bolt regardless of the previous condition if you'd lose a Stormkeeper stack or have Stormkeeper and Master of the Elements active.\nactions.single_target+=/lightning_bolt,if=!funneling&(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\n# If funneling, spam Chain Lightning during Storm Elemental duration, if you don't have Igneous Potential or have it only once, and don't use Lightning Bolt during Bloodlust if you have a Lava Surge Proc.\nactions.single_target+=/chain_lightning,if=funneling&storm_elemental.up&talent.storm_elemental.enabled&(azerite.igneous_potential.rank<2||!buff.lava_surge.up&buff.bloodlust.up)\n# Cast Chain Lightning regardless of the previous condition if you'd lose a Stormkeeper stack or have Stormkeeper and Master of the Elements active.\nactions.single_target+=/chain_lightning,if=funneling&(buff.stormkeeper.remains<1.1*gcd*buff.stormkeeper.stack||buff.stormkeeper.up&buff.master_of_the_elements.up)\n# Use Frost Shock with Icefury and Master of the Elements.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&talent.master_of_the_elements.enabled&buff.icefury.up&buff.master_of_the_elements.up\nactions.single_target+=/lava_burst,if=buff.ascendance.up\n# Utilize Surge of Power to spread Flame Shock if multiple enemies are present.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&active_enemies>1&buff.surge_of_power.up\n# Use Lava Burst with Surge of Power if the last potential usage of Storm Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.storm_elemental.remains)%150))<(expected_combat_length-time-cooldown.storm_elemental.remains-150*floor((expected_combat_length-time-cooldown.storm_elemental.remains)%150)))\n# Use Lava Burst with Surge of Power if the last potential usage of Fire Elemental hasn't a full duration OR if you could get another usage of the DPS Elemental if the remaining fight was 16% longer.\nactions.single_target+=/lava_burst,if=!talent.storm_elemental.enabled&cooldown_react&buff.surge_of_power.up&(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)<30*(1+(azerite.echo_of_the_elementals.rank>=2))||(1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains-150*floor((1.16*(expected_combat_length-time)-cooldown.fire_elemental.remains)%150))<(expected_combat_length-time-cooldown.fire_elemental.remains-150*floor((expected_combat_length-time-cooldown.fire_elemental.remains)%150)))\nactions.single_target+=/lightning_bolt,if=buff.surge_of_power.up\nactions.single_target+=/lava_burst,if=cooldown_react&!talent.master_of_the_elements.enabled\n# Slightly game Icefury buff to hopefully buff some empowered Frost Shocks with Master of the Elements.\nactions.single_target+=/icefury,if=talent.icefury.enabled&!(maelstrom>75&cooldown.lava_burst.remains<=0)&(!talent.storm_elemental.enabled||storm_elemental.down)\nactions.single_target+=/lava_burst,if=cooldown_react&charges>talent.echo_of_the_elements.enabled\n# Slightly delay using Icefury empowered Frost Shocks to empower them with Master of the Elements too.\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&buff.icefury.remains<1.1*gcd*buff.icefury.stack\nactions.single_target+=/lava_burst,if=cooldown_react\n# Don't accidentally use Surge of Power with Flame Shock during single target.\nactions.single_target+=/flame_shock,cycle_targets=1,if=refreshable&!buff.surge_of_power.up\nactions.single_target+=/totem_mastery,if=talent.totem_mastery.enabled&(buff.resonance_totem.remains<6||(buff.resonance_totem.remains<(buff.ascendance.duration+cooldown.ascendance.remains)&cooldown.ascendance.remains<15))\nactions.single_target+=/frost_shock,if=talent.icefury.enabled&buff.icefury.up&(buff.icefury.remains<gcd*4*buff.icefury.stack||buff.stormkeeper.up||!talent.master_of_the_elements.enabled)\n# The default SimC APL would not cast CL while funneling, but we need it for target detection and MS.\nactions.single_target+=/chain_lightning,if=buff.tectonic_thunder.up&!buff.stormkeeper.up&spell_targets.chain_lightning>1\nactions.single_target+=/lightning_bolt\nactions.single_target+=/flame_shock,moving=1,cycle_targets=1,if=refreshable\nactions.single_target+=/flame_shock,moving=1,if=movement.distance>6\n# Frost Shock is our movement filler.\nactions.single_target+=/frost_shock,moving=1",
					["version"] = 20190810.2145,
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
								["moving"] = "1",
								["action"] = "lava_burst",
								["criteria"] = "talent.ascendance.enabled",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["moving"] = "1",
								["criteria"] = "refreshable",
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
								["criteria"] = "( ! ticking || talent.storm_elemental.enabled & cooldown.storm_elemental.remains < 2 * gcd || dot.flame_shock.remains <= gcd || talent.ascendance.enabled & dot.flame_shock.remains < ( cooldown.ascendance.remains + buff.ascendance.duration ) & cooldown.ascendance.remains < 4 & ( ! talent.storm_elemental.enabled || talent.storm_elemental.enabled & storm_elemental.down ) ) & ( buff.wind_gust.stack < 14 || azerite.igneous_potential.rank >= 2 || buff.lava_surge.up || ! buff.bloodlust.up ) & ! buff.surge_of_power.up",
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
								["criteria"] = "! funneling & buff.stormkeeper.up & spell_targets.chain_lightning < 2 & ( azerite.lava_shock.rank * buff.lava_shock.stack ) < 26 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "lightning_bolt",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "funneling & buff.stormkeeper.up & ( azerite.lava_shock.rank * buff.lava_shock.stack ) < 36 & ( buff.master_of_the_elements.up & ! talent.surge_of_power.enabled || buff.surge_of_power.up )",
								["action"] = "chain_lightning",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & ( ( spell_targets.chain_lightning > 1 || azerite.tectonic_thunder.rank >= 3 & ! talent.surge_of_power.enabled & azerite.lava_shock.rank < 1 ) & azerite.lava_shock.rank * buff.lava_shock.stack < ( 36 + 3 * azerite.tectonic_thunder.rank * spell_targets.chain_lightning ) & ( ! talent.surge_of_power.enabled || ! dot.flame_shock.refreshable || storm_elemental.up ) & ( ! talent.master_of_the_elements.enabled || buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled ) )",
								["action"] = "earthquake",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & ! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || spell_targets.chain_lightning < 2 & ( azerite.lava_shock.rank * buff.lava_shock.stack < 26 ) & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd )",
								["action"] = "earth_shock",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "funneling & ! buff.surge_of_power.up & talent.master_of_the_elements.enabled & ( buff.master_of_the_elements.up || cooldown.lava_burst.remains > 0 & maelstrom >= 92 + 30 * talent.call_the_thunder.enabled || ( azerite.lava_shock.rank * buff.lava_shock.stack < 36 ) & buff.stormkeeper.up & cooldown.lava_burst.remains <= gcd )",
								["action"] = "earth_shock",
							}, -- [10]
							{
								["action"] = "lightning_lasso",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! talent.master_of_the_elements.enabled & ! ( azerite.igneous_potential.rank > 2 & buff.ascendance.up ) & ( buff.stormkeeper.up || maelstrom >= 90 + 30 * talent.call_the_thunder.enabled || ! ( storm_elemental.up & talent.storm_elemental.enabled ) & expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) >= 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) )",
								["action"] = "earth_shock",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.surge_of_power.enabled & ! buff.surge_of_power.up & cooldown.lava_burst.remains <= gcd & ( ! talent.storm_elemental.enabled & ! ( fire_elemental.up ) || talent.storm_elemental.enabled & ! ( storm_elemental.up ) )",
								["action"] = "earth_shock",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "dot.flame_shock.ticking || cooldown.flame_shock.remains",
								["action"] = "lightning_lasso",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & storm_elemental.up & talent.storm_elemental.enabled & ( azerite.igneous_potential.rank < 2 || ! buff.lava_surge.up & buff.bloodlust.up )",
								["action"] = "lightning_bolt",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! funneling & ( buff.stormkeeper.remains < 1.1 * gcd * buff.stormkeeper.stack || buff.stormkeeper.up & buff.master_of_the_elements.up )",
								["action"] = "lightning_bolt",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "funneling & storm_elemental.up & talent.storm_elemental.enabled & ( azerite.igneous_potential.rank < 2 || ! buff.lava_surge.up & buff.bloodlust.up )",
								["action"] = "chain_lightning",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "funneling & ( buff.stormkeeper.remains < 1.1 * gcd * buff.stormkeeper.stack || buff.stormkeeper.up & buff.master_of_the_elements.up )",
								["action"] = "chain_lightning",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & talent.master_of_the_elements.enabled & buff.icefury.up & buff.master_of_the_elements.up",
								["action"] = "frost_shock",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up",
								["action"] = "lava_burst",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & active_enemies > 1 & buff.surge_of_power.up",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.storm_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.storm_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.storm_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! talent.storm_elemental.enabled & cooldown_react & buff.surge_of_power.up & ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) < 30 * ( 1 + ( azerite.echo_of_the_elementals.rank >= 2 ) ) || ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains - 150 * floor ( ( 1.16 * ( expected_combat_length - time ) - cooldown.fire_elemental.remains ) % 150 ) ) < ( expected_combat_length - time - cooldown.fire_elemental.remains - 150 * floor ( ( expected_combat_length - time - cooldown.fire_elemental.remains ) % 150 ) ) )",
								["action"] = "lava_burst",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.surge_of_power.up",
								["action"] = "lightning_bolt",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & ! talent.master_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & ! ( maelstrom > 75 & cooldown.lava_burst.remains <= 0 ) & ( ! talent.storm_elemental.enabled || storm_elemental.down )",
								["action"] = "icefury",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & charges > talent.echo_of_the_elements.enabled",
								["action"] = "lava_burst",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & buff.icefury.remains < 1.1 * gcd * buff.icefury.stack",
								["action"] = "frost_shock",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react",
								["action"] = "lava_burst",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ! buff.surge_of_power.up",
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "talent.totem_mastery.enabled & ( buff.resonance_totem.remains < 6 || ( buff.resonance_totem.remains < ( buff.ascendance.duration + cooldown.ascendance.remains ) & cooldown.ascendance.remains < 15 ) )",
								["action"] = "totem_mastery",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "talent.icefury.enabled & buff.icefury.up & ( buff.icefury.remains < gcd * 4 * buff.icefury.stack || buff.stormkeeper.up || ! talent.master_of_the_elements.enabled )",
								["action"] = "frost_shock",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.tectonic_thunder.up & ! buff.stormkeeper.up & spell_targets.chain_lightning > 1",
								["action"] = "chain_lightning",
							}, -- [33]
							{
								["action"] = "lightning_bolt",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["moving"] = "1",
								["criteria"] = "refreshable",
							}, -- [35]
							{
								["enabled"] = true,
								["moving"] = "1",
								["action"] = "flame_shock",
								["criteria"] = "movement.distance > 6",
							}, -- [36]
							{
								["moving"] = "1",
								["action"] = "frost_shock",
								["enabled"] = true,
							}, -- [37]
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
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2 & ! funneling",
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
					["date"] = 20190401.1431,
					["spec"] = 103,
					["desc"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Feral.simc\n# April 1, 2019 - 09:40\n\n# Changes:\n# - Added Skull Bash.\n# - Placed Cat Form after Prowl since Prowl triggers Cat Form.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Check for target count for swipe_cat in generators list -- not just Scent of Blood.\n# - Added backup plan for opener.\n# - Using ShmooDude's edits.",
					["profile"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Feral.simc\n# April 1, 2019 - 09:40\n\n# Changes:\n# - Added Skull Bash.\n# - Placed Cat Form after Prowl since Prowl triggers Cat Form.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Check for target count for swipe_cat in generators list -- not just Scent of Blood.\n# - Added backup plan for opener.\n# - Using ShmooDude's edits.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/variable,name=rip_ticks,value=8\nactions.precombat+=/regrowth,if=talent.bloodtalons.enabled\nactions.precombat+=/prowl\nactions.precombat+=/cat_form\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/berserk\n\n# Executed every time the actor is available.\nactions=auto_attack,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/skull_bash\nactions+=/call_action_list,name=opener,if=!opener_done&(buff.berserk.up||buff.incarnation.up)\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/prowl,if=buff.jungle_stalker.remains<1\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/call_action_list,name=cooldowns\nactions+=/ferocious_bite,target_if=talent.sabertooth.enabled&combo_points>spell_targets.thrash_cat&dot.rip.ticking&dot.rip.remains<3&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\n# Handled by ShmooDude's logic inside Finishers.\n# actions+=/regrowth,if=combo_points=5&buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/call_action_list,name=finishers,if=combo_points>4\nactions+=/call_action_list,name=generators_aoe,if=combo_points<5&spell_targets.thrash_cat>1\nactions+=/call_action_list,name=generators,if=combo_points<5\n\nactions.cooldowns=berserk,if=energy>=30&(cooldown.tigers_fury.remains>5||cooldown.tigers_fury.remains<1)\nactions.cooldowns+=/incarnation,if=energy>=30\nactions.cooldowns+=/use_items,if=buff.tigers_fury.up\nactions.cooldowns+=/tigers_fury,if=energy.deficit>=50||buff.tigers_fury.down\nactions.cooldowns+=/berserking\nactions.cooldowns+=/pool_resource,for_next=1\nactions.cooldowns+=/feral_frenzy,if=combo_points=0\nactions.cooldowns+=/potion,name=battle_potion_of_agility,if=target.time_to_die<65||(time_to_die<180&(buff.berserk.up||buff.incarnation.up))\nactions.cooldowns+=/shadowmeld,if=combo_points<5&energy>=action.rake.cost&dot.rake.pmultiplier<2.1&buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.incarnation.enabled||cooldown.incarnation.remains>18)&!buff.incarnation.up\n\nactions.finishers=regrowth,if=buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.stack<2\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.down\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/primal_wrath,target_if=spell_targets.primal_wrath>1+talent.sabertooth.enabled\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,target_if=!talent.sabertooth.enabled&refreshable&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,target_if=talent.sabertooth.enabled&(!ticking||remains<=duration*0.3&persistent_multiplier>dot.rip.pmultiplier)&target.time_to_die>dot.rip.remains+variable.rip_ticks*(1+dot.rip.ticking*3)*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.remains<12\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/maim,if=buff.iron_jaws.up\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/ferocious_bite,max_energy=1\n\nactions.generators=variable,name=rake_ttd,value=(1+(spell_targets.thrash_cat-1)*!talent.brutal_slash.enabled)*action.rake.tick_time\nactions.generators+=/regrowth,if=talent.bloodtalons.enabled&buff.predatory_swiftness.up&buff.bloodtalons.down&combo_points=4&dot.rake.remains<4&target.time_to_die>dot.rake.remains+variable.rake_ttd\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,target_if=(!ticking||!talent.bloodtalons.enabled&refreshable)&target.time_to_die>dot.rake.remains+variable.rake_ttd\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,target_if=talent.bloodtalons.enabled&buff.bloodtalons.up&remains<=7&persistent_multiplier>dot.rake.pmultiplier*0.85&target.time_to_die>dot.rake.remains+variable.rake_ttd\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/brutal_slash,if=(buff.tigers_fury.up||(charges>=2&cooldown.tigers_fury.remains>full_recharge_time))&raid_event.adds.in>full_recharge_time\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/moonfire_cat,target_if=refreshable&target.time_to_die>remains+(2+2*(spell_targets.thrash_cat-1)*!talent.brutal_slash.enabled)*dot.moonfire_cat.tick_time\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=refreshable&(spell_targets.thrash_cat>1||(azerite.wild_fleshrending.enabled&target.time_to_die>remains+action.thrash_cat.tick_time))\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/shred,if=dot.rake.remains>(action.shred.cost+action.rake.cost-energy)%energy.regen||buff.clearcasting.react||!(target.time_to_die>dot.rake.remains+variable.rake_ttd)\n\nactions.generators_aoe=pool_resource,for_next=1\nactions.generators_aoe+=/thrash_cat,if=refreshable&spell_targets.thrash_cat>2||talent.scent_of_blood.enabled&buff.scent_of_blood.down&spell_targets.thrash_cat>3\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/brutal_slash,if=spell_targets.brutal_slash>desired_targets\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/swipe_cat,if=buff.scent_of_blood.up\n\nactions.opener=tigers_fury\nactions.opener+=/rake,if=!ticking||buff.prowl.up\nactions.opener+=/moonfire_cat,if=!ticking\nactions.opener+=/primal_wrath,if=active_enemies>1&combo_points>1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)\nactions.opener+=/rip,if=active_enemies=1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&dot.rake.ticking&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)",
					["version"] = 20190401.1431,
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
								["criteria"] = "! ticking",
								["action"] = "moonfire_cat",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & combo_points > 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
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
								["criteria"] = "! opener_done & ( buff.berserk.up || buff.incarnation.up )",
								["action"] = "call_action_list",
								["list_name"] = "opener",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.jungle_stalker.remains < 1",
								["action"] = "prowl",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up || buff.shadowmeld.up",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.sabertooth.enabled & combo_points > spell_targets.thrash_cat & dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["action"] = "ferocious_bite",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points > 4",
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & spell_targets.thrash_cat > 1",
								["action"] = "call_action_list",
								["list_name"] = "generators_aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5",
								["action"] = "call_action_list",
								["list_name"] = "generators",
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
								["value"] = "8",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "rip_ticks",
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
								["action"] = "cat_form",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [10]
						},
						["generators"] = {
							{
								["value"] = "( 1 + ( spell_targets.thrash_cat - 1 ) * ! talent.brutal_slash.enabled ) * action.rake.tick_time",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "rake_ttd",
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
								["potion"] = "battle_potion_of_agility",
								["action"] = "potion",
								["criteria"] = "target.time_to_die < 65 || ( time_to_die < 180 & ( buff.berserk.up || buff.incarnation.up ) )",
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
				["Enhancement"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20200124,
					["author"] = "SimulationCraft",
					["desc"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/\n# January 21, 2020\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Don't use Earth Elemental (save it for utility).",
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
						["cds"] = {
							{
								["enabled"] = false,
								["criteria"] = "azerite.ancestral_resonance.enabled",
								["action"] = "bloodlust",
							}, -- [1]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "berserking",
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "blood_fury",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "fireblood",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.cooldown_sync",
								["action"] = "ancestral_call",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.ascendance.up || ! talent.ascendance.enabled & feral_spirit.remains > 5 || target.time_to_die <= 60",
								["action"] = "potion",
							}, -- [8]
							{
								["action"] = "guardian_of_azeroth",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "feral_spirit",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 90 || active_enemies > 1",
								["action"] = "blood_of_the_enemy",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.strike.remains > 0",
								["action"] = "ascendance",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || ( target.time_to_die < 20 & debuff.razor_coral_debuff.stack > 2 )",
								["name"] = "ashvanes_razor_coral",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.stack > 2 & debuff.conductive_ink_debuff.down & ( buff.ascendance.remains > 10 || buff.molten_weapon.remains > 10 || buff.crackling_surge.remains > 10 || buff.icy_edge.remains > 10 || debuff.earthen_spike.remains > 6 )",
								["name"] = "ashvanes_razor_coral",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "( debuff.conductive_ink_debuff.up || buff.ascendance.remains > 10 || buff.molten_weapon.remains > 10 || buff.crackling_surge.remains > 10 || buff.icy_edge.remains > 10 || debuff.earthen_spike.remains > 6 ) & target.health.pct < 31",
								["name"] = "ashvanes_razor_coral",
							}, -- [15]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [16]
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
								["criteria"] = "buff.fury_of_air.up & spell_targets.fury_of_air_damage < ( 1 + variable.freezerburn_enabled )",
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
								["criteria"] = "active_enemies > 1",
								["action"] = "focused_azerite_beam",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "purifying_blast",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "ripple_in_space",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.landslide.enabled & ! buff.landslide.up & charges_fractional > 1.7",
								["action"] = "rockbiter",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_frost.remains <= 2 * gcd ) & talent.hailstorm.enabled & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_fire.remains <= 2 * gcd )",
								["action"] = "flametongue",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( azerite.natural_harmony.enabled & buff.natural_harmony_nature.remains <= 2 * gcd ) & maelstrom < 70",
								["action"] = "rockbiter",
							}, -- [17]
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
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 40",
								["action"] = "sundering",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 90 & ! buff.ascendance.up & ! buff.molten_weapon.up & ! buff.icy_edge.up & ! buff.crackling_surge.up & ! debuff.earthen_spike.up",
								["action"] = "focused_azerite_beam",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 60",
								["action"] = "purifying_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 60",
								["action"] = "ripple_in_space",
							}, -- [4]
							{
								["action"] = "thundercharge",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "reaping_flames",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.forceful_winds.enabled & active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.searing_assault.enabled",
								["action"] = "flametongue",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! azerite.primal_primer.enabled & talent.hot_hand.enabled & buff.hot_hand.react",
								["action"] = "lava_lash",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & variable.furyCheck_CL",
								["action"] = "crash_lightning",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "maelstrom < 70 & ! buff.strength_of_earth.up",
								["action"] = "rockbiter",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( talent.crashing_storm.enabled || talent.forceful_winds.enabled ) & variable.OCPool_CL",
								["action"] = "crash_lightning",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "variable.OCPool_LL & variable.furyCheck_LL",
								["action"] = "lava_lash",
							}, -- [15]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "rockbiter",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.hailstorm.enabled & buff.frostbrand.remains < 4.8 + gcd & variable.furyCheck_FB",
								["action"] = "frostbrand",
							}, -- [18]
							{
								["action"] = "flametongue",
								["enabled"] = true,
							}, -- [19]
						},
					},
					["version"] = 20200124,
					["warnings"] = "Imported 10 action lists.\n",
					["profile"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/\n# January 21, 2020\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Don't use Earth Elemental (save it for utility).\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/lightning_shield\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=wind_shear\n# Attempt to sync racial cooldowns with Ascendance or Feral Spirits, or use on cooldown if saving them will result in significant cooldown waste\nactions+=/variable,name=cooldown_sync,value=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\n# Do not use a maelstrom-costing ability if it will bring you to 0 maelstrom and cancel fury of air.\nactions+=/variable,name=furyCheck_SS,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.stormstrike.cost))\nactions+=/variable,name=furyCheck_LL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.lava_lash.cost))\nactions+=/variable,name=furyCheck_CL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.crash_lightning.cost))\nactions+=/variable,name=furyCheck_FB,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.frostbrand.cost))\nactions+=/variable,name=furyCheck_ES,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.earthen_spike.cost))\nactions+=/variable,name=furyCheck_LB,value=maelstrom>=(talent.fury_of_air.enabled*(6+40))\n# Attempt to pool maelstrom so you'll be able to cast a fully-powered lightning bolt as soon as it's available when fighting one target.\nactions+=/variable,name=OCPool,value=(active_enemies>1||(cooldown.lightning_bolt.remains>=2*gcd))\nactions+=/variable,name=OCPool_SS,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.stormstrike.cost)))\nactions+=/variable,name=OCPool_LL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.lava_lash.cost)))\nactions+=/variable,name=OCPool_CL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.crash_lightning.cost)))\nactions+=/variable,name=OCPool_FB,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.frostbrand.cost)))\n# Attempt to pool maelstrom for Crash Lightning if multiple targets are present.\nactions+=/variable,name=CLPool_LL,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.lava_lash.cost)\nactions+=/variable,name=CLPool_SS,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.stormstrike.cost)\nactions+=/variable,name=freezerburn_enabled,value=(talent.hot_hand.enabled&talent.hailstorm.enabled&azerite.primal_primer.enabled)\nactions+=/variable,name=rockslide_enabled,value=(!variable.freezerburn_enabled&(talent.boulderfist.enabled&talent.landslide.enabled&azerite.strength_of_earth.enabled))\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=priority\nactions+=/call_action_list,name=maintenance,if=active_enemies<3\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=freezerburn_core,if=variable.freezerburn_enabled\nactions+=/call_action_list,name=default_core,if=!variable.freezerburn_enabled\nactions+=/call_action_list,name=maintenance,if=active_enemies>=3\nactions+=/call_action_list,name=filler\n\nactions.asc=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions.cds=bloodlust,if=azerite.ancestral_resonance.enabled\nactions.cds+=/worldvein_resonance\nactions.cds+=/berserking,if=variable.cooldown_sync\nactions.cds+=/use_item,name=azsharas_font_of_power\nactions.cds+=/blood_fury,if=variable.cooldown_sync\nactions.cds+=/fireblood,if=variable.cooldown_sync\nactions.cds+=/ancestral_call,if=variable.cooldown_sync\n# Attempt to sync your DPS potion with a cooldown, unless the target is about to die.\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/guardian_of_azeroth\nactions.cds+=/feral_spirit\nactions.cds+=/blood_of_the_enemy,if=raid_event.adds.in>90||active_enemies>1\nactions.cds+=/ascendance,if=cooldown.strike.remains>0\nactions.cds+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||(target.time_to_die<20&debuff.razor_coral_debuff.stack>2)\nactions.cds+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.stack>2&debuff.conductive_ink_debuff.down&(buff.ascendance.remains>10||buff.molten_weapon.remains>10||buff.crackling_surge.remains>10||buff.icy_edge.remains>10||debuff.earthen_spike.remains>6)\nactions.cds+=/use_item,name=ashvanes_razor_coral,if=(debuff.conductive_ink_debuff.up||buff.ascendance.remains>10||buff.molten_weapon.remains>10||buff.crackling_surge.remains>10||buff.icy_edge.remains>10||debuff.earthen_spike.remains>6)&target.health.pct<31\nactions.cds+=/use_items\n# actions.cds+=/earth_elemental\n\nactions.default_core=earthen_spike,if=variable.furyCheck_ES\nactions.default_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.default_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.default_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.default_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.default_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS\n\nactions.filler=sundering,if=raid_event.adds.in>40\nactions.filler+=/focused_azerite_beam,if=raid_event.adds.in>90&!buff.ascendance.up&!buff.molten_weapon.up&!buff.icy_edge.up&!buff.crackling_surge.up&!debuff.earthen_spike.up\nactions.filler+=/purifying_blast,if=raid_event.adds.in>60\nactions.filler+=/ripple_in_space,if=raid_event.adds.in>60\nactions.filler+=/thundercharge\nactions.filler+=/concentrated_flame\nactions.filler+=/reaping_flames\nactions.filler+=/bag_of_tricks\nactions.filler+=/crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck_CL\nactions.filler+=/flametongue,if=talent.searing_assault.enabled\nactions.filler+=/lava_lash,if=!azerite.primal_primer.enabled&talent.hot_hand.enabled&buff.hot_hand.react\nactions.filler+=/crash_lightning,if=active_enemies>1&variable.furyCheck_CL\nactions.filler+=/rockbiter,if=maelstrom<70&!buff.strength_of_earth.up\nactions.filler+=/crash_lightning,if=(talent.crashing_storm.enabled||talent.forceful_winds.enabled)&variable.OCPool_CL\nactions.filler+=/lava_lash,if=variable.OCPool_LL&variable.furyCheck_LL\nactions.filler+=/memory_of_lucid_dreams\nactions.filler+=/rockbiter\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck_FB\nactions.filler+=/flametongue\n\nactions.freezerburn_core=lava_lash,cycle_targets=1,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/earthen_spike,if=variable.furyCheck_ES\nactions.freezerburn_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.freezerburn_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.freezerburn_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.freezerburn_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.freezerburn_core+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack>7&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS&variable.CLPool_SS\nactions.freezerburn_core+=/lava_lash,if=debuff.primal_primer.stack=10&variable.furyCheck_LL\n\nactions.maintenance=flametongue,if=!buff.flametongue.up\nactions.maintenance+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck_FB\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd\n\nactions.priority=crash_lightning,if=active_enemies>=(8-(talent.forceful_winds.enabled*3))&variable.freezerburn_enabled&variable.furyCheck_CL\nactions.priority+=/the_unbound_force,if=buff.reckless_force.up||time<5\nactions.priority+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&active_enemies=1&variable.freezerburn_enabled&variable.furyCheck_LL\nactions.priority+=/flametongue,if=variable.freezerburn_enabled&buff.flametongue.remains<gcd&active_enemies>1\nactions.priority+=/frostbrand,if=variable.freezerburn_enabled&buff.frostbrand.remains<gcd&active_enemies>1\nactions.priority+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.priority+=/fury_of_air,if=!buff.fury_of_air.up&maelstrom>=20&spell_targets.fury_of_air_damage>=(1+variable.freezerburn_enabled)\nactions.priority+=/fury_of_air,if=buff.fury_of_air.up&spell_targets.fury_of_air_damage<(1+variable.freezerburn_enabled)\nactions.priority+=/totem_mastery,if=buff.resonance_totem.remains<=2*gcd\nactions.priority+=/sundering,if=active_enemies>=3&(!essence.blood_of_the_enemy.major||(essence.blood_of_the_enemy.major&(buff.seething_rage.up||cooldown.blood_of_the_enemy.remains>40)))\nactions.priority+=/focused_azerite_beam,if=active_enemies>1\nactions.priority+=/purifying_blast,if=active_enemies>1\nactions.priority+=/ripple_in_space,if=active_enemies>1\nactions.priority+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\n# With Natural Harmony, elevate the priority of elemental attacks in order to maintain the buffs when they're about to expire.\nactions.priority+=/frostbrand,if=(azerite.natural_harmony.enabled&buff.natural_harmony_frost.remains<=2*gcd)&talent.hailstorm.enabled&variable.furyCheck_FB\nactions.priority+=/flametongue,if=(azerite.natural_harmony.enabled&buff.natural_harmony_fire.remains<=2*gcd)\nactions.priority+=/rockbiter,if=(azerite.natural_harmony.enabled&buff.natural_harmony_nature.remains<=2*gcd)&maelstrom<70",
					["spec"] = 263,
				},
				["Brewmaster"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190920,
					["author"] = "SimC",
					["desc"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/\n# September 20, 2019\n\n# Changes:\n# - Relax Expel Harm a bit.\n# - Purify only if it won't prevent you from chaining ISB.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "spear_hand_strike",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health < health.max * 0.65",
								["action"] = "gift_of_the_ox",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
								["action"] = "dampen_harm",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
								["action"] = "fortifying_brew",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.razor_coral_debuff.down || debuff.conductive_ink_debuff.up & target.health.pct < 31 || time_to_die < 20",
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
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
								["action"] = "lights_judgment",
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
								["criteria"] = "time_to_die > 25",
								["action"] = "invoke_niuzao",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & incoming_damage_1999ms > ( health.max * 0.1 + stagger.last_tick_damage_4 ) & buff.elusive_brawler.stack < 2 & ! buff.ironskin_brew.up",
								["action"] = "ironskin_brew",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional > 1 & cooldown.black_ox_brew.remains < 3",
								["action"] = "ironskin_brew",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "stagger.pct > ( 25 * ( 1 + group ) ) & buff.ironskin_brew.up & ( 2 - charges_fractional ) * recharge < buff.ironskin_brew.remains",
								["action"] = "purifying_brew",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "stagger.moderate",
								["action"] = "guard",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 5 * healing_sphere.count || ( healing_sphere.count >= 3 & health.pct < 50 )",
								["action"] = "expel_harm",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 33",
								["action"] = "healing_elixir",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brews.charges_fractional < 0.5",
								["action"] = "black_ox_brew",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( energy + ( energy.regen * cooldown.keg_smash.remains ) ) < 40 & buff.blackout_combo.down & cooldown.keg_smash.up",
								["action"] = "black_ox_brew",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2",
								["action"] = "keg_smash",
							}, -- [22]
							{
								["action"] = "detox",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2 & buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
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
								["enabled"] = true,
								["criteria"] = "buff.gift_of_the_ox.stack > 4",
								["action"] = "expel_harm",
							}, -- [27]
							{
								["action"] = "blackout_strike",
								["enabled"] = true,
							}, -- [28]
							{
								["action"] = "keg_smash",
								["enabled"] = true,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "dot.concentrated_flame.remains = 0",
								["action"] = "concentrated_flame",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "! essence.the_crucible_of_flame.major",
								["action"] = "heart_essence",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.gift_of_the_ox.stack >= 3",
								["action"] = "expel_harm",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.rushing_jade_wind.down",
								["action"] = "rushing_jade_wind",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "buff.blackout_combo.down & ( buff.bloodlust.down || ( buff.bloodlust.up & dot.breath_of_fire_dot.refreshable ) )",
								["action"] = "breath_of_fire",
							}, -- [34]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [35]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [36]
							{
								["enabled"] = true,
								["criteria"] = "buff.gift_of_the_ox.stack >= 2",
								["action"] = "expel_harm",
							}, -- [37]
							{
								["enabled"] = true,
								["criteria"] = "! talent.blackout_combo.enabled & cooldown.keg_smash.remains > gcd & ( energy + ( energy.regen * ( cooldown.keg_smash.remains + gcd ) ) ) >= 65",
								["action"] = "tiger_palm",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "energy < 31",
								["action"] = "arcane_torrent",
							}, -- [39]
							{
								["action"] = "rushing_jade_wind",
								["enabled"] = true,
							}, -- [40]
						},
						["precombat"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "chi_burst",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "chi_wave",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20190920,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 2: Unsupported action 'gift_of_the_ox'.\n\nImported 2 action lists.\n",
					["profile"] = "# Brewmaster Monk\n# https://github.com/simulationcraft/simc/\n# September 20, 2019\n\n# Changes:\n# - Relax Expel Harm a bit.\n# - Purify only if it won't prevent you from chaining ISB.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/chi_burst\nactions.precombat+=/chi_wave\n\n# Executed every time the actor is available.\nactions=spear_hand_strike\nactions+=/gift_of_the_ox,if=health<health.max*0.65\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\nactions+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||debuff.conductive_ink_debuff.up&target.health.pct<31||time_to_die<20\nactions+=/use_items\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/invoke_niuzao_the_black_ox,if=time_to_die>25\n\n# Ironskin Brew priority whenever it took significant damage and ironskin brew buff is missing (adjust the health.max coefficient according to intensity of damage taken), and to dump excess charges before BoB.\nactions+=/ironskin_brew,if=buff.blackout_combo.down&incoming_damage_1999ms>(health.max*0.1+stagger.last_tick_damage_4)&buff.elusive_brawler.stack<2&!buff.ironskin_brew.up\nactions+=/ironskin_brew,if=cooldown.brews.charges_fractional>1&cooldown.black_ox_brew.remains<3\n\n# Purifying behaviour is based on normalization (iE the late expression triggers if stagger size increased over the last 30 ticks or 15 seconds).\nactions+=/purifying_brew,if=stagger.pct>(25*(1+group))&buff.ironskin_brew.up&(2-charges_fractional)*recharge<buff.ironskin_brew.remains\n\n# Guard / Healing Elixir\nactions+=/guard,if=stagger.moderate\nactions+=/expel_harm,if=health.pct<5*healing_sphere.count||(healing_sphere.count>=3&health.pct<50)\nactions+=/healing_elixir,if=health.pct<33\n\n# Black Ox Brew is currently used to either replenish brews based on less than half a brew charge available, or low energy to enable Keg Smash\nactions+=/black_ox_brew,if=cooldown.brews.charges_fractional<0.5\nactions+=/black_ox_brew,if=(energy+(energy.regen*cooldown.keg_smash.remains))<40&buff.blackout_combo.down&cooldown.keg_smash.up\n\n# Offensively, the APL prioritizes KS on cleave, BoS else, with energy spenders and cds sorted below\nactions+=/keg_smash,if=spell_targets>=2\n\nactions+=/detox\nactions+=/rushing_jade_wind,if=spell_targets>=2&buff.rushing_jade_wind.down\n\nactions+=/tiger_palm,if=talent.rushing_jade_wind.enabled&buff.blackout_combo.up&buff.rushing_jade_wind.up\nactions+=/tiger_palm,if=(talent.invoke_niuzao_the_black_ox.enabled||talent.special_delivery.enabled)&buff.blackout_combo.up\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>4\nactions+=/blackout_strike\nactions+=/keg_smash\nactions+=/concentrated_flame,if=dot.concentrated_flame.remains=0\nactions+=/heart_essence,if=!essence.the_crucible_of_flame.major\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>=3\nactions+=/rushing_jade_wind,if=buff.rushing_jade_wind.down\nactions+=/breath_of_fire,if=buff.blackout_combo.down&(buff.bloodlust.down||(buff.bloodlust.up&dot.breath_of_fire_dot.refreshable))\nactions+=/chi_burst\nactions+=/chi_wave\n# Expel Harm has higher DPET than TP when you have at least 2 orbs.\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>=2\nactions+=/tiger_palm,if=!talent.blackout_combo.enabled&cooldown.keg_smash.remains>gcd&(energy+(energy.regen*(cooldown.keg_smash.remains+gcd)))>=65\nactions+=/arcane_torrent,if=energy<31\nactions+=/rushing_jade_wind",
					["spec"] = 268,
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
					["spec"] = 104,
					["profile"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Druid_Guardian.simc\n# October 23, 2018 - 10:42 PM\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\nactions.precombat+=/bear_form\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=skull_bash\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\nactions+=/maul,if=rage.deficit<10&active_enemies<4\nactions+=/ironfur,if=cost=0||(rage>cost&azerite.layered_mane.enabled&active_enemies>2)\nactions+=/pulverize,if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks\nactions+=/moonfire,if=dot.moonfire.refreshable&active_enemies<2\nactions+=/incarnation\nactions+=/thrash_bear,if=(buff.incarnation.down&active_enemies>1)||(buff.incarnation.up&active_enemies>4)\nactions+=/swipe_bear,if=buff.incarnation.down&active_enemies>4\nactions+=/mangle,if=dot.thrash_bear.ticking\nactions+=/moonfire,if=buff.galactic_guardian.up&active_enemies<2\nactions+=/thrash_bear\nactions+=/maul\n# Fill with Moonfire with PotMx2\nactions+=/moonfire,if=azerite.power_of_the_moon.rank>1&active_enemies=1\nactions+=/swipe_bear\n\nactions.mitigation=ironfur,if=incoming_damage_5s>0.1*health.max&buff.ironfur.remains<gcd*2\nactions.mitigation+=/frenzied_regeneration,if=health.current<0.6*health.max\nactions.mitigation+=/barkskin,if=health.pct<50&incoming_damage_5s>0.25*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&health.pct<35&incoming_damage_5s>0.25*health.max\n\nactions.cooldowns=potion\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/arcane_torrent\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\n# actions.cooldowns+=/barkskin,if=buff.bear_form.up\nactions.cooldowns+=/lunar_beam,if=buff.bear_form.up\nactions.cooldowns+=/bristling_fur,if=buff.bear_form.up\nactions.cooldowns+=/use_items",
				},
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
								["action"] = "grongs_primal_rage",
								["criteria"] = "( ( cooldown.judgment.full_recharge_time > 4 || ( ! talent.crusaders_judgment.enabled & prev_gcd.1.judgment ) ) & cooldown.avengers_shield.remains > 4 & buff.seraphim.remains > 4 ) || ( buff.seraphim.remains < 4 )",
								["name"] = "grongs_primal_rage",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "merekthas_fang",
								["criteria"] = "! buff.avenging_wrath.up & ( buff.seraphim.up || ! talent.seraphim.enabled )",
								["name"] = "merekthas_fang",
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
					["profile"] = "# Protection Paladin\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Paladin_Protection.simc\n# February 17, 2019 - 00:26\n\n# Changes\n# - Added Rebuke.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/lights_judgment\n\n# Executed every time the actor is available.\nactions=auto_attack\nactions+=/rebuke\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\n# Dumping SotR charges\nactions+=/shield_of_the_righteous,if=(buff.avengers_valor.up&cooldown.shield_of_the_righteous.charges_fractional>=2.5)&(cooldown.seraphim.remains>gcd||!talent.seraphim.enabled)\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&!talent.seraphim.enabled)||buff.seraphim.up&buff.avengers_valor.up\nactions+=/shield_of_the_righteous,if=(buff.avenging_wrath.up&buff.avenging_wrath.remains<4&!talent.seraphim.enabled)||(buff.seraphim.remains<4&buff.seraphim.up)\nactions+=/lights_judgment,if=buff.seraphim.up&buff.seraphim.remains<3\nactions+=/consecration,if=!consecration.up\nactions+=/judgment,if=(cooldown.judgment.remains<gcd&cooldown.judgment.charges_fractional>1&cooldown_react)||!talent.crusaders_judgment.enabled\nactions+=/avengers_shield,if=cooldown_react\nactions+=/judgment,if=cooldown_react||!talent.crusaders_judgment.enabled\nactions+=/lights_judgment,if=!talent.seraphim.enabled||buff.seraphim.up\nactions+=/blessed_hammer,strikes=2\nactions+=/hammer_of_the_righteous\nactions+=/consecration\n\nactions.cooldowns=fireblood,if=buff.avenging_wrath.up\nactions.cooldowns+=/seraphim,if=cooldown.shield_of_the_righteous.charges_fractional>=2\nactions.cooldowns+=/avenging_wrath,if=buff.seraphim.up||cooldown.seraphim.remains<2||!talent.seraphim.enabled\nactions.cooldowns+=/bastion_of_light,if=cooldown.shield_of_the_righteous.charges_fractional<=0\nactions.cooldowns+=/potion,if=buff.avenging_wrath.up\nactions.cooldowns+=/use_items,if=buff.seraphim.up||!talent.seraphim.enabled\nactions.cooldowns+=/use_item,name=grongs_primal_rage,if=((cooldown.judgment.full_recharge_time>4||(!talent.crusaders_judgment.enabled&prev_gcd.1.judgment))&cooldown.avengers_shield.remains>4&buff.seraphim.remains>4)||(buff.seraphim.remains<4)\nactions.cooldowns+=/use_item,name=merekthas_fang,if=!buff.avenging_wrath.up&(buff.seraphim.up||!talent.seraphim.enabled)\nactions.cooldowns+=/use_item,name=razdunks_big_red_button\n\nactions.mitigation=shield_of_the_righteous,if=!talent.seraphim.enabled&action.shield_of_the_righteous.charges>2&!(buff.aegis_of_light.up&buff.ardent_defender.up&buff.guardian_of_ancient_kings.up&buff.divine_shield.up&buff.potion.up)\nactions.mitigation+=/bastion_of_light,if=!talent.seraphim.enabled&talent.bastion_of_light.enabled&action.shield_of_the_righteous.charges<1\nactions.mitigation+=/light_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/hand_of_the_protector,if=(health.pct<40)\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_10000ms<health.max*1.25)&health.pct<55&talent.righteous_protector.enabled\nactions.mitigation+=/light_of_the_protector,if=(incoming_damage_13000ms<health.max*1.6)&health.pct<55\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_6000ms<health.max*0.7)&health.pct<65&talent.righteous_protector.enabled\nactions.mitigation+=/hand_of_the_protector,if=(incoming_damage_9000ms<health.max*1.2)&health.pct<55\nactions.mitigation+=/aegis_of_light,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=!talent.seraphim.enabled&talent.final_stand.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=!talent.seraphim.enabled&incoming_damage_2500ms>health.max*0.4&!(buff.aegis_of_light.up||buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=!talent.seraphim.enabled&health.pct<15",
					["spec"] = 66,
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
				["Balance"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190401.1437,
					["author"] = "SimC",
					["desc"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:40\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Adjusted sf_targets variable for addon syntax.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n# - Removed Lively Spirit condition for Celestial Alignment; you'll have it or you won't since Innervate is higher priority.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.remains > 6 & active_enemies = 1",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["potion"] = "battle_potion_of_intellect",
								["action"] = "potion",
								["criteria"] = "buff.ca_inc.remains > 6",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "blood_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "berserking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "arcane_torrent",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "lights_judgment",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "fireblood",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "ancestral_call",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "equipped.balefire_branch & cooldown.ca_inc.remains > 30",
								["name"] = "balefire_branch",
								["action"] = "balefire_branch",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "equipped.dread_gladiators_badge & cooldown.ca_inc.remains > 30",
								["name"] = "dread_gladiators_badge",
								["action"] = "dread_gladiators_badge",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "equipped.azurethos_singed_plumage & cooldown.ca_inc.remains > 30",
								["name"] = "azurethos_singed_plumage",
								["action"] = "azurethos_singed_plumage",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "equipped.tidestorm_codex",
								["name"] = "tidestorm_codex",
								["action"] = "tidestorm_codex",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ca_inc.remains > 30",
								["action"] = "use_items",
							}, -- [14]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "azerite.lively_spirit.enabled & ( cooldown.incarnation.remains < 2 || cooldown.celestial_alignment.remains < 12 )",
								["action"] = "innervate",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "dot.sunfire.remains > 8 & dot.moonfire.remains > 12 & ( dot.stellar_flare.remains > 6 || ! talent.stellar_flare.enabled ) & ap_check & ! buff.ca_inc.up",
								["action"] = "incarnation",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "astral_power >= 40 & ! buff.ca_inc.up & ap_check & ( dot.sunfire.remains > 2 & dot.moonfire.ticking & ( dot.stellar_flare.ticking || ! talent.stellar_flare.enabled ) )",
								["action"] = "celestial_alignment",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & solar_wrath.ap_check",
								["action"] = "fury_of_elune",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & ap_check",
								["action"] = "force_of_nature",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.starlord.remains < 8 & ! solar_wrath.ap_check",
								["action"] = "cancel_buff",
								["buff_name"] = "starlord",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( buff.starlord.stack < 3 || buff.starlord.remains >= 8 ) & spell_targets >= variable.sf_targets & ( target.time_to_die + 1 ) * spell_targets > cost % 2.5",
								["action"] = "starfall",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( talent.starlord.enabled & ( buff.starlord.stack < 3 || buff.starlord.remains >= 8 & buff.arcanic_pulsar.stack < 8 ) || ! talent.starlord.enabled & ( buff.arcanic_pulsar.stack < 8 || buff.ca_inc.up ) ) & spell_targets.starfall < variable.sf_targets & buff.lunar_empowerment.stack + buff.solar_empowerment.stack < 4 & buff.solar_empowerment.stack < 3 & buff.lunar_empowerment.stack < 3 & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.starsurge ) || target.time_to_die <= execute_time * astral_power % 40 || ! solar_wrath.ap_check",
								["action"] = "starsurge",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 4 + spell_targets & ( spell_targets > 1 + talent.twin_moons.enabled || dot.moonfire.ticking ) & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.sunfire ) )",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 6 & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.moonfire ) )",
								["cycle_targets"] = 1,
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ( ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) >= 6 & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ! prev.stellar_flare ) )",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "new_moon",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "half_moon",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "full_moon",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.solar_empowerment.stack < 3 & ( ap_check || buff.lunar_empowerment.stack = 3 ) & ( ( buff.warrior_of_elune.up || buff.lunar_empowerment.up || spell_targets >= 2 & ! buff.solar_empowerment.up ) & ( ! azerite.streaking_stars.enabled || ! buff.ca_inc.up || ( ! prev.lunar_strike & ! talent.incarnation.enabled || prev.solar_wrath ) ) || azerite.streaking_stars.enabled & buff.ca_inc.up & prev.solar_wrath )",
								["action"] = "lunar_strike",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "azerite.streaking_stars.rank < 3 || ! buff.ca_inc.up || ! prev.solar_wrath",
								["action"] = "solar_wrath",
							}, -- [31]
							{
								["action"] = "sunfire",
								["enabled"] = true,
							}, -- [32]
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
								["value"] = "4 + azerite.arcanic_pulsar.enabled + talent.starlord.enabled + ( azerite.streaking_stars.rank > 2 & azerite.arcanic_pulsar.enabled ) - ! talent.twin_moons.enabled",
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
					["version"] = 20190401.1437,
					["warnings"] = "Imported 2 action lists.\n",
					["spec"] = 102,
					["profile"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/\n# April 1, 2019 - 09:40\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Adjusted sf_targets variable for addon syntax.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n# - Removed Lively Spirit condition for Celestial Alignment; you'll have it or you won't since Innervate is higher priority.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n\n# Azerite variables\n# actions.precombat+=/variable,name=az_ss,value=azerite.streaking_stars.rank\n# actions.precombat+=/variable,name=az_ap,value=azerite.arcanic_pulsar.rank\n\n# Starfall v Starsurge target cutoff\nactions.precombat+=/variable,name=sf_targets,op=set,value=4+azerite.arcanic_pulsar.enabled+talent.starlord.enabled+(azerite.streaking_stars.rank>2&azerite.arcanic_pulsar.enabled)-!talent.twin_moons.enabled\nactions.precombat+=/moonkin_form\n\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/solar_wrath\n\n# Executed every time the actor is available.\nactions=solar_beam\nactions+=/potion,if=buff.ca_inc.remains>6&active_enemies=1\nactions+=/potion,name=battle_potion_of_intellect,if=buff.ca_inc.remains>6\nactions+=/blood_fury,if=buff.ca_inc.up\nactions+=/berserking,if=buff.ca_inc.up\nactions+=/arcane_torrent,if=buff.ca_inc.up\nactions+=/lights_judgment,if=buff.ca_inc.up\nactions+=/fireblood,if=buff.ca_inc.up\nactions+=/ancestral_call,if=buff.ca_inc.up\n\n# CDs\nactions+=/use_item,name=balefire_branch,if=equipped.159630&cooldown.ca_inc.remains>30\nactions+=/use_item,name=dread_gladiators_badge,if=equipped.161902&cooldown.ca_inc.remains>30\nactions+=/use_item,name=azurethos_singed_plumage,if=equipped.161377&cooldown.ca_inc.remains>30\nactions+=/use_item,name=tidestorm_codex,if=equipped.165576\nactions+=/use_items,if=cooldown.ca_inc.remains>30\nactions+=/warrior_of_elune\nactions+=/innervate,if=azerite.lively_spirit.enabled&(cooldown.incarnation.remains<2||cooldown.celestial_alignment.remains<12)\nactions+=/incarnation,if=dot.sunfire.remains>8&dot.moonfire.remains>12&(dot.stellar_flare.remains>6||!talent.stellar_flare.enabled)&ap_check&!buff.ca_inc.up\n# Don't actually check for Lively Spirit here; you'll have it or you won't.\nactions+=/celestial_alignment,if=astral_power>=40&!buff.ca_inc.up&ap_check&(dot.sunfire.remains>2&dot.moonfire.ticking&(dot.stellar_flare.ticking||!talent.stellar_flare.enabled))\nactions+=/fury_of_elune,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&solar_wrath.ap_check\nactions+=/force_of_nature,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&ap_check\n\n# Spenders\nactions+=/cancel_buff,name=starlord,if=buff.starlord.remains<8&!solar_wrath.ap_check\nactions+=/starfall,if=(buff.starlord.stack<3||buff.starlord.remains>=8)&spell_targets>=variable.sf_targets&(target.time_to_die+1)*spell_targets>cost%2.5\nactions+=/starsurge,if=(talent.starlord.enabled&(buff.starlord.stack<3||buff.starlord.remains>=8&buff.arcanic_pulsar.stack<8)||!talent.starlord.enabled&(buff.arcanic_pulsar.stack<8||buff.ca_inc.up))&spell_targets.starfall<variable.sf_targets&buff.lunar_empowerment.stack+buff.solar_empowerment.stack<4&buff.solar_empowerment.stack<3&buff.lunar_empowerment.stack<3&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.starsurge)||target.time_to_die<=execute_time*astral_power%40||!solar_wrath.ap_check\n\n# DoTs\nactions+=/sunfire,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=4+spell_targets&(spell_targets>1+talent.twin_moons.enabled||dot.moonfire.ticking)&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.sunfire))\nactions+=/moonfire,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=6&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.moonfire))\nactions+=/stellar_flare,cycle_targets=1,if=refreshable&(ap_check&floor(target.time_to_die%(2*spell_haste))>=6&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||!prev.stellar_flare))\n\n# Generators\nactions+=/new_moon,if=ap_check\nactions+=/half_moon,if=ap_check\nactions+=/full_moon,if=ap_check\nactions+=/lunar_strike,if=buff.solar_empowerment.stack<3&(ap_check||buff.lunar_empowerment.stack=3)&((buff.warrior_of_elune.up||buff.lunar_empowerment.up||spell_targets>=2&!buff.solar_empowerment.up)&(!azerite.streaking_stars.enabled||!buff.ca_inc.up||(!prev.lunar_strike&!talent.incarnation.enabled||prev.solar_wrath))||azerite.streaking_stars.enabled&buff.ca_inc.up&prev.solar_wrath)\nactions+=/solar_wrath,if=azerite.streaking_stars.rank<3||!buff.ca_inc.up||!prev.solar_wrath\n# Fallthru for movement\nactions+=/sunfire",
				},
			},
			["runOnce"] = {
				["autoconvertDelayBackToText_20190422"] = true,
				["resetPotionsToDefaults_20190717"] = true,
				["autoconvertDelayTextToSweep_20190420"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertDelayTextToSweep_20190420_1"] = true,
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["autoconvertDelayFadeToCheckbox_20190418"] = true,
			},
			["iconStore"] = {
				["minimapPos"] = 166.10719463682,
				["hide"] = true,
			},
			["specs"] = {
				[103] = {
					["maxRefresh"] = 10,
					["package"] = "Feral",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["nameplates"] = true,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 3,
					["throttleRefresh"] = false,
					["buffPadding"] = 0.25,
				},
				[262] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["funnel_damage"] = false,
						["stack_buffer"] = 1.1,
					},
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["damage"] = true,
					["cycle"] = false,
					["potion"] = "potion_of_unbridled_fury",
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["abilities"] = {
						["earth_elemental"] = {
							["disabled"] = true,
						},
					},
					["nameplates"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["package"] = "Elemental",
					["damageRange"] = 0,
				},
				[263] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Enhancement",
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "superior_battle_potion_of_agility",
					["potionsReset"] = 20180919.1,
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["throttleRefresh"] = false,
					["damageRange"] = 0,
				},
				[104] = {
					["maxRefresh"] = 10,
					["package"] = "Guardian",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["nameplates"] = true,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleRefresh"] = false,
					["buffPadding"] = 0.25,
				},
				[268] = {
					50, -- [1]
					65, -- [2]
					2, -- [3]
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["bof_percent"] = 50,
						["brew_charges"] = 2,
						["isb_overlap"] = 1,
						["eh_percent"] = 65,
						["purify_stagger"] = 33,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["buffPadding"] = 0.25,
					["package"] = "Brewmaster",
					["cycle_min"] = 6,
					["cycle"] = false,
					["potion"] = "superior_battle_potion_of_agility",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["nameplateRange"] = 8,
					["damageRange"] = 0,
				},
				[269] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["settings"] = {
						["optimize_reverse_harm"] = false,
					},
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["buffPadding"] = 0.25,
					["custom1Name"] = "Custom 1",
					["package"] = "Windwalker",
					["nameplateRange"] = 8,
					["potionsReset"] = 20180919.1,
					["cycle_min"] = 6,
					["cycle"] = true,
					["abilities"] = {
						["flying_serpent_kick"] = {
							["disabled"] = true,
						},
						["touch_of_karma"] = {
							["disabled"] = true,
						},
					},
					["potion"] = "unbridled_fury",
					["nameplates"] = true,
					["damageExpiration"] = 8,
					["strict"] = false,
					["damageRange"] = 0,
				},
				[102] = {
					["maxRefresh"] = 10,
					["package"] = "Balance",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["nameplates"] = false,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleRefresh"] = false,
					["buffPadding"] = 0.25,
				},
				[256] = {
					["potionsReset"] = 20180919.1,
				},
				[258] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["package"] = "Shadow",
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["custom1Name"] = "Custom 1",
					["damage"] = true,
					["cycle"] = false,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "unbridled_fury",
					["nameplates"] = false,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["throttleRefresh"] = false,
					["damageRange"] = 0,
				},
				[70] = {
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["nameplates"] = true,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["package"] = "Retribution",
					["buffPadding"] = 0.25,
				},
				[66] = {
					["maxRefresh"] = 10,
					["throttleRefresh"] = false,
					["aoe"] = 2,
					["gcdSync"] = true,
					["damageDots"] = false,
					["damage"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["nameplates"] = true,
					["cycle"] = false,
					["nameplateRange"] = 8,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["package"] = "Protection Paladin",
					["buffPadding"] = 0.25,
				},
			},
			["notifications"] = {
				["x"] = -99.00657653808594,
				["y"] = 537.0335693359375,
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
				["AOE"] = {
					["rel"] = "CENTER",
					["zoom"] = 0,
					["keybindings"] = {
						["font"] = "Expressway",
					},
					["x"] = -912.0517578125,
					["targets"] = {
						["font"] = "Expressway",
					},
					["y"] = 665.052001953125,
				},
				["Primary"] = {
					["zoom"] = 0,
					["border"] = {
						["fit"] = false,
					},
					["delays"] = {
						["anchor"] = "BOTTOMRIGHT",
						["font"] = "Expressway",
						["fontSize"] = 14,
					},
					["queue"] = {
						["height"] = 22,
						["width"] = 22,
					},
					["rel"] = "CENTER",
					["x"] = -166.004470825195,
					["keybindings"] = {
						["y"] = 6,
						["fontSize"] = 16,
						["anchor"] = "TOPLEFT",
						["font"] = "Expressway",
						["x"] = 0,
					},
					["primaryHeight"] = 36,
					["targets"] = {
						["enabled"] = false,
						["font"] = "Expressway",
					},
					["numIcons"] = 2,
					["primaryWidth"] = 36,
					["y"] = -111.992607116699,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -617.02685546875,
					["y"] = 648.054565429688,
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
			},
			["notifications"] = {
				["y"] = 537.033508300781,
				["x"] = -99.0065765380859,
			},
			["runOnce"] = {
				["reviseDisplayModes_20180709"] = true,
				["enableAllOfTheThings_20180820"] = true,
			},
			["specs"] = {
				[258] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["throttleRefresh"] = false,
					["package"] = "Shadow",
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
			["iconStore"] = {
				["minimapPos"] = 166.10719463682,
				["hide"] = true,
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
					["damage"] = true,
					["package"] = "Windwalker",
					["nameplateRange"] = 8,
					["potion"] = "potion_of_bursting_blood",
					["nameplates"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["cycle"] = true,
					["strict"] = false,
				},
				[268] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["buffPadding"] = 0.25,
					["package"] = "Brewmaster",
					["throttleRefresh"] = false,
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
			},
			["displays"] = {
				["Defensives"] = {
					["rel"] = "CENTER",
					["x"] = -523.0205078125,
					["y"] = 541.048034667969,
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
				["AOE"] = {
					["rel"] = "CENTER",
					["x"] = -769.043151855469,
					["y"] = 552.045288085938,
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
			["notifications"] = {
				["y"] = 533.033386230469,
				["x"] = -63.003662109375,
			},
			["iconStore"] = {
				["minimapPos"] = 170.126342107798,
				["hide"] = true,
			},
			["minimapIcon"] = true,
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
					["damage"] = true,
					["package"] = "Enhancement",
					["throttleRefresh"] = false,
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
				[262] = {
					["enabled"] = true,
					["maxRefresh"] = 10,
					["damage"] = true,
					["package"] = "Elemental",
					["throttleRefresh"] = false,
					["damageExpiration"] = 6,
					["potionsReset"] = 20180919.1,
					["nameplates"] = false,
					["nameplateRange"] = 8,
					["cycle"] = false,
					["potion"] = "battle_potion_of_intellect",
					["debuffPadding"] = 0,
					["aoe"] = 3,
					["gcdSync"] = true,
					["damageDots"] = false,
					["buffPadding"] = 0.25,
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
						["default"] = {
							{
								["action"] = "wind_shear",
								["enabled"] = true,
							}, -- [1]
							{
								["value"] = "( talent.ascendance.enabled & ( buff.ascendance.up || cooldown.ascendance.remains > 50 ) ) || ( ! talent.ascendance.enabled & ( feral_spirit.remains > 5 || cooldown.feral_spirit.remains > 50 ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "cooldown_sync",
							}, -- [2]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.stormstrike.cost ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck_SS",
							}, -- [3]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.lava_lash.cost ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck_LL",
							}, -- [4]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.crash_lightning.cost ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck_CL",
							}, -- [5]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.frostbrand.cost ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck_FB",
							}, -- [6]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + action.earthen_spike.cost ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck_ES",
							}, -- [7]
							{
								["value"] = "maelstrom >= ( talent.fury_of_air.enabled * ( 6 + 40 ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "furyCheck_LB",
							}, -- [8]
							{
								["value"] = "( active_enemies > 1 || ( cooldown.lightning_bolt.remains >= 2 * gcd ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "OCPool",
							}, -- [9]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.stormstrike.cost ) ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "OCPool_SS",
							}, -- [10]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.lava_lash.cost ) ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "OCPool_LL",
							}, -- [11]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.crash_lightning.cost ) ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "OCPool_CL",
							}, -- [12]
							{
								["value"] = "( variable.OCPool || maelstrom >= ( talent.overcharge.enabled * ( 40 + action.frostbrand.cost ) ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "OCPool_FB",
							}, -- [13]
							{
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.lava_lash.cost )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "CLPool_LL",
							}, -- [14]
							{
								["value"] = "active_enemies = 1 || maelstrom >= ( action.crash_lightning.cost + action.stormstrike.cost )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "CLPool_SS",
							}, -- [15]
							{
								["value"] = "( talent.hot_hand.enabled & talent.hailstorm.enabled & azerite.primal_primer.enabled )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "freezerburn_enabled",
							}, -- [16]
							{
								["value"] = "( ! variable.freezerburn_enabled & ( talent.boulderfist.enabled & talent.landslide.enabled & azerite.strength_of_earth.enabled ) )",
								["enabled"] = true,
								["action"] = "variable",
								["var_name"] = "rockslide_enabled",
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
								["criteria"] = "buff.ascendance.up",
								["action"] = "call_action_list",
								["list_name"] = "asc",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "priority",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "maintenance",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "variable.freezerburn_enabled",
								["action"] = "call_action_list",
								["list_name"] = "freezerburn_core",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "! variable.freezerburn_enabled",
								["action"] = "call_action_list",
								["list_name"] = "default_core",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 3",
								["action"] = "call_action_list",
								["list_name"] = "maintenance",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "filler",
							}, -- [28]
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
								["action"] = "stormstrike",
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
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
						["freezerburn_core"] = {
							{
								["enabled"] = true,
								["action"] = "lava_lash",
								["criteria"] = "azerite.primal_primer.rank >= 2 & debuff.primal_primer.stack = 10 & variable.furyCheck_LL & variable.CLPool_LL",
								["target_if"] = "",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.furyCheck_ES",
								["action"] = "earthen_spike",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "stormstrike",
								["criteria"] = "active_enemies > 1 & azerite.lightning_conduit.enabled & ! debuff.lightning_conduit.up & variable.furyCheck_SS",
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
					},
					["version"] = 20190123.193,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 18: Unsupported action 'auto_attack'.\n\nWARNING:  The import for 'freezerburn_core' required some automated changes.\nLine 1: Removed max:X check (not available in emulation) -- (1x).\n\nImported 10 action lists.\n",
					["spec"] = 263,
					["profile"] = "# Enhancement Shaman\n# https://github.com/simulationcraft/simc/blob/bfa-dev/profiles/PreRaids/PR_Shaman_Enhancement.simc\n# January 23, 2019 - 19:30\n\n# Changes:\n# - Added precombat Totem Mastery.\n# - Refresh Frostbrand/Flametongue in AOE for FreezerBurn build.\n\n# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=flask\nactions.precombat+=/food\nactions.precombat+=/augmentation\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\nactions.precombat+=/snapshot_stats\nactions.precombat+=/totem_mastery\nactions.precombat+=/lightning_shield\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=wind_shear\n# Attempt to sync racial cooldowns with Ascendance or Feral Spirits, or use on cooldown if saving them will result in significant cooldown waste\nactions+=/variable,name=cooldown_sync,value=(talent.ascendance.enabled&(buff.ascendance.up||cooldown.ascendance.remains>50))||(!talent.ascendance.enabled&(feral_spirit.remains>5||cooldown.feral_spirit.remains>50))\n# Do not use a maelstrom-costing ability if it will bring you to 0 maelstrom and cancel fury of air.\nactions+=/variable,name=furyCheck_SS,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.stormstrike.cost))\nactions+=/variable,name=furyCheck_LL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.lava_lash.cost))\nactions+=/variable,name=furyCheck_CL,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.crash_lightning.cost))\nactions+=/variable,name=furyCheck_FB,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.frostbrand.cost))\nactions+=/variable,name=furyCheck_ES,value=maelstrom>=(talent.fury_of_air.enabled*(6+action.earthen_spike.cost))\nactions+=/variable,name=furyCheck_LB,value=maelstrom>=(talent.fury_of_air.enabled*(6+40))\n# Attempt to pool maelstrom so you'll be able to cast a fully-powered lightning bolt as soon as it's available when fighting one target.\nactions+=/variable,name=OCPool,value=(active_enemies>1||(cooldown.lightning_bolt.remains>=2*gcd))\nactions+=/variable,name=OCPool_SS,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.stormstrike.cost)))\nactions+=/variable,name=OCPool_LL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.lava_lash.cost)))\nactions+=/variable,name=OCPool_CL,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.crash_lightning.cost)))\nactions+=/variable,name=OCPool_FB,value=(variable.OCPool||maelstrom>=(talent.overcharge.enabled*(40+action.frostbrand.cost)))\n# Attempt to pool maelstrom for Crash Lightning if multiple targets are present.\nactions+=/variable,name=CLPool_LL,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.lava_lash.cost)\nactions+=/variable,name=CLPool_SS,value=active_enemies=1||maelstrom>=(action.crash_lightning.cost+action.stormstrike.cost)\nactions+=/variable,name=freezerburn_enabled,value=(talent.hot_hand.enabled&talent.hailstorm.enabled&azerite.primal_primer.enabled)\nactions+=/variable,name=rockslide_enabled,value=(!variable.freezerburn_enabled&(talent.boulderfist.enabled&talent.landslide.enabled&azerite.strength_of_earth.enabled))\nactions+=/auto_attack\nactions+=/use_items\nactions+=/call_action_list,name=opener\nactions+=/call_action_list,name=asc,if=buff.ascendance.up\nactions+=/call_action_list,name=priority\nactions+=/call_action_list,name=maintenance,if=active_enemies<3\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=freezerburn_core,if=variable.freezerburn_enabled\nactions+=/call_action_list,name=default_core,if=!variable.freezerburn_enabled\nactions+=/call_action_list,name=maintenance,if=active_enemies>=3\nactions+=/call_action_list,name=filler\n\nactions.asc=crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.asc+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\nactions.asc+=/windstrike\n\n# Cast Bloodlust manually if the Azerite Trait Ancestral Resonance is present.\nactions.cds=bloodlust,if=azerite.ancestral_resonance.enabled\nactions.cds+=/berserking,if=variable.cooldown_sync\nactions.cds+=/blood_fury,if=variable.cooldown_sync\nactions.cds+=/fireblood,if=variable.cooldown_sync\nactions.cds+=/ancestral_call,if=variable.cooldown_sync\n# Attempt to sync your DPS potion with a cooldown, unless the target is about to die.\nactions.cds+=/potion,if=buff.ascendance.up||!talent.ascendance.enabled&feral_spirit.remains>5||target.time_to_die<=60\nactions.cds+=/feral_spirit\nactions.cds+=/ascendance,if=cooldown.strike.remains>0\nactions.cds+=/earth_elemental\n\nactions.default_core=earthen_spike,if=variable.furyCheck_ES\nactions.default_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.default_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.default_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.default_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.default_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS\n\nactions.filler=sundering\nactions.filler+=/crash_lightning,if=talent.forceful_winds.enabled&active_enemies>1&variable.furyCheck_CL\nactions.filler+=/flametongue,if=talent.searing_assault.enabled\nactions.filler+=/lava_lash,if=!azerite.primal_primer.enabled&talent.hot_hand.enabled&buff.hot_hand.react\nactions.filler+=/crash_lightning,if=active_enemies>1&variable.furyCheck_CL\nactions.filler+=/rockbiter,if=maelstrom<70&!buff.strength_of_earth.up\nactions.filler+=/crash_lightning,if=talent.crashing_storm.enabled&variable.OCPool_CL\nactions.filler+=/lava_lash,if=variable.OCPool_LL&variable.furyCheck_LL\nactions.filler+=/rockbiter\nactions.filler+=/frostbrand,if=talent.hailstorm.enabled&buff.frostbrand.remains<4.8+gcd&variable.furyCheck_FB\nactions.filler+=/flametongue\n\nactions.freezerburn_core=lava_lash,target_if=max:debuff.primal_primer.stack,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/earthen_spike,if=variable.furyCheck_ES\nactions.freezerburn_core+=/stormstrike,cycle_targets=1,if=active_enemies>1&azerite.lightning_conduit.enabled&!debuff.lightning_conduit.up&variable.furyCheck_SS\nactions.freezerburn_core+=/stormstrike,if=buff.stormbringer.up||(active_enemies>1&buff.gathering_storms.up&variable.furyCheck_SS)\nactions.freezerburn_core+=/crash_lightning,if=active_enemies>=3&variable.furyCheck_CL\nactions.freezerburn_core+=/lightning_bolt,if=talent.overcharge.enabled&active_enemies=1&variable.furyCheck_LB&maelstrom>=40\nactions.freezerburn_core+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack>7&variable.furyCheck_LL&variable.CLPool_LL\nactions.freezerburn_core+=/stormstrike,if=variable.OCPool_SS&variable.furyCheck_SS&variable.CLPool_SS\nactions.freezerburn_core+=/lava_lash,if=debuff.primal_primer.stack=10&variable.furyCheck_LL\n\nactions.maintenance=flametongue,if=!buff.flametongue.up\nactions.maintenance+=/frostbrand,if=talent.hailstorm.enabled&!buff.frostbrand.up&variable.furyCheck_FB\n\nactions.opener=rockbiter,if=maelstrom<15&time<gcd\n\nactions.priority=crash_lightning,if=active_enemies>=(8-(talent.forceful_winds.enabled*3))&variable.freezerburn_enabled&variable.furyCheck_CL\nactions.priority+=/lava_lash,if=azerite.primal_primer.rank>=2&debuff.primal_primer.stack=10&active_enemies=1&variable.freezerburn_enabled&variable.furyCheck_LL\nactions.priority+=/flametongue,if=variable.freezerburn_enabled&buff.flametongue.remains<gcd&active_enemies>1\nactions.priority+=/frostbrand,if=variable.freezerburn_enabled&buff.frostbrand.remains<gcd&active_enemies>1\nactions.priority+=/crash_lightning,if=!buff.crash_lightning.up&active_enemies>1&variable.furyCheck_CL\nactions.priority+=/fury_of_air,if=!buff.fury_of_air.up&maelstrom>=20&spell_targets.fury_of_air_damage>=(1+variable.freezerburn_enabled)\nactions.priority+=/fury_of_air,if=buff.fury_of_air.up&&spell_targets.fury_of_air_damage<(1+variable.freezerburn_enabled)\nactions.priority+=/totem_mastery,if=buff.resonance_totem.remains<=2*gcd\nactions.priority+=/sundering,if=active_enemies>=3\nactions.priority+=/rockbiter,if=talent.landslide.enabled&!buff.landslide.up&charges_fractional>1.7\n# With Natural Harmony, elevate the priority of elemental attacks in order to maintain the buffs when they're about to expire.\nactions.priority+=/frostbrand,if=(azerite.natural_harmony.enabled&buff.natural_harmony_frost.remains<=2*gcd)&talent.hailstorm.enabled&variable.furyCheck_FB\nactions.priority+=/flametongue,if=(azerite.natural_harmony.enabled&buff.natural_harmony_fire.remains<=2*gcd)\nactions.priority+=/rockbiter,if=(azerite.natural_harmony.enabled&buff.natural_harmony_nature.remains<=2*gcd)&maelstrom<70",
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
								["action"] = "flame_shock",
								["criteria"] = "refreshable & spell_targets.chain_lightning < 5 & ( ! talent.storm_elemental.enabled || cooldown.storm_elemental.remains < 120 || spell_targets.chain_lightning = 3 & buff.wind_gust.stack < 14 )",
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
								["criteria"] = "talent.ascendance.enabled",
								["action"] = "lava_burst",
								["moving"] = "1",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "flame_shock",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable",
								["moving"] = "1",
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
								["action"] = "flame_shock",
								["criteria"] = "refreshable & active_enemies > 1 & buff.surge_of_power.up",
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
								["action"] = "flame_shock",
								["criteria"] = "refreshable & ! buff.surge_of_power.up",
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
								["criteria"] = "refreshable",
								["moving"] = "1",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 6",
								["action"] = "flame_shock",
								["moving"] = "1",
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
								["criteria"] = "active_enemies > 2 & ( spell_targets.chain_lightning > 2 || spell_targets.lava_beam > 2 )",
								["action"] = "run_action_list",
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
					["author"] = "SimulationCraft",
				},
			},
		},
	},
}
