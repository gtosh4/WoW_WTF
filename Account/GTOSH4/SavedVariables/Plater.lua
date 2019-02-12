
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
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
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
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1537884697,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Important [Plater]",
					["ScriptType"] = 3,
					["Icon"] = 135996,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Name"] = "Aura - Buff Alert [Plater]",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 388,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538066775,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Very Important [Plater]",
					["ScriptType"] = 2,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Time"] = 1540663131,
					["PlaterCore"] = 1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["ScriptType"] = 2,
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538429739,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["ScriptType"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 567,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538237586,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Big Alert [Plater]",
					["ScriptType"] = 2,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 376,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1539201768,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Small Alert [Plater]",
					["ScriptType"] = 2,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 106,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1538256464,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["ScriptType"] = 1,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Name"] = "Color Change [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Aura - Blink by Time Left [Plater]",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1543680853,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Border Color [Plater]",
					["ScriptType"] = 1,
					["Icon"] = 133006,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Author"] = "Celian-Sylvanas",
					["Desc"] = "Show the energy amount above the nameplate",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1539015649,
					["PlaterCore"] = 1,
					["Name"] = "UnitPower [Plater]",
					["ScriptType"] = 3,
					["Icon"] = 136048,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
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
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1539201849,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["ScriptType"] = 2,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Name"] = "Fixate [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    if envTable.FixateTarget then\n        envTable.FixateTarget:SetText (\"\")\n        envTable.FixateTarget:Hide()\n    end\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n\n\n",
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
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Name"] = "Fixate On You [Plater]",
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
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["level_text_size"] = 8,
					["cast"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_text_alpha"] = 0.799999952316284,
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
					["spellpercent_text_size"] = 8,
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
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["actorname_text_size"] = 8,
					["percent_text_enabled"] = true,
					["percent_text_ooc"] = true,
					["big_actortitle_text_size"] = 10,
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["actorname_text_anchor"] = {
						["side"] = 1,
					},
					["percent_text_size"] = 8,
					["percent_text_show_decimals"] = false,
					["percent_text_font"] = "Friz Quadrata TT",
					["buff_frame_y_offset"] = 0,
					["quest_enabled"] = true,
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["spellname_text_size"] = 12,
					["health"] = {
						140, -- [1]
						10, -- [2]
					},
					["percent_show_health"] = true,
					["spellpercent_text_enabled"] = true,
					["health_incombat"] = {
						140, -- [1]
						10, -- [2]
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
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547392935,
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
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Name"] = "Color Automation [Plater]",
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
					["LastHookEdited"] = "Nameplate Updated",
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
							2280, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["Name"] = "Stormwall Encounter [Plater]",
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
					["LastHookEdited"] = "Constructor",
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
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
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
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
					},
					["Time"] = 1548612537,
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
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["Name"] = "Jaina Encounter [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["Time"] = 1547406548,
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
					["Icon"] = 135358,
					["Name"] = "Execute Range [Plater]",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 224,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1548811389,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "Constructor",
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Name"] = "Attacking Specific Unit [Plater]",
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
					["LastHookEdited"] = "Constructor",
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
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
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
					["LastHookEdited"] = "Nameplate Added",
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
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
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
					["LastHookEdited"] = "Constructor",
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
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
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
					["LastHookEdited"] = "",
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
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 135426,
					["Name"] = "Combo Points [Plater]",
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
					["LastHookEdited"] = "Constructor",
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
					["Icon"] = 1966587,
					["Name"] = "Players Targeting a Target [Plater]",
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
					["LastHookEdited"] = "Target Changed",
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
					["Icon"] = 878211,
					["Name"] = "Current Target Color [Plater]",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 239,
					["HooksTemp"] = {
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainer = unitFrame.BuffFrame.PlaterBuffList\n    local aurasShown = {}\n    local aurasDuplicated = {}\n    \n    for index, auraIcon in ipairs (auraContainer) do\n        if (auraIcon:IsShown()) then\n            \n            if (envTable.consolidadeRepeatedAuras) then\n                \n                if (aurasDuplicated [auraIcon.SpellName]) then\n                    \n                    --where the existing aura is stored\n                    local duplicatedIndex = aurasDuplicated [auraIcon.SpellName]\n                    \n                    --get the icon already in the table\n                    local icon = aurasShown [duplicatedIndex][1]\n                    \n                    --check if the remaining time of the icon already added in the table is slower than the current\n                    if (auraIcon.RemainingTime > icon.RemainingTime) then\n                        --replace the icon for the icon with bigger duration\n                        aurasShown [duplicatedIndex][1] = auraIcon\n                        aurasShown [duplicatedIndex][3] = aurasShown [duplicatedIndex][3] + 1\n                        icon:Hide()\n                        \n                    else\n                        auraIcon:Hide()\n                    end\n                    \n                else    \n                    aurasDuplicated [auraIcon.SpellName] = index\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority, 1})\n                end\n                \n            else\n                local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                tinsert (aurasShown, {auraIcon, priority})\n                \n            end           \n        end\n    end\n    \n    table.sort (aurasShown, DetailsFramework.SortOrder2)\n    \n    local padding = envTable.padding\n    local framersPerRow = envTable.maxAurasPerRow + 1\n    \n    --first icon is where the row starts\n    local firstIcon = aurasShown[1] and aurasShown[1][1]\n    \n    if (firstIcon) then\n        local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n        anchorPoint:SetSize (1, 1)\n        \n        firstIcon:ClearAllPoints()\n        firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n        \n        --check the consolidaded stacks, this is not the regular buff stacks\n        local firstIconStacks = aurasShown[1][3]\n        if (firstIconStacks and firstIconStacks > 1) then\n            firstIcon.StackText:SetText (firstIconStacks)\n            firstIcon.StackText:Show()\n        end\n        \n        --> left to right\n        if (envTable.GrowDirection == \"right\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n            end        \n            \n        elseif (envTable.GrowDirection == \"left\") then\n            --> iterate among all aura icons\n            for i = 2, #aurasShown do\n                local auraIcon = aurasShown [i][1]\n                auraIcon:ClearAllPoints()\n                \n                if (i == framersPerRow) then\n                    auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                    framersPerRow = framersPerRow + framersPerRow\n                    \n                else\n                    auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                end\n                \n                local stacks = aurasShown[i][3]\n                if (stacks and stacks > 1) then\n                    auraIcon.StackText:SetText (stacks)\n                    auraIcon.StackText:Show()\n                end\n                \n            end                    \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 1\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --auras should grow to right or left?\n    envTable.GrowDirection = \"right\" --insert 'left' to grow to the left side\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
					},
					["Time"] = 1548004596,
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
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [13]
			},
			["aura_width"] = 22,
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Unit Power"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Color Change"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["castbar_target_font"] = "Friz Quadrata TT",
			["cast_statusbar_texture"] = "ElvUI Norm",
			["cast_statusbar_spark_texture"] = "Interface\\AddOns\\Plater\\images\\spark8",
			["health_statusbar_bgtexture"] = "ElvUI Norm",
			["hook_auto_imported"] = {
				["Targetting Alpha"] = 3,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Aura Reorder"] = 1,
				["Blockade Encounter"] = 1,
				["Attacking Specific Unit"] = 1,
				["Reorder Nameplate"] = 3,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Hide Neutral Units"] = 1,
				["Target Color"] = 2,
				["Execute Range"] = 1,
				["Jaina Encounter"] = 6,
			},
			["aura_timer_text_font"] = "Friz Quadrata TT",
			["aura_height"] = 14,
			["cast_statusbar_bgtexture"] = "ElvUI Norm",
			["target_highlight_height"] = 16,
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
				["nameplateGlobalScale"] = "1.0",
				["nameplatePersonalHideDelaySeconds"] = "3",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateShowAll"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "40",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "0.75",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateOtherTopInset"] = "-1",
				["nameplateShowSelf"] = "0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["aura_stack_font"] = "Friz Quadrata TT",
			["patch_version"] = 3,
			["aura_timer_text_size"] = 12,
			["first_run2"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["health_statusbar_texture"] = "ElvUI Norm",
			["captured_spells"] = {
				[164815] = {
					["source"] = "Daiyzed",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264510] = {
					["source"] = "Crazed Marksman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131849,
				},
				[259489] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[215479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[266047] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["source"] = "Vensy",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285496] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["source"] = "Holyswrath-Wildhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255909] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252071] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119415] = {
					["type"] = "BUFF",
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Benhuang-Suramar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31661] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285500] = {
					["source"] = "Solnix-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145629] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31821] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123254] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264520] = {
					["source"] = "Maddened Survivalist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[115450] = {
					["source"] = "Nyxey-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Llendar-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271174] = {
					["source"] = "Pallid Gorger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[252842] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Image of Zardrax the Empowerer",
					["npcID"] = 127407,
				},
				[408] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116858] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[6552] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223929] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ephexgg-Illidan",
					["npcID"] = 0,
				},
				[264525] = {
					["source"] = "Maddened Survivalist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[281413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jorgee-Darkspear",
					["npcID"] = 0,
				},
				[221883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lilstrong-Stormrage",
					["npcID"] = 0,
				},
				[194249] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45524] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221885] = {
					["type"] = "BUFF",
					["source"] = "Iamgrroot-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118779] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190925] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[221886] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232633] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285514] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[279885] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[270674] = {
					["source"] = "Bubblëburst-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203720] = {
					["source"] = "Alrian-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194509] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190927] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[280400] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frontoy-Tichondrius",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Woods-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50259] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[28272] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228287] = {
					["source"] = "Kâì",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232893] = {
					["source"] = "Demonsquatch-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267611] = {
					["source"] = "Benhuang-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerundis-Sargeras",
					["npcID"] = 0,
				},
				[271194] = {
					["type"] = "BUFF",
					["source"] = "Grimmwulf-Darkspear",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278359] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fsixfullvoic-Frostmourne",
					["npcID"] = 0,
				},
				[268125] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219589] = {
					["source"] = "Greatness-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wraithin-Tichondrius",
					["npcID"] = 0,
				},
				[287062] = {
					["source"] = "Youheartbry-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Empowered Kal'dran",
					["npcID"] = 127394,
				},
				[198097] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254134] = {
					["type"] = "BUFF",
					["source"] = "Tamed Warspawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128071,
				},
				[1833] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280412] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phâtz-Barthilas",
					["npcID"] = 0,
				},
				[91021] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272737] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[279902] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264038] = {
					["source"] = "Coven Thornshaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[199890] = {
					["source"] = "Akirios-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251321] = {
					["type"] = "BUFF",
					["source"] = "Hex Priestess Tizeja",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122666,
				},
				[288091] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207311] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264040] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121471] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257975] = {
					["type"] = "BUFF",
					["source"] = "Blood Priestess Zu'Anji",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126890,
				},
				[201427] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204242] = {
					["source"] = "Oof",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaein-Doomhammer",
					["npcID"] = 0,
				},
				[475] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264556] = {
					["source"] = "Thornguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131858,
				},
				[279397] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Narkhen-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[185565] = {
					["source"] = "Guids-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[206803] = {
					["source"] = "Solnix-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291170] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dslyexic-Mal'Ganis",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Abrazodulce-Hydraxis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7744] = {
					["source"] = "Akirios-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["source"] = "Utoc-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1943] = {
					["source"] = "Julzx-Frostmourne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264050] = {
					["source"] = "Coven Thornshaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[1953] = {
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Tiltèd-Terenas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185313] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[498] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115078] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[280433] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[273781] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212182] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210391] = {
					["source"] = "Holyhanna-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Aureliana-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279924] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Bok-Boulderfist",
					["npcID"] = 0,
				},
				[30449] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48792] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198111] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32752] = {
					["source"] = "Rorbro-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115080] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286581] = {
					["source"] = "Guids-Zul'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6201] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[147193] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188389] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[2094] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Scroatcoat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201695] = {
					["source"] = "Abrazodulce-Hydraxis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257220] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Reconstructed Terror",
					["npcID"] = 127253,
				},
				[528] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202719] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102543] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264070] = {
					["source"] = "Kul'krazahn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 120899,
				},
				[91797] = {
					["source"] = "Wormstealer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 26125,
				},
				[273794] = {
					["type"] = "DEBUFF",
					["source"] = "Iamgrroot-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[546] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Astic-Firetree",
					["npcID"] = 0,
				},
				[203233] = {
					["source"] = "Khana-Ner'zhul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260805] = {
					["type"] = "BUFF",
					["source"] = "Sister Solena",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[272260] = {
					["source"] = "Bubblëburst-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Melborn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273797] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213981] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89751] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ikzilkazul",
					["npcID"] = 17252,
				},
				[273286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[235219] = {
					["encounterID"] = 2113,
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Shizenkami-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260551] = {
					["encounterID"] = 2114,
					["source"] = "Soulbound Goliath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131667,
				},
				[197862] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ytrexious-Stormreaver",
					["npcID"] = 0,
				},
				[200166] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212704] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Hubby-Runetotem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Dêxter-Mok'Nathal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11327] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Bourne-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Cheddzki-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[91800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Marrowcrawler",
					["npcID"] = 26125,
				},
				[204262] = {
					["source"] = "Jakésteel",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102547] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204263] = {
					["encounterID"] = 2115,
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190446] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Flashzor-Vashj",
					["npcID"] = 0,
				},
				[605] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Obsitus",
					["npcID"] = 123727,
				},
				[273298] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brownshugah-Tichondrius",
					["npcID"] = 0,
				},
				[34914] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273299] = {
					["source"] = "Kâì",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272276] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zaein-Doomhammer",
					["npcID"] = 0,
				},
				[257231] = {
					["source"] = "Hex Priestess Tizeja",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 122666,
				},
				[278931] = {
					["source"] = "Trewchainz-Kel'Thuzad",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124682] = {
					["source"] = "Namaste-Suramar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Cerundis-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274838] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["source"] = "Rivalry",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[633] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Brohaus-Tichondrius",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Bizmatek-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["source"] = "Melborn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197871] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176890] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[37346] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Timelørd-Dragonblight",
					["npcID"] = 0,
				},
				[258003] = {
					["type"] = "BUFF",
					["source"] = "Blood Witch Vashera",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126888,
				},
				[287638] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Prechty-Barthilas",
					["npcID"] = 0,
				},
				[287639] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Prechty-Barthilas",
					["npcID"] = 0,
				},
				[258004] = {
					["type"] = "DEBUFF",
					["source"] = "Blood Witch Vashera",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126888,
				},
				[217832] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197874] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ajidamo-Lightbringer",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278431] = {
					["source"] = "Devouring Maggot",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134024,
				},
				[259285] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Psychs-Nesingwary",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5394] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[19577] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[53595] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155145] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264105] = {
					["source"] = "Marked Sister",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131818,
				},
				[79140] = {
					["source"] = "Pattyxo-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Kaiciar-Tortheldrin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124430] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ahriam-Hyjal",
					["npcID"] = 0,
				},
				[688] = {
					["source"] = "Rorbro-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265642] = {
					["source"] = "Diseased Mastiff",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135234,
				},
				[135700] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268202] = {
					["encounterID"] = 2117,
					["source"] = "Deathtouched Slaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135552,
				},
				[2782] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264110] = {
					["source"] = "Marked Sister",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131818,
				},
				[703] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77606] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Wiskism-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[125071] = {
					["type"] = "BUFF",
					["source"] = "Gaianel-Daggerspine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260569] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[273836] = {
					["type"] = "DEBUFF",
					["source"] = "Scroatcoat",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278954] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264114] = {
					["source"] = "Kul'krazahn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 120899,
				},
				[16827] = {
					["source"] = "Gummi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 38453,
				},
				[33702] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[208628] = {
					["source"] = "Dêxter-Mok'Nathal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278444] = {
					["source"] = "Devouring Maggot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134024,
				},
				[197626] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gargarhan-Zangarmarsh",
					["npcID"] = 0,
				},
				[281517] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rlot-Ragnaros",
					["npcID"] = 0,
				},
				[264119] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zaein-Doomhammer",
					["npcID"] = 0,
				},
				[61721] = {
					["source"] = "Greatness-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57755] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[87204] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Felpoison-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187650] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[198909] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rlot-Ragnaros",
					["npcID"] = 0,
				},
				[275895] = {
					["type"] = "DEBUFF",
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202748] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278456] = {
					["source"] = "Devouring Maggot",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134024,
				},
				[256739] = {
					["source"] = "Rent-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47585] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288693] = {
					["source"] = "Tormented Soul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148893,
				},
				[111898] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Vicdorzul-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280506] = {
					["source"] = "Gorak Tul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144324,
				},
				[257252] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zardrax the Empowerer",
					["npcID"] = 127298,
				},
				[155158] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62618] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23161] = {
					["source"] = "Sendrea-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196099] = {
					["source"] = "Poneyboy-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111771] = {
					["source"] = "Akirios-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[266181] = {
					["encounterID"] = 2117,
					["source"] = "Gorak Tul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131864,
				},
				[89766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Felguard",
					["npcID"] = 17252,
				},
				[8690] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19483] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Infernal",
					["npcID"] = 89,
				},
				[21562] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jcôn-AeriePeak",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Ghoulskout-Mal'Ganis",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273349] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274373] = {
					["source"] = "Darthgordy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58965,
				},
				[275398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[264140] = {
					["source"] = "Jagged Hound",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131669,
				},
				[278981] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215294] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[228600] = {
					["source"] = "Ceesong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277960] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[264655] = {
					["source"] = "Infected Peasant",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134041,
				},
				[236021] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185358] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[53600] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15487] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ahriam-Hyjal",
					["npcID"] = 0,
				},
				[278474] = {
					["source"] = "Coven Thornshaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131666,
				},
				[22842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fsixfullvoic-Frostmourne",
					["npcID"] = 0,
				},
				[225787] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257260] = {
					["source"] = "Thornguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131858,
				},
				[853] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160029] = {
					["source"] = "Daiyzed",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264150] = {
					["source"] = "Thornguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131858,
				},
				[232698] = {
					["source"] = "Plunance-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77616] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266198] = {
					["encounterID"] = 2117,
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277969] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[51490] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[264153] = {
					["source"] = "Devouring Maggot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134024,
				},
				[54049] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maadhum",
					["npcID"] = 417,
				},
				[108194] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[4987] = {
					["source"] = "Holyswrath-Wildhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5019] = {
					["encounterID"] = 2113,
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224001] = {
					["source"] = "Khell",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26297] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30455] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[65116] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Devilicious-Cairne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250870] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255220] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zardrax Conduit",
					["npcID"] = 127255,
				},
				[107428] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24858] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5211] = {
					["source"] = "Cerundis-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228354] = {
					["source"] = "Ceesong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216328] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116768] = {
					["source"] = "Youheartbry-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265187] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[290264] = {
					["source"] = "Rent-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260852] = {
					["encounterID"] = 2113,
					["source"] = "Sister Solena",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[132403] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271843] = {
					["source"] = "Kattarah-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263144] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fenclaw Stalker",
					["npcID"] = 130722,
				},
				[216331] = {
					["source"] = "Ophirrila-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[101545] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Elinas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["source"] = "Ceesong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210191] = {
					["source"] = "Aureliana-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275429] = {
					["source"] = "Trewchainz-Kel'Thuzad",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184092] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Elinas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188443] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[101546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jcôn-AeriePeak",
					["npcID"] = 0,
				},
				[32727] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123040] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Prechty-Barthilas",
					["npcID"] = 0,
				},
				[203285] = {
					["source"] = "Greatness-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250878] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157228] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268271] = {
					["encounterID"] = 2116,
					["source"] = "Lady Waycrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[11426] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203286] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199448] = {
					["source"] = "Holyswrath-Wildhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gino-Destromath",
					["npcID"] = 0,
				},
				[31224] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44457] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272369] = {
					["type"] = "BUFF",
					["source"] = "Bone Raptor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130735,
				},
				[264693] = {
					["encounterID"] = 2115,
					["source"] = "Raal the Gluttonous",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[199450] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270323] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[264694] = {
					["encounterID"] = 2115,
					["source"] = "Raal the Gluttonous",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[255999] = {
					["source"] = "Disciple of Tizeja",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126654,
				},
				[268278] = {
					["encounterID"] = 2116,
					["source"] = "Lady Waycrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[197916] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jcôn-AeriePeak",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115750] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[105771] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["source"] = "Demonsquatch-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132157] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[62305] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aneyh",
					["npcID"] = 124287,
				},
				[32216] = {
					["source"] = "Centigor-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shiprall-Tichondrius",
					["npcID"] = 0,
				},
				[236299] = {
					["type"] = "DEBUFF",
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257537] = {
					["encounterID"] = 2115,
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[227344] = {
					["source"] = "Nyxey-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1022] = {
					["encounterID"] = 2114,
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jcôn-AeriePeak",
					["npcID"] = 0,
				},
				[188196] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[270332] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[28730] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108843] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[288756] = {
					["source"] = "Seriph-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49576] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acrycìa-Lightbringer",
					["npcID"] = 0,
				},
				[1044] = {
					["source"] = "Bubblëburst-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[270335] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[66] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1064] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2139] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257797] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203808] = {
					["source"] = "Ezekielrage-Uldum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257798] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254472] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Smokeetree-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19647] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Maadhum",
					["npcID"] = 417,
				},
				[289277] = {
					["source"] = "Hubby-Runetotem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203554] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zaein-Doomhammer",
					["npcID"] = 0,
				},
				[270343] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[1122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[184364] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272903] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255754] = {
					["type"] = "BUFF",
					["source"] = "Sethrak Ravager",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126288,
				},
				[193065] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81340] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69826] = {
					["source"] = "Choochoo-Mok'Nathal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205604] = {
					["source"] = "Solnix-Wildhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274443] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[184367] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[122281] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sistafista-Bloodscalp",
					["npcID"] = 0,
				},
				[132169] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266258] = {
					["encounterID"] = 2117,
					["source"] = "Drust Slaver Summoning Portal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133435,
				},
				[2383] = {
					["source"] = "Smokeetree-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Omegacarry-Hydraxis",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256014] = {
					["source"] = "Obedient Drudge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126807,
				},
				[97462] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205351] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85948] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260365] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fenclaw Runner",
					["npcID"] = 130727,
				},
				[51690] = {
					["type"] = "BUFF",
					["source"] = "Scroatcoat",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107570] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33395] = {
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[195630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[77505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[48108] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266266] = {
					["encounterID"] = 2117,
					["source"] = "Gorak Tul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131864,
				},
				[119085] = {
					["source"] = "Mintyfresh-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203819] = {
					["source"] = "Alrian-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[278551] = {
					["source"] = "Coven Thornshaper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131666,
				},
				[108211] = {
					["source"] = "Kouka-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acrycìa-Lightbringer",
					["npcID"] = 0,
				},
				[12323] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265759] = {
					["source"] = "Matron Bryndle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135329,
				},
				[208683] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265761] = {
					["source"] = "Matron Bryndle",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135329,
				},
				[257044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[197937] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204079] = {
					["source"] = "Oof",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5308] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1330] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58984] = {
					["source"] = "Cerundis-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268836] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287771] = {
					["source"] = "Youheartbry-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254232] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108853] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280608] = {
					["source"] = "Scroatcoat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154953] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273956] = {
					["type"] = "BUFF",
					["source"] = "Sethrak Warden",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126314,
				},
				[290333] = {
					["source"] = "Hubby-Runetotem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265258] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155722] = {
					["source"] = "Cerundis-Sargeras",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32379] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frotoy-Tichondrius",
					["npcID"] = 0,
				},
				[288800] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187707] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[263725] = {
					["type"] = "BUFF",
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256026] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191034] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290337] = {
					["source"] = "Smolsnek-Shu'halo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278567] = {
					["source"] = "Thornguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131858,
				},
				[89792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Biznip",
					["npcID"] = 416,
				},
				[132951] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Narkhen-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272940] = {
					["source"] = "Melborn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33206] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shiprall-Tichondrius",
					["npcID"] = 0,
				},
				[267824] = {
					["source"] = "Soul Essence",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135240,
				},
				[5740] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[289318] = {
					["source"] = "Cerundis-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216113] = {
					["source"] = "Nyxey-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Earth Elemental",
					["npcID"] = 95072,
				},
				[272945] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[222256] = {
					["source"] = "Kohden-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47536] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Rivalry",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["source"] = "Momochi-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[103740] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201787] = {
					["source"] = "Kâì",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206649] = {
					["source"] = "Demonsquatch-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287280] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20066] = {
					["source"] = "Holyswrath-Wildhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yungmeta-Tichondrius",
					["npcID"] = 0,
				},
				[288305] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dslyexic-Mal'Ganis",
					["npcID"] = 0,
				},
				[256034] = {
					["type"] = "DEBUFF",
					["source"] = "Obedient Drudge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126807,
				},
				[279606] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Army of the Dead",
					["npcID"] = 24207,
				},
				[69070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Phâtz-Barthilas",
					["npcID"] = 0,
				},
				[130736] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267325] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212792] = {
					["source"] = "Ceesong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18499] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269885] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269887] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267329] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275006] = {
					["source"] = "Rïdic-Runetotem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212283] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267331] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["source"] = "Darthgordy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59052] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187464] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[216890] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Empowered Worshipper",
					["npcID"] = 127224,
				},
				[126389] = {
					["source"] = "Melborn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zaein-Doomhammer",
					["npcID"] = 0,
				},
				[56814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Timelørd-Dragonblight",
					["npcID"] = 0,
				},
				[113724] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273481] = {
					["type"] = "DEBUFF",
					["source"] = "Iamgrroot-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zaein-Doomhammer",
					["npcID"] = 0,
				},
				[212800] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[3355] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Spellçheck-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272461] = {
					["source"] = "Reanimated Horror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 122684,
				},
				[62124] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33786] = {
					["source"] = "Cerundis-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288839] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[86603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 131135,
				},
				[119611] = {
					["source"] = "Bachenn-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19236] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Obsitus",
					["npcID"] = 123727,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Scroatcoat",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212036] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Daiyzed",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262232] = {
					["source"] = "Lockjaw-Ner'zhul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272979] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6940] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288844] = {
					["source"] = "Risen Soul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[47540] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[64044] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203850] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drayzerk-Tichondrius",
					["npcID"] = 0,
				},
				[257328] = {
					["type"] = "BUFF",
					["source"] = "Corrupted Spirit",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123039,
				},
				[116670] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1766] = {
					["source"] = "Julzx-Frostmourne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Timelørd-Dragonblight",
					["npcID"] = 0,
				},
				[280149] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188499] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275032] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102342] = {
					["source"] = "Cerundis-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215111] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dreadstalker",
					["npcID"] = 98035,
				},
				[184662] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["source"] = "Mintyfresh-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47541] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288853] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260402] = {
					["source"] = "Vicdorzul-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5221] = {
					["source"] = "Cerundis-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1822] = {
					["source"] = "Cerundis-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Scrâmbles-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278108] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Valsharr-Bloodscalp",
					["npcID"] = 0,
				},
				[268898] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78675] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278110] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8679] = {
					["source"] = "Bayek-Winterhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1856] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31935] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247356] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289885] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280165] = {
					["source"] = "Cerundis-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223306] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268907] = {
					["source"] = "Orgrimaul-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156779] = {
					["source"] = "Abrazodulce-Hydraxis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196440] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20549] = {
					["source"] = "Rähräh-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hakumen-Proudmoore",
					["npcID"] = 0,
				},
				[209746] = {
					["source"] = "Lotoquebec-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185438] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280170] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[122] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275054] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109128] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1966] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261947] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[287338] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Daiyzed",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49143] = {
					["source"] = "Tdeady-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53365] = {
					["source"] = "Darthgordy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281711] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123586] = {
					["source"] = "Kâì",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[19750] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265337] = {
					["source"] = "Gorestained Piglet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135048,
				},
				[264314] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pepnasty-Tichondrius",
					["npcID"] = 0,
				},
				[261438] = {
					["encounterID"] = 2116,
					["source"] = "Lord Waycrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[12054] = {
					["source"] = "Amani Warrior",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 120900,
				},
				[8092] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ahriam-Hyjal",
					["npcID"] = 0,
				},
				[261439] = {
					["encounterID"] = 2116,
					["source"] = "Lord Waycrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[278134] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268756] = {
					["type"] = "DEBUFF",
					["source"] = "Yozomoto-Nordrassil",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273779] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235639] = {
					["type"] = "BUFF",
					["source"] = "Grand Ma'da Ateena",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122711,
				},
				[250949] = {
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261440] = {
					["encounterID"] = 2116,
					["source"] = "Lord Waycrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[276655] = {
					["source"] = "Grand Ma'da Ateena",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 122711,
				},
				[284277] = {
					["source"] = "Madmicus-Anub'arak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255941] = {
					["type"] = "DEBUFF",
					["source"] = "Iamgrroot-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2060] = {
					["source"] = "Hightec-Akama",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45242] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280184] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Sistafista-Bloodscalp",
					["npcID"] = 0,
				},
				[191587] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
				},
				[279673] = {
					["source"] = "Akirios-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105421] = {
					["source"] = "Oof",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255378] = {
					["source"] = "Gee'dae the Cursed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 122754,
				},
				[281209] = {
					["source"] = "Rcon-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202164] = {
					["type"] = "BUFF",
					["source"] = "Kantoboy-Bonechewer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["source"] = "Rivalry",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256869] = {
					["source"] = "The Matron Shaazula",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126616,
				},
				[275857] = {
					["type"] = "BUFF",
					["source"] = "Kantoboy-Bonechewer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265346] = {
					["source"] = "Dreadwing Raven",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135049,
				},
				[116680] = {
					["source"] = "Nyxey-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2120] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[133] = {
					["source"] = "Greatness-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265347] = {
					["source"] = "Dreadwing Raven",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135049,
				},
				[264353] = {
					["type"] = "BUFF",
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Steamedpork-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257345] = {
					["source"] = "Corrupted Spirit",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123039,
				},
				[264774] = {
					["type"] = "BUFF",
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267907] = {
					["encounterID"] = 2114,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101643] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221527] = {
					["source"] = "Demonsquatch-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212799] = {
					["type"] = "BUFF",
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278143] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nildrick-Tichondrius",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Benhuang-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8680] = {
					["source"] = "Pattyxo-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236298] = {
					["type"] = "BUFF",
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerundis-Sargeras",
					["npcID"] = 0,
				},
				[44425] = {
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289308] = {
					["source"] = "Ceesong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106830] = {
					["source"] = "Rähräh-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278145] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244813] = {
					["source"] = "Greatness-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216411] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265352] = {
					["source"] = "Blight Toad",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135052,
				},
				[251083] = {
					["source"] = "Hanzabu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 124513,
				},
				[216695] = {
					["type"] = "BUFF",
					["source"] = "Destrorc-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thugonious",
					["npcID"] = 0,
				},
				[268604] = {
					["type"] = "BUFF",
					["source"] = "Destruit-Rexxar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278147] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185763] = {
					["type"] = "BUFF",
					["source"] = "Scroatcoat",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261446] = {
					["encounterID"] = 2116,
					["source"] = "Lady Waycrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131545,
				},
				[214621] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[229206] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266008] = {
					["source"] = "Infected Peasant",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134041,
				},
				[287360] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279684] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Scroatcoat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Scroatcoat",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216413] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278463] = {
					["source"] = "Maddened Survivalist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131850,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Scroatcoat",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jorgee-Darkspear",
					["npcID"] = 0,
				},
				[34433] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193315] = {
					["source"] = "Scroatcoat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2825] = {
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55095] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256563] = {
					["source"] = "Hir'eek",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128074,
				},
				[194153] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256715] = {
					["source"] = "Blood Crawg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127060,
				},
				[280711] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 50138,
				},
				[217694] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288388] = {
					["source"] = "Risen Soul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148716,
				},
				[273803] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157982] = {
					["source"] = "Véxum-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2336] = {
					["source"] = "Rent-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286342] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253947] = {
					["source"] = "Warspawn Rider",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126846,
				},
				[273809] = {
					["type"] = "BUFF",
					["source"] = "Iamgrroot-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105809] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255931] = {
					["source"] = "Warspawn Rider",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126846,
				},
				[73313] = {
					["source"] = "Baybraham-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247121] = {
					["source"] = "Solnix-Wildhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[133630] = {
					["type"] = "BUFF",
					["source"] = "Iamgrroot-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6789] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[1784] = {
					["type"] = "BUFF",
					["source"] = "Scroatcoat",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254993] = {
					["type"] = "BUFF",
					["source"] = "Ingrid Bellix",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126377,
				},
				[213602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frotoy-Tichondrius",
					["npcID"] = 0,
				},
				[280204] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270481] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonic Tyrant",
					["npcID"] = 135002,
				},
				[214975] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265364] = {
					["source"] = "Blight Toad",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135052,
				},
				[280205] = {
					["source"] = "Durax-Misha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261612] = {
					["source"] = "Sethrak Warden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126314,
				},
				[250782] = {
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Scroatcoat",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259194] = {
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199786] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271590] = {
					["type"] = "BUFF",
					["source"] = "Lady Waycrest",
					["encounterID"] = 2116,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131545,
				},
				[190319] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[45181] = {
					["source"] = "Hibru",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231895] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lilstrong-Stormrage",
					["npcID"] = 0,
				},
				[286349] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197628] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gargarhan-Zangarmarsh",
					["npcID"] = 0,
				},
				[202090] = {
					["source"] = "Cheebachew-Quel'dorei",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Mootree-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265880] = {
					["source"] = "Matron Alma",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135365,
				},
				[155777] = {
					["source"] = "Cerundis-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280653] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278326] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265881] = {
					["source"] = "Matron Alma",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135365,
				},
				[116] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268955] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108366] = {
					["source"] = "Fearthisbee-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265882] = {
					["source"] = "Matron Alma",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135365,
				},
				[196718] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268953] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265371] = {
					["source"] = "Bewitched Captain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131587,
				},
				[115151] = {
					["source"] = "Nyxey-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274420] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[268954] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265372] = {
					["source"] = "Enthralled Guard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131585,
				},
				[290468] = {
					["source"] = "Holyhanna-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278144] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Helltouched-Thrall",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260700] = {
					["encounterID"] = 2113,
					["source"] = "Sister Malady",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[104318] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wild Imp",
					["npcID"] = 55659,
				},
				[52174] = {
					["source"] = "Donkeybrains-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288694] = {
					["source"] = "Lost Soul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148894,
				},
				[274741] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ikzilkazul",
					["npcID"] = 17252,
				},
				[104773] = {
					["source"] = "Akirios-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197908] = {
					["source"] = "Nyxey-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Ceesong",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264352] = {
					["source"] = "Deadgar-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Vandalina-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[265888] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Bubblëburst-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265760] = {
					["source"] = "Matron Bryndle",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135329,
				},
				[113858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[6788] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265954] = {
					["source"] = "Solnix-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31884] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5246] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3110] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biznip",
					["npcID"] = 416,
				},
				[131474] = {
					["source"] = "Narkhen-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274738] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Ceesong",
					["encounterID"] = 2115,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274837] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[123725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[51886] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acrycìa-Lightbringer",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Kâì",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["source"] = "Felamour-Windrunner",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15286] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289423] = {
					["source"] = "Akiree-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Hubby-Runetotem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[240446] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197051] = {
					["source"] = "Põke-BleedingHollow",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280200] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61336] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196980] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201330] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bubbly-Bladefist",
					["npcID"] = 0,
				},
				[16953] = {
					["source"] = "Rähräh-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53563] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[19574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[201754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lizard",
					["npcID"] = 123135,
				},
				[2484] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[272790] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[186258] = {
					["source"] = "Aelerel-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138130] = {
					["source"] = "Earth Spirit",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[8921] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31707] = {
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[279715] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264396] = {
					["source"] = "Runic Disciple",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131685,
				},
				[17962] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[137619] = {
					["source"] = "Pattyxo-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[106839] = {
					["source"] = "Rähräh-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268314] = {
					["source"] = "Demonsquatch-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[197561] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288573] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[263853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aneyh",
					["npcID"] = 124287,
				},
				[44544] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268234] = {
					["encounterID"] = 2115,
					["source"] = "Bile Oozeling",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136541,
				},
				[260696] = {
					["encounterID"] = 2113,
					["source"] = "Sister Malady",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[34767] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Illicon-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210294] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204213] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Olguis-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["source"] = "Cerundis-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288548] = {
					["source"] = "Magus of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[265391] = {
					["source"] = "Banquet Steward",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131586,
				},
				[290467] = {
					["source"] = "Khazik-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[82326] = {
					["source"] = "Wiskism-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[84963] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268077] = {
					["type"] = "BUFF",
					["source"] = "Sister Solena",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[280177] = {
					["source"] = "Greatness-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260698] = {
					["encounterID"] = 2113,
					["source"] = "Sister Solena",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[212431] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[264064] = {
					["source"] = "Kul'krazahn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 120899,
				},
				[30146] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demorealz-Tichondrius",
					["npcID"] = 0,
				},
				[203814] = {
					["source"] = "Ezekielrage-Uldum",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6360] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zahneth",
					["npcID"] = 1863,
				},
				[217200] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[5782] = {
					["source"] = "Akirios-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260699] = {
					["encounterID"] = 2113,
					["source"] = "Sister Solena",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131824,
				},
				[209780] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dslyexic-Mal'Ganis",
					["npcID"] = 0,
				},
				[15407] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ahriam-Hyjal",
					["npcID"] = 0,
				},
				[2908] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49184] = {
					["source"] = "Tdeady-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196342] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ahriam-Hyjal",
					["npcID"] = 0,
				},
				[206966] = {
					["source"] = "Solnix-Wildhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[348] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[271538] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195452] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255071] = {
					["source"] = "Orgrimaul-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19434] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[2948] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118699] = {
					["source"] = "Akirios-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Uvawahoo-Dragonmaw",
					["npcID"] = 0,
				},
				[256607] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Empowered Kal'dran",
					["npcID"] = 127394,
				},
				[78674] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thoromyr-Aegwynn",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Bïgdaddy-Darkspear",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287917] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dontbemad-Drak'thul",
					["npcID"] = 0,
				},
				[190336] = {
					["source"] = "Mashatha-Hydraxis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123986] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8122] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277187] = {
					["source"] = "Ophirrila-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29166] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thoromyr-Aegwynn",
					["npcID"] = 0,
				},
				[264378] = {
					["source"] = "Coven Diviner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131819,
				},
				[198013] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287916] = {
					["source"] = "Parzivalone-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ikzilkazul",
					["npcID"] = 17252,
				},
				[223829] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25046] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Delios-Illidan",
					["npcID"] = 0,
				},
				[260703] = {
					["encounterID"] = 2113,
					["source"] = "Sister Malady",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131823,
				},
				[8042] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Nyxey-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203123] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256958] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Empowered Worshipper",
					["npcID"] = 127224,
				},
				[212653] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288343] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85222] = {
					["source"] = "Wiskism-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32612] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209785] = {
					["type"] = "BUFF",
					["source"] = "Iamgrroot-Hyjal",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arakadia-Proudmoore",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Bigvape-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51052] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arakadia-Proudmoore",
					["npcID"] = 0,
				},
				[116849] = {
					["source"] = "Nyxey-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233582] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[49821] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265407] = {
					["source"] = "Banquet Steward",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131586,
				},
				[276154] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264384] = {
					["source"] = "Coven Diviner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131819,
				},
				[57724] = {
					["source"] = "Valkyriel-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61882] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[164812] = {
					["source"] = "Daiyzed",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277179] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12472] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73325] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dewseejay-Stormreaver",
					["npcID"] = 0,
				},
				[265410] = {
					["source"] = "Waycrest Reveler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131847,
				},
				[84714] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264387] = {
					["source"] = "Coven Diviner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131819,
				},
				[277181] = {
					["source"] = "Darthgordy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164547] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286393] = {
					["source"] = "Benhuang-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255078] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chubbsman-Tichondrius",
					["npcID"] = 0,
				},
				[102351] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerundis-Sargeras",
					["npcID"] = 0,
				},
				[32375] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267971] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonic Tyrant",
					["npcID"] = 135002,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bromei-Kilrogg",
					["npcID"] = 0,
				},
				[6358] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1863,
				},
				[213858] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267972] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demonic Tyrant",
					["npcID"] = 135002,
				},
				[264390] = {
					["source"] = "Runic Disciple",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131685,
				},
				[285978] = {
					["source"] = "Anáthemá-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49376] = {
					["source"] = "Rähräh-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Nyxey-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53480] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[277185] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88423] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaein-Doomhammer",
					["npcID"] = 0,
				},
				[288024] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202933] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[271045] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[281792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nomnomurface-Tichondrius",
					["npcID"] = 0,
				},
				[55078] = {
					["source"] = "Omegacarry-Hydraxis",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196741] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198577] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mojoba",
					["npcID"] = 131132,
				},
				[203650] = {
					["source"] = "Demonsquatch-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183436] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lilstrong-Stormrage",
					["npcID"] = 0,
				},
				[193641] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Timelørd-Dragonblight",
					["npcID"] = 0,
				},
				[281794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nomnomurface-Tichondrius",
					["npcID"] = 0,
				},
				[198533] = {
					["source"] = "Jade Serpent Statue",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 60849,
				},
				[274598] = {
					["source"] = "Greatness-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208772] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jcôn-AeriePeak",
					["npcID"] = 0,
				},
				[265931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fernac-Ragnaros",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271049] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[61295] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[355] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280773] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lilstrong-Stormrage",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32645] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Puffdatmuff-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lilstrong-Stormrage",
					["npcID"] = 0,
				},
				[22703] = {
					["source"] = "Akirios-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22570] = {
					["source"] = "Rähräh-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252216] = {
					["source"] = "Cerundis-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51124] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[280776] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61684] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Obsitus",
					["npcID"] = 123727,
				},
				[277706] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[186254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[115804] = {
					["source"] = "Kâì",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264024] = {
					["source"] = "Heartsbane Soulcharmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[259388] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[259387] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[279362] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Obsitus",
					["npcID"] = 123727,
				},
				[85739] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24394] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Obsitus",
					["npcID"] = 123727,
				},
				[147362] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[137639] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Narkhen-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36554] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280780] = {
					["source"] = "Bubblëburst-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211805] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129250] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61391] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48707] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Phâtz-Barthilas",
					["npcID"] = 0,
				},
				[114014] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263894] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[210053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thoromyr-Aegwynn",
					["npcID"] = 0,
				},
				[136] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[75532] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186257] = {
					["source"] = "Aelerel-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260701] = {
					["encounterID"] = 2113,
					["source"] = "Sister Briar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[205448] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[156070] = {
					["source"] = "Plunance-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30283] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[193538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nildrick-Tichondrius",
					["npcID"] = 0,
				},
				[200587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fernac-Ragnaros",
					["npcID"] = 0,
				},
				[263905] = {
					["source"] = "Heartsbane Runeweaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131677,
				},
				[45438] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["source"] = "Elduron-Drak'Tharon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278227] = {
					["source"] = "Bubblëburst-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49020] = {
					["source"] = "Tdeady-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[30151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leeshgozin",
					["npcID"] = 17252,
				},
				[226943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Frotoy-Tichondrius",
					["npcID"] = 0,
				},
				[263899] = {
					["source"] = "Heartsbane Vinetwister",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131670,
				},
				[280787] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[264923] = {
					["encounterID"] = 2115,
					["source"] = "Raal the Gluttonous",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[80240] = {
					["source"] = "Akirios-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118922] = {
					["source"] = "Vicdorzul-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[279709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vaimpacis-Lightbringer",
					["npcID"] = 0,
				},
				[263895] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jin'Tiki",
					["npcID"] = 131231,
				},
				[290512] = {
					["source"] = "Kâì",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[166302] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blingtron 6000",
					["npcID"] = 101527,
				},
				[275672] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xlwth-Ragnaros",
					["npcID"] = 0,
				},
				[272090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gagglefk-Mal'Ganis",
					["npcID"] = 0,
				},
				[82691] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206760] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288841] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267997] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vilefiend",
					["npcID"] = 135816,
				},
				[281402] = {
					["source"] = "Untainted-Anub'arak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5143] = {
					["source"] = "Funken-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Earthbind Totem",
					["npcID"] = 2630,
				},
				[205708] = {
					["source"] = "Ceesong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275936] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115192] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Divathedeity-Stonemaul",
					["npcID"] = 0,
				},
				[267999] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vilefiend",
					["npcID"] = 135816,
				},
				[288981] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Fire Elemental",
					["npcID"] = 95061,
				},
				[5215] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261447] = {
					["encounterID"] = 2116,
					["source"] = "Lord Waycrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131527,
				},
				[263959] = {
					["source"] = "Heartsbane Soulcharmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[271071] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[186263] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264712] = {
					["encounterID"] = 2115,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264931] = {
					["encounterID"] = 2115,
					["source"] = "Raal the Gluttonous",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[236696] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Akuma-Bonechewer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56641] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[281178] = {
					["source"] = "Benhuang-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87023] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Lichhamma-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105702] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264027] = {
					["source"] = "Heartsbane Runeweaver",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131677,
				},
				[280286] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["source"] = "Mootree-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31687] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[260697] = {
					["encounterID"] = 2113,
					["source"] = "Sister Briar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[54149] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213644] = {
					["encounterID"] = 2116,
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51460] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102560] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arakadia-Proudmoore",
					["npcID"] = 0,
				},
				[179057] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[87024] = {
					["source"] = "Untainted-Anub'arak",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288989] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277731] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205369] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frotoy-Tichondrius",
					["npcID"] = 0,
				},
				[5487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zaein-Doomhammer",
					["npcID"] = 0,
				},
				[69369] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jorgee-Darkspear",
					["npcID"] = 0,
				},
				[247677] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271175] = {
					["source"] = "Pallid Gorger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[203155] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[288803] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3567] = {
					["source"] = "Skillspam-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113942] = {
					["source"] = "Akirios-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Wiskism-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280654] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Demilli-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268122] = {
					["type"] = "BUFF",
					["source"] = "Sister Briar",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131825,
				},
				[110310] = {
					["source"] = "Solnix-Wildhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267537] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121557] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fenclaw Runner",
					["npcID"] = 130727,
				},
				[259449] = {
					["source"] = "Woods-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275689] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xlwth-Ragnaros",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Bïgdaddy-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188370] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[112869] = {
					["source"] = "Wazowzki-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256635] = {
					["source"] = "Hir'eek",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 128074,
				},
				[278249] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[154797] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16591] = {
					["source"] = "Trashcans-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204437] = {
					["source"] = "Toshaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202636] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bydry-Kilrogg",
					["npcID"] = 0,
				},
				[280809] = {
					["source"] = "Nyxey-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[257418] = {
					["source"] = "Spellçheck-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256475] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodscreecher Broodling",
					["npcID"] = 127265,
				},
				[255101] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wraithbrand",
					["npcID"] = 0,
				},
				[260508] = {
					["encounterID"] = 2114,
					["source"] = "Soulbound Goliath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131667,
				},
				[266091] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[7814] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zahneth",
					["npcID"] = 1863,
				},
				[270576] = {
					["source"] = "Demonsquatch-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Momochi-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48778] = {
					["source"] = "Vensy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276206] = {
					["source"] = "Oversllot-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Benhuang-Suramar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259452] = {
					["source"] = "Baybraham-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7870] = {
					["source"] = "Sarneth",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1863,
				},
				[199109] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283167] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[256455] = {
					["source"] = "Mootree-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265368] = {
					["source"] = "Bewitched Captain",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131587,
				},
				[203651] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cerundis-Sargeras",
					["npcID"] = 0,
				},
				[288613] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[268893] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81782] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Spellçheck-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156080] = {
					["source"] = "Allithelina",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287999] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dslyexic-Mal'Ganis",
					["npcID"] = 0,
				},
				[48743] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Oof",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259454] = {
					["source"] = "Akiree-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279793] = {
					["source"] = "Cerundis-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Atrainwreck-Alexstrasza",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280817] = {
					["source"] = "Solnix-Wildhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199844] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273653] = {
					["source"] = "Gloom Horror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[236746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[255105] = {
					["source"] = "Deadgar-Aegwynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259455] = {
					["source"] = "Aerodynamic-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83958] = {
					["source"] = "Recklesstank-Muradin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198813] = {
					["source"] = "Rivalry",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213405] = {
					["source"] = "Demonsquatch-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["source"] = "Ophirrila-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115175] = {
					["source"] = "Namaste-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["source"] = "Jakésteel",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259456] = {
					["source"] = "Drexy-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281844] = {
					["source"] = "Ophirrila-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289523] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264734] = {
					["encounterID"] = 2115,
					["source"] = "Raal the Gluttonous",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131863,
				},
				[27576] = {
					["source"] = "Julzx-Frostmourne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273657] = {
					["source"] = "Gloom Horror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[258945] = {
					["source"] = "Sethrak Warden",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126314,
				},
				[197277] = {
					["source"] = "Benhuang-Suramar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["source"] = "Rahaeil-Azgalor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273658] = {
					["source"] = "Gloom Horror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139269,
				},
				[278267] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51271] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[268998] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["source"] = "Ceesong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96243] = {
					["source"] = "Water Elemental",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 78116,
				},
				[289524] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[163505] = {
					["source"] = "Cerundis-Sargeras",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["source"] = "Julzx-Frostmourne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119910] = {
					["source"] = "Akirios-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Korrace-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rakmin-Cenarius",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Rougeufo-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58180] = {
					["source"] = "Rähräh-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xlwth-Ragnaros",
					["npcID"] = 0,
				},
				[272668] = {
					["type"] = "BUFF",
					["source"] = "Burning Soul",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136436,
				},
				[102383] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196770] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114282] = {
					["source"] = "Treeboi-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211793] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271105] = {
					["source"] = "Centigor-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["source"] = "Krommosh-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["source"] = "Hightec-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3409] = {
					["source"] = "Pattyxo-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Deadgar-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1079] = {
					["source"] = "Cerundis-Sargeras",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jong-Chromaggus",
					["npcID"] = 0,
				},
				[201633] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
				},
				[280830] = {
					["source"] = "Nyxey-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271107] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261764] = {
					["source"] = "Cheddzki-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263943] = {
					["source"] = "Heartsbane Runeweaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131677,
				},
				[184575] = {
					["source"] = "Aureliana-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20484] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260741] = {
					["encounterID"] = 2113,
					["source"] = "Sister Briar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131825,
				},
				[119996] = {
					["source"] = "Kâì",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264456] = {
					["source"] = "Crazed Marksman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131849,
				},
				[257415] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288509] = {
					["source"] = "Holyhanna-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[113899] = {
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59262,
				},
				[279810] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[272364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tar Ooze",
					["npcID"] = 130720,
				},
				[289022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ephexgg-Illidan",
					["npcID"] = 0,
				},
				[289534] = {
					["source"] = "Kohden-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[294127] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["source"] = "Demonsquatch-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183752] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214222] = {
					["source"] = "Holyswrath-Wildhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207777] = {
					["source"] = "Scroatcoat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199845] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Psyfiend",
					["npcID"] = 101398,
				},
				[12042] = {
					["source"] = "Rïdic-Runetotem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[527] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190984] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276743] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frontoy-Tichondrius",
					["npcID"] = 0,
				},
				[113900] = {
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59271,
				},
				[256313] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Empowered Worshipper",
					["npcID"] = 127224,
				},
				[276211] = {
					["source"] = "Oversllot-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275699] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Acrycìa-Lightbringer",
					["npcID"] = 0,
				},
				[195901] = {
					["source"] = "Atrainwreck-Alexstrasza",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6770] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195457] = {
					["source"] = "Momochi-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[63619] = {
					["source"] = "Shadowfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[268306] = {
					["type"] = "BUFF",
					["source"] = "Lady Waycrest",
					["encounterID"] = 2116,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131545,
				},
				[131894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[115308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[204197] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261769] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260734] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[22812] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285959] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[50769] = {
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[96231] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Madmicus-Anub'arak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54216] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aneyh",
					["npcID"] = 124287,
				},
				[9484] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Nyxey-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[115181] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[246807] = {
					["source"] = "Benhuang-Suramar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279913] = {
					["source"] = "Bïgdaddy-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185311] = {
					["source"] = "Julzx-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289324] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chicap-Tichondrius",
					["npcID"] = 0,
				},
				[17] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29722] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[270339] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[183218] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46924] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xlwth-Ragnaros",
					["npcID"] = 0,
				},
				[257422] = {
					["source"] = "Kaddoll-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260541] = {
					["type"] = "BUFF",
					["source"] = "Soulbound Goliath",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131667,
				},
				[186289] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dnuotsa-Ysera",
					["npcID"] = 0,
				},
				[188592] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Aureliana-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31850] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115310] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jcôn-AeriePeak",
					["npcID"] = 0,
				},
				[194384] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185422] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263961] = {
					["source"] = "Heartsbane Soulcharmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131812,
				},
				[247675] = {
					["source"] = "Aureliana-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Zob-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gargarhan-Zangarmarsh",
					["npcID"] = 0,
				},
				[193455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[132568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Timelørd-Dragonblight",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Ghettoash-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[92146] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Timelørd-Dragonblight",
					["npcID"] = 0,
				},
				[255299] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Empowered Worshipper",
					["npcID"] = 127224,
				},
				[196782] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287504] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tujiffy-Rivendare",
					["npcID"] = 0,
				},
				[190356] = {
					["source"] = "Ceesong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Timelørd-Dragonblight",
					["npcID"] = 0,
				},
				[187827] = {
					["source"] = "Alrian-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271178] = {
					["source"] = "Pallid Gorger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137830,
				},
				[167898] = {
					["source"] = "Lichhamma-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196819] = {
					["source"] = "Aléxander-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[250261] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bubbly-Bladefist",
					["npcID"] = 0,
				},
				[256658] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Reconstructed Terror",
					["npcID"] = 127253,
				},
				[290577] = {
					["source"] = "Abomination",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149555,
				},
				[261264] = {
					["type"] = "BUFF",
					["source"] = "Sister Solena",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131824,
				},
				[26573] = {
					["source"] = "Oof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259491] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[278296] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hothoof-Tichondrius",
					["npcID"] = 0,
				},
				[280855] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Arakadia-Proudmoore",
					["npcID"] = 0,
				},
				[269085] = {
					["source"] = "Bubblëburst-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[211881] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261265] = {
					["type"] = "BUFF",
					["source"] = "Sister Briar",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131825,
				},
				[5176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gargarhan-Zangarmarsh",
					["npcID"] = 0,
				},
				[199203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xlwth-Ragnaros",
					["npcID"] = 0,
				},
				[51723] = {
					["source"] = "Narkhen-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vasariah-Ragnaros",
					["npcID"] = 0,
				},
				[279572] = {
					["source"] = "Snowbreeze-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164545] = {
					["source"] = "Daiyzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256916] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Returned Predator",
					["npcID"] = 127247,
				},
				[261266] = {
					["type"] = "BUFF",
					["source"] = "Sister Malady",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131823,
				},
				[215661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hakumen-Proudmoore",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Parzivalone-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266018] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ephexgg-Illidan",
					["npcID"] = 0,
				},
				[97463] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162243] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[248473] = {
					["source"] = "Víberaider-Boulderfist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Durax-Misha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2649] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Obsitus",
					["npcID"] = 123727,
				},
				[53271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Aneyh",
					["npcID"] = 124287,
				},
				[1329] = {
					["source"] = "Julzx-Frostmourne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33891] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerundis-Sargeras",
					["npcID"] = 0,
				},
				[117679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cerundis-Sargeras",
					["npcID"] = 0,
				},
				[118000] = {
					["source"] = "Flinty-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Deadgar-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["source"] = "Snowbreeze-Bonechewer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258920] = {
					["source"] = "Rivalry",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198067] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[263891] = {
					["source"] = "Heartsbane Vinetwister",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131670,
				},
				[288156] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jong-Chromaggus",
					["npcID"] = 0,
				},
				[19505] = {
					["source"] = "Jhuumon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[231843] = {
					["source"] = "Aureliana-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Flanadin-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[339] = {
					["encounterID"] = 2115,
					["source"] = "Daiyzed",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289467] = {
					["source"] = "Guids-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Arakadia-Proudmoore",
					["npcID"] = 0,
				},
				[196277] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[199373] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Army of the Dead",
					["npcID"] = 24207,
				},
				[182993] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rakmin-Cenarius",
					["npcID"] = 0,
				},
				[280187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sistafista-Bloodscalp",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Flanadin-Akama",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256920] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Returned Predator",
					["npcID"] = 127247,
				},
				[48018] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demorealz-Tichondrius",
					["npcID"] = 0,
				},
				[198069] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193396] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Demorealz-Tichondrius",
					["npcID"] = 0,
				},
				[134477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Leeshgozin",
					["npcID"] = 17252,
				},
				[198837] = {
					["source"] = "Risen Skulker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[256099] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zardrax Conduit",
					["npcID"] = 127255,
				},
				[209584] = {
					["source"] = "Nyxey-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yungmeta-Tichondrius",
					["npcID"] = 0,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yungmeta-Tichondrius",
					["npcID"] = 0,
				},
				[259480] = {
					["source"] = "Casteless Zandalari",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131331,
				},
				[253595] = {
					["source"] = "Tdeady-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199260] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ahriam-Hyjal",
					["npcID"] = 0,
				},
				[198838] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Mootree-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11196] = {
					["source"] = "Aelerel-Aegwynn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288546] = {
					["source"] = "Magus of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[188290] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arakadia-Proudmoore",
					["npcID"] = 0,
				},
				[34709] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198898] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rlot-Ragnaros",
					["npcID"] = 0,
				},
				[266030] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[198839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["npcID"] = 100943,
				},
				[280398] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beergut-Thrall",
					["npcID"] = 0,
				},
				[5672] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Healing Stream Totem",
					["npcID"] = 3527,
				},
				[197625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Petezhang",
					["npcID"] = 0,
				},
				[16595] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sauber-Stonemaul",
					["npcID"] = 0,
				},
				[53390] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shocks-Runetotem",
					["npcID"] = 0,
				},
				[290793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[1543] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mohrn-Illidan",
					["npcID"] = 0,
				},
				[57994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[290085] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268080] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77575] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108238] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fsixfullvoic-Frostmourne",
					["npcID"] = 0,
				},
				[53209] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[202225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xlwth-Ragnaros",
					["npcID"] = 0,
				},
				[5784] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bantramedes-Darkspear",
					["npcID"] = 0,
				},
				[1449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frontoy-Tichondrius",
					["npcID"] = 0,
				},
				[266035] = {
					["source"] = "Thistle Acolyte",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135474,
				},
				[86659] = {
					["source"] = "Oof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285482] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ahriam-Hyjal",
					["npcID"] = 0,
				},
				[34026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lumnar-Blackrock",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Ceesong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279204] = {
					["source"] = "Benhuang-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289577] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frotoy-Tichondrius",
					["npcID"] = 0,
				},
				[234153] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Axstin-Tichondrius",
					["npcID"] = 0,
				},
				[265741] = {
					["source"] = "Matron Bryndle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135329,
				},
				[107079] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ajidamo-Lightbringer",
					["npcID"] = 0,
				},
				[196840] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acrycìa-Lightbringer",
					["npcID"] = 0,
				},
				[202425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nijlov-Blackrock",
					["npcID"] = 0,
				},
				[204336] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acrycìa-Lightbringer",
					["npcID"] = 0,
				},
				[63560] = {
					["source"] = "Unfäzed-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[370] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acrycìa-Lightbringer",
					["npcID"] = 0,
				},
				[89808] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biznip",
					["npcID"] = 416,
				},
				[268086] = {
					["encounterID"] = 2113,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211522] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frotoy-Tichondrius",
					["npcID"] = 0,
				},
				[263165] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frotoy-Tichondrius",
					["npcID"] = 0,
				},
				[108968] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frotoy-Tichondrius",
					["npcID"] = 0,
				},
				[188501] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Helltouched-Thrall",
					["npcID"] = 0,
				},
				[274740] = {
					["source"] = "Flinty-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273310] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thexdoors-Dalaran",
					["npcID"] = 0,
				},
				[264178] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[268088] = {
					["type"] = "BUFF",
					["source"] = "Sister Malady",
					["encounterID"] = 2113,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131823,
				},
				[60234] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rlot-Ragnaros",
					["npcID"] = 0,
				},
				[264173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[104316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[198589] = {
					["source"] = "Rivalry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199954] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[207289] = {
					["source"] = "Unfäzed-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264130] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[115191] = {
					["source"] = "Aléxander-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Toshaman",
					["npcID"] = 0,
				},
				[273294] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[686] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockdelux-Thrall",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Kâì",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Acrycìa-Lightbringer",
					["npcID"] = 0,
				},
				[260512] = {
					["type"] = "BUFF",
					["source"] = "Soulbound Goliath",
					["encounterID"] = 2114,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131667,
				},
				[124275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
				[117952] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wheresdabeef-Uther",
					["npcID"] = 0,
				},
			},
		},
	},
}
