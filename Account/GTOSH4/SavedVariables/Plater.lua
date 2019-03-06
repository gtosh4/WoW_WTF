
PlaterDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Toshaman - Kil'jaeden"] = "Default",
		["Yuumi - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 156,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 3,
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Name"] = "Unit - Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1537884697,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1548811052,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 400,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["Desc"] = "Add the buff name in the trigger box.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 388,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Bombad즣-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Very Important [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538066775,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Author"] = "Bombad즣-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Name"] = "Explosion Affix M+ [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["PlaterCore"] = 1,
					["Time"] = 1540663131,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 1,
					["Desc"] = "Add the debuff name in the trigger box.",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1538429739,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 567,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 2,
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Big Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538237586,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 376,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["ScriptType"] = 2,
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Small Alert [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["PlaterCore"] = 1,
					["Time"] = 1539201768,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 106,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["PlaterCore"] = 1,
					["Time"] = 1538256464,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1548811057,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Enabled"] = true,
					["Revision"] = 60,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Color Change [Plater]",
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1548811044,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 158,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 1,
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Name"] = "Aura - Border Color [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543680853,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
					["Icon"] = 136048,
					["Author"] = "Celian-Sylvanas",
					["ScriptType"] = 3,
					["Desc"] = "Show the energy amount above the nameplate",
					["Name"] = "UnitPower [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1539015649,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Izimode-Azralon",
					["ScriptType"] = 2,
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["PlaterCore"] = 1,
					["Time"] = 1539201849,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1548923043,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 196,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
						282209, -- [3]
					},
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [14]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    if envTable.FixateTarget then\n        envTable.FixateTarget:SetText (\"\")\n        envTable.FixateTarget:Hide()\n    end\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1549380637,
					["Temp_ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [\n            [268074] = \"Dark Purpose\", --G'huun Mythic Add\n            [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n            [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n            [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n            [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n            [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n            [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n            [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n            --[] = \"\" --       \n            \n        }\n        \n        --build the list with localized spell names\n        envTable.FixateDebuffs = {}\n        for spellID, enUSSpellName in pairs (spellList) do\n            local localizedSpellName = GetSpellInfo (spellID)\n            envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n        end\n        \n        --debug - smuggled crawg\n        envTable.FixateDebuffs [\"Jagged Maw\"] = true\n        \n    end\n    \n    --[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n\n",
					["Icon"] = 841383,
					["Enabled"] = true,
					["Revision"] = 201,
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Name"] = "Fixate On You [Plater]",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    if envTable.FixateTarget then\n        envTable.FixateTarget:SetText (\"\")\n        envTable.FixateTarget:Hide()\n    end\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n\n\n",
				}, -- [15]
			},
			["aura_cache_by_name"] = {
				["mark of prey"] = {
					230381, -- [1]
					282208, -- [2]
					282209, -- [3]
				},
			},
			["plate_config"] = {
				["player"] = {
					["castbar_enabled"] = false,
					["click_through"] = true,
					["spellpercent_text_enabled"] = false,
				},
				["friendlyplayer"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
					["cast"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_text_show_decimals"] = false,
					["spellname_text_outline"] = "OUTLINE",
					["big_actorname_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["mana_incombat"] = {
						nil, -- [1]
						4, -- [2]
					},
					["all_names"] = true,
					["big_actortitle_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 7,
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["percent_text_ooc"] = true,
					["big_actortitle_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["cast_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["big_actortitle_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["big_actorname_text_outline"] = "OUTLINE",
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 8,
					["percent_text_enabled"] = true,
					["big_actorname_text_size"] = 10,
					["spellpercent_text_size"] = 8,
					["big_actortitle_text_size"] = 10,
					["percent_show_health"] = true,
					["percent_text_size"] = 8,
					["spellname_text_size"] = 12,
					["percent_text_font"] = "Friz Quadrata TT",
					["buff_frame_y_offset"] = 0,
					["percent_text_alpha"] = 0.799999952316284,
					["quest_enabled"] = true,
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["spellpercent_text_enabled"] = true,
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["level_text_enabled"] = true,
				},
				["enemynpc"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["cast"] = {
						140, -- [1]
					},
					["percent_text_alpha"] = 0.799999952316284,
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 7,
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["cast_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["actorname_text_size"] = 8,
					["spellpercent_text_size"] = 8,
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["percent_text_size"] = 8,
					["percent_text_font"] = "Friz Quadrata TT",
					["percent_text_show_decimals"] = false,
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["big_actorname_text_font"] = "Friz Quadrata TT",
				},
				["enemyplayer"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
					["cast"] = {
						140, -- [1]
					},
					["percent_text_show_decimals"] = false,
					["spellname_text_outline"] = "OUTLINE",
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["all_names"] = true,
					["actorname_text_outline"] = "OUTLINE",
					["actorname_text_spacing"] = 7,
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["cast_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
					},
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 8,
					["big_actorname_text_size"] = 10,
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["percent_text_size"] = 8,
					["spellpercent_text_size"] = 8,
					["percent_text_font"] = "Friz Quadrata TT",
					["big_actortitle_text_size"] = 10,
					["quest_enabled"] = true,
					["percent_text_alpha"] = 0.799999952316284,
					["spellname_text_size"] = 12,
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["big_actorname_text_font"] = "Friz Quadrata TT",
				},
			},
			["first_run2"] = true,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["Name"] = "Color Automation [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["LastHookEdited"] = "",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 57,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548810968,
					["PlaterCore"] = 1,
					["Name"] = "Stormwall Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["LastHookEdited"] = "Nameplate Updated",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 74,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1548811013,
					["PlaterCore"] = 1,
					["Name"] = "Hide Neutral Units [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 1990989,
					["LastHookEdited"] = "Constructor",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
					["Name"] = "Jaina Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["LastHookEdited"] = "",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["Name"] = "Execute Range [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 135358,
					["LastHookEdited"] = "",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 224,
					["HooksTemp"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Time"] = 1548811389,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Specific Unit [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["LastHookEdited"] = "Constructor",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 103,
					["HooksTemp"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1548810956,
					["PlaterCore"] = 1,
					["Name"] = "No Target Alpha [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 132177,
					["LastHookEdited"] = "Constructor",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 89,
					["HooksTemp"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548811034,
					["PlaterCore"] = 1,
					["Name"] = "Reorder Nameplate [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 574574,
					["LastHookEdited"] = "Nameplate Added",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 177,
					["HooksTemp"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1548811010,
					["PlaterCore"] = 1,
					["Name"] = "Extra Border [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 133689,
					["LastHookEdited"] = "Constructor",
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 183,
					["HooksTemp"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548811018,
					["PlaterCore"] = 1,
					["Name"] = "Players Targeting a Target [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 1966587,
					["LastHookEdited"] = "Constructor",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 87,
					["HooksTemp"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CurrentTarget = false\nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n        if (unitFrame.namePlateUnitName) then end\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CurrentTarget = false\nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n        if (unitFrame.namePlateUnitName) then end\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Time"] = 1548810997,
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 878211,
					["LastHookEdited"] = "Target Changed",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainer = unitFrame.BuffFrame.PlaterBuffList\n    local aurasShown = {}\n    local aurasDuplicated = {}\n    \n    for index, auraIcon in ipairs (auraContainer) do\n        if (auraIcon:IsShown()) then\n            \n            if (envTable.consolidadeRepeatedAuras) then\n                \n                if (aurasDuplicated [auraIcon.SpellName]) then\n                    \n                    --where the existing aura is stored\n                    local duplicatedIndex = aurasDuplicated [auraIcon.SpellName]\n                    \n                    --get the icon already in the table\n                    local icon = aurasShown [duplicatedIndex][1]\n                    \n                    --check if the remaining time of the icon already added in the table is slower than the current\n                    if (auraIcon.RemainingTime > icon.RemainingTime) then\n                        --replace the icon for the icon with bigger duration\n                        aurasShown [duplicatedIndex][1] = auraIcon\n                        aurasShown [duplicatedIndex][3] = aurasShown [duplicatedIndex][3] + 1\n                        icon:Hide()\n                        \n                    else\n                        auraIcon:Hide()\n                    end\n                    \n                else    \n                    aurasDuplicated [auraIcon.SpellName] = index\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority, 1})\n                end\n                \n            else\n                local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                tinsert (aurasShown, {auraIcon, priority})\n                \n            end           \n        end\n    end\n    \n    table.sort (aurasShown, DetailsFramework.SortOrder2)\n    \n    local padding = envTable.padding\n    local framersPerRow = envTable.maxAurasPerRow + 1\n    \n    --first icon is where the row starts\n    local firstIcon = aurasShown[1] and aurasShown[1][1]\n    \n    if (firstIcon) then\n        local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n        anchorPoint:SetSize (1, 1)\n        \n        firstIcon:ClearAllPoints()\n        firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n        \n        --check the consolidaded stacks, this is not the regular buff stacks\n        local firstIconStacks = aurasShown[1][3]\n        if (firstIconStacks and firstIconStacks > 1) then\n            firstIcon.StackText:SetText (firstIconStacks)\n            firstIcon.StackText:Show()\n        end\n        \n        --> left to right\n        if (envTable.GrowDirection == \"right\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n            end        \n            \n        elseif (envTable.GrowDirection == \"left\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n                \n            end                    \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1548004596,
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["LastHookEdited"] = "",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend\n\n\n",
					},
					["Time"] = 1549937733,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 136207,
					["Name"] = "Don't Have Aura [Plater]",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 2446016,
					["Name"] = "M+ Bwonsamdi Reaping",
				}, -- [15]
			},
			["aura_width"] = 22,
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["castbar_target_font"] = "Friz Quadrata TT",
			["cast_statusbar_texture"] = "ElvUI Norm",
			["cast_statusbar_spark_texture"] = "Interface\\AddOns\\Plater\\images\\spark8",
			["health_statusbar_bgtexture"] = "ElvUI Norm",
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Execute Range"] = 1,
				["Reorder Nameplate"] = 3,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Target Color"] = 2,
				["Attacking Specific Unit"] = 1,
				["Aura Reorder"] = 1,
			},
			["target_highlight_height"] = 16,
			["aura_timer_text_font"] = "Friz Quadrata TT",
			["aura_height"] = 14,
			["cast_statusbar_bgtexture"] = "ElvUI Norm",
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.25",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "40",
				["nameplateOtherTopInset"] = "-1",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowAll"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "3",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Color Change"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Unit Power"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["aura_stack_font"] = "Friz Quadrata TT",
			["patch_version"] = 3,
			["aura_timer_text_size"] = 12,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["health_statusbar_texture"] = "ElvUI Norm",
			["captured_spells"] = {
				[196414] = {
					["type"] = "DEBUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[286436] = {
					["type"] = "BUFF",
					["source"] = "Mestrah",
					["npcID"] = 144690,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[262652] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115151] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[198589] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[263165] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[2050] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[278767] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[2060] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[20572] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[130] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["encounterID"] = 2266,
				},
				[223143] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[279793] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[279028] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[284399] = {
					["npcID"] = 146104,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Living Bomb",
					["encounterID"] = 2266,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[527] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[279029] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[228260] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[284656] = {
					["type"] = "BUFF",
					["source"] = "Mestrah",
					["npcID"] = 144690,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[152175] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[133] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["encounterID"] = 2266,
				},
				[272126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Don채ldtrump-Proudmoore",
					["npcID"] = 0,
				},
				[1064] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[63619] = {
					["npcID"] = 19668,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shadowfiend",
					["encounterID"] = 2266,
				},
				[279033] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[285428] = {
					["npcID"] = 144693,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Manceroy Flamefist",
					["encounterID"] = 2266,
				},
				[289521] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[60103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vercetty",
					["encounterID"] = 2266,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[289523] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[271877] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Khelikloth",
					["encounterID"] = 2266,
				},
				[289524] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[269576] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[87023] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Skarsnik",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[147193] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[162794] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[222256] = {
					["type"] = "BUFF",
					["source"] = "Renerok-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215479] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[284669] = {
					["type"] = "BUFF",
					["source"] = "Manceroy Flamefist",
					["npcID"] = 144693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[139] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[87024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
				},
				[556] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["npcID"] = 0,
				},
				[54861] = {
					["type"] = "BUFF",
					["source"] = "Hota-Akama",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[113942] = {
					["type"] = "DEBUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[193358] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[8936] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[1122] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[123725] = {
					["type"] = "DEBUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[248473] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[203845] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[287999] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[51505] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Voidamental",
					["encounterID"] = 2266,
				},
				[274447] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[287747] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[280842] = {
					["type"] = "BUFF",
					["source"] = "Laker-Darkspear",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[205766] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[257044] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Papisalad",
					["encounterID"] = 2266,
				},
				[285959] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[33763] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1160] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[260242] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[271896] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[11366] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["encounterID"] = 2266,
				},
				[585] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[202188] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[288777] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[589] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[269853] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[279572] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[253595] = {
					["type"] = "BUFF",
					["source"] = "Carnographic-Daggerspine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203852] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[131347] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[223929] = {
					["type"] = "DEBUFF",
					["source"] = "Vidra-Jaedenar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225080] = {
					["type"] = "DEBUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[596] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[3409] = {
					["type"] = "DEBUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[48438] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[143625] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[259480] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Casteless Zandalari",
					["npcID"] = 131331,
				},
				[115546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hadesia",
					["npcID"] = 0,
				},
				[123986] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2266,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hadesia",
					["npcID"] = 0,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[27576] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Emosong",
					["encounterID"] = 2266,
				},
				[46968] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[121557] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[201427] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[101545] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2266,
				},
				[191837] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[198103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rylaiz",
					["encounterID"] = 2266,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[59628] = {
					["type"] = "BUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[205648] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[77505] = {
					["type"] = "DEBUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[187874] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vercetty",
					["encounterID"] = 2266,
				},
				[107428] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[101546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[16739] = {
					["type"] = "BUFF",
					["source"] = "Ghostwarrio-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[204883] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[272940] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[273453] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[232633] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[284451] = {
					["npcID"] = 146102,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Living Bomb",
					["encounterID"] = 2266,
				},
				[100780] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2266,
				},
				[116189] = {
					["type"] = "DEBUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[188389] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Voidamental",
					["encounterID"] = 2266,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[284453] = {
					["type"] = "DEBUFF",
					["source"] = "Living Bomb",
					["npcID"] = 146102,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[264761] = {
					["type"] = "BUFF",
					["source"] = "Hiredgun-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228287] = {
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[72968] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[271924] = {
					["type"] = "DEBUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[255909] = {
					["type"] = "DEBUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[274738] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rylaiz",
					["encounterID"] = 2266,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[286503] = {
					["type"] = "DEBUFF",
					["source"] = "Living Bomb",
					["npcID"] = 146104,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[274739] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[179057] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[274740] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[285482] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[18562] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[210643] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Voidamental",
					["encounterID"] = 2266,
				},
				[124503] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[268604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[266047] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[289577] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[139546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Khelikloth",
					["encounterID"] = 2266,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[69070] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[289324] = {
					["type"] = "BUFF",
					["source"] = "Lawjic-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[116768] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[45181] = {
					["type"] = "DEBUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[287280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Termuda-Magtheridon",
					["npcID"] = 0,
				},
				[210391] = {
					["type"] = "BUFF",
					["source"] = "Prettybirdy-Zuluhed",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[202719] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[182387] = {
					["type"] = "DEBUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[288305] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[119582] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[6343] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[126935] = {
					["source"] = "G채rr체k-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245686] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[193641] = {
					["type"] = "BUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[281402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[124506] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[17364] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vercetty",
					["encounterID"] = 2266,
				},
				[281404] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["npcID"] = 0,
				},
				[190446] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[196840] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rylaiz",
					["encounterID"] = 2266,
				},
				[13877] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[200166] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[287802] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[97462] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[272970] = {
					["type"] = "DEBUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[77130] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[268879] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pugnare-Tichondrius",
					["npcID"] = 0,
				},
				[61295] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[97463] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[348] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[199786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["encounterID"] = 2266,
				},
				[269651] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[137639] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[273232] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[44544] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[196718] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[41635] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[210657] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[31687] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["npcID"] = 0,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[280653] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[256693] = {
					["source"] = "Jriel-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202602] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[280398] = {
					["type"] = "BUFF",
					["source"] = "Grimgoblin-Boulderfist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280654] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[260402] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[5672] = {
					["type"] = "BUFF",
					["source"] = "Healing Stream Totem",
					["npcID"] = 3527,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[256694] = {
					["source"] = "Jriel-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115176] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[91775] = {
					["source"] = "G채rr체k-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274774] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[271194] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[288841] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[210660] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[190456] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[251837] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[288333] = {
					["type"] = "DEBUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[272733] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268897] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pugnare-Tichondrius",
					["npcID"] = 0,
				},
				[251838] = {
					["type"] = "BUFF",
					["source"] = "Xizzaar-Mug'thol",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[287568] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[32375] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[251839] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[220510] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1459] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[20243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[229206] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[116841] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[36554] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[188031] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[121253] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[280412] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[193786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vercetty",
					["encounterID"] = 2266,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[2948] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["encounterID"] = 2266,
				},
				[287063] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[29722] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[740] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[157982] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[116011] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["encounterID"] = 2266,
				},
				[279648] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115308] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[73685] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[89158] = {
					["source"] = "G채rr체k-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23920] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[8042] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rylaiz",
					["encounterID"] = 2266,
				},
				[261947] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2266,
				},
				[201846] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[34861] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[116844] = {
					["source"] = "Wutank-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273006] = {
					["type"] = "DEBUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[115310] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[281959] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[47585] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[107574] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[264314] = {
					["type"] = "BUFF",
					["source"] = "Arcashia",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[195072] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[199804] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Khelikloth",
					["encounterID"] = 2266,
				},
				[291170] = {
					["type"] = "DEBUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[288613] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[20484] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[195457] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Khelikloth",
					["encounterID"] = 2266,
				},
				[196608] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[124007] = {
					["npcID"] = 63508,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Xuen",
					["encounterID"] = 2266,
				},
				[279152] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[152108] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[122281] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[264064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kul'krazahn",
					["npcID"] = 120899,
				},
				[193796] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vercetty",
					["encounterID"] = 2266,
				},
				[280433] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[157736] = {
					["type"] = "DEBUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[116847] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[781] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Papisalad",
					["encounterID"] = 2266,
				},
				[12472] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[5225] = {
					["type"] = "BUFF",
					["source"] = "Dutha-Daggerspine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[145205] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[90633] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[185358] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Papisalad",
					["encounterID"] = 2266,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[34767] = {
					["type"] = "BUFF",
					["source"] = "Suvonapal-Shadowsong",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117679] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[264070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kul'krazahn",
					["npcID"] = 120899,
				},
				[124009] = {
					["type"] = "BUFF",
					["source"] = "Xuen",
					["npcID"] = 63508,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[2139] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["encounterID"] = 2266,
				},
				[279673] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[109304] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Papisalad",
					["encounterID"] = 2266,
				},
				[256459] = {
					["type"] = "BUFF",
					["source"] = "Queldora-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281209] = {
					["type"] = "BUFF",
					["source"] = "Sabithe-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["encounterID"] = 2266,
				},
				[116849] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[286581] = {
					["type"] = "DEBUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[198533] = {
					["npcID"] = 60849,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jade Serpent Statue",
					["encounterID"] = 2266,
				},
				[8676] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Khelikloth",
					["encounterID"] = 2266,
				},
				[186258] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[158893] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pugnare-Tichondrius",
					["npcID"] = 0,
				},
				[403] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2266,
				},
				[285818] = {
					["npcID"] = 144690,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mestrah",
					["encounterID"] = 2266,
				},
				[132168] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[278147] = {
					["type"] = "BUFF",
					["source"] = "Bushlight-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286587] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268429] = {
					["type"] = "DEBUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[19750] = {
					["source"] = "Laker-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23922] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[279684] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[177054] = {
					["source"] = "Hota-Akama",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Imsadface-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287615] = {
					["type"] = "DEBUFF",
					["source"] = "Mestrah",
					["npcID"] = 144690,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[6552] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[274741] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[256757] = {
					["source"] = "Pinjra-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279194] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[82326] = {
					["source"] = "Laker-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6572] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[231390] = {
					["type"] = "BUFF",
					["source"] = "Pinjra-Bonechewer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["type"] = "BUFF",
					["source"] = "Laker-Darkspear",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[57723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Brunco-Shandris",
					["npcID"] = 0,
				},
				[91782] = {
					["source"] = "G채rr체k-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[91779] = {
					["source"] = "G채rr체k-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[91785] = {
					["source"] = "G채rr체k-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252353] = {
					["source"] = "Xizzaar-Mug'thol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113656] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[251309] = {
					["source"] = "Xizzaar-Mug'thol",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154797] = {
					["type"] = "BUFF",
					["source"] = "Shiffted",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290371] = {
					["type"] = "BUFF",
					["source"] = "Mandzi-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15286] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[273298] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268439] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[286086] = {
					["npcID"] = 147098,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spirit of Xuen",
					["encounterID"] = 2266,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[273299] = {
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[272276] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[203277] = {
					["type"] = "BUFF",
					["source"] = "Firebangbro-Illidan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Carnographic-Daggerspine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257620] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Papisalad",
					["encounterID"] = 2266,
				},
				[277904] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115767] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[223306] = {
					["type"] = "BUFF",
					["source"] = "Laker-Darkspear",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[238277] = {
					["source"] = "Percivall-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[196741] = {
					["type"] = "BUFF",
					["source"] = "Llone-Barthilas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205448] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[164862] = {
					["type"] = "BUFF",
					["source"] = "Grizlybear-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115192] = {
					["type"] = "BUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[73313] = {
					["type"] = "BUFF",
					["source"] = "Hota-Akama",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122783] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[57724] = {
					["type"] = "DEBUFF",
					["source"] = "Knosian-Daggerspine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[254474] = {
					["type"] = "BUFF",
					["source"] = "Percivall-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[58875] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[280210] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[210053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evodis-Malorne",
					["npcID"] = 0,
				},
				[275863] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[114250] = {
					["type"] = "BUFF",
					["source"] = "Percivall-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81262] = {
					["type"] = "BUFF",
					["source"] = "Efflorescence",
					["npcID"] = 47649,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[209746] = {
					["type"] = "BUFF",
					["source"] = "Flapping",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Flapping",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188443] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Voidamental",
					["encounterID"] = 2266,
				},
				[60234] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[222695] = {
					["source"] = "Itsaso-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Bushlight-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[102351] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[102342] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[256691] = {
					["source"] = "Jriel-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Dutha-Daggerspine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2383] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[3408] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1706] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[188070] = {
					["source"] = "Donkeyfillet-Bladefist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32379] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Udnya-Mug'thol",
					["npcID"] = 0,
				},
				[205708] = {
					["type"] = "DEBUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[29166] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[212182] = {
					["source"] = "Jriel-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115450] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[126389] = {
					["type"] = "BUFF",
					["source"] = "Nalgada-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evodis-Malorne",
					["npcID"] = 0,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Don채ldtrump-Proudmoore",
					["npcID"] = 0,
				},
				[287379] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[546] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[259161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Emshadows-Terenas",
					["npcID"] = 0,
				},
				[202164] = {
					["type"] = "BUFF",
					["source"] = "Nalgada-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[169080] = {
					["source"] = "Hota-Akama",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[124274] = {
					["type"] = "DEBUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[236645] = {
					["type"] = "BUFF",
					["source"] = "Zarkanis-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54049] = {
					["npcID"] = 417,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Khuujhom",
					["encounterID"] = 2266,
				},
				[126462] = {
					["source"] = "Hota-Akama",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77472] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[90328] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 118244,
				},
				[255071] = {
					["source"] = "Lebowskii",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285979] = {
					["type"] = "BUFF",
					["source"] = "Clio-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102352] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[224125] = {
					["type"] = "BUFF",
					["source"] = "Elemental Raptor",
					["npcID"] = 100820,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[188196] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rylaiz",
					["encounterID"] = 2266,
				},
				[116858] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[288151] = {
					["type"] = "DEBUFF",
					["source"] = "Multi-Sided Strike",
					["npcID"] = 149566,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[185763] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[225788] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[124275] = {
					["type"] = "DEBUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Senari-Mug'thol",
					["npcID"] = 0,
				},
				[224126] = {
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["npcID"] = 100820,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[201633] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[122278] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[61882] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Voidamental",
					["encounterID"] = 2266,
				},
				[124430] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[203539] = {
					["type"] = "BUFF",
					["source"] = "Suvonapal-Shadowsong",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224127] = {
					["type"] = "BUFF",
					["source"] = "Elemental Raptor",
					["npcID"] = 100820,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[264114] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kul'krazahn",
					["npcID"] = 120899,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[17962] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[191008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pugnare-Tichondrius",
					["npcID"] = 0,
				},
				[80240] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[192225] = {
					["type"] = "BUFF",
					["source"] = "Skarsnik",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[273323] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pugnare-Tichondrius",
					["npcID"] = 0,
				},
				[205523] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[286367] = {
					["type"] = "DEBUFF",
					["source"] = "Living Bomb",
					["npcID"] = 146103,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[245388] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Emosong",
					["encounterID"] = 2266,
				},
				[273836] = {
					["type"] = "DEBUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[286368] = {
					["npcID"] = 146103,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Living Bomb",
					["encounterID"] = 2266,
				},
				[192106] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[183752] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[73920] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[101643] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[288024] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Baykin-Arathor",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[197214] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vercetty",
					["encounterID"] = 2266,
				},
				[286370] = {
					["npcID"] = 146104,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Living Bomb",
					["encounterID"] = 2266,
				},
				[20707] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[286988] = {
					["type"] = "DEBUFF",
					["source"] = "Manceroy Flamefist",
					["npcID"] = 144693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pugnare-Tichondrius",
					["npcID"] = 0,
				},
				[355] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[198300] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[256739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hadesia",
					["npcID"] = 0,
				},
				[88423] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[267325] = {
					["type"] = "BUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1784] = {
					["type"] = "BUFF",
					["source"] = "Jriel-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5394] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[188838] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2266,
				},
				[288675] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115181] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[251231] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[586] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[58867] = {
					["npcID"] = 100820,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elemental Raptor",
					["encounterID"] = 2266,
				},
				[290467] = {
					["type"] = "BUFF",
					["source"] = "Knosian-Daggerspine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[193315] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Khelikloth",
					["encounterID"] = 2266,
				},
				[264091] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[281517] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[271543] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[197919] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[115072] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[34914] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[228354] = {
					["type"] = "DEBUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[36213] = {
					["npcID"] = 95072,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Earth Elemental",
					["encounterID"] = 2266,
				},
				[275893] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[162243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mahle",
					["encounterID"] = 2266,
				},
				[194084] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[198304] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[212800] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[119381] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[191840] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[57984] = {
					["npcID"] = 95061,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Fire Elemental",
					["encounterID"] = 2266,
				},
				[79140] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Emosong",
					["encounterID"] = 2266,
				},
				[287660] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[6262] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[282031] = {
					["npcID"] = 144690,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mestrah",
					["encounterID"] = 2266,
				},
				[198838] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2266,
				},
				[286163] = {
					["npcID"] = 144693,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Manceroy Flamefist",
					["encounterID"] = 2266,
				},
				[273851] = {
					["source"] = "G채rr체k-Gurubashi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268314] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vercetty",
					["encounterID"] = 2266,
				},
				[56641] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Papisalad",
					["encounterID"] = 2266,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Flapping",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282036] = {
					["npcID"] = 144693,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Manceroy Flamefist",
					["encounterID"] = 2266,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evodis-Malorne",
					["npcID"] = 0,
				},
				[108853] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["encounterID"] = 2266,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[282037] = {
					["type"] = "DEBUFF",
					["source"] = "Manceroy Flamefist",
					["npcID"] = 144693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[129597] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[207386] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[5302] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268769] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[284277] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[33076] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[33891] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[256619] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scheming Street Scamp",
					["npcID"] = 129394,
				},
				[282040] = {
					["type"] = "BUFF",
					["source"] = "Manceroy Flamefist",
					["npcID"] = 144693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[190356] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["encounterID"] = 2266,
				},
				[117952] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[199603] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[79206] = {
					["type"] = "BUFF",
					["source"] = "Skarsnik",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[116] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["encounterID"] = 2266,
				},
				[43308] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115203] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sherbie",
					["encounterID"] = 2266,
				},
				[286369] = {
					["type"] = "DEBUFF",
					["source"] = "Living Bomb",
					["npcID"] = 146104,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[199844] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[284089] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[19434] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Papisalad",
					["encounterID"] = 2266,
				},
				[20473] = {
					["source"] = "Bushlight-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[210714] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115175] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[188592] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[120517] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[270657] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1329] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Emosong",
					["encounterID"] = 2266,
				},
				[138130] = {
					["type"] = "BUFF",
					["source"] = "Earth Spirit",
					["npcID"] = 69792,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[257622] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1856] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andrewzz",
					["encounterID"] = 2266,
				},
				[73325] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[124273] = {
					["type"] = "DEBUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[227723] = {
					["type"] = "BUFF",
					["source"] = "Skarsnik",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[205473] = {
					["type"] = "BUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[252216] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[102417] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Evgenius-Vashj",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[279924] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[93402] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[47788] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["npcID"] = 0,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[116680] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[271107] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[289467] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unrealzdru-Tichondrius",
					["npcID"] = 0,
				},
				[186257] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[111771] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[285976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evyllyn-Norgannon",
					["npcID"] = 0,
				},
				[285632] = {
					["type"] = "DEBUFF",
					["source"] = "Spirit of Xuen",
					["npcID"] = 147098,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[277960] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1766] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Emosong",
					["encounterID"] = 2266,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[285634] = {
					["npcID"] = 147098,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spirit of Xuen",
					["encounterID"] = 2266,
				},
				[277706] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[288839] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[207778] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[195630] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[109132] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2266,
				},
				[121536] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[197916] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[126664] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[120954] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[31707] = {
					["npcID"] = 78116,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Water Elemental",
					["encounterID"] = 2266,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[119910] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cheder",
					["encounterID"] = 2266,
				},
				[251836] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[703] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andrewzz",
					["encounterID"] = 2266,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[273685] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[228358] = {
					["type"] = "DEBUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[278159] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[224001] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[287062] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[98008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[48045] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[2823] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Infernal",
					["npcID"] = 89,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[6673] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[116670] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[278736] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[243955] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[118905] = {
					["npcID"] = 61245,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Capacitor Totem",
					["encounterID"] = 2266,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[115080] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2266,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Rylaiz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[280413] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[27827] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
				},
				[31661] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["encounterID"] = 2266,
				},
				[2580] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[774] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ngow",
					["encounterID"] = 2266,
				},
				[288330] = {
					["type"] = "DEBUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[223498] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[123904] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2266,
				},
				[1943] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andrewzz",
					["encounterID"] = 2266,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[198065] = {
					["type"] = "BUFF",
					["source"] = "Straitbanga-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2565] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[52174] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Orcbum",
					["encounterID"] = 2266,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[199600] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[250870] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2266,
				},
				[25046] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Emosong",
					["encounterID"] = 2266,
				},
				[124682] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["encounterID"] = 2266,
				},
				[30455] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["encounterID"] = 2266,
				},
				[271544] = {
					["type"] = "DEBUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[278999] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[271071] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "R챵zes-Korgath",
					["npcID"] = 0,
				},
				[2098] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Khelikloth",
					["encounterID"] = 2266,
				},
				[198067] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rylaiz",
					["encounterID"] = 2266,
				},
				[108843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Andrewzz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[187878] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[1966] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[33697] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[123586] = {
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[202090] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[192058] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2266,
				},
				[277724] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[51723] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andrewzz",
					["encounterID"] = 2266,
				},
				[284374] = {
					["type"] = "DEBUFF",
					["source"] = "Manceroy Flamefist",
					["npcID"] = 144693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[279515] = {
					["type"] = "BUFF",
					["source"] = "Vercetty",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[271843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Termuda-Magtheridon",
					["npcID"] = 0,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[256453] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[185565] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andrewzz",
					["encounterID"] = 2266,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[212051] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Don채ldtrump-Proudmoore",
					["npcID"] = 0,
				},
				[60233] = {
					["type"] = "BUFF",
					["source"] = "Sherbie",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[287916] = {
					["type"] = "BUFF",
					["source"] = "Mahle",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[5487] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[204336] = {
					["source"] = "Donkeyfillet-Bladefist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288981] = {
					["type"] = "BUFF",
					["source"] = "Skarsnik",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[49821] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[21562] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[111759] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[289308] = {
					["type"] = "DEBUFF",
					["source"] = "Focalaire",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[286425] = {
					["type"] = "BUFF",
					["source"] = "Manceroy Flamefist",
					["npcID"] = 144693,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[113900] = {
					["npcID"] = 59271,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonic Gateway",
					["encounterID"] = 2266,
				},
				[16870] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[270058] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[243435] = {
					["type"] = "BUFF",
					["source"] = "Zombiemonk",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[198839] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[84714] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["encounterID"] = 2266,
				},
				[259452] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cautex-Tichondrius",
					["npcID"] = 0,
				},
				[8004] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skarsnik",
					["encounterID"] = 2266,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[290264] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[278244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Emosong",
					["npcID"] = 0,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andrewzz",
					["npcID"] = 0,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[190784] = {
					["source"] = "Percivall-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157153] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["encounterID"] = 2266,
				},
				[265202] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2266,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Evgenius-Vashj",
					["npcID"] = 0,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Litasf-Hyjal",
					["npcID"] = 0,
				},
				[256581] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scheming Street Scamp",
					["npcID"] = 129394,
				},
				[290372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Baykin-Arathor",
					["npcID"] = 0,
				},
				[288988] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "R챵zes-Korgath",
					["npcID"] = 0,
				},
				[259454] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[280549] = {
					["type"] = "BUFF",
					["source"] = "Dasletzte-Boulderfist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288989] = {
					["type"] = "DEBUFF",
					["source"] = "Cheder",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[289423] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Emshadows-Terenas",
					["npcID"] = 0,
				},
				[115834] = {
					["type"] = "BUFF",
					["source"] = "Emosong",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[8092] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dolclemits",
					["encounterID"] = 2266,
				},
				[259455] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[257537] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Focalaire",
					["encounterID"] = 2266,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[280409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Disfunction-Firetree",
					["npcID"] = 0,
				},
				[113899] = {
					["npcID"] = 59262,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonic Gateway",
					["encounterID"] = 2266,
				},
				[51533] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vercetty",
					["encounterID"] = 2266,
				},
				[285978] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Devtrekt-Zul'jin",
					["npcID"] = 0,
				},
				[197721] = {
					["type"] = "BUFF",
					["source"] = "Ngow",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[259456] = {
					["type"] = "BUFF",
					["source"] = "Sabithe-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zepnip",
					["npcID"] = 0,
				},
				[252753] = {
					["type"] = "DEBUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2266,
				},
				[256008] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hadesia",
					["npcID"] = 0,
				},
			},
		},
	},
}
