
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Small Alert [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["Name"] = "Aura - Invalidate Unit [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["NpcNames"] = {
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Name"] = "Aura - Buff Alert [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Very Important [Plater]",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["NpcNames"] = {
					},
					["Author"] = "Bombad�o-Azralon",
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
					["Icon"] = 2175503,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["Name"] = "Aura - Debuff Alert [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Icon"] = 1029718,
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Name"] = "Fixate [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
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
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Name"] = "Unit - Important [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Name"] = "Cast - Big Alert [Plater]",
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
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["Name"] = "UnitPower [Plater]",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["Icon"] = 841383,
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543250950,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Fixate On You [Plater]",
					["PlaterCore"] = 1,
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
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
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
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["Icon"] = 1041231,
					["Name"] = "Bolster",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 122,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    --layout\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = 2000853,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1542816185,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["Name"] = "Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543253273,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
				}, -- [15]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["Icon"] = 133006,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1543680853,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
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
					["actorname_text_font"] = "Friz Quadrata TT",
					["percent_text_font"] = "Friz Quadrata TT",
					["spellname_text_font"] = "Friz Quadrata TT",
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
					["spellpercent_text_size"] = 8,
					["percent_text_alpha"] = 0.699999988079071,
					["cast_incombat"] = {
						90, -- [1]
						8, -- [2]
					},
					["percent_text_anchor"] = {
						["side"] = 11,
					},
					["level_text_font"] = "UbuntuCondensed",
					["spellname_text_font"] = "UbuntuCondensed",
					["actorname_text_size"] = 8,
					["actorname_text_spacing"] = 7,
					["percent_text_font"] = "UbuntuCondensed",
					["actorname_text_font"] = "UbuntuCondensed",
					["spellname_text_size"] = 10,
					["health"] = {
						90, -- [1]
						4, -- [2]
					},
					["percent_text_ooc"] = true,
					["percent_text_show_decimals"] = false,
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
					["LastHookEdited"] = "",
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
					["Icon"] = 1990989,
					["Name"] = "Hide Neutral Units [Plater]",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 95,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Set a different color when a unit is targetting a Black Ox Statue",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ncpID for the black ox statue\n    envTable.OxStatusNpcID = 61146\n    \n    --the color to use in the nameplate when the unit is targetting an ox statue\n    envTable.NameplateColor = \"olive\"\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the unit target target\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    if (targetGUID) then\n        \n        --get the npcID of the target and check if the npcID is the Black Ox Status npcID\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        if (npcID == envTable.OxStatusNpcID) then\n            \n            --the unit is targetting the status, change the color of the nameplate\n            Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n        end\n    end\nend\n\n\n\n\n\n\n",
					},
					["Time"] = 1541606185,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
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
						["role"] = {
							["Enabled"] = true,
							["TANK"] = true,
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[268] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 627607,
					["Name"] = "Attacking Monk Statue [Plater]",
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
					["Icon"] = 574574,
					["LastHookEdited"] = "",
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
					["Icon"] = 133689,
					["LastHookEdited"] = "",
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
					["LastHookEdited"] = "",
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
					["Icon"] = 1966587,
					["LastHookEdited"] = "",
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
					["Icon"] = 878211,
					["LastHookEdited"] = "",
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
					["Name"] = "Bolster",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local stacks = 0\n    \n    for index = 1, 40 do\n        local name, _, _, _, _, _, _, _, _, spellId = UnitBuff(unitId, index)\n        \n        if (not name) then \n            break \n        end\n        \n        if spellId == 209859 then\n            stacks = stacks + 1\n        end\n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if stacks > 0 then\n        envTable.BolsterStacks.text = tostring(stacks)\n    else\n        envTable.BolsterStacks.text = \"\"\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						209859, -- [1]
					},
					["PlaterCore"] = 1,
					["Icon"] = 1041231,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterIcon:Hide()\n    envTable.BolsterStacks:Hide()\nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterIcon:Show()\n    envTable.BolsterStacks:Show()\nend\n\n\n",
					["__TrashAt"] = 1538606264,
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
					["__TrashAt"] = 1538661400,
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local count = 0\n    \n    for index = 1, 40 do\n        local b = {UnitBuff (unitId, index)}\n        \n        if (not b[1]) then \n            break \n        end\n        \n        if b[10] == envTable._SpellID then\n            count = count + 1\n        end\n    end\n    \n    if count > 0 then\n        envTable.BolsterStacks.text = tostring(count)\n        \n        local icon = unitFrame.BuffFrame.ExtraIconFrame:SetIcon(\n            envTable._SpellID,\n            Plater.db.profile.extra_icon_border_color,\n        nil, nil, false, false)\n        \n        envTable.BolsterStacks:SetPoint('bottomright', icon, 'bottomright')\n        \n        for _,icon in ipairs(unitFrame.BuffFrame.PlaterBuffList) do\n            if (icon.spellId == envTable._SpellID) then\n                icon:Hide()\n                icon.InUse = false\n            end\n        end\n    end\nend",
					["SpellIds"] = {
						188550, -- [1]
						209859, -- [2]
					},
					["PlaterCore"] = 1,
					["Name"] = "Bolster_Test",
					["Icon"] = 1041231,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterStacks:Hide()\nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.BolsterStacks:Show()\nend",
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
					["__TrashAt"] = 1540432161,
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Icon"] = "",
					["Name"] = "New Script",
				}, -- [3]
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Color Change"] = 1,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
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
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["hook_auto_imported"] = {
				["Reorder Nameplate"] = 1,
				["Targetting Alpha"] = 3,
				["Monk Statue"] = 2,
				["Hide Neutral Units"] = 1,
				["Combo Points"] = 1,
				["Target Color"] = 1,
				["Players Targetting Amount"] = 1,
				["Extra Border"] = 1,
			},
			["not_affecting_combat_alpha"] = 0.579203724861145,
			["aura_height"] = 12,
			["cast_statusbar_bgtexture"] = "Minimalist",
			["target_indicator"] = "NONE",
			["target_highlight_alpha"] = 0.399999976158142,
			["target_shady_alpha"] = 0.5,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.25",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.025",
				["nameplateSelfTopInset"] = ".5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "0",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.0",
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
				["nameplateSelfBottomInset"] = ".2",
				["nameplateOccludedAlphaMult"] = "0.4",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateSelfAlpha"] = "0.75",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateOtherTopInset"] = "-1",
				["nameplateShowSelf"] = "0",
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
			["health_statusbar_texture"] = "Minimalist",
			["border_thickness"] = 1,
			["captured_spells"] = {
				[164815] = {
					["source"] = "Hellookitty-Uldum",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6136] = {
					["source"] = "Magister Crystalynn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148739,
				},
				[53390] = {
					["source"] = "Soyeon-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266047] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["source"] = "Yhkogtha",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270143] = {
					["source"] = "Talon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129950,
				},
				[183752] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275773] = {
					["source"] = "Devengence-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257956] = {
					["type"] = "BUFF",
					["source"] = "Jes Howlis",
					["encounterID"] = 2102,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127484,
				},
				[270657] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Bobgratton-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17140] = {
					["source"] = "Purified Healer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148647,
				},
				[85256] = {
					["source"] = "Oldstrong-Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31661] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17364] = {
					["source"] = "Stormaggedon-Cenarius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31821] = {
					["source"] = "Devengence-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123254] = {
					["source"] = "Inoueorihim-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275779] = {
					["source"] = "Camellus-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268616] = {
					["source"] = "Bonebilly-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[408] = {
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118905] = {
					["source"] = "Capacitor Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[6552] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223929] = {
					["source"] = "Ophyliah-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20243] = {
					["source"] = "Highestmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162264] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221883] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[175314] = {
					["source"] = "Vindicator Caeduum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148380,
				},
				[190411] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45524] = {
					["source"] = "Ophyliah-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[421] = {
					["source"] = "Wiedersineyo-Ysera",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[221885] = {
					["source"] = "Camellus-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209859] = {
					["source"] = "Minion of Zul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133943,
				},
				[118779] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120954] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["source"] = "Devengence-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["source"] = "Erslan-Proudmoore",
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
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196555] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2140,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270674] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221887] = {
					["source"] = "Oldstrong-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194509] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280400] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235450] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23922] = {
					["source"] = "Highestmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157153] = {
					["source"] = "Demlix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Veltress",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50259] = {
					["source"] = "Dragonsguard",
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
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202188] = {
					["source"] = "Demlix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267611] = {
					["source"] = "Oldstrong-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260016] = {
					["encounterID"] = 2101,
					["source"] = "Buzzing Drone",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131785,
				},
				[271194] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Dewdewbutter-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278359] = {
					["source"] = "Lunalith-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115072] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203981] = {
					["source"] = "Fénrir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280409] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287062] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5217] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287063] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198097] = {
					["source"] = "Overpowering-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278364] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267618] = {
					["encounterID"] = 2142,
					["source"] = "Mchimba the Embalmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134993,
				},
				[280412] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280413] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272737] = {
					["source"] = "Tamatoa-Windrunner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[7384] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["source"] = "Surya-Vek'nilash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61391] = {
					["source"] = "Rejuvs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207311] = {
					["source"] = "Yhkogtha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201427] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204242] = {
					["source"] = "Devengence-Firetree",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273766] = {
					["source"] = "7th Legion Infantryman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144959,
				},
				[79892] = {
					["source"] = "Murgha the Tempered",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96957,
				},
				[267626] = {
					["encounterID"] = 2142,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115203] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214222] = {
					["source"] = "Devengence-Firetree",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["source"] = "Bligadin-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273768] = {
					["source"] = "7th Legion Vicar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145036,
				},
				[251836] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273769] = {
					["source"] = "7th Legion Vicar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145036,
				},
				[276840] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198103] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273770] = {
					["source"] = "7th Legion Vicar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145036,
				},
				[251837] = {
					["source"] = "Veltress",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Belandriá",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256955] = {
					["encounterID"] = 2103,
					["source"] = "Knight Captain Valyri",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127490,
				},
				[7744] = {
					["type"] = "BUFF",
					["source"] = "Zalisto",
					["encounterID"] = 2143,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123904] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1943] = {
					["encounterID"] = 2101,
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278379] = {
					["source"] = "Atomicpunk-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1953] = {
					["source"] = "Amira",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["source"] = "Deadpunk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269169] = {
					["source"] = "Honorbound Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144958,
				},
				[276846] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273264] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195292] = {
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208086] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[498] = {
					["source"] = "Devengence-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115078] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278385] = {
					["source"] = "Camellus-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267639] = {
					["encounterID"] = 2142,
					["source"] = "Mchimba the Embalmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134993,
				},
				[280433] = {
					["source"] = "Atomicpunk-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236746] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210391] = {
					["source"] = "Zortec-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Oldstrong-Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279924] = {
					["source"] = "Iphaponu",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Yâhweh-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48792] = {
					["source"] = "Ophyliah-Tichondrius",
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
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115080] = {
					["source"] = "Dewdewbutter-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6201] = {
					["source"] = "Wylestia-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147193] = {
					["source"] = "Inoueorihim-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188389] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2094] = {
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2098] = {
					["source"] = "Deezcocos-Rexxar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[527] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[528] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202719] = {
					["encounterID"] = 2139,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196834] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andmyax-Tichondrius",
					["npcID"] = 0,
				},
				[12654] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256198] = {
					["type"] = "BUFF",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127503,
				},
				[286587] = {
					["source"] = "Korrä",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273794] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[546] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256199] = {
					["type"] = "BUFF",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127503,
				},
				[256455] = {
					["source"] = "Hadesian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272260] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256200] = {
					["encounterID"] = 2104,
					["source"] = "Overseer Korgus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127503,
				},
				[556] = {
					["source"] = "Chokito-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[89751] = {
					["source"] = "Vazeelmawl",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[235219] = {
					["source"] = "Manapauzz-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Yeezuschrist-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256201] = {
					["type"] = "DEBUFF",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127503,
				},
				[145152] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256970] = {
					["encounterID"] = 2103,
					["source"] = "Knight Captain Valyri",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127490,
				},
				[200166] = {
					["encounterID"] = 2139,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212704] = {
					["source"] = "Surya-Vek'nilash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Despacheetos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Vorze-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["source"] = "Inoueorihim-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236502] = {
					["source"] = "Demlix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89753] = {
					["source"] = "Vazeelmawl",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[204262] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16953] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54680] = {
					["source"] = "Tyrone",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[210660] = {
					["source"] = "Demlix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190446] = {
					["source"] = "Salsy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["source"] = "Iconhealz-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[605] = {
					["source"] = "Iconhealz-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199658] = {
					["source"] = "Tomshifter-Chromaggus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276880] = {
					["source"] = "Infested Grunt",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148212,
				},
				[273298] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53209] = {
					["source"] = "Kreetle-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34914] = {
					["source"] = "Inoueorihim-Blackrock",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273299] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272276] = {
					["source"] = "Lunalith-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272790] = {
					["source"] = "Surya-Vek'nilash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124682] = {
					["type"] = "BUFF",
					["source"] = "Rusto-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129032] = {
					["source"] = "Magister Crystalynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148739,
				},
				[279956] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164862] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210152] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30451] = {
					["source"] = "Jybolcas-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["source"] = "Zadetsu-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232670] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206572] = {
					["source"] = "Archaosrex-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287638] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287639] = {
					["type"] = "BUFF",
					["source"] = "Huxxley-WyrmrestAccord",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217832] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197874] = {
					["source"] = "Iconhealz-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267171] = {
					["source"] = "Netherhigh-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Noro-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267685] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19577] = {
					["source"] = "Jenny",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53595] = {
					["source"] = "Camellus-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257495] = {
					["type"] = "BUFF",
					["source"] = "The Sand Queen",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127479,
				},
				[190456] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79140] = {
					["encounterID"] = 2101,
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288158] = {
					["source"] = "Zadetsu-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264106] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[688] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272295] = {
					["source"] = "Raxrage-Sargeras",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[691] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[135700] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272296] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256474] = {
					["encounterID"] = 2104,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[703] = {
					["encounterID"] = 2101,
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Devengence-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288675] = {
					["source"] = "Demlix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273323] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193786] = {
					["source"] = "Stormaggedon-Cenarius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Bligadin-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269231] = {
					["encounterID"] = 2143,
					["source"] = "Reban",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136984,
				},
				[16827] = {
					["source"] = "Snowtouch",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 79703,
				},
				[269232] = {
					["type"] = "BUFF",
					["source"] = "Reban",
					["encounterID"] = 2143,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136984,
				},
				[281517] = {
					["source"] = "Jenny",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185857] = {
					["source"] = "Ashvane Marine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130027,
				},
				[147732] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267702] = {
					["encounterID"] = 2142,
					["source"] = "Mchimba the Embalmer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134993,
				},
				[57755] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269239] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187650] = {
					["source"] = "Kreetle-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139546] = {
					["source"] = "Deezcocos-Rexxar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202748] = {
					["source"] = "Soljah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[768] = {
					["source"] = "Vorze-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196608] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59547] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["source"] = "Hadesian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3110] = {
					["source"] = "Biznam",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[111898] = {
					["source"] = "Netherhigh-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Viiciouss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Yeezuschrist-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[177931] = {
					["source"] = "Iconhealz-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116888] = {
					["source"] = "Septic-Drak'Tharon",
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
					["source"] = "Limoncello-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Stormaggedon-Cenarius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3166] = {
					["source"] = "Kristôhealz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262115] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111771] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[158486] = {
					["type"] = "BUFF",
					["source"] = "Deathignite",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[89766] = {
					["source"] = "Felguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[8690] = {
					["source"] = "Rayyrayy-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260069] = {
					["source"] = "Priest of Gonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131809,
				},
				[21562] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115098] = {
					["source"] = "Dewdewbutter-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97059] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194310] = {
					["source"] = "Yhkogtha",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260070] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[190984] = {
					["source"] = "Rejuvs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274373] = {
					["source"] = "Yhkogtha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56222] = {
					["encounterID"] = 2101,
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 417,
				},
				[260072] = {
					["source"] = "Pa'kura Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[50977] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ripsoul",
					["npcID"] = 0,
				},
				[228600] = {
					["source"] = "Jinrah",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270284] = {
					["source"] = "Purification Construct",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134739,
				},
				[15407] = {
					["source"] = "Inoueorihim-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266191] = {
					["encounterID"] = 2140,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53600] = {
					["source"] = "Camellus-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22842] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256492] = {
					["encounterID"] = 2103,
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281546] = {
					["type"] = "BUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225788] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["encounterID"] = 2142,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34026] = {
					["source"] = "Viiciouss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270289] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281036] = {
					["source"] = "Jenny",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[160029] = {
					["source"] = "Zalisto",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83245] = {
					["source"] = "Soljah",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["source"] = "Umbránomicon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279503] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270292] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274387] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262617] = {
					["source"] = "Caravan Commander Veronica",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148676,
				},
				[261613] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Tylellador-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262618] = {
					["source"] = "Caravan Commander Veronica",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148676,
				},
				[256496] = {
					["type"] = "BUFF",
					["source"] = "Wheremyheals",
					["encounterID"] = 2103,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263642] = {
					["source"] = "Fénrir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54049] = {
					["source"] = "Khiimon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 417,
				},
				[108194] = {
					["source"] = "Froststep-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132653] = {
					["source"] = "Shadow Hunter Scout",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 147381,
				},
				[272343] = {
					["source"] = "Azerite Stonemelder",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145358,
				},
				[5019] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[26297] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200205] = {
					["source"] = "Reaves",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 101462,
				},
				[257777] = {
					["encounterID"] = 2102,
					["source"] = "Jes Howlis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127484,
				},
				[266206] = {
					["encounterID"] = 2140,
					["source"] = "Kula the Butcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135475,
				},
				[203277] = {
					["source"] = "Ozzymandus-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250870] = {
					["encounterID"] = 2139,
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119582] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107428] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24858] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256756] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[228354] = {
					["source"] = "Bottlecapz-Proudmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216328] = {
					["source"] = "Abadar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279515] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116768] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268769] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256757] = {
					["source"] = "Mulhar-Windrunner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280541] = {
					["source"] = "Luceillia-Drenden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275936] = {
					["source"] = "Syrencielle",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132403] = {
					["source"] = "Norco-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280543] = {
					["source"] = "Landil-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216331] = {
					["source"] = "Devengence-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202770] = {
					["source"] = "Mizzl-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101545] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Tylellador-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["source"] = "Mordravia-WyrmrestAccord",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210191] = {
					["source"] = "Bligadin-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184092] = {
					["source"] = "Camellus-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[227847] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Alexandr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203795] = {
					["source"] = "Fronkshire-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202004] = {
					["source"] = "Oranumn-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257785] = {
					["encounterID"] = 2102,
					["source"] = "Jes Howlis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127484,
				},
				[188443] = {
					["source"] = "Tamatoa-Windrunner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34477] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108199] = {
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290786] = {
					["source"] = "Brett-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203285] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250878] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157228] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22812] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Desunaito",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203286] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199448] = {
					["source"] = "Devengence-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[974] = {
					["source"] = "Wiedersineyo-Ysera",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2102,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[980] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[146739] = {
					["source"] = "Zalisto",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44457] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290792] = {
					["source"] = "Ozzymandus-Shadowsong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194844] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267764] = {
					["source"] = "Coffin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136256,
				},
				[266231] = {
					["encounterID"] = 2140,
					["source"] = "Kula the Butcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135475,
				},
				[197916] = {
					["type"] = "BUFF",
					["source"] = "Rusto-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111400] = {
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105771] = {
					["source"] = "Scully-Korgath",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185123] = {
					["encounterID"] = 2139,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132157] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48168] = {
					["source"] = "Matron Ossela",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96955,
				},
				[279028] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279029] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8122] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257793] = {
					["encounterID"] = 2102,
					["source"] = "Jes Howlis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127484,
				},
				[266237] = {
					["encounterID"] = 2140,
					["source"] = "Aka'ali the Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135470,
				},
				[188196] = {
					["source"] = "Odairgnas-Lightninghoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274426] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
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
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262145] = {
					["source"] = "Wary Sentry",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144792,
				},
				[279033] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49576] = {
					["encounterID"] = 2101,
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1044] = {
					["source"] = "Brett-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193315] = {
					["source"] = "Deezcocos-Rexxar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257028] = {
					["encounterID"] = 2103,
					["source"] = "Knight Captain Valyri",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127490,
				},
				[66] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1064] = {
					["source"] = "Wiedersineyo-Ysera",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100784] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2139] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194084] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122278] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55078] = {
					["source"] = "Wheremyheals",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233490] = {
					["source"] = "Zalisto",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199203] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202274] = {
					["source"] = "Drunkenmonke-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["encounterID"] = 2142,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120360] = {
					["type"] = "BUFF",
					["source"] = "Huxxley-WyrmrestAccord",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267273] = {
					["encounterID"] = 2140,
					["source"] = "Zanazal the Wise",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135472,
				},
				[272903] = {
					["source"] = "Asdrina-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292350] = {
					["source"] = "Deathstalker Assassin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148185,
				},
				[258313] = {
					["source"] = "Ashvane Officer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127486,
				},
				[116011] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81340] = {
					["source"] = "Ophyliah-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265742] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258058] = {
					["source"] = "Silt Crab",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127381,
				},
				[73920] = {
					["source"] = "Wiedersineyo-Ysera",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1160] = {
					["source"] = "Highestmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282119] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132168] = {
					["source"] = "Highestmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184367] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132169] = {
					["source"] = "Highestmane",
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
				[233496] = {
					["source"] = "Zalisto",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273935] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199721] = {
					["source"] = "Septic-Drak'Tharon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270865] = {
					["source"] = "King A'akul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137484,
				},
				[233497] = {
					["source"] = "Zalisto",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258317] = {
					["source"] = "Ashvane Officer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127486,
				},
				[178740] = {
					["source"] = "Fénrir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85948] = {
					["source"] = "Yhkogtha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[233498] = {
					["source"] = "Zalisto",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270868] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267798] = {
					["source"] = "Craylin-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208679] = {
					["source"] = "Hawk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105374,
				},
				[107570] = {
					["source"] = "Highestmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33395] = {
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[116014] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195630] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187698] = {
					["source"] = "Kreetle-Hyjal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204330] = {
					["source"] = "Razieo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48108] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12051] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270872] = {
					["source"] = "Bloodsworn Agent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137485,
				},
				[119085] = {
					["source"] = "Rayyrayy-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203819] = {
					["source"] = "Fronkshire-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202028] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263197] = {
					["source"] = "Heavy Cannon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133972,
				},
				[236060] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228128] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246807] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Deadblade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5116] = {
					["source"] = "Soljah",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77762] = {
					["source"] = "Razieo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12323] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260881] = {
					["source"] = "Kareshka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208683] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["encounterID"] = 2101,
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208684] = {
					["source"] = "Viiciouss",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2643] = {
					["source"] = "Viiciouss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5308] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1330] = {
					["source"] = "Kakarank-EmeraldDream",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8613] = {
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31707] = {
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[257814] = {
					["encounterID"] = 2102,
					["source"] = "Jes Howlis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127484,
				},
				[108853] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154953] = {
					["source"] = "Kakarank-EmeraldDream",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269351] = {
					["encounterID"] = 2143,
					["source"] = "T'zala",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136976,
				},
				[30108] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155722] = {
					["source"] = "Dragonsguard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203059] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270889] = {
					["source"] = "King Rahu'ai",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134331,
				},
				[263725] = {
					["type"] = "BUFF",
					["source"] = "Autonomical",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267308] = {
					["encounterID"] = 2140,
					["source"] = "Zanazal the Wise",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135472,
				},
				[290337] = {
					["source"] = "Fåte",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192058] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204596] = {
					["source"] = "Fénrir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Argora",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Honen-Lightbringer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33206] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11396] = {
					["source"] = "Thègøðøfðmg-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258075] = {
					["source"] = "Stinging Parasite",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127480,
				},
				[273453] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204598] = {
					["source"] = "Fénrir-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Yeezuschrist-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36213] = {
					["source"] = "Greater Earth Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95072,
				},
				[1464] = {
					["source"] = "Tomshifter-Chromaggus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265781] = {
					["encounterID"] = 2139,
					["source"] = "The Golden Serpent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135322,
				},
				[195901] = {
					["source"] = "Korrä",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47536] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["source"] = "Dragonsdeath",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2102,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Camellus-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287790] = {
					["source"] = "Hypta-AeriePeak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269879] = {
					["source"] = "Bloodbough Funggarian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135901,
				},
				[201787] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["source"] = "Abadar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269369] = {
					["encounterID"] = 2143,
					["source"] = "T'zala",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136976,
				},
				[269881] = {
					["source"] = "Bloodbough Fungalmancer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135902,
				},
				[218164] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264764] = {
					["source"] = "Kareshka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278070] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115767] = {
					["source"] = "Highestmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273465] = {
					["source"] = "Oranumn-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273977] = {
					["source"] = "Wheremyheals",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130736] = {
					["source"] = "Ophyliah-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267325] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212792] = {
					["source"] = "Bottlecapz-Proudmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267326] = {
					["source"] = "Jenny",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[174923] = {
					["source"] = "Infested Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148212,
				},
				[267327] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257827] = {
					["type"] = "BUFF",
					["source"] = "Jes Howlis",
					["encounterID"] = 2102,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127484,
				},
				[280634] = {
					["source"] = "Isende-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118455] = {
					["source"] = "Viiciouss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277564] = {
					["source"] = "Spider",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 14881,
				},
				[280635] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260643] = {
					["source"] = "Tomshifter-Chromaggus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[174925] = {
					["source"] = "Infested Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148212,
				},
				[267331] = {
					["source"] = "Soljah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276031] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256038] = {
					["encounterID"] = 2104,
					["source"] = "Overseer Korgus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127503,
				},
				[101568] = {
					["source"] = "Yhkogtha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277567] = {
					["source"] = "Spawn of G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141851,
				},
				[187464] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1604] = {
					["source"] = "Cove Enforcer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136093,
				},
				[126389] = {
					["source"] = "Saltysurge-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225080] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270920] = {
					["source"] = "Queen Wasi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137478,
				},
				[6572] = {
					["source"] = "Highestmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212799] = {
					["source"] = "Amira",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248622] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270923] = {
					["source"] = "Queen Wasi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137478,
				},
				[212800] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268877] = {
					["source"] = "Viiciouss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Odairgnas-Lightninghoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3355] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256044] = {
					["type"] = "DEBUFF",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127503,
				},
				[62124] = {
					["source"] = "Camellus-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270927] = {
					["source"] = "King Timalji",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137474,
				},
				[6788] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1706] = {
					["source"] = "Iconhealz-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274511] = {
					["source"] = "Arom's Stand Militiaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148973,
				},
				[119611] = {
					["source"] = "Borranda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206662] = {
					["source"] = "Biblical-Bronzebeard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270930] = {
					["source"] = "Queen Patlaa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137486,
				},
				[17253] = {
					["source"] = "Tyrone",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[290377] = {
					["source"] = "Surya-Vek'nilash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212036] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270931] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[9734] = {
					["source"] = "Purified Healer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148647,
				},
				[272979] = {
					["source"] = "Norco-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47540] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268887] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124218] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Miolun-Bonechewer",
					["npcID"] = 0,
				},
				[193359] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1766] = {
					["encounterID"] = 2101,
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Kuhzen-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[68054] = {
					["source"] = "Jeeves",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35642,
				},
				[280149] = {
					["source"] = "Yhkogtha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188499] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1784] = {
					["type"] = "BUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24450] = {
					["source"] = "Flerpy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 66164,
				},
				[289362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fentanl-Mal'Ganis",
					["npcID"] = 0,
				},
				[212552] = {
					["source"] = "Yhkogtha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20484] = {
					["source"] = "Goregazm-Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215111] = {
					["source"] = "Dreadstalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 98035,
				},
				[268893] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["source"] = "Rayyrayy-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[78674] = {
					["source"] = "Rejuvs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288853] = {
					["source"] = "Froststep-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5221] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1822] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278108] = {
					["source"] = "Nitsua-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48181] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5277] = {
					["source"] = "Overpowering-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267874] = {
					["encounterID"] = 2142,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268898] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78675] = {
					["source"] = "Rejuvs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278110] = {
					["source"] = "Nitsua-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Highestmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258869] = {
					["source"] = "Ashvane Flamecaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127488,
				},
				[55090] = {
					["source"] = "Froststep-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116] = {
					["source"] = "Bottlecapz-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1856] = {
					["encounterID"] = 2101,
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205648] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31935] = {
					["source"] = "Camellus-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268904] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269928] = {
					["source"] = "Shadow-Borne Champion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134158,
				},
				[268905] = {
					["source"] = "Bluffing-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["source"] = "Honen-Lightbringer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121536] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206930] = {
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113860] = {
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152173] = {
					["source"] = "Dewdewbutter-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269931] = {
					["source"] = "Shadow-Borne Warrior",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134157,
				},
				[120] = {
					["source"] = "Bottlecapz-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192090] = {
					["source"] = "Rejuvs",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269932] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206931] = {
					["source"] = "Septic-Drak'Tharon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223819] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209746] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129597] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269935] = {
					["source"] = "Minion of Zul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133943,
				},
				[122] = {
					["encounterID"] = 2139,
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269936] = {
					["source"] = "Minion of Zul",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133943,
				},
				[109128] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200025] = {
					["source"] = "Devengence-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261947] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268403] = {
					["encounterID"] = 2143,
					["source"] = "King Dazar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136160,
				},
				[113862] = {
					["source"] = "Adorablexo-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["source"] = "Surya-Vek'nilash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[134522] = {
					["source"] = "Mythbank-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53365] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279664] = {
					["encounterID"] = 2101,
					["source"] = "Vanquished Tendril of G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 143520,
				},
				[246852] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123586] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["source"] = "Odairgnas-Lightninghoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19750] = {
					["source"] = "Isende-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264314] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["source"] = "Yourmam",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214621] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8092] = {
					["source"] = "Mazzrael",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273348] = {
					["type"] = "BUFF",
					["source"] = "Rusto-Suramar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233397] = {
					["type"] = "DEBUFF",
					["source"] = "Tuesdaý-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115399] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[49184] = {
					["source"] = "Tuesdaý-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[284275] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24331] = {
					["source"] = "Harbor Saurid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 126023,
				},
				[207230] = {
					["source"] = "Tuesdaý-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256578] = {
					["encounterID"] = 2103,
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59052] = {
					["type"] = "BUFF",
					["source"] = "Tuesdaý-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256764] = {
					["source"] = "Mulhar-Windrunner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291086] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280549] = {
					["type"] = "BUFF",
					["source"] = "Fathrlucifer-Akama",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Shilvera",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251832] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251838] = {
					["type"] = "BUFF",
					["source"] = "Bainknight",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45242] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280184] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191587] = {
					["source"] = "Yhkogtha",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[130] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1966] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deimostnasty-Shu'halo",
					["npcID"] = 0,
				},
				[165744] = {
					["source"] = "Vindicator Caeduum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148380,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281209] = {
					["source"] = "Vaendetta",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252216] = {
					["source"] = "Thègøðøfðmg-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257092] = {
					["encounterID"] = 2101,
					["source"] = "The Sand Queen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127479,
				},
				[279163] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251463] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280187] = {
					["source"] = "Zombiemonk",
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
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223829] = {
					["source"] = "Ophyliah-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79962] = {
					["source"] = "Nelur Lightsown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96954,
				},
				[259140] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dkrazor-Tichondrius",
					["npcID"] = 0,
				},
				[278326] = {
					["encounterID"] = 2139,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[165746] = {
					["source"] = "Vindicator Caeduum",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148380,
				},
				[268419] = {
					["encounterID"] = 2143,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273947] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Stylebeam",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278143] = {
					["source"] = "Tenavï",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Oldstrong-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268932] = {
					["encounterID"] = 2143,
					["source"] = "King Dazar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136160,
				},
				[193475] = {
					["source"] = "Chèèzy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278144] = {
					["source"] = "Tenavï",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122950] = {
					["source"] = "Magister Crystalynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148739,
				},
				[30449] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[106830] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278145] = {
					["source"] = "Devengence-Firetree",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244813] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196840] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12294] = {
					["source"] = "Tomshifter-Chromaggus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260843] = {
					["source"] = "Jahden Fla",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122704,
				},
				[135299] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[139] = {
					["source"] = "Ecllipsê",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15532] = {
					["source"] = "Magister Crystalynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148739,
				},
				[278147] = {
					["source"] = "Abadar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268936] = {
					["encounterID"] = 2143,
					["source"] = "King Dazar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136160,
				},
				[108366] = {
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6660] = {
					["source"] = "Arom's Stand Inquisitor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148280,
				},
				[12611] = {
					["source"] = "Magister Crystalynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148739,
				},
				[56814] = {
					["source"] = "Kaimea",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gazician-Hyjal",
					["npcID"] = 0,
				},
				[210643] = {
					["source"] = "Demlix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270293] = {
					["source"] = "Purification Construct",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134739,
				},
				[205604] = {
					["source"] = "Tenavï",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256434] = {
					["source"] = "Honen-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20572] = {
					["source"] = "Thorazyn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280709] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["encounterID"] = 2139,
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287771] = {
					["source"] = "Dewdewbutter-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164812] = {
					["source"] = "Avellynn-Proudmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193641] = {
					["source"] = "Ome",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15122] = {
					["source"] = "Magister Crystalynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148739,
				},
				[192106] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132404] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79965] = {
					["source"] = "Purified Protector",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148646,
				},
				[90328] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 113201,
				},
				[258634] = {
					["source"] = "Ashvane Flamecaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127488,
				},
				[61684] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 71529,
				},
				[197214] = {
					["source"] = "Oranumn-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287371] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2336] = {
					["source"] = "Fénrir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273714] = {
					["source"] = "Bloodscythe-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280713] = {
					["source"] = "Avellynn-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124280] = {
					["source"] = "Dewdewbutter-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[871] = {
					["source"] = "Bahldir-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278155] = {
					["source"] = "Nukunuku",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208997] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["type"] = "BUFF",
					["source"] = "Wheremyheals",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[234153] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6789] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79966] = {
					["source"] = "Purified Protector",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148646,
				},
				[267060] = {
					["encounterID"] = 2140,
					["source"] = "Zanazal the Wise",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135472,
				},
				[268954] = {
					["source"] = "Ðablord-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280204] = {
					["source"] = "Yhkogtha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["source"] = "Devengence-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287369] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280205] = {
					["source"] = "Brogak-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270482] = {
					["source"] = "Spectral Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135167,
				},
				[202168] = {
					["source"] = "Archaosrex-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13750] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276112] = {
					["source"] = "Reeceadin-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199786] = {
					["source"] = "Jinrah",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126664] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212580] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269972] = {
					["source"] = "Shadow-Borne Witch Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134174,
				},
				[182387] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["source"] = "Mom-Korialstrasz",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269973] = {
					["source"] = "Shadow-Borne Witch Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134174,
				},
				[270485] = {
					["source"] = "Spectral Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135167,
				},
				[121547] = {
					["source"] = "Magister Crystalynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148739,
				},
				[281744] = {
					["source"] = "Voidformbtw",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["source"] = "Haqs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97463] = {
					["source"] = "Skulltongue-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278317] = {
					["source"] = "Viiciouss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195182] = {
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279584] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270487] = {
					["source"] = "Spectral Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135167,
				},
				[207400] = {
					["source"] = "Wiedersineyo-Ysera",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202347] = {
					["source"] = "Nukunuku",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269976] = {
					["source"] = "Shadow-Borne Champion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134158,
				},
				[79968] = {
					["source"] = "Purified Protector",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148646,
				},
				[268953] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[175457] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Miolun-Bonechewer",
					["npcID"] = 0,
				},
				[280212] = {
					["source"] = "Bahldir-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270901] = {
					["source"] = "Seneschal M'bara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134251,
				},
				[121548] = {
					["source"] = "Magister Crystalynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148739,
				},
				[257617] = {
					["encounterID"] = 2101,
					["source"] = "The Sand Queen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127479,
				},
				[268899] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185358] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Avellynn-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[252753] = {
					["type"] = "DEBUFF",
					["source"] = "Tosh",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114165] = {
					["source"] = "Devengence-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Wraithbrand",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287379] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276125] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278826] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256083] = {
					["encounterID"] = 2104,
					["source"] = "Overseer Korgus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127503,
				},
				[45182] = {
					["source"] = "Overpowering-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12975] = {
					["source"] = "Archaosrex-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Yeezuschrist-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270493] = {
					["source"] = "Spectral Hex Priest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135204,
				},
				[281240] = {
					["source"] = "Vorze-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282779] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187837] = {
					["source"] = "Stormaggedon-Cenarius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264353] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268314] = {
					["source"] = "Ome",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288548] = {
					["source"] = "Magus of the Dead",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148797,
				},
				[276124] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270495] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97462] = {
					["source"] = "Skulltongue-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257620] = {
					["encounterID"] = 2102,
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102359] = {
					["source"] = "Honen-Lightbringer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188534] = {
					["source"] = "Feefoo-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278124] = {
					["source"] = "Archaosrex-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262161] = {
					["source"] = "Tomshifter-Chromaggus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276126] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270497] = {
					["source"] = "Spectral Witch Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135239,
				},
				[5302] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123725] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276127] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258133] = {
					["source"] = "Bilge Rat Looter",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127485,
				},
				[209261] = {
					["source"] = "Fénrir-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198149] = {
					["source"] = "Bottlecapz-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276128] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270499] = {
					["source"] = "Spectral Witch Doctor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135239,
				},
				[77505] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257622] = {
					["type"] = "BUFF",
					["source"] = "Huxxley-WyrmrestAccord",
					["encounterID"] = 2102,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206636] = {
					["source"] = "Honorbound Grunt",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144958,
				},
				[258134] = {
					["source"] = "Bilge Rat Looter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127485,
				},
				[168322] = {
					["source"] = "Amira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256735] = {
					["source"] = "Felseez-Dragonmaw",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276130] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53563] = {
					["source"] = "Abadar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210256] = {
					["source"] = "Happydw-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209754] = {
					["source"] = "Paidwell-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270502] = {
					["source"] = "Skeletal Hunting Raptor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137487,
				},
				[168323] = {
					["source"] = "Amira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205025] = {
					["source"] = "Adorablexo-Frostmourne",
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
					["source"] = "Goregazm-Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[172] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202335] = {
					["source"] = "Drunkenmonke-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247454] = {
					["source"] = "Fénrir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274598] = {
					["source"] = "Blaïze-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279204] = {
					["source"] = "Xapo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[110645] = {
					["source"] = "Borranda",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85222] = {
					["source"] = "Abadar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270505] = {
					["source"] = "Queen Patlaa",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137486,
				},
				[58984] = {
					["source"] = "Jeébs-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[4987] = {
					["source"] = "Devengence-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[44544] = {
					["source"] = "Bottlecapz-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270506] = {
					["source"] = "Spectral Beastmaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135235,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Wraithbrand",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153595] = {
					["source"] = "Erslan-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276136] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Jaraxxu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199450] = {
					["source"] = "Devengence-Firetree",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273006] = {
					["source"] = "Saltysurge-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276137] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276140] = {
					["type"] = "BUFF",
					["source"] = "Tosh",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1022] = {
					["source"] = "Craylin-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276138] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201846] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209780] = {
					["source"] = "Iconhealz-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263345] = {
					["encounterID"] = 2104,
					["source"] = "Heavy Cannon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134025,
				},
				[290468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xpendablé-Tichondrius",
					["npcID"] = 0,
				},
				[276142] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231895] = {
					["source"] = "Baktria-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22888] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290469] = {
					["source"] = "Alphos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280746] = {
					["source"] = "Harcle-Barthilas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51124] = {
					["source"] = "Bigweb-Windrunner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276141] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["source"] = "Viiciouss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281413] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199545] = {
					["source"] = "Camellus-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270507] = {
					["source"] = "Spectral Beastmaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135235,
				},
				[2908] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11640] = {
					["source"] = "Purified Healer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148647,
				},
				[276143] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270514] = {
					["source"] = "Spectral Brute",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135231,
				},
				[47541] = {
					["source"] = "Yhkogtha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267558] = {
					["source"] = "Hadesian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270003] = {
					["source"] = "Animated Guardian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133935,
				},
				[270515] = {
					["source"] = "Rampaging Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148327,
				},
				[32375] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19434] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2948] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278862] = {
					["source"] = "Tamatoa-Windrunner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Wheremyheals",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273310] = {
					["source"] = "Jazebelle-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116095] = {
					["source"] = "Dãñ-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257119] = {
					["encounterID"] = 2101,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29893] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188033] = {
					["source"] = "Loq",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190336] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[95826] = {
					["source"] = "Waycrest Guard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137573,
				},
				[265889] = {
					["source"] = "Blacktooth Arsonist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135366,
				},
				[264761] = {
					["source"] = "Xaülzan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Shilvera",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199804] = {
					["source"] = "Deezcocos-Rexxar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198013] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266939] = {
					["encounterID"] = 2140,
					["source"] = "Aka'ali the Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135470,
				},
				[188290] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30213] = {
					["source"] = "Felguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 17252,
				},
				[117952] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Ruskiler",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279572] = {
					["source"] = "Mazzrael",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283315] = {
					["source"] = "Ozzymandus-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196718] = {
					["source"] = "Aurumus-Suramar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276154] = {
					["source"] = "Mizzl-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205179] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32612] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209785] = {
					["source"] = "Asdrina-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255075] = {
					["source"] = "Earthshocker-AzjolNerub",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[136] = {
					["source"] = "Jenny",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191034] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79849] = {
					["source"] = "Gija",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47248,
				},
				[271550] = {
					["source"] = "Korrä",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205180] = {
					["type"] = "BUFF",
					["source"] = "Zalisto",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265910] = {
					["encounterID"] = 2139,
					["source"] = "The Golden Serpent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135322,
				},
				[35079] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19574] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["source"] = "Scurvÿ",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61882] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60103] = {
					["source"] = "Oranumn-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277179] = {
					["source"] = "Netherhigh-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12472] = {
					["source"] = "Jinrah",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258864] = {
					["source"] = "Ashvane Marine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130027,
				},
				[73325] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256148] = {
					["source"] = "Ome",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270016] = {
					["source"] = "Animated Guardian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133935,
				},
				[256101] = {
					["encounterID"] = 2104,
					["source"] = "Overseer Korgus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127503,
				},
				[277181] = {
					["source"] = "Narsam-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265923] = {
					["encounterID"] = 2139,
					["source"] = "The Golden Serpent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135322,
				},
				[270017] = {
					["source"] = "Cove Enforcer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145408,
				},
				[61295] = {
					["source"] = "Soyeon-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277187] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265412] = {
					["source"] = "Netherhigh-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["source"] = "Nukunuku",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["source"] = "Umbránomicon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199042] = {
					["source"] = "Highestmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260708] = {
					["source"] = "Atomicpunk-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258917] = {
					["source"] = "Ashvane Priest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130028,
				},
				[268062] = {
					["source"] = "Fronkshire-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120694] = {
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149586,
				},
				[271555] = {
					["source"] = "Interment Construct",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137969,
				},
				[269085] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258150] = {
					["source"] = "Bilge Rat Seaspeaker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130026,
				},
				[280855] = {
					["source"] = "Adorablexo-Frostmourne",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273992] = {
					["source"] = "Bonebilly-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213858] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266951] = {
					["encounterID"] = 2140,
					["source"] = "Aka'ali the Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135470,
				},
				[268998] = {
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115546] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[209967] = {
					["source"] = "Dire Basilisk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105419,
				},
				[196741] = {
					["source"] = "Dewdewbutter-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Draxomancer-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61168] = {
					["source"] = "Darkspear Impaler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149007,
				},
				[267329] = {
					["source"] = "Jenny",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183436] = {
					["source"] = "Brett-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272388] = {
					["source"] = "Shadow of Zul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138489,
				},
				[271559] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256105] = {
					["type"] = "DEBUFF",
					["source"] = "Overseer Korgus",
					["encounterID"] = 2104,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127503,
				},
				[221562] = {
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277703] = {
					["source"] = "Perkosy-Hyjal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[84714] = {
					["source"] = "Erslan-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271561] = {
					["source"] = "Interment Construct",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137969,
				},
				[208769] = {
					["source"] = "Fronkshire-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258153] = {
					["source"] = "Bilge Rat Seaspeaker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130026,
				},
				[290143] = {
					["source"] = "Jenny",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271562] = {
					["source"] = "Interment Construct",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137969,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124503] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[67826] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271563] = {
					["source"] = "Embalming Fluid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137989,
				},
				[281178] = {
					["source"] = "Xapo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22570] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Imógen",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201350] = {
					["source"] = "Kerrydaddy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267256] = {
					["encounterID"] = 2140,
					["source"] = "Earthwall Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135759,
				},
				[280776] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287504] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271565] = {
					["source"] = "Embalming Fluid",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137989,
				},
				[186254] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115804] = {
					["source"] = "Tyrone",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 71529,
				},
				[147362] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203233] = {
					["source"] = "Viiciouss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279709] = {
					["source"] = "Nukunuku",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257424] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85739] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30283] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[208772] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270544] = {
					["source"] = "Darkspear Impaler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149007,
				},
				[137639] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Argora",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263892] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 66164,
				},
				[280780] = {
					["source"] = "Harcle-Barthilas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273104] = {
					["source"] = "Bahldir-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236645] = {
					["source"] = "Ozzymandus-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279151] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48707] = {
					["source"] = "Iphaponu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30455] = {
					["source"] = "Bottlecapz-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288455] = {
					["source"] = "Atomicpunk-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258925] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210053] = {
					["source"] = "Flubtub-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201996] = {
					["source"] = "Netherhigh-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268956] = {
					["source"] = "Viiciouss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186257] = {
					["source"] = "Viiciouss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Hadesian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156910] = {
					["source"] = "Abadar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276132] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233499] = {
					["type"] = "DEBUFF",
					["source"] = "Zalisto",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204263] = {
					["source"] = "Iconhealz-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Bigweb-Windrunner",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204255] = {
					["source"] = "Fénrir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186258] = {
					["source"] = "Viiciouss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196980] = {
					["source"] = "Hydral-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206151] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225919] = {
					["source"] = "Fénrir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Deadblade",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124506] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207317] = {
					["source"] = "Ophyliah-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51490] = {
					["source"] = "Odairgnas-Lightninghoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265946] = {
					["source"] = "Bahldir-Lightbringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280787] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183218] = {
					["source"] = "Craylin-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210320] = {
					["source"] = "Belandriá",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266238] = {
					["encounterID"] = 2140,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280788] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280845] = {
					["source"] = "Camellus-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290512] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["source"] = "Salsy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[24394] = {
					["source"] = "Bud",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32517,
				},
				[36554] = {
					["type"] = "BUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2102,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278231] = {
					["source"] = "Bloodscythe-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Scully-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118922] = {
					["source"] = "Viiciouss",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272090] = {
					["source"] = "Annoy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264415] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5143] = {
					["source"] = "Jybolcas-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3600] = {
					["source"] = "Earthbind Totem",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 2630,
				},
				[205708] = {
					["source"] = "Jinrah",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289308] = {
					["source"] = "Bottlecapz-Proudmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258079] = {
					["source"] = "Sewer Vicejaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127482,
				},
				[271581] = {
					["source"] = "Asdrina-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276187] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271564] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57984] = {
					["source"] = "Greater Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 95061,
				},
				[5215] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276188] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225921] = {
					["source"] = "Fénrir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271071] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276189] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[82326] = {
					["source"] = "Abadar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156070] = {
					["source"] = "Solassa-Malorne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[189869] = {
					["source"] = "Waycrest Guard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129486,
				},
				[276190] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56641] = {
					["encounterID"] = 2101,
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[60229] = {
					["source"] = "Brett-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212619] = {
					["source"] = "Netherhigh-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276191] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2139,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194384] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256374] = {
					["source"] = "Erslan-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273633] = {
					["source"] = "Arom's Stand Militiaman",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148973,
				},
				[280286] = {
					["source"] = "Dragonsdeath",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194153] = {
					["source"] = "Rejuvs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31687] = {
					["source"] = "Mordravia-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276193] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["source"] = "Luceillia-Drenden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200061] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198121] = {
					["source"] = "Erslan-Proudmoore",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213644] = {
					["source"] = "Brett-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51460] = {
					["source"] = "Ophyliah-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280842] = {
					["source"] = "Camellus-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256231] = {
					["source"] = "Demlix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268558] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253307] = {
					["source"] = "Luceillia-Drenden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278954] = {
					["source"] = "Norco-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267799] = {
					["source"] = "Craylin-Darkspear",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258935] = {
					["source"] = "Ashvane Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130028,
				},
				[5487] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[69369] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283167] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247677] = {
					["source"] = "Oldstrong-Shadowsong",
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
				[236021] = {
					["source"] = "Dragonsguard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279303] = {
					["source"] = "Bigweb-Windrunner",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281545] = {
					["source"] = "Kakarank-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59752] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259448] = {
					["source"] = "Ebowneezer-Frostmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8258] = {
					["source"] = "Purified Protector",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148646,
				},
				[270058] = {
					["source"] = "Hadesian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48778] = {
					["source"] = "Sohmek",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124007] = {
					["source"] = "Xuen",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 63508,
				},
				[219788] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195125] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258544] = {
					["encounterID"] = 2102,
					["source"] = "Jes Howlis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127484,
				},
				[253308] = {
					["source"] = "Luceillia-Drenden",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190356] = {
					["source"] = "Erslan-Proudmoore",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[27576] = {
					["encounterID"] = 2101,
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214202] = {
					["source"] = "Abadar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123981] = {
					["source"] = "Septic-Drak'Tharon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215479] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278249] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272620] = {
					["source"] = "Cutwater Striker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131112,
				},
				[16591] = {
					["source"] = "Latarjet-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204437] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188370] = {
					["source"] = "Norco-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280809] = {
					["source"] = "Norco-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81141] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186263] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276204] = {
					["source"] = "Craylin-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289599] = {
					["source"] = "Arom's Stand Watchman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148652,
				},
				[196941] = {
					["source"] = "Norco-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267330] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276205] = {
					["source"] = "Septic-Drak'Tharon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Möri",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278769] = {
					["source"] = "Fronkshire-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279810] = {
					["source"] = "Fattyfat-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210824] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210324] = {
					["source"] = "Isende-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79822] = {
					["source"] = "Purified Healer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148647,
				},
				[276207] = {
					["source"] = "Harcle-Barthilas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84342] = {
					["source"] = "Jenny",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185763] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188838] = {
					["source"] = "Demlix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276208] = {
					["source"] = "Septic-Drak'Tharon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268532] = {
					["source"] = "Isende-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193316] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81782] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276209] = {
					["source"] = "Craylin-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265991] = {
					["encounterID"] = 2139,
					["source"] = "Animated Gold",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135406,
				},
				[197277] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3409] = {
					["source"] = "Overpowering-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276210] = {
					["source"] = "Craylin-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259454] = {
					["source"] = "Möri",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275699] = {
					["source"] = "Froststep-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276211] = {
					["source"] = "Harcle-Barthilas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280817] = {
					["source"] = "Turkeyjerkey-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["source"] = "Devengence-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260734] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102560] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262395] = {
					["source"] = "Stormaggedon-Cenarius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259455] = {
					["source"] = "Demlix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259711] = {
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131445,
				},
				[261764] = {
					["source"] = "Shilvera",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198813] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Kakarank-EmeraldDream",
					["encounterID"] = 2102,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["source"] = "Asdrina-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280830] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290378] = {
					["source"] = "Camellus-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259456] = {
					["source"] = "Homslam-Malorne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["source"] = "Ome",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272121] = {
					["source"] = "Hadesian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262398] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264957] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270070] = {
					["source"] = "Kakarank-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["source"] = "Surya-Vek'nilash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118038] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["source"] = "Cypraeidae-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193356] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79865] = {
					["source"] = "Marud",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47247,
				},
				[51271] = {
					["source"] = "Bigweb-Windrunner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156084] = {
					["source"] = "Limoncello-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51399] = {
					["type"] = "DEBUFF",
					["source"] = "Wheremyheals",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262401] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277242] = {
					["source"] = "Bloodsworn Agent",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137485,
				},
				[163505] = {
					["source"] = "Goregazm-Shadowsong",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122470] = {
					["source"] = "Dewdewbutter-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119910] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287478] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37685] = {
					["source"] = "Deathstalker Assassin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148185,
				},
				[272126] = {
					["source"] = "Happydw-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58180] = {
					["source"] = "Dragonsguard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271103] = {
					["source"] = "Highestmane",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188070] = {
					["source"] = "Stormaggedon-Cenarius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102383] = {
					["source"] = "Rejuvs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196770] = {
					["source"] = "Bigweb-Windrunner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["source"] = "Wheremyheals",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27243] = {
					["source"] = "Zalisto",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[129250] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281854] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257413] = {
					["source"] = "Scurvÿ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198304] = {
					["source"] = "Highestmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6343] = {
					["source"] = "Highestmane",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268547] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1079] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269571] = {
					["source"] = "Asdrina-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213915] = {
					["source"] = "Archaosrex-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271107] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120679] = {
					["source"] = "Jenny",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270084] = {
					["source"] = "Guard Captain Atu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137473,
				},
				[116841] = {
					["source"] = "Dewdewbutter-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35395] = {
					["source"] = "Devengence-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115178] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268550] = {
					["source"] = "Kreetle-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Despacheetos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["source"] = "Overpowering-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153626] = {
					["source"] = "Adorablexo-Frostmourne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278767] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113899] = {
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59262,
				},
				[205473] = {
					["source"] = "Bottlecapz-Proudmoore",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199754] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199844] = {
					["source"] = "Jinrah",
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
				[269576] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259975] = {
					["type"] = "BUFF",
					["source"] = "The Sand Queen",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127479,
				},
				[255852] = {
					["source"] = "Starving Darkmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137461,
				},
				[195457] = {
					["source"] = "Deezcocos-Rexxar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154797] = {
					["source"] = "Aurumus-Suramar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258938] = {
					["source"] = "Ashvane Priest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130028,
				},
				[20271] = {
					["source"] = "Bligadin-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191837] = {
					["source"] = "Yourmam",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46968] = {
					["source"] = "Highestmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287081] = {
					["source"] = "Yhkogtha",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276743] = {
					["source"] = "Jybolcas-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113900] = {
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59271,
				},
				[57723] = {
					["source"] = "Kerrydaddy",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267257] = {
					["encounterID"] = 2140,
					["source"] = "Thundering Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135761,
				},
				[244880] = {
					["source"] = "Forsaken Scavenger",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149011,
				},
				[108271] = {
					["source"] = "Odairgnas-Lightninghoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265773] = {
					["encounterID"] = 2139,
					["source"] = "The Golden Serpent",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135322,
				},
				[137619] = {
					["source"] = "Turkeyjerkey-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80576] = {
					["source"] = "Deathstalker Assassin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148185,
				},
				[63619] = {
					["encounterID"] = 2143,
					["source"] = "Shadowfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[215711] = {
					["source"] = "Ophyliah-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1833] = {
					["source"] = "Tailzy-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115308] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204197] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261769] = {
					["source"] = "Kegboi-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276194] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255909] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276192] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116705] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273767] = {
					["source"] = "7th Legion Infantryman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144959,
				},
				[262419] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["source"] = "Xaülzan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259188] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127497,
				},
				[9484] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90361] = {
					["source"] = "YEET",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 69947,
				},
				[110959] = {
					["source"] = "Adorablexo-Frostmourne",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115181] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23214] = {
					["source"] = "Happydw-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205523] = {
					["source"] = "Zombiemonk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101643] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279397] = {
					["source"] = "Mmbbqchickn-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124009] = {
					["source"] = "Xuen",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 63508,
				},
				[275672] = {
					["source"] = "Skulltongue-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202636] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114158] = {
					["source"] = "Devengence-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46924] = {
					["source"] = "Harcle-Barthilas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255858] = {
					["source"] = "Starving Darkmaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137461,
				},
				[256039] = {
					["encounterID"] = 2104,
					["source"] = "Overseer Korgus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 127503,
				},
				[79871] = {
					["source"] = "Purified Soldier",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148366,
				},
				[188592] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Bligadin-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[110960] = {
					["source"] = "Adorablexo-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197548] = {
					["source"] = "Jazebelle-Sargeras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47528] = {
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[179057] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[134477] = {
					["source"] = "Vazeelmawl",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[206760] = {
					["source"] = "Hydral-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[291084] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116189] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236186] = {
					["source"] = "Knytmike-Dalaran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193455] = {
					["source"] = "Viiciouss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[291085] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191920] = {
					["source"] = "Toakar-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194223] = {
					["source"] = "Nukunuku",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281402] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196782] = {
					["source"] = "Yhkogtha",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199085] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271640] = {
					["source"] = "Shadow of Zul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138489,
				},
				[193456] = {
					["source"] = "Raishalghul-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280852] = {
					["source"] = "Narsam-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104316] = {
					["source"] = "Netherhigh-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267077] = {
					["type"] = "BUFF",
					["source"] = "Explosive Totem",
					["encounterID"] = 2140,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135764,
				},
				[258128] = {
					["source"] = "Irontide Thug",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130025,
				},
				[278806] = {
					["source"] = "Fattyfat-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280773] = {
					["source"] = "Scully-Korgath",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268311] = {
					["source"] = "Jenny",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290577] = {
					["source"] = "Abomination",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149555,
				},
				[199854] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26573] = {
					["source"] = "Norco-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1680] = {
					["source"] = "Tomshifter-Chromaggus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2565] = {
					["source"] = "Highestmane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116847] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205228] = {
					["source"] = "Baktria-Lightbringer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204157] = {
					["source"] = "Fénrir-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[211881] = {
					["source"] = "Aurumus-Suramar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195627] = {
					["source"] = "Deezcocos-Rexxar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["source"] = "Dragonsdeath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[240446] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51723] = {
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260242] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45438] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164545] = {
					["source"] = "Rejuvs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126935] = {
					["source"] = "Amira",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5246] = {
					["source"] = "Harcle-Barthilas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xpendablé-Tichondrius",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Scurvÿ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281000] = {
					["source"] = "Tomshifter-Chromaggus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278812] = {
					["source"] = "Mizzl-Stormrage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162243] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[248473] = {
					["source"] = "Regurgitates-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Kareshka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2649] = {
					["source"] = "Tyrone",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[266940] = {
					["encounterID"] = 2140,
					["source"] = "Aka'ali the Conqueror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135470,
				},
				[1329] = {
					["encounterID"] = 2101,
					["source"] = "Kakarank-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275863] = {
					["source"] = "Tailzy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280861] = {
					["source"] = "Ozzymandus-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205231] = {
					["encounterID"] = 2139,
					["source"] = "Darkglare",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103673,
				},
				[164547] = {
					["source"] = "Vladruk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274443] = {
					["source"] = "Thorazyn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280862] = {
					["source"] = "Ozzymandus-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198067] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265914] = {
					["encounterID"] = 2139,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223143] = {
					["source"] = "Tenavï",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185565] = {
					["source"] = "Ome",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Xapo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Sarahisadh-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199603] = {
					["source"] = "Tailzy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198368] = {
					["source"] = "Tailzy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290374] = {
					["source"] = "Stormaggedon-Cenarius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41425] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115192] = {
					["source"] = "Ome",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217694] = {
					["source"] = "Wraithbrand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257541] = {
					["source"] = "Blaïze-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Hadesian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208963] = {
					["source"] = "Skyfury Totem",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105427,
				},
				[278819] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198069] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55095] = {
					["source"] = "Bigweb-Windrunner",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49376] = {
					["source"] = "Dragonsguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276139] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271843] = {
					["source"] = "Devengence-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290467] = {
					["source"] = "Snoxxic-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285496] = {
					["source"] = "Tamatoa-Windrunner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268586] = {
					["type"] = "BUFF",
					["source"] = "King Dazar",
					["encounterID"] = 2143,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136160,
				},
				[202164] = {
					["source"] = "Spàrks-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Eldarion-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59542] = {
					["source"] = "Oldstrong-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290113] = {
					["source"] = "Purified World-Cleanser",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149440,
				},
				[72968] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8679] = {
					["source"] = "Zadetsu-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203123] = {
					["source"] = "Dragonsguard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280870] = {
					["source"] = "Adorablexo-Frostmourne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108238] = {
					["source"] = "Mizzl-Stormrage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77758] = {
					["source"] = "Rejuvs",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280177] = {
					["source"] = "Ozzymandus-Shadowsong",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2825] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48743] = {
					["source"] = "Froststep-Tichondrius",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270500] = {
					["source"] = "Skeletal Hunting Raptor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137487,
				},
				[355] = {
					["source"] = "Bonebilly-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257608] = {
					["type"] = "BUFF",
					["source"] = "The Sand Queen",
					["encounterID"] = 2101,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127479,
				},
				[204213] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247456] = {
					["source"] = "Fénrir-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272685] = {
					["source"] = "Nitsua-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57994] = {
					["source"] = "Odairgnas-Lightninghoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202346] = {
					["source"] = "Drunkenmonke-Stormrage",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197561] = {
					["source"] = "Camellus-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["encounterID"] = 2101,
					["source"] = "Wheremyheals",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77575] = {
					["source"] = "Yhkogtha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264352] = {
					["source"] = "Amira",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["source"] = "Annoy-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8042] = {
					["source"] = "Terrius-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5784] = {
					["source"] = "Netherhigh-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1449] = {
					["source"] = "Jybolcas-Firetree",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[94719] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Iroha",
					["npcID"] = 0,
				},
				[21169] = {
					["source"] = "Stormaggedon-Cenarius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[109304] = {
					["source"] = "Huxxley-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247121] = {
					["source"] = "Syrencielle",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Wraithbrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202090] = {
					["source"] = "Blackrick-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197051] = {
					["source"] = "Overpowering-Lightbringer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124273] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79967] = {
					["source"] = "Purified Protector",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148646,
				},
				[190319] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201754] = {
					["source"] = "Tyrone",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 71529,
				},
				[202425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Montty-Shu'halo",
					["npcID"] = 0,
				},
				[197871] = {
					["source"] = "Iconhealz-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257537] = {
					["source"] = "Mordravia-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[370] = {
					["source"] = "Demlix",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Dragonsguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31884] = {
					["source"] = "Bligadin-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210657] = {
					["source"] = "Demlix",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Scurvÿ",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[47568] = {
					["source"] = "Bigweb-Windrunner",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104773] = {
					["source"] = "Zalisto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1715] = {
					["source"] = "Tomshifter-Chromaggus",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204331] = {
					["source"] = "Oranumn-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124274] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["source"] = "Scully-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60234] = {
					["source"] = "Devengence-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Honen-Lightbringer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Narsam-Skywall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198589] = {
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[183111] = {
					["source"] = "Kirin Tor Guardian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 104091,
				},
				[165747] = {
					["source"] = "Vindicator Caeduum",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148380,
				},
				[290107] = {
					["source"] = "Purified Protector",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148349,
				},
				[115191] = {
					["source"] = "Mom-Korialstrasz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268756] = {
					["source"] = "Dragonsguard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131894] = {
					["source"] = "Viiciouss",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gazician-Hyjal",
					["npcID"] = 0,
				},
				[113656] = {
					["source"] = "Zombiemonk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54861] = {
					["source"] = "Wraithbrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[178208] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sapmorris-Blackrock",
					["npcID"] = 0,
				},
				[124275] = {
					["source"] = "Zombiemonk",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83242] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Felbraze",
					["npcID"] = 0,
				},
			},
			["auto_toggle_friendly_enabled"] = true,
		},
	},
}
