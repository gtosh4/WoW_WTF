
PlaterDB = {
	["profileKeys"] = {
		["Zaemme - Kil'jaeden"] = "Default",
		["Yorman - Kil'jaeden"] = "Default",
		["Tosh - Kil'jaeden"] = "Default",
		["Koutetsu - Frostwolf"] = "Default",
		["Zallie - Frostwolf"] = "Default",
		["Yuumi - Kil'jaeden"] = "Default",
		["Tosku - Kil'jaeden"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["target_shady_combat_only"] = false,
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1538512774,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 369,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
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
					["Name"] = "Cast - Small Alert [Plater]",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1541120256,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Enabled"] = true,
					["Revision"] = 92,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["Time"] = 1538512801,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 358,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
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
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538512774,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 361,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
					["Name"] = "Cast - Very Important [Plater]",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1540663131,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538597476,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 182,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["Desc"] = "Add the debuff name in the trigger box.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1538512775,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 136,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
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
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Time"] = 1538606266,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 196,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
						260954, -- [3]
						257739, -- [4]
						257314, -- [5]
						266107, -- [6]
						257582, -- [7]
						262377, -- [8]
						257407, -- [9]
					},
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Icon"] = 1029718,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1538512742,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Enabled"] = true,
					["Revision"] = 152,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Unit - Important [Plater]",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1538575139,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 557,
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
					["Name"] = "Cast - Big Alert [Plater]",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [10]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1538512749,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 76,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "UnitPower [Plater]",
					["Desc"] = "Show the energy amount above the nameplate",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
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
					["Author"] = "Tecno-Azralon",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1543250950,
					["PlaterCore"] = 1,
					["Name"] = "Fixate On You [Plater]",
					["ScriptType"] = 3,
					["Icon"] = 841383,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local count = 0\n    \n    for index = 1, 40 do\n        local b = {UnitBuff (unitId, index)}\n        \n        if (not b[1]) then \n            break \n        end\n        \n        if b[10] == envTable._SpellID then\n            count = count + 1\n        end\n    end\n    \n    if count > 0 then\n        local setcount = false\n        for _,icon in ipairs(unitFrame.BuffFrame.PlaterBuffList) do\n            if (icon.spellId == envTable._SpellID) then\n                if setcount then\n                    icon:Hide()\n                    icon.InUse = false\n                else\n                    local stackLabel = icon.CountFrame.Count\n                    stackLabel:SetText(count)\n                    stackLabel:Show()\n                    setcount = true\n                end\n            end\n        end\n    end\nend",
					["Time"] = 1541120709,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 278,
					["Author"] = "Yorman-Kil'jaeden",
					["Desc"] = "Because bolster shows as multiple auras instead of stacks of a single aura, this script consolidates them on the nameplate. Must whitelist spellid 209859 (bolster) for this to show properly.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local count = 0\n    \n    for index = 1, 40 do\n        local b = {UnitBuff (unitId, index)}\n        \n        if (not b[1]) then \n            break \n        end\n        \n        if b[10] == envTable._SpellID then\n            count = count + 1\n        end\n    end\n    \n    if count > 0 then\n        local setcount = false\n        for _,icon in ipairs(unitFrame.BuffFrame.PlaterBuffList) do\n            if (icon.spellId == envTable._SpellID) then\n                if setcount then\n                    icon:Hide()\n                    icon.InUse = false\n                else\n                    local stackLabel = icon.CountFrame.Count\n                    stackLabel:SetText(count)\n                    stackLabel:Show()\n                    setcount = true\n                end\n            end\n        end\n    end\nend",
					["SpellIds"] = {
						209859, -- [1]
					},
					["PlaterCore"] = 1,
					["Name"] = "Bolster",
					["Icon"] = 1041231,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\nend",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 122,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["Time"] = 1542816185,
					["PlaterCore"] = 1,
					["Name"] = "Blink by Time Left [Plater]",
					["ScriptType"] = 1,
					["Icon"] = 2000853,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    --layout\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1543253273,
					["PlaterCore"] = 1,
					["Name"] = "Color Change [Plater]",
					["ScriptType"] = 3,
					["Icon"] = 135024,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
				}, -- [15]
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
				}, -- [16]
			},
			["aura_cache_by_name"] = {
				["bolster"] = {
					209859, -- [1]
					275337, -- [2]
					280001, -- [3]
				},
				["rejuvenation"] = {
					774, -- [1]
					8070, -- [2]
					12160, -- [3]
					15981, -- [4]
					20664, -- [5]
					20701, -- [6]
					27532, -- [7]
					28716, -- [8]
					28722, -- [9]
					28723, -- [10]
					28724, -- [11]
					31782, -- [12]
					32131, -- [13]
					38657, -- [14]
					42544, -- [15]
					53607, -- [16]
					62804, -- [17]
					65735, -- [18]
					66065, -- [19]
					69898, -- [20]
					70691, -- [21]
					80304, -- [22]
					84472, -- [23]
					93932, -- [24]
					96679, -- [25]
					97425, -- [26]
					98098, -- [27]
					98211, -- [28]
					102048, -- [29]
					142625, -- [30]
					165752, -- [31]
					172819, -- [32]
					181067, -- [33]
					182854, -- [34]
					211346, -- [35]
					224526, -- [36]
					231040, -- [37]
					262162, -- [38]
					264118, -- [39]
					278956, -- [40]
					279716, -- [41]
				},
				["lifebloom"] = {
					33763, -- [1]
					33778, -- [2]
					43421, -- [3]
					43422, -- [4]
					52551, -- [5]
					52552, -- [6]
					53608, -- [7]
					53692, -- [8]
					57762, -- [9]
					57763, -- [10]
					59990, -- [11]
					61489, -- [12]
					66093, -- [13]
					66094, -- [14]
					186371, -- [15]
					188550, -- [16]
				},
			},
			["hover_highlight"] = false,
			["hover_highlight_alpha"] = 0.799999952316284,
			["plate_config"] = {
				["friendlyplayer"] = {
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["only_thename"] = false,
					["percent_text_ooc"] = true,
					["level_text_font"] = "UbuntuCondensed",
					["spellname_text_font"] = "Friz Quadrata TT",
					["percent_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["only_damaged"] = false,
				},
				["friendlynpc"] = {
					["big_actorname_text_size"] = 10,
					["spellpercent_text_font"] = "Friz Quadrata TT",
					["big_actortitle_text_font"] = "Friz Quadrata TT",
					["level_text_font"] = "Friz Quadrata TT",
					["actorname_text_font"] = "Friz Quadrata TT",
					["big_actorname_text_font"] = "Friz Quadrata TT",
					["percent_text_font"] = "Friz Quadrata TT",
					["big_actortitle_text_size"] = 10,
					["actorname_text_anchor"] = {
						["x"] = 3.96040153503418,
					},
				},
				["enemyplayer"] = {
					["spellpercent_text_font"] = "UbuntuCondensed",
					["cast"] = {
						100, -- [1]
						10, -- [2]
					},
					["percent_text_alpha"] = 0.717824816703796,
					["cast_incombat"] = {
						100, -- [1]
						10, -- [2]
					},
					["level_text_font"] = "UbuntuCondensed",
					["spellname_text_font"] = "UbuntuCondensed",
					["actorname_text_size"] = 8,
					["actorname_text_spacing"] = 7,
					["percent_text_font"] = "UbuntuCondensed",
					["actorname_text_font"] = "UbuntuCondensed",
					["health_incombat"] = {
						100, -- [1]
						6, -- [2]
					},
					["health"] = {
						100.743041992188, -- [1]
						6, -- [2]
					},
					["percent_text_show_decimals"] = false,
				},
				["enemynpc"] = {
					["spellpercent_text_font"] = "UbuntuCondensed",
					["level_text_size"] = 8.30196189880371,
					["cast"] = {
						90, -- [1]
						8, -- [2]
					},
					["percent_text_ooc"] = true,
					["percent_text_show_decimals"] = false,
					["cast_incombat"] = {
						90, -- [1]
						8, -- [2]
					},
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["level_text_font"] = "UbuntuCondensed",
					["actorname_text_font"] = "UbuntuCondensed",
					["actorname_text_size"] = 8,
					["actorname_text_spacing"] = 7,
					["percent_text_font"] = "UbuntuCondensed",
					["spellname_text_font"] = "UbuntuCondensed",
					["spellname_text_size"] = 10,
					["health"] = {
						90, -- [1]
						4, -- [2]
					},
					["spellpercent_text_size"] = 8,
					["percent_text_alpha"] = 0.699999988079071,
					["health_incombat"] = {
						90, -- [1]
						4, -- [2]
					},
					["level_text_enabled"] = false,
				},
			},
			["health_selection_overlay"] = "Minimalist",
			["first_run2"] = true,
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 101,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the transparency of nameplates that isn't your target. You might want to disable 'Use Range Check' in the General Settings tab when using this hook.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)\n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.IsSelf) then\n        unitFrame.healthBar:SetAlpha (envTable.AlphaPersonalBar)    \n    else\n        if (not Plater.PlayerCurrentTargetGUID) then\n            unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n        else\n            if (unitFrame.namePlateIsTarget) then\n                unitFrame.healthBar:SetAlpha (envTable.AlphaTarget)\n            else\n                unitFrame.healthBar:SetAlpha (envTable.AlphaIsNotTarget)\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: you might want to disable \"Use Range Check\" in the General Settings tab.\n    \n    --stup the amount of transparency nameplates will have:\n    envTable.AlphaIsNotTarget = 0.4 --40%\n    envTable.AlphaTarget = 1.0 --100%\n    envTable.AlphaPersonalBar = 1.0 --100% (if the nameplate is the personal bar)\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1542481682,
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
					["Icon"] = 132177,
					["Name"] = "No Target Alpha [Plater]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
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
					["Time"] = 1541606242,
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
					["LastHookEdited"] = "",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 95,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Set a different color when a unit is targetting a Black Ox Statue",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the unit target target\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    if (targetGUID) then\n        \n        --get the npcID of the target and check if the npcID is the Black Ox Status npcID\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        if (npcID == envTable.OxStatusNpcID) then\n            \n            --the unit is targetting the status, change the color of the nameplate\n            Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n        end\n    end\nend\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ncpID for the black ox statue\n    envTable.OxStatusNpcID = 61146\n    \n    --the color to use in the nameplate when the unit is targetting an ox statue\n    envTable.NameplateColor = \"olive\"\n    \nend\n\n\n",
					},
					["Time"] = 1541606185,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Monk Statue [Plater]",
					["LoadConditions"] = {
						["talent"] = {
							[19994] = true,
							["Enabled"] = true,
						},
						["group"] = {
						},
						["class"] = {
							["MONK"] = true,
							["Enabled"] = true,
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							[268] = true,
							["Enabled"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
						},
					},
					["Icon"] = 627607,
					["LastHookEdited"] = "",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 53,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "A simple reorder for the health bar and cast bar.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --set the height offset\n    local healthBarOffset = 0\n    local castBarOffset = 0\n    \n    unitFrame.healthBar:ClearAllPoints()\n    unitFrame.healthBar:SetPoint (\"bottomleft\", unitFrame, \"bottomleft\", 0, healthBarOffset)\n    unitFrame.healthBar:SetPoint (\"bottomright\", unitFrame, \"bottomright\", 0, healthBarOffset)\n    \n    unitFrame.castBar:ClearAllPoints()\n    unitFrame.castBar:SetPoint (\"topleft\", unitFrame, \"bottomleft\", 0, castBarOffset)\n    unitFrame.castBar:SetPoint (\"topright\", unitFrame, \"bottomright\", 0, castBarOffset)\n    \nend\n\n\n",
					},
					["Time"] = 1543188991,
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
					["Icon"] = 574574,
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 129,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --the border has 3 layers: inner, middle and outter.\n    --you can defyne the alpha of each one of these layers below.\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetBorderColor (r, g, b)\n    local canExportBorder = true\n    \n    --border transparency\n    local innerBorderAlpha = 1.0  --value from 0 to 1\n    local middleBorderAlpha = 1.0\n    local outBorderAlpha = 0\n    \n    --border color\n    local borderColor = \"black\"\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        --creates an overlay frame above the health bar\n        local overlayFrame = CreateFrame (\"frame\", nil, unitFrame.healthBar)\n        overlayFrame:SetAllPoints()\n        overlayFrame:SetFrameLevel (unitFrame.healthBar:GetFrameLevel()+2)        \n        envTable.BorderFrame = overlayFrame\n        \n        DetailsFramework:CreateBorder (overlayFrame, innerBorderAlpha, middleBorderAlpha, outBorderAlpha)\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        overlayFrame:SetBorderColor (r, g, b)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = overlayFrame\n        end\n        \n        if (not isEnabled) then\n            overlayFrame:Hide()\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1543188568,
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
					["Icon"] = 133689,
					["Name"] = "Extra Border [Plater]",
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 135,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateComboPoints()\n    \nend\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        envTable.ComboPointFrame = CreateFrame (\"frame\", nil, unitFrame)\n        envTable.ComboPointFrame:SetScale (sizes.scale)\n        \n        --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n        \n        --animations\n        local onPlayShowAnimation = function (animation)\n            --stop the hide animation if it's playing\n            if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                animation:GetParent():GetParent().HideAnimation:Stop()\n            end\n            \n            animation:GetParent():Show()\n        end\n        \n        local onPlayHideAnimation = function (animation)\n            --stop the show animation if it's playing\n            if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                animation:GetParent():GetParent().ShowAnimation:Stop()\n            end\n        end        \n        local onStopHideAnimation = function (animation)\n            animation:GetParent():Hide()       \n        end\n        \n        local createAnimations = function (comboPoint)\n            --on show\n            comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n            Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n            \n            --on hide\n            comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n            Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n            Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n        end\n        \n        --build combo point frame        \n        for i =1, 10 do \n            local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n            f:SetSize (sizes.width, sizes.height)\n            tinsert (envTable.ComboPoints, f)\n            \n            local backgroundTexture = f:CreateTexture (nil, \"background\")\n            backgroundTexture:SetTexture (textures.backgroundTexture)\n            backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n            backgroundTexture:SetSize (sizes.width, sizes.height)\n            backgroundTexture:SetPoint (\"center\")\n            \n            local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n            comboPointTexture:SetTexture (textures.comboPointTexture)\n            comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n            \n            comboPointTexture:SetSize (sizes.width, sizes.height)\n            comboPointTexture:SetPoint (\"center\")\n            comboPointTexture:Hide()            \n            \n            f.IsActive = false\n            \n            f.backgroundTexture = backgroundTexture\n            f.comboPointTexture = comboPointTexture\n            \n            createAnimations (f)\n        end\n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1543177139,
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
					["Name"] = "Combo Points [Plater]",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 155,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)                \n            else\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = false;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    envTable.TargetAmount = envTable.TargetAmount or Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n    Plater.SetAnchor (envTable.TargetAmount, anchor);\n    \n    if (unitFrame.healthBar.TargetAmount) then\n        print (\"Nameplate Already have a Target Amount String!\")\n    end\n    \n    unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------       \n    \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1542808551,
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
					["Icon"] = 1966587,
					["Name"] = "Players Targeting a Target [Plater]",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 67,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.CurrentTarget) then\n        Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n    end\nend\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do not change the color of the personal bar\n    if (not unitFrame.IsSelf) then\n        \n        --if this nameplate the current target of the player?\n        if (unitFrame.namePlateIsTarget) then\n            Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            envTable.CurrentTarget = true\n        else\n            \n            --refresh the nameplate color\n            Plater.RefreshNameplateColor (unitFrame)\n            envTable.CurrentTarget = false\n        end\n    else\n        envTable.CurrentTarget = false\n    end\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \nend\n\n\n",
					},
					["Time"] = 1542815875,
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
					["Icon"] = 878211,
					["Name"] = "Current Target Color [Plater]",
				}, -- [8]
			},
			["aura_width"] = 18,
			["health_statusbar_bgcolor"] = {
				0.368627450980392, -- [1]
				0.368627450980392, -- [2]
				0.368627450980392, -- [3]
			},
			["script_data_trash"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterIcon = Plater:CreateImage (unitFrame, 1041231, 16, 16, \"overlay\")\n    envTable.BolsterIcon:SetPoint (\"right\", unitFrame, \"right\", 4, 0)\n    \n    envTable.BolsterStacks = Plater:CreateLabel (unitFrame, \"\", 12)\n    envTable.BolsterStacks:SetPoint (\"left\", envTable.BolsterIcon, \"right\", 2, 0)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterIcon:Hide()\n    envTable.BolsterStacks:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterIcon:Show()\n    envTable.BolsterStacks:Show()\nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local stacks = 0\n    \n    for index = 1, 40 do\n        local name, _, _, _, _, _, _, _, _, spellId = UnitBuff(unitId, index)\n        \n        if (not name) then \n            break \n        end\n        \n        if spellId == 209859 then\n            stacks = stacks + 1\n        end\n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if stacks > 0 then\n        envTable.BolsterStacks.text = tostring(stacks)\n    else\n        envTable.BolsterStacks.text = \"\"\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1538599268,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterIcon = Plater:CreateImage (unitFrame, 1041231, 16, 16, \"overlay\")\n    envTable.BolsterIcon:SetPoint (\"right\", unitFrame, \"right\", 4, 0)\n    \n    envTable.BolsterStacks = Plater:CreateLabel (unitFrame, \"\", 12)\n    envTable.BolsterStacks:SetPoint (\"left\", envTable.BolsterIcon, \"right\", 2, 0)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Enabled"] = false,
					["Revision"] = 110,
					["Author"] = "Yorman-Kil'jaeden",
					["Desc"] = "",
					["__TrashAt"] = 1538606264,
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local stacks = 0\n    \n    for index = 1, 40 do\n        local name, _, _, _, _, _, _, _, _, spellId = UnitBuff(unitId, index)\n        \n        if (not name) then \n            break \n        end\n        \n        if spellId == 209859 then\n            stacks = stacks + 1\n        end\n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if stacks > 0 then\n        envTable.BolsterStacks.text = tostring(stacks)\n    else\n        envTable.BolsterStacks.text = \"\"\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Bolster",
					["PlaterCore"] = 1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterIcon:Show()\n    envTable.BolsterStacks:Show()\nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterIcon:Hide()\n    envTable.BolsterStacks:Hide()\nend\n\n\n",
					["Icon"] = 1041231,
					["SpellIds"] = {
						209859, -- [1]
					},
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterStacks = Plater:CreateLabel(unitFrame, \"\", 15)\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterStacks:Hide()\nend",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterStacks:Show()\nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local count = 0\n    \n    for index = 1, 40 do\n        local b = {UnitBuff (unitId, index)}\n        \n        if (not b[1]) then \n            break \n        end\n        \n        if b[10] == envTable._SpellID then\n            count = count + 1\n        end\n    end\n    \n    if count > 0 then\n        envTable.BolsterStacks.text = tostring(count)\n        \n        local icon = unitFrame.BuffFrame.ExtraIconFrame:SetIcon(\n            envTable._SpellID,\n            Plater.db.profile.extra_icon_border_color,\n        nil, nil, false, false)\n        \n        envTable.BolsterStacks:SetPoint('bottomright', icon, 'bottomright')\n        \n        for _,icon in ipairs(unitFrame.BuffFrame.PlaterBuffList) do\n            if (icon.spellId == envTable._SpellID) then\n                icon:Hide()\n                icon.InUse = false\n            end\n        end\n    end\nend",
					["Time"] = 1538606272,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterStacks = Plater:CreateLabel(unitFrame, \"\", 15)\nend",
					["NpcNames"] = {
					},
					["Enabled"] = false,
					["Revision"] = 210,
					["Author"] = "Yorman-Kil'jaeden",
					["Desc"] = "",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterStacks:Show()\nend",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local count = 0\n    \n    for index = 1, 40 do\n        local b = {UnitBuff (unitId, index)}\n        \n        if (not b[1]) then \n            break \n        end\n        \n        if b[10] == envTable._SpellID then\n            count = count + 1\n        end\n    end\n    \n    if count > 0 then\n        envTable.BolsterStacks.text = tostring(count)\n        \n        local icon = unitFrame.BuffFrame.ExtraIconFrame:SetIcon(\n            envTable._SpellID,\n            Plater.db.profile.extra_icon_border_color,\n        nil, nil, false, false)\n        \n        envTable.BolsterStacks:SetPoint('bottomright', icon, 'bottomright')\n        \n        for _,icon in ipairs(unitFrame.BuffFrame.PlaterBuffList) do\n            if (icon.spellId == envTable._SpellID) then\n                icon:Hide()\n                icon.InUse = false\n            end\n        end\n    end\nend",
					["SpellIds"] = {
						188550, -- [1]
						209859, -- [2]
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterStacks:Hide()\nend",
					["Icon"] = 1041231,
					["Name"] = "Bolster_Test",
					["__TrashAt"] = 1538661400,
				}, -- [2]
				{
					["ConstructorCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["ScriptType"] = 1,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Time"] = 1540432152,
					["Temp_ConstructorCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 1,
					["Author"] = "Yuumi-Kil'jaeden",
					["Desc"] = "",
					["Name"] = "New Script",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Icon"] = "",
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["__TrashAt"] = 1540432161,
				}, -- [3]
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Color Change"] = 1,
				["Aura Border Color"] = 1,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 3,
				["Unit - Important"] = 5,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Unit Power"] = 1,
				["Blink by Time Left"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["castbar_target_font"] = "Friz Quadrata TT",
			["cast_statusbar_texture"] = "Minimalist",
			["health_statusbar_bgtexture"] = "Minimalist",
			["indicator_raidmark_anchor"] = {
				["y"] = 0.791999816894531,
				["x"] = 0,
				["side"] = 10,
			},
			["health_statusbar_texture"] = "Minimalist",
			["hook_auto_imported"] = {
				["Extra Border"] = 1,
				["Reorder Nameplate"] = 1,
				["Players Targetting Amount"] = 1,
				["Monk Statue"] = 2,
				["Combo Points"] = 1,
				["Target Color"] = 1,
				["Hide Neutral Units"] = 1,
				["Targetting Alpha"] = 3,
			},
			["not_affecting_combat_alpha"] = 0.579203724861145,
			["aura_height"] = 12,
			["target_highlight_alpha"] = 0.399999976158142,
			["target_indicator"] = "NONE",
			["cast_statusbar_bgtexture"] = "Minimalist",
			["target_shady_alpha"] = 0.5,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.25",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = ".5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.3499999046326",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateOtherTopInset"] = "-1",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "40",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = ".2",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateMinScale"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "3",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["patch_version"] = 2,
			["aura_timer_text_size"] = 12,
			["extra_icon_show_timer"] = false,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["border_thickness"] = 1,
			["captured_spells"] = {
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[268604] = {
					["type"] = "BUFF",
					["source"] = "Maxomus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6136] = {
					["type"] = "DEBUFF",
					["source"] = "Boulderfist Magus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141946,
				},
				[215479] = {
					["type"] = "BUFF",
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268607] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[183752] = {
					["source"] = "Hoen-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186055] = {
					["type"] = "BUFF",
					["source"] = "Makrura Brineshell",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130809,
				},
				[277822] = {
					["source"] = "Mirelurk Oasis-Speaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139413,
				},
				[256678] = {
					["source"] = "Briona the Bloodthirsty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135248,
				},
				[31661] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17364] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["encounterID"] = 2136,
				},
				[153561] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zooke-Cho'gall",
					["encounterID"] = 2136,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[115450] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Scruffadin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280385] = {
					["type"] = "BUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[118905] = {
					["source"] = "Capacitor Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[6552] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20243] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268619] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirbobo-Spirestone",
					["encounterID"] = 2136,
				},
				[276809] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268623] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[124280] = {
					["type"] = "DEBUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[255661] = {
					["source"] = "Kelyri",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Scruffadin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["type"] = "BUFF",
					["source"] = "Kulturon-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[285514] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[278862] = {
					["type"] = "BUFF",
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[203720] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[275793] = {
					["source"] = "Jadeflare",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140857,
				},
				[194509] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Immortalfish-Illidan",
					["encounterID"] = 2136,
				},
				[273747] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280400] = {
					["type"] = "BUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[23922] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273238] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[275797] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140835,
				},
				[245686] = {
					["type"] = "BUFF",
					["source"] = "Ovos",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274774] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199373] = {
					["npcID"] = 24207,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Army of the Dead",
					["encounterID"] = 2136,
				},
				[228287] = {
					["type"] = "DEBUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[232893] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[278359] = {
					["type"] = "BUFF",
					["source"] = "Zaebigal-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[274778] = {
					["source"] = "Jun-Ti",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 124927,
				},
				[203981] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[280409] = {
					["type"] = "BUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[5217] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[278364] = {
					["type"] = "BUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[280412] = {
					["type"] = "BUFF",
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271713] = {
					["source"] = "Luminous Azerite",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149331,
				},
				[251832] = {
					["source"] = "Sherebear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272737] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[114050] = {
					["type"] = "BUFF",
					["source"] = "Tuskary-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[264550] = {
					["source"] = "Squallshaper Auran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130622,
				},
				[288091] = {
					["type"] = "DEBUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[278880] = {
					["type"] = "BUFF",
					["source"] = "Redaxewound-Fenris",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207311] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Revar-Hyjal",
					["encounterID"] = 2136,
				},
				[290139] = {
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164325] = {
					["source"] = "Bloodfist Battlemaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139585,
				},
				[201427] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dëmons-Ghostlands",
					["encounterID"] = 2136,
				},
				[204242] = {
					["type"] = "DEBUFF",
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214222] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rjeezy-Illidan",
					["npcID"] = 0,
				},
				[279397] = {
					["type"] = "BUFF",
					["source"] = "Scruffadin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Heggs-Tichondrius",
					["npcID"] = 0,
				},
				[274792] = {
					["npcID"] = 140149,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Released Crawg",
					["encounterID"] = 2136,
				},
				[205523] = {
					["source"] = "Torgarth-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxxy-Gilneas",
					["encounterID"] = 2136,
				},
				[265582] = {
					["source"] = "Deepsea Viseclaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130325,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frakmoo-Tichondrius",
					["npcID"] = 0,
				},
				[127230] = {
					["type"] = "BUFF",
					["source"] = "Iondrelia",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5697] = {
					["type"] = "BUFF",
					["source"] = "Snuglock-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123904] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biggykiller-Zul'jin",
					["encounterID"] = 2136,
				},
				[278379] = {
					["type"] = "BUFF",
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210643] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tuskary-Zul'jin",
					["encounterID"] = 2136,
				},
				[251839] = {
					["type"] = "BUFF",
					["source"] = "Audigy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270705] = {
					["source"] = "Unstable Typhoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130307,
				},
				[273264] = {
					["type"] = "BUFF",
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195292] = {
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271220] = {
					["source"] = "Chief Engineer Zazzy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139817,
				},
				[115078] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278385] = {
					["type"] = "BUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[280433] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[187874] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["encounterID"] = 2136,
				},
				[278388] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[30449] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233421] = {
					["source"] = "Mirelurk Oasis-Speaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139413,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271227] = {
					["source"] = "Gordo the Oracle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139596,
				},
				[2050] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[115080] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biggykiller-Zul'jin",
					["encounterID"] = 2136,
				},
				[147193] = {
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188389] = {
					["type"] = "DEBUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[20822] = {
					["source"] = "Boulderfist Magus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141946,
				},
				[2098] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hojicide-Tichondrius",
					["encounterID"] = 2136,
				},
				[187878] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[196834] = {
					["type"] = "BUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Superrad-Bonechewer",
					["npcID"] = 0,
				},
				[228563] = {
					["type"] = "BUFF",
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[273794] = {
					["type"] = "DEBUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[283006] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[256711] = {
					["type"] = "BUFF",
					["source"] = "Briona the Bloodthirsty",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135248,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[262538] = {
					["source"] = "Knight-Captain Aldrin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142739,
				},
				[33697] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[235219] = {
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145152] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200166] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dëmons-Ghostlands",
					["encounterID"] = 2136,
				},
				[265614] = {
					["source"] = "Frostfencer Seraphi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130620,
				},
				[6673] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirbobo-Spirestone",
					["encounterID"] = 2136,
				},
				[256459] = {
					["type"] = "BUFF",
					["source"] = "Vvyst",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265615] = {
					["type"] = "DEBUFF",
					["source"] = "Frostfencer Seraphi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130620,
				},
				[585] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["encounterID"] = 2136,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blackmagnus-Aegwynn",
					["npcID"] = 0,
				},
				[589] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["encounterID"] = 2136,
				},
				[275341] = {
					["source"] = "Nightscale Coilfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140334,
				},
				[265618] = {
					["source"] = "Frostfencer Seraphi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130620,
				},
				[16953] = {
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277901] = {
					["source"] = "Visz the Silent Blade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139410,
				},
				[275343] = {
					["source"] = "Nightscale Coilfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140334,
				},
				[210660] = {
					["type"] = "BUFF",
					["source"] = "Tuskary-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[190446] = {
					["type"] = "BUFF",
					["source"] = "Annalinna-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[50842] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lidodger-Illidan",
					["encounterID"] = 2136,
				},
				[275345] = {
					["source"] = "Nightscale Screecher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140335,
				},
				[277904] = {
					["type"] = "BUFF",
					["source"] = "Aniya",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273299] = {
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272276] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[275347] = {
					["source"] = "Nightscale Coilfang",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140334,
				},
				[277907] = {
					["source"] = "Mirelurk Basher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139399,
				},
				[272790] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Beastoka-Hyjal",
					["encounterID"] = 2136,
				},
				[124682] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[633] = {
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231390] = {
					["type"] = "BUFF",
					["source"] = "Cassiopy-Lothar",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rikah-Hyjal",
					["npcID"] = 0,
				},
				[288146] = {
					["type"] = "BUFF",
					["source"] = "Circé",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191219] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tandrenia-Bonechewer",
					["npcID"] = 0,
				},
				[269214] = {
					["type"] = "BUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287638] = {
					["type"] = "DEBUFF",
					["source"] = "Immortalfish-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[287639] = {
					["type"] = "BUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[257748] = {
					["source"] = "\"Stabby\" Lottie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135246,
				},
				[273312] = {
					["type"] = "BUFF",
					["source"] = "Bubbleroo-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
				},
				[91933] = {
					["type"] = "DEBUFF",
					["source"] = "Molok the Crusher",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141942,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19577] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Beastoka-Hyjal",
					["encounterID"] = 2136,
				},
				[53595] = {
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275363] = {
					["type"] = "BUFF",
					["source"] = "Knucklebump Silverback",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140076,
				},
				[277922] = {
					["source"] = "Mirelurk Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139396,
				},
				[49821] = {
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275877] = {
					["source"] = "Impish Breeze",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140846,
				},
				[135700] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192249] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tuskary-Zul'jin",
					["encounterID"] = 2136,
				},
				[283044] = {
					["source"] = "Briona the Bloodthirsty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135248,
				},
				[275368] = {
					["source"] = "Swifttail Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145041,
				},
				[275880] = {
					["source"] = "Air Spirit",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140843,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265646] = {
					["type"] = "DEBUFF",
					["source"] = "Zek'voz",
					["npcID"] = 134445,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[274346] = {
					["type"] = "BUFF",
					["source"] = "Hoen-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273323] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[204021] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[273836] = {
					["type"] = "DEBUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278954] = {
					["type"] = "BUFF",
					["source"] = "Scruffadin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264115] = {
					["type"] = "BUFF",
					["source"] = "Frostfencer Seraphi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130620,
				},
				[275374] = {
					["source"] = "Knucklebump Stomper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140077,
				},
				[275375] = {
					["source"] = "Knucklebump Silverback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140076,
				},
				[275377] = {
					["source"] = "Knucklebump Silverback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140076,
				},
				[273842] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[147732] = {
					["type"] = "DEBUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193534] = {
					["type"] = "BUFF",
					["source"] = "Gravitykills-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[265656] = {
					["type"] = "BUFF",
					["source"] = "\"Stabby\" Lottie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135246,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[260830] = {
					["type"] = "BUFF",
					["source"] = "Arathor Defender",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142734,
				},
				[187650] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ahkan-Turalyon",
					["encounterID"] = 2136,
				},
				[270264] = {
					["source"] = "Bloodfist Elementalist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 118193,
				},
				[139546] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hojicide-Tichondrius",
					["encounterID"] = 2136,
				},
				[117526] = {
					["type"] = "DEBUFF",
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144776,
				},
				[195072] = {
					["source"] = "Fliedlice",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Heggs-Tichondrius",
					["npcID"] = 0,
				},
				[265662] = {
					["type"] = "DEBUFF",
					["source"] = "Zek'voz",
					["npcID"] = 134445,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[196608] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[49376] = {
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[3110] = {
					["npcID"] = 416,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rupkin",
					["encounterID"] = 2136,
				},
				[260834] = {
					["source"] = "Arathor Defender",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142734,
				},
				[783] = {
					["source"] = "Playfulpanda-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[12544] = {
					["type"] = "BUFF",
					["source"] = "Drywhisker Surveyor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142047,
				},
				[62618] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["encounterID"] = 2136,
				},
				[23161] = {
					["type"] = "BUFF",
					["source"] = "Anthliana",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193796] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["encounterID"] = 2136,
				},
				[85288] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jparc-Hyjal",
					["encounterID"] = 2136,
				},
				[158486] = {
					["type"] = "BUFF",
					["source"] = "Thracey",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hamapi-Aegwynn",
					["npcID"] = 0,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Infernal",
					["npcID"] = 89,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[285630] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194310] = {
					["type"] = "DEBUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[83242] = {
					["source"] = "Coratris-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[56222] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lidodger-Illidan",
					["encounterID"] = 2136,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 17252,
				},
				[274376] = {
					["type"] = "BUFF",
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277959] = {
					["type"] = "DEBUFF",
					["source"] = "Cassiopy-Lothar",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[228600] = {
					["type"] = "DEBUFF",
					["source"] = "Annalinna-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[280007] = {
					["type"] = "BUFF",
					["source"] = "Rixxi-Proudmoore",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185358] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gravitykills-Terenas",
					["encounterID"] = 2136,
				},
				[53600] = {
					["source"] = "Scruffadin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280009] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137915,
				},
				[198664] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[277451] = {
					["type"] = "BUFF",
					["source"] = "Venture Producer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139812,
				},
				[261866] = {
					["source"] = "Venture Co. Conscripts",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137576,
				},
				[225788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[853] = {
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281036] = {
					["type"] = "BUFF",
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83245] = {
					["source"] = "Coratris-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Firstcoming",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[871] = {
					["type"] = "BUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277458] = {
					["source"] = "Venture Sub-Lead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139811,
				},
				[275923] = {
					["source"] = "Icecracker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140982,
				},
				[176151] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonehënge-Terenas",
					["encounterID"] = 2136,
				},
				[4955] = {
					["type"] = "BUFF",
					["source"] = "Boulderfist Brute",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141947,
				},
				[263642] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[883] = {
					["source"] = "Jarnvidr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224001] = {
					["type"] = "BUFF",
					["source"] = "Crystall-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Tuskary-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[277974] = {
					["source"] = "Mirelurk Rivercaller",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139400,
				},
				[277975] = {
					["source"] = "Mire Priest Vassz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139414,
				},
				[263648] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[250870] = {
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119582] = {
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biggykiller-Zul'jin",
					["encounterID"] = 2136,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Playfulpanda-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[228354] = {
					["type"] = "DEBUFF",
					["source"] = "Maxomus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279515] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[116768] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[277981] = {
					["source"] = "Mire Priest Vassz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139414,
				},
				[244987] = {
					["source"] = "Saltfur Smasher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 122265,
				},
				[132403] = {
					["type"] = "BUFF",
					["source"] = "Scruffadin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271843] = {
					["type"] = "BUFF",
					["source"] = "Immortalfish-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[197908] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267239] = {
					["npcID"] = 135888,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warped Projection",
					["encounterID"] = 2136,
				},
				[202770] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[101545] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203538] = {
					["type"] = "BUFF",
					["source"] = "Thecrone-Boulderfist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["type"] = "DEBUFF",
					["source"] = "Annalinna-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[268776] = {
					["type"] = "BUFF",
					["source"] = "Amani Battle Bear",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130257,
				},
				[283106] = {
					["type"] = "BUFF",
					["source"] = "\"Stabby\" Lottie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135246,
				},
				[152108] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaebigal-Illidan",
					["encounterID"] = 2136,
				},
				[203539] = {
					["type"] = "BUFF",
					["source"] = "Chuckadin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202004] = {
					["type"] = "BUFF",
					["source"] = "Afterbirth-Aegwynn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280549] = {
					["type"] = "BUFF",
					["source"] = "Xtxd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277479] = {
					["source"] = "Fleshrot Marauder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146892,
				},
				[277991] = {
					["source"] = "Visz the Silent Blade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139410,
				},
				[108199] = {
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34861] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[277481] = {
					["source"] = "Fleshrot Vandal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146895,
				},
				[88625] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[157228] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[264689] = {
					["type"] = "DEBUFF",
					["source"] = "Accalasia-Rivendare",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
				},
				[265202] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[277996] = {
					["source"] = "Slitherscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139415,
				},
				[100780] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biggykiller-Zul'jin",
					["encounterID"] = 2136,
				},
				[982] = {
					["type"] = "BUFF",
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44457] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zooke-Cho'gall",
					["encounterID"] = 2136,
				},
				[194844] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[201754] = {
					["source"] = "Beast",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149595,
				},
				[47528] = {
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185123] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dëmons-Ghostlands",
					["encounterID"] = 2136,
				},
				[8042] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Konflíct-Illidan",
					["encounterID"] = 2136,
				},
				[279028] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[265723] = {
					["source"] = "Ironweb Spinner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134894,
				},
				[279029] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[257537] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Annalinna-Arthas",
					["encounterID"] = 2136,
				},
				[188196] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Konflíct-Illidan",
					["encounterID"] = 2136,
				},
				[272379] = {
					["source"] = "Norko the Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138391,
				},
				[28730] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["source"] = "Torgarth-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272380] = {
					["source"] = "Norko the Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138391,
				},
				[279033] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[49576] = {
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194594] = {
					["type"] = "BUFF",
					["source"] = "Cassiopy-Lothar",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[275452] = {
					["source"] = "Fleshrot Blighthound",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146911,
				},
				[193315] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hojicide-Tichondrius",
					["encounterID"] = 2136,
				},
				[272382] = {
					["source"] = "Swifttail Courser",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145035,
				},
				[257284] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ahkan-Turalyon",
					["encounterID"] = 2136,
				},
				[268801] = {
					["source"] = "Sandfury Thug",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 125460,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[2139] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194084] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[276991] = {
					["source"] = "Bloodfist Basher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 115218,
				},
				[55078] = {
					["type"] = "DEBUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[276992] = {
					["source"] = "Bloodfist Basher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 115218,
				},
				[184362] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[276993] = {
					["source"] = "Bloodfist Elementalist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 118193,
				},
				[277505] = {
					["source"] = "Fleshrot Deathwalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146889,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sarialinde-Ner'zhul",
					["npcID"] = 0,
				},
				[204065] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["encounterID"] = 2136,
				},
				[271877] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hojicide-Tichondrius",
					["encounterID"] = 2136,
				},
				[289277] = {
					["type"] = "BUFF",
					["source"] = "Tujori",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120360] = {
					["type"] = "BUFF",
					["source"] = "Gravitykills-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[1122] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaebigal-Illidan",
					["encounterID"] = 2136,
				},
				[282626] = {
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144776,
				},
				[273415] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[116011] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81340] = {
					["type"] = "BUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[85690] = {
					["type"] = "BUFF",
					["source"] = "Swifttail Courser",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 145035,
				},
				[271371] = {
					["source"] = "Gorkul the Unstoppable",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139588,
				},
				[265231] = {
					["npcID"] = 134445,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zek'voz",
					["encounterID"] = 2136,
				},
				[269837] = {
					["source"] = "Amani Thug",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 120843,
				},
				[132168] = {
					["type"] = "DEBUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16577] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146882,
				},
				[184367] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirbobo-Spirestone",
					["encounterID"] = 2136,
				},
				[277003] = {
					["source"] = "Maruk the Volcano",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139600,
				},
				[132169] = {
					["type"] = "DEBUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frakmoo-Tichondrius",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[13730] = {
					["source"] = "Dabyrie Militia",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142745,
				},
				[178740] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[278543] = {
					["type"] = "BUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85948] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Revar-Hyjal",
					["encounterID"] = 2136,
				},
				[282128] = {
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144772,
				},
				[107570] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33395] = {
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282129] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144772,
				},
				[195630] = {
					["type"] = "BUFF",
					["source"] = "Torgarth-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77505] = {
					["type"] = "DEBUFF",
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[271896] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[203819] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[134477] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58965,
				},
				[274968] = {
					["source"] = "Vengeful Spirit",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138970,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["type"] = "BUFF",
					["source"] = "Cooljay-Mug'thol",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5116] = {
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275993] = {
					["source"] = "Jadescale Gnasher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140977,
				},
				[273947] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[33076] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[265248] = {
					["npcID"] = 134445,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zek'voz",
					["encounterID"] = 2136,
				},
				[285719] = {
					["type"] = "BUFF",
					["source"] = "Trylle",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gravitykills-Terenas",
					["encounterID"] = 2136,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275997] = {
					["source"] = "Faceless Horror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138560,
				},
				[2643] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Beastoka-Hyjal",
					["encounterID"] = 2136,
				},
				[281116] = {
					["type"] = "BUFF",
					["source"] = "Brimsley",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5308] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jparc-Hyjal",
					["encounterID"] = 2136,
				},
				[282140] = {
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144772,
				},
				[31707] = {
					["npcID"] = 78116,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Water Elemental",
					["encounterID"] = 2136,
				},
				[108853] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zooke-Cho'gall",
					["encounterID"] = 2136,
				},
				[273955] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[289308] = {
					["type"] = "DEBUFF",
					["source"] = "Maxomus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["type"] = "BUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275492] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "MOTHER",
					["npcID"] = 140853,
				},
				[265258] = {
					["type"] = "BUFF",
					["source"] = "Bubbleroo-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[110645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tandrenia-Bonechewer",
					["npcID"] = 0,
				},
				[271401] = {
					["source"] = "Venture Producer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139812,
				},
				[191034] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[290337] = {
					["type"] = "BUFF",
					["source"] = "Maxomus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266285] = {
					["source"] = "Zian-Ti Quilen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132807,
				},
				[192058] = {
					["source"] = "Afterbirth-Aegwynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204596] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beegs-Tichondrius",
					["npcID"] = 0,
				},
				[282151] = {
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144772,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lavalse-Barthilas",
					["npcID"] = 0,
				},
				[33206] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Immortalfish-Illidan",
					["encounterID"] = 2136,
				},
				[282152] = {
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144772,
				},
				[49966] = {
					["npcID"] = 130443,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wasp",
					["encounterID"] = 2136,
				},
				[204598] = {
					["type"] = "DEBUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frakmoo-Tichondrius",
					["npcID"] = 0,
				},
				[271920] = {
					["type"] = "DEBUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36213] = {
					["npcID"] = 95072,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Earth Elemental",
					["encounterID"] = 2136,
				},
				[265268] = {
					["npcID"] = 134445,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zek'voz",
					["encounterID"] = 2136,
				},
				[274480] = {
					["source"] = "Risen Ravasaur",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139842,
				},
				[271924] = {
					["type"] = "DEBUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[47536] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[190784] = {
					["source"] = "Scruffadin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113975] = {
					["source"] = "Amira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[273974] = {
					["type"] = "BUFF",
					["source"] = "Annalinna-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[278070] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[115767] = {
					["type"] = "DEBUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113976] = {
					["source"] = "Amira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273977] = {
					["type"] = "DEBUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[255523] = {
					["source"] = "Venture Muscle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131408,
				},
				[276025] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Hoen-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269885] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Hoen-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Hoen-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44531] = {
					["type"] = "BUFF",
					["source"] = "Coldlight Coastrunner",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139652,
				},
				[101568] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ortheiel",
					["npcID"] = 0,
				},
				[113978] = {
					["source"] = "Amira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160597] = {
					["source"] = "Vexaroni",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirbobo-Spirestone",
					["encounterID"] = 2136,
				},
				[235313] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zooke-Cho'gall",
					["encounterID"] = 2136,
				},
				[1604] = {
					["type"] = "DEBUFF",
					["source"] = "Shadowscale Spawnling",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140811,
				},
				[277569] = {
					["source"] = "Warlord Hjelskard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146884,
				},
				[273988] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[126389] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275013] = {
					["source"] = "Canopy Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144949,
				},
				[225080] = {
					["type"] = "DEBUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6572] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273992] = {
					["type"] = "BUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[272970] = {
					["type"] = "DEBUFF",
					["source"] = "Kulturon-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[228920] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[205636] = {
					["source"] = "Torgar-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257067] = {
					["type"] = "BUFF",
					["source"] = "Briona the Bloodthirsty",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135248,
				},
				[3355] = {
					["type"] = "DEBUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Immortalfish-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[244787] = {
					["source"] = "Encrusted Coralback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126429,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[17253] = {
					["npcID"] = 128774,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stinky",
					["encounterID"] = 2136,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[270419] = {
					["source"] = "Gordo the Oracle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139596,
				},
				[255279] = {
					["type"] = "BUFF",
					["source"] = "Kunzen Boneripper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 124351,
				},
				[262232] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[193358] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[47540] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Immortalfish-Illidan",
					["encounterID"] = 2136,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[205385] = {
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[116670] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[277077] = {
					["source"] = "Coldlight Murloc",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132923,
				},
				[40120] = {
					["type"] = "BUFF",
					["source"] = "Playfulpanda-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285266] = {
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144772,
				},
				[194384] = {
					["type"] = "BUFF",
					["source"] = "Immortalfish-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[3567] = {
					["source"] = "Myrth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[115008] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[205644] = {
					["type"] = "DEBUFF",
					["source"] = "Treant",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 103822,
				},
				[268894] = {
					["source"] = "Vexaroni",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[78674] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonehënge-Terenas",
					["encounterID"] = 2136,
				},
				[260402] = {
					["type"] = "BUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[5221] = {
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270431] = {
					["source"] = "Bloodfist Geomancer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 115222,
				},
				[1822] = {
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287831] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[288343] = {
					["type"] = "BUFF",
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256053] = {
					["source"] = "Thirsting Bloodsucker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144944,
				},
				[207693] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[257077] = {
					["source"] = "Briona the Bloodthirsty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135248,
				},
				[268898] = {
					["type"] = "BUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[78675] = {
					["source"] = "Torgar-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44535] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Zaebigal-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[116] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kulturon-Mal'Ganis",
					["encounterID"] = 2136,
				},
				[287835] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[205648] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[31935] = {
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[106951] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121536] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[161640] = {
					["type"] = "BUFF",
					["source"] = "Shadowscale Spawnling",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140811,
				},
				[206930] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lidodger-Illidan",
					["encounterID"] = 2136,
				},
				[275560] = {
					["type"] = "BUFF",
					["source"] = "Gargantuan Blighthound",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146882,
				},
				[156779] = {
					["type"] = "BUFF",
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120] = {
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275561] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140564,
				},
				[282214] = {
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144776,
				},
				[206931] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lidodger-Illidan",
					["encounterID"] = 2136,
				},
				[129597] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zooke-Cho'gall",
					["encounterID"] = 2136,
				},
				[152175] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280170] = {
					["type"] = "BUFF",
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210003] = {
					["type"] = "DEBUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[122] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282218] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144776,
				},
				[240197] = {
					["source"] = "Briona the Bloodthirsty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135248,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[191837] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[261947] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Zaebigal-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[46968] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282222] = {
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144776,
				},
				[279152] = {
					["type"] = "BUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279664] = {
					["source"] = "Vanquished Tendril of G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143520,
				},
				[282223] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144776,
				},
				[19750] = {
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282225] = {
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144776,
				},
				[191840] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[197214] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["encounterID"] = 2136,
				},
				[270457] = {
					["source"] = "Goldenvein",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140769,
				},
				[58867] = {
					["npcID"] = 100820,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elemental Raptor",
					["encounterID"] = 2136,
				},
				[285811] = {
					["type"] = "BUFF",
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144772,
				},
				[263806] = {
					["type"] = "BUFF",
					["source"] = "Tuskary-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[288882] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[120517] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skeetfairy-Hyjal",
					["npcID"] = 0,
				},
				[270460] = {
					["source"] = "Guuru the Mountain-Breaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140768,
				},
				[277113] = {
					["source"] = "Commander Husan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138635,
				},
				[45242] = {
					["type"] = "BUFF",
					["source"] = "Bubbleroo-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191587] = {
					["type"] = "DEBUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[130] = {
					["type"] = "BUFF",
					["source"] = "Calwey",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281209] = {
					["type"] = "BUFF",
					["source"] = "Deadpunk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[277116] = {
					["source"] = "Amathet Champion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138624,
				},
				[251463] = {
					["source"] = "Kelyri",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116680] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[286840] = {
					["source"] = "Azergem Crawler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147935,
				},
				[133] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zooke-Cho'gall",
					["encounterID"] = 2136,
				},
				[244811] = {
					["source"] = "Saltfur Stick-Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123271,
				},
				[277118] = {
					["source"] = "Vicar Djosa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138629,
				},
				[281724] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[286842] = {
					["source"] = "Geoactive Azershard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147933,
				},
				[278143] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[114250] = {
					["type"] = "BUFF",
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[136] = {
					["source"] = "Coratris-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278144] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[106830] = {
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[244813] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281216] = {
					["type"] = "BUFF",
					["source"] = "Mazghar-Daggerspine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[135299] = {
					["type"] = "DEBUFF",
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277123] = {
					["source"] = "Amathet Archer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138623,
				},
				[118345] = {
					["npcID"] = 61056,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Earth Elemental",
					["encounterID"] = 2136,
				},
				[275077] = {
					["source"] = "Deathsting Broodwatcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140106,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Zaebigal-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[287360] = {
					["type"] = "BUFF",
					["source"] = "Immortalfish-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[275079] = {
					["source"] = "Deathsting Lasher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140107,
				},
				[280709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[34433] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Immortalfish-Illidan",
					["encounterID"] = 2136,
				},
				[258889] = {
					["source"] = "Mechanical Guardhound",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139805,
				},
				[192106] = {
					["type"] = "BUFF",
					["source"] = "Mazghar-Daggerspine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268429] = {
					["type"] = "DEBUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[217694] = {
					["type"] = "DEBUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "Wasp",
					["npcID"] = 130443,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[255308] = {
					["type"] = "BUFF",
					["source"] = "Kung",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138388,
				},
				[265360] = {
					["type"] = "DEBUFF",
					["source"] = "Projection of Yogg-Saron",
					["npcID"] = 135129,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[262802] = {
					["source"] = "Duskrunner Lorinas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134215,
				},
				[282249] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[272526] = {
					["source"] = "Mine Technician",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138521,
				},
				[77535] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[278156] = {
					["type"] = "BUFF",
					["source"] = "Tuskary-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[272016] = {
					["source"] = "Fleshrot Mystic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146893,
				},
				[244819] = {
					["source"] = "Chef Gru",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 123270,
				},
				[280205] = {
					["type"] = "BUFF",
					["source"] = "Theo",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[9672] = {
					["source"] = "Kor'gresh Coldrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142112,
				},
				[199786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kulturon-Mal'Ganis",
					["encounterID"] = 2136,
				},
				[126664] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sirbobo-Spirestone",
					["encounterID"] = 2136,
				},
				[285836] = {
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147188,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[182387] = {
					["type"] = "DEBUFF",
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275090] = {
					["source"] = "Bloodfist Battlemaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139585,
				},
				[195181] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[51514] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Konflíct-Illidan",
					["encounterID"] = 2136,
				},
				[202090] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sarialinde-Ner'zhul",
					["npcID"] = 0,
				},
				[268439] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[195182] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lidodger-Illidan",
					["encounterID"] = 2136,
				},
				[2484] = {
					["source"] = "Wull-Area52",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257616] = {
					["source"] = "\"Stabby\" Lottie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135246,
				},
				[259919] = {
					["type"] = "BUFF",
					["source"] = "Burning Goliath",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 141615,
				},
				[271000] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137482,
				},
				[115151] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Gravitykills-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[198766] = {
					["npcID"] = 100868,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chi-Ji",
					["encounterID"] = 2136,
				},
				[93402] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonehënge-Terenas",
					["encounterID"] = 2136,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[265374] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["encounterID"] = 2136,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sarialinde-Ner'zhul",
					["npcID"] = 0,
				},
				[264352] = {
					["type"] = "BUFF",
					["source"] = "Amira",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281240] = {
					["type"] = "BUFF",
					["source"] = "Amira",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262307] = {
					["source"] = "Arathor Faithful",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142735,
				},
				[257620] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gravitykills-Terenas",
					["encounterID"] = 2136,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Honeymoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5302] = {
					["type"] = "BUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123725] = {
					["type"] = "DEBUFF",
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[285853] = {
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147225,
				},
				[248667] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285854] = {
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147225,
				},
				[256600] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135247,
				},
				[138130] = {
					["type"] = "BUFF",
					["source"] = "Earth Spirit",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[8921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonehënge-Terenas",
					["encounterID"] = 2136,
				},
				[285856] = {
					["source"] = "Azerite Extractor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147225,
				},
				[17962] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaebigal-Illidan",
					["encounterID"] = 2136,
				},
				[215661] = {
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44544] = {
					["type"] = "BUFF",
					["source"] = "Kulturon-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[276136] = {
					["type"] = "BUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skeetfairy-Hyjal",
					["npcID"] = 0,
				},
				[264878] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[161673] = {
					["type"] = "BUFF",
					["source"] = "Shockjaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140808,
				},
				[277161] = {
					["source"] = "Commander Husan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138635,
				},
				[201334] = {
					["type"] = "BUFF",
					["source"] = "Chicoloco-Boulderfist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290467] = {
					["type"] = "BUFF",
					["source"] = "Fliedlice",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201846] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[290468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Soomi-Illidan",
					["npcID"] = 0,
				},
				[263858] = {
					["npcID"] = 130443,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wasp",
					["encounterID"] = 2136,
				},
				[276141] = {
					["type"] = "BUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Beastoka-Hyjal",
					["encounterID"] = 2136,
				},
				[276142] = {
					["type"] = "BUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270513] = {
					["source"] = "Geoactive Azershard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147933,
				},
				[278190] = {
					["type"] = "DEBUFF",
					["source"] = "Plaguefeather",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142435,
				},
				[271538] = {
					["type"] = "BUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282285] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[270515] = {
					["source"] = "Unleashed Azerite",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131311,
				},
				[19434] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ahkan-Turalyon",
					["encounterID"] = 2136,
				},
				[2948] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[84709] = {
					["source"] = "Boulderfist Brute",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141947,
				},
				[196733] = {
					["type"] = "DEBUFF",
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199804] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hojicide-Tichondrius",
					["encounterID"] = 2136,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[188290] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[119381] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58875] = {
					["type"] = "BUFF",
					["source"] = "Afterbirth-Aegwynn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81256] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[282293] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[264382] = {
					["npcID"] = 134726,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Projection of C'thun",
					["encounterID"] = 2136,
				},
				[157331] = {
					["npcID"] = 77942,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Storm Elemental",
					["encounterID"] = 2136,
				},
				[286900] = {
					["type"] = "BUFF",
					["source"] = "Azergem Shardback",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147936,
				},
				[276154] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[115288] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biggykiller-Zul'jin",
					["encounterID"] = 2136,
				},
				[57724] = {
					["type"] = "DEBUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[279737] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286902] = {
					["source"] = "Azergem Shardback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147936,
				},
				[277179] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[12472] = {
					["type"] = "BUFF",
					["source"] = "Kulturon-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[282299] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[185736] = {
					["type"] = "BUFF",
					["source"] = "Coronet",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Brimsley",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286907] = {
					["type"] = "DEBUFF",
					["source"] = "Azergem Shardback",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147936,
				},
				[267461] = {
					["source"] = "Frostfencer Seraphi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130620,
				},
				[277185] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[281791] = {
					["type"] = "BUFF",
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115546] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131493] = {
					["type"] = "BUFF",
					["source"] = "Gwanglord-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207744] = {
					["type"] = "DEBUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[286911] = {
					["type"] = "DEBUFF",
					["source"] = "Azergem Shardback",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147936,
				},
				[281794] = {
					["type"] = "BUFF",
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198533] = {
					["source"] = "Jade Serpent Statue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[277189] = {
					["source"] = "Vicar Djosa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138629,
				},
				[281795] = {
					["type"] = "BUFF",
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[280772] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jparc-Hyjal",
					["encounterID"] = 2136,
				},
				[84714] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kulturon-Mal'Ganis",
					["encounterID"] = 2136,
				},
				[280773] = {
					["type"] = "DEBUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[124503] = {
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285381] = {
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280776] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[277195] = {
					["source"] = "Vicar Djosa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138629,
				},
				[85739] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[147362] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Beastoka-Hyjal",
					["encounterID"] = 2136,
				},
				[137639] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Beegs-Tichondrius",
					["npcID"] = 0,
				},
				[224125] = {
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["npcID"] = 100820,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[280780] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[205191] = {
					["type"] = "BUFF",
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275881] = {
					["type"] = "BUFF",
					["source"] = "Zephis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140844,
				},
				[224126] = {
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["npcID"] = 100820,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[277075] = {
					["source"] = "Fathom-Seeker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139675,
				},
				[277459] = {
					["source"] = "Chief Engineer Zazzy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139817,
				},
				[66] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96231] = {
					["source"] = "Scruffadin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278736] = {
					["type"] = "BUFF",
					["source"] = "Fliedlice",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219521] = {
					["type"] = "DEBUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[205448] = {
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278225] = {
					["type"] = "BUFF",
					["source"] = "Torgarth-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228477] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[276140] = {
					["type"] = "BUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243818] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["type"] = "BUFF",
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285837] = {
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147188,
				},
				[61882] = {
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225919] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[242551] = {
					["type"] = "BUFF",
					["source"] = "Vvyst",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124506] = {
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267015] = {
					["source"] = "Duskrunner Lorinas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134215,
				},
				[267052] = {
					["source"] = "Shadeweaver Zarra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134216,
				},
				[262920] = {
					["source"] = "Riftblade Kelain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134214,
				},
				[280787] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[256369] = {
					["type"] = "BUFF",
					["source"] = "Varigg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135247,
				},
				[221562] = {
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221885] = {
					["type"] = "BUFF",
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280788] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[52610] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["type"] = "BUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275789] = {
					["source"] = "Scheming Flame",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140835,
				},
				[44614] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Annalinna-Arthas",
					["encounterID"] = 2136,
				},
				[24394] = {
					["type"] = "DEBUFF",
					["source"] = "Devilsaur",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 71529,
				},
				[225921] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[278231] = {
					["type"] = "BUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[261488] = {
					["source"] = "Knight-Captain Aldrin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 142739,
				},
				[55233] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267005] = {
					["source"] = "Riftblade Kelain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134214,
				},
				[262906] = {
					["source"] = "Riftblade Kelain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134214,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Earthbind Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 2630,
				},
				[205708] = {
					["type"] = "DEBUFF",
					["source"] = "Annalinna-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[264667] = {
					["type"] = "BUFF",
					["source"] = "Devilsaur",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 71529,
				},
				[60103] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["encounterID"] = 2136,
				},
				[157348] = {
					["type"] = "BUFF",
					["source"] = "Primal Storm Elemental",
					["npcID"] = 77942,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[276187] = {
					["type"] = "BUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[263848] = {
					["type"] = "BUFF",
					["source"] = "Duskrunner Lorinas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134215,
				},
				[57984] = {
					["npcID"] = 95061,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Greater Fire Elemental",
					["encounterID"] = 2136,
				},
				[275940] = {
					["source"] = "Frostbore Worm",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140984,
				},
				[276188] = {
					["type"] = "BUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[275973] = {
					["source"] = "Frostbore Burster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140983,
				},
				[271071] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[276138] = {
					["type"] = "BUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276189] = {
					["type"] = "BUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[120694] = {
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149595,
				},
				[267195] = {
					["type"] = "DEBUFF",
					["source"] = "Duskrunner Lorinas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134215,
				},
				[263537] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276190] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[56641] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gravitykills-Terenas",
					["encounterID"] = 2136,
				},
				[276137] = {
					["type"] = "BUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["type"] = "BUFF",
					["source"] = "Chazka",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276191] = {
					["type"] = "BUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[244812] = {
					["type"] = "BUFF",
					["source"] = "Saltfur Brawler",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123274,
				},
				[270200] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212792] = {
					["type"] = "DEBUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276192] = {
					["type"] = "BUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[270198] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276139] = {
					["type"] = "BUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257418] = {
					["type"] = "BUFF",
					["source"] = "Normthor-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276193] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[3716] = {
					["source"] = "Yasik",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 58960,
				},
				[277042] = {
					["source"] = "Fleshrot Mystic",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146893,
				},
				[264377] = {
					["type"] = "BUFF",
					["source"] = "Squallshaper Auran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130622,
				},
				[276194] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[270565] = {
					["source"] = "Shadeweaver Zarra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134216,
				},
				[282211] = {
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144776,
				},
				[275344] = {
					["source"] = "Sunback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140360,
				},
				[87024] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248446] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126205,
				},
				[167898] = {
					["type"] = "BUFF",
					["source"] = "Grimofdeath",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256058] = {
					["source"] = "Leatherwing Hunter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144948,
				},
				[262652] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[268520] = {
					["type"] = "BUFF",
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69369] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277114] = {
					["source"] = "Amathet Zealot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138626,
				},
				[277486] = {
					["source"] = "Fleshrot Runeweaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146890,
				},
				[202425] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[204883] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[246287] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["encounterID"] = 2136,
				},
				[131894] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gravitykills-Terenas",
					["encounterID"] = 2136,
				},
				[277233] = {
					["source"] = "Forgotten One",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138559,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jollyranchrz-Tichondrius",
					["npcID"] = 0,
				},
				[281792] = {
					["type"] = "BUFF",
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["type"] = "BUFF",
					["source"] = "Shadymoon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275699] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Revar-Hyjal",
					["encounterID"] = 2136,
				},
				[266988] = {
					["source"] = "Gore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135736,
				},
				[219788] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[185245] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[244988] = {
					["type"] = "DEBUFF",
					["source"] = "Darokk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138016,
				},
				[266989] = {
					["source"] = "Gore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135736,
				},
				[256390] = {
					["source"] = "Tunnel Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137967,
				},
				[257541] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zooke-Cho'gall",
					["encounterID"] = 2136,
				},
				[278769] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181394] = {
					["type"] = "DEBUFF",
					["source"] = "Makrura Brineshell",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130809,
				},
				[278249] = {
					["type"] = "BUFF",
					["source"] = "Gravitykills-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[179057] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dëmons-Ghostlands",
					["encounterID"] = 2136,
				},
				[286540] = {
					["source"] = "Canopy Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144949,
				},
				[109304] = {
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152173] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[276048] = {
					["type"] = "BUFF",
					["source"] = "Doomtunnel",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140978,
				},
				[81141] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[202188] = {
					["type"] = "BUFF",
					["source"] = "Tuskary-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[276204] = {
					["type"] = "BUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jparc-Hyjal",
					["encounterID"] = 2136,
				},
				[257415] = {
					["type"] = "BUFF",
					["source"] = "Crystall-Blackrock",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250507] = {
					["source"] = "Nyl'sozz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138566,
				},
				[528] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["encounterID"] = 2136,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Lidodger-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frakmoo-Tichondrius",
					["npcID"] = 0,
				},
				[287976] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146890,
				},
				[274426] = {
					["type"] = "BUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[14914] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[160832] = {
					["type"] = "BUFF",
					["source"] = "Gote",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265530] = {
					["npcID"] = 134445,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zek'voz",
					["encounterID"] = 2136,
				},
				[228645] = {
					["type"] = "DEBUFF",
					["source"] = "Rune Weapon",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 27893,
				},
				[164324] = {
					["type"] = "BUFF",
					["source"] = "Bloodfist Enforcer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139583,
				},
				[264458] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130621,
				},
				[287978] = {
					["type"] = "BUFF",
					["source"] = "Fleshrot Runeweaver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146890,
				},
				[265721] = {
					["source"] = "Ironweb Weaver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134895,
				},
				[278767] = {
					["type"] = "BUFF",
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273465] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[81782] = {
					["npcID"] = 0,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[181089] = {
					["type"] = "BUFF",
					["source"] = "Zek'voz",
					["npcID"] = 134445,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266998] = {
					["source"] = "Varigg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135247,
				},
				[213652] = {
					["source"] = "Scruffadin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Immortalfish-Illidan",
					["encounterID"] = 2136,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262905] = {
					["source"] = "Riftblade Kelain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134214,
				},
				[198300] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[186257] = {
					["type"] = "BUFF",
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280817] = {
					["type"] = "DEBUFF",
					["source"] = "Hallmonitor-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267000] = {
					["source"] = "Varigg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135247,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[51460] = {
					["type"] = "BUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[257408] = {
					["type"] = "BUFF",
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282220] = {
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144776,
				},
				[282354] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[102560] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[277250] = {
					["source"] = "Forgotten One",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138559,
				},
				[281843] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[115175] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[272441] = {
					["source"] = "Pinegraze Calf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132797,
				},
				[162794] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dëmons-Ghostlands",
					["encounterID"] = 2136,
				},
				[277245] = {
					["source"] = "Living Corruption",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138557,
				},
				[126935] = {
					["source"] = "Amira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[188370] = {
					["type"] = "BUFF",
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257742] = {
					["type"] = "BUFF",
					["source"] = "\"Stabby\" Lottie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135246,
				},
				[259462] = {
					["source"] = "Coral Snapper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137763,
				},
				[184662] = {
					["type"] = "BUFF",
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tortila-Tichondrius",
					["npcID"] = 0,
				},
				[255271] = {
					["source"] = "Kunzen Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 124352,
				},
				[248473] = {
					["type"] = "BUFF",
					["source"] = "Misteeboi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265237] = {
					["npcID"] = 134445,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zek'voz",
					["encounterID"] = 2136,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[51399] = {
					["type"] = "DEBUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277439] = {
					["source"] = "Safety Inspection Bot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131431,
				},
				[51505] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Konflíct-Illidan",
					["encounterID"] = 2136,
				},
				[285290] = {
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144776,
				},
				[277977] = {
					["source"] = "Mirelurk Bog Priest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139394,
				},
				[47541] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Revar-Hyjal",
					["encounterID"] = 2136,
				},
				[274447] = {
					["type"] = "BUFF",
					["source"] = "Gravitykills-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267008] = {
					["source"] = "Duskrunner Lorinas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134215,
				},
				[259473] = {
					["source"] = "Casteless Zandalari",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131331,
				},
				[278267] = {
					["type"] = "BUFF",
					["source"] = "Torgar-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285835] = {
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147188,
				},
				[270613] = {
					["source"] = "Tidal Surger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 119724,
				},
				[188070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
				},
				[244881] = {
					["source"] = "Volshas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139416,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Bleedingnija",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275370] = {
					["type"] = "BUFF",
					["source"] = "Knucklebump Stomper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140077,
				},
				[204255] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[277823] = {
					["source"] = "Mirelurk Oasis-Speaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139413,
				},
				[257413] = {
					["type"] = "BUFF",
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273664] = {
					["source"] = "Crushing Tentacle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138577,
				},
				[6343] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Beastoka-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[1079] = {
					["type"] = "DEBUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250505] = {
					["source"] = "Shuk'shuguun the Subjugator",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138568,
				},
				[273232] = {
					["type"] = "BUFF",
					["source"] = "Dëmons-Ghostlands",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[122470] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[277909] = {
					["source"] = "Volshas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139416,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lavalse-Barthilas",
					["npcID"] = 0,
				},
				[41635] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[253595] = {
					["type"] = "BUFF",
					["source"] = "Rethter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277249] = {
					["source"] = "Faceless Tendril",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138576,
				},
				[221771] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Dejas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282315] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[264968] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135247,
				},
				[282263] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[187837] = {
					["source"] = "Afterbirth-Aegwynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282126] = {
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144772,
				},
				[277989] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 139410,
				},
				[205473] = {
					["type"] = "BUFF",
					["source"] = "Annalinna-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267558] = {
					["type"] = "BUFF",
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199844] = {
					["type"] = "BUFF",
					["source"] = "Kulturon-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[275998] = {
					["source"] = "Greatfangs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140979,
				},
				[269576] = {
					["type"] = "BUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[123986] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[282134] = {
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144772,
				},
				[117405] = {
					["type"] = "DEBUFF",
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144776,
				},
				[63560] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Revar-Hyjal",
					["encounterID"] = 2136,
				},
				[243435] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255114] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Chazka",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tortila-Tichondrius",
					["npcID"] = 0,
				},
				[265264] = {
					["type"] = "DEBUFF",
					["source"] = "Zek'voz",
					["npcID"] = 134445,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[20271] = {
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262926] = {
					["source"] = "Riftblade Kelain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134214,
				},
				[285270] = {
					["source"] = "Brother Bruen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144782,
				},
				[278110] = {
					["type"] = "DEBUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244880] = {
					["source"] = "Gloamhoof the Elder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140089,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Wull-Area52",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285472] = {
					["type"] = "BUFF",
					["source"] = "Coolfactor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[244989] = {
					["source"] = "Darokk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138016,
				},
				[232633] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["encounterID"] = 2136,
				},
				[275366] = {
					["source"] = "Knucklebump Stomper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140077,
				},
				[285276] = {
					["source"] = "Airyn Swiftfeet",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144776,
				},
				[115308] = {
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204197] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Immortalfish-Illidan",
					["encounterID"] = 2136,
				},
				[261769] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[212431] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gravitykills-Terenas",
					["encounterID"] = 2136,
				},
				[270606] = {
					["source"] = "Unstable Typhoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130307,
				},
				[273298] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126311] = {
					["type"] = "BUFF",
					["source"] = "Water Strider",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 18680,
				},
				[277911] = {
					["source"] = "Mirelurk Clutchguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139393,
				},
				[244882] = {
					["source"] = "Gloamhoof the Elder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140089,
				},
				[262931] = {
					["source"] = "Riftblade Kelain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134214,
				},
				[267537] = {
					["type"] = "BUFF",
					["source"] = "Smokes-Caelestrasz",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[250586] = {
					["source"] = "Bloodfist Rockbinder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 119925,
				},
				[116844] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262932] = {
					["source"] = "Riftblade Kelain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134214,
				},
				[197277] = {
					["type"] = "DEBUFF",
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115181] = {
					["source"] = "Torgarth-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276995] = {
					["source"] = "Bloodfist Enforcer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139583,
				},
				[282160] = {
					["source"] = "Lady Tamakeen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144772,
				},
				[285962] = {
					["source"] = "Misteeboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108839] = {
					["type"] = "BUFF",
					["source"] = "Kulturon-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[124009] = {
					["type"] = "BUFF",
					["source"] = "Xuen",
					["npcID"] = 63508,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[255288] = {
					["source"] = "Kunzen Hozen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 124353,
				},
				[157736] = {
					["type"] = "DEBUFF",
					["source"] = "Zaebigal-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[287790] = {
					["type"] = "BUFF",
					["source"] = "Torgar-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46924] = {
					["type"] = "BUFF",
					["source"] = "Sirbobo-Spirestone",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[157375] = {
					["npcID"] = 77942,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Storm Elemental",
					["encounterID"] = 2136,
				},
				[278288] = {
					["type"] = "BUFF",
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188592] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[53385] = {
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100784] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biggykiller-Zul'jin",
					["encounterID"] = 2136,
				},
				[205351] = {
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115310] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[256592] = {
					["source"] = "Varigg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135247,
				},
				[30455] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kulturon-Mal'Ganis",
					["encounterID"] = 2136,
				},
				[116189] = {
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116705] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Biggykiller-Zul'jin",
					["encounterID"] = 2136,
				},
				[11831] = {
					["source"] = "Boulderfist Magus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141946,
				},
				[273685] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[193455] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Beastoka-Hyjal",
					["encounterID"] = 2136,
				},
				[194153] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonehënge-Terenas",
					["encounterID"] = 2136,
				},
				[275340] = {
					["source"] = "Nightscale Screecher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140335,
				},
				[196840] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxxy-Gilneas",
					["encounterID"] = 2136,
				},
				[244808] = {
					["source"] = "Coralback Surfcrawler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126424,
				},
				[196782] = {
					["type"] = "DEBUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[214621] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Immortalfish-Illidan",
					["encounterID"] = 2136,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["type"] = "BUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259455] = {
					["type"] = "BUFF",
					["source"] = "Ellurà",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187827] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277115] = {
					["source"] = "Commander Husan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138635,
				},
				[202164] = {
					["type"] = "BUFF",
					["source"] = "Goredamm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227744] = {
					["type"] = "BUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281413] = {
					["type"] = "BUFF",
					["source"] = "Dumbobby-Hakkar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34026] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Beastoka-Hyjal",
					["encounterID"] = 2136,
				},
				[43265] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lidodger-Illidan",
					["encounterID"] = 2136,
				},
				[26573] = {
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270674] = {
					["type"] = "BUFF",
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2565] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116847] = {
					["type"] = "BUFF",
					["source"] = "Torgarth-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269085] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[198764] = {
					["npcID"] = 100868,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chi-Ji",
					["encounterID"] = 2136,
				},
				[211881] = {
					["source"] = "Hoen-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22703] = {
					["type"] = "DEBUFF",
					["source"] = "Zaebigal-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[210657] = {
					["type"] = "BUFF",
					["source"] = "Tuskary-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[256688] = {
					["type"] = "DEBUFF",
					["source"] = "Briona the Bloodthirsty",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135248,
				},
				[51723] = {
					["source"] = "Muffindiver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260242] = {
					["type"] = "BUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mimeta-Tichondrius",
					["npcID"] = 0,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[216441] = {
					["type"] = "BUFF",
					["source"] = "Papisalad",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265431] = {
					["source"] = "Varigg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135247,
				},
				[244803] = {
					["source"] = "Greatfangs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140979,
				},
				[285976] = {
					["type"] = "BUFF",
					["source"] = "Jarnvidr",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53209] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Beastoka-Hyjal",
					["encounterID"] = 2136,
				},
				[162243] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dëmons-Ghostlands",
					["encounterID"] = 2136,
				},
				[2641] = {
					["source"] = "Coratris-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[2649] = {
					["source"] = "Devilsaur",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[112042] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 58960,
				},
				[285978] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nellabel-Frostmane",
					["npcID"] = 0,
				},
				[256661] = {
					["source"] = "Varigg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135247,
				},
				[268899] = {
					["type"] = "BUFF",
					["source"] = "Jparc-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[54680] = {
					["source"] = "Devilsaur",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[228260] = {
					["source"] = "ßandâid-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49028] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lidodger-Illidan",
					["encounterID"] = 2136,
				},
				[198067] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Oxxy-Gilneas",
					["encounterID"] = 2136,
				},
				[278108] = {
					["type"] = "BUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257144] = {
					["source"] = "Briona the Bloodthirsty",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135248,
				},
				[116849] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231843] = {
					["type"] = "BUFF",
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Verotha-Ner'zhul",
					["npcID"] = 0,
				},
				[339] = {
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193786] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["encounterID"] = 2136,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Annalinna-Arthas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[212653] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zooke-Cho'gall",
					["encounterID"] = 2136,
				},
				[29722] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaebigal-Illidan",
					["encounterID"] = 2136,
				},
				[120679] = {
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265584] = {
					["type"] = "DEBUFF",
					["source"] = "Squallshaper Auran",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130622,
				},
				[267560] = {
					["type"] = "BUFF",
					["source"] = "Melonmasher-Malorne",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23920] = {
					["type"] = "BUFF",
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272678] = {
					["source"] = "Steeny-Dragonblight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198069] = {
					["type"] = "BUFF",
					["source"] = "Immortalfish-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Hoen-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277623] = {
					["source"] = "Azergem Shardback",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 147936,
				},
				[275927] = {
					["source"] = "Greatfangs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140979,
				},
				[2120] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288613] = {
					["type"] = "BUFF",
					["source"] = "Ahkan-Turalyon",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[124007] = {
					["npcID"] = 63508,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Xuen",
					["encounterID"] = 2136,
				},
				[129250] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Immortalfish-Illidan",
					["encounterID"] = 2136,
				},
				[348] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaebigal-Illidan",
					["encounterID"] = 2136,
				},
				[247454] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[190984] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stonehënge-Terenas",
					["encounterID"] = 2136,
				},
				[115313] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nellabel-Frostmane",
					["npcID"] = 0,
				},
				[258713] = {
					["source"] = "Squallshaper Bryson",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130621,
				},
				[204157] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Eaterofgoats-Illidan",
					["encounterID"] = 2136,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Dumbobby-Hakkar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208772] = {
					["type"] = "DEBUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[266030] = {
					["type"] = "BUFF",
					["source"] = "Zaebigal-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[2825] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Dejas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255311] = {
					["type"] = "DEBUFF",
					["source"] = "Kunzen Crusher",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 124350,
				},
				[355] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51533] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["encounterID"] = 2136,
				},
				[204213] = {
					["type"] = "DEBUFF",
					["source"] = "Immortalfish-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[247456] = {
					["type"] = "BUFF",
					["source"] = "Eaterofgoats-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[265358] = {
					["npcID"] = 135129,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Projection of Yogg-Saron",
					["encounterID"] = 2136,
				},
				[57994] = {
					["source"] = "Afterbirth-Aegwynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197561] = {
					["type"] = "BUFF",
					["source"] = "Heiferweizen-Crushridge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lidodger-Illidan",
					["encounterID"] = 2136,
				},
				[77575] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Revar-Hyjal",
					["encounterID"] = 2136,
				},
				[121557] = {
					["type"] = "BUFF",
					["source"] = "Yellowy",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[236645] = {
					["type"] = "BUFF",
					["source"] = "Zooke-Cho'gall",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[269713] = {
					["type"] = "BUFF",
					["source"] = "\"Stabby\" Lottie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135246,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Fliedlice",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278155] = {
					["type"] = "BUFF",
					["source"] = "Tuskary-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[257618] = {
					["source"] = "\"Stabby\" Lottie",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135246,
				},
				[265931] = {
					["type"] = "DEBUFF",
					["source"] = "Zaebigal-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[285482] = {
					["type"] = "BUFF",
					["source"] = "Kulturon-Mal'Ganis",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Britta-Ner'zhul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tortila-Tichondrius",
					["npcID"] = 0,
				},
				[275346] = {
					["source"] = "Nightscale Screecher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140335,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[224127] = {
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["npcID"] = 100820,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[73313] = {
					["type"] = "BUFF",
					["source"] = "Schïsm-Thrall",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108281] = {
					["type"] = "BUFF",
					["source"] = "Konflíct-Illidan",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[273714] = {
					["type"] = "BUFF",
					["source"] = "Oxxy-Gilneas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[244835] = {
					["source"] = "Gargantuan Blighthound",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146882,
				},
				[274738] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Lutes-Akama",
					["encounterID"] = 2136,
				},
				[277297] = {
					["source"] = "Venture Producer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 139812,
				},
				[188443] = {
					["source"] = "Salsajr-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Stonehënge-Terenas",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[274739] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[273310] = {
					["type"] = "BUFF",
					["source"] = "Bubbleroo-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281178] = {
					["type"] = "BUFF",
					["source"] = "Aicitél-Dragonmaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201872] = {
					["source"] = "Faceless Mindlasher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138561,
				},
				[116858] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaebigal-Illidan",
					["encounterID"] = 2136,
				},
				[267064] = {
					["type"] = "DEBUFF",
					["source"] = "Shadeweaver Zarra",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134216,
				},
				[124274] = {
					["type"] = "DEBUFF",
					["source"] = "Fatwally-Maiev",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185763] = {
					["type"] = "BUFF",
					["source"] = "Hojicide-Tichondrius",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[60234] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267065] = {
					["source"] = "Shadeweaver Zarra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134216,
				},
				[52174] = {
					["source"] = "Omegagundam-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49184] = {
					["source"] = "Coolfactor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274742] = {
					["type"] = "BUFF",
					["source"] = "Lutes-Akama",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[207289] = {
					["type"] = "BUFF",
					["source"] = "Revar-Hyjal",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[267578] = {
					["source"] = "Riftblade Kelain",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134214,
				},
				[115191] = {
					["type"] = "BUFF",
					["source"] = "Muffindiver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281854] = {
					["source"] = "Hoen-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267067] = {
					["source"] = "Shadeweaver Zarra",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134216,
				},
				[117952] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smokes-Caelestrasz",
					["encounterID"] = 2136,
				},
				[113656] = {
					["type"] = "BUFF",
					["source"] = "Biggykiller-Zul'jin",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2136,
				},
				[54861] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2061] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yellowy",
					["encounterID"] = 2136,
				},
				[124275] = {
					["type"] = "DEBUFF",
					["source"] = "Torgarth-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264173] = {
					["type"] = "BUFF",
					["source"] = "Snuglock-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
			},
			["auto_toggle_friendly_enabled"] = true,
		},
	},
}
