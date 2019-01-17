
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
					["ScriptType"] = 3,
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["Name"] = "Fixate On You [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
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
					["Time"] = 1543250950,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
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
					["ScriptType"] = 1,
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Name"] = "Blink by Time Left [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \n    if (timeLeft < envTable.TimeLeftToBlink) then\n        Plater.SetNameplateColor (unitFrame, \"red\")\n    else\n        Plater.SetNameplateColor (unitFrame, \"white\")\n    end\n    \n    \n    \nend",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1542816185,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
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
					["ScriptType"] = 3,
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["Name"] = "Color Change [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543253273,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
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
					["ScriptType"] = 1,
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Name"] = "Aura - Border Color [Plater]",
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Time"] = 1543680853,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
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
				["Monk Statue"] = 2,
				["Reorder Nameplate"] = 1,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 1,
				["Combo Points"] = 1,
				["Target Color"] = 1,
				["Players Targetting Amount"] = 1,
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
				[196414] = {
					["source"] = "Donteven-Zul'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167898] = {
					["source"] = "Alenoriaa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233498] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63106] = {
					["source"] = "Tunrida-Perenolde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1022] = {
					["source"] = "Bastyón-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115151] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198589] = {
					["encounterID"] = 2122,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187464] = {
					["type"] = "DEBUFF",
					["source"] = "Dismantlèd",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2050] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2060] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20572] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257413] = {
					["type"] = "BUFF",
					["source"] = "Sebasch-Tichondrius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257541] = {
					["source"] = "Cluge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213680] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223143] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288744] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148921,
				},
				[5215] = {
					["type"] = "BUFF",
					["source"] = "Vozzs",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205369] = {
					["encounterID"] = 2122,
					["source"] = "Dolclemits",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280817] = {
					["type"] = "DEBUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2641] = {
					["source"] = "Redbaron",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225606] = {
					["type"] = "BUFF",
					["source"] = "Atikus",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2098] = {
					["encounterID"] = 2122,
					["source"] = "Gapethatazz-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257415] = {
					["source"] = "Joubai",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[527] = {
					["source"] = "Lovemuffins-Eonar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279029] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["encounterID"] = 2122,
					["source"] = "Dismantlèd",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2122,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277181] = {
					["type"] = "BUFF",
					["source"] = "Tackydime",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199786] = {
					["source"] = "Bjargey-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269837] = {
					["source"] = "Amani Thug",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 120843,
				},
				[52174] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261764] = {
					["source"] = "Msgirlie-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261947] = {
					["source"] = "Buschgush-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271103] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1064] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269651] = {
					["type"] = "BUFF",
					["source"] = "Cluge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63619] = {
					["encounterID"] = 2122,
					["source"] = "Shadowfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[2948] = {
					["source"] = "Cluge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2120] = {
					["source"] = "Cluge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264352] = {
					["type"] = "BUFF",
					["source"] = "Cluge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279033] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288752] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269571] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287525] = {
					["source"] = "Crazed Crankshot Engineer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148290,
				},
				[257418] = {
					["source"] = "Modez",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Cluge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["source"] = "Cluge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[100780] = {
					["source"] = "Buschgush-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192222] = {
					["source"] = "Stormbreaker-Crushridge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Cluge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Cluge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[133] = {
					["source"] = "Cluge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279515] = {
					["type"] = "BUFF",
					["source"] = "Naljin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263436] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247677] = {
					["type"] = "BUFF",
					["source"] = "Promides",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280634] = {
					["type"] = "BUFF",
					["source"] = "Meateoric",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[171520] = {
					["source"] = "Deathtorro",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[50842] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126664] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124682] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[98444] = {
					["type"] = "BUFF",
					["source"] = "Chazka",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[138927] = {
					["type"] = "BUFF",
					["source"] = "Chazka",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152175] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257420] = {
					["type"] = "BUFF",
					["source"] = "Mawpox-Zul'jin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250261] = {
					["source"] = "Icyarcane",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102560] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81141] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287480] = {
					["source"] = "Crankshot Flame Turret",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148272,
				},
				[14914] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147193] = {
					["encounterID"] = 2122,
					["source"] = "Dismantlèd",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193356] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162794] = {
					["encounterID"] = 2122,
					["source"] = "Rebblle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[218803] = {
					["source"] = "Archdruid Andrenius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148618,
				},
				[22812] = {
					["source"] = "Aeroponics-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[88625] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257422] = {
					["source"] = "Jdog",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[279810] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193357] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271115] = {
					["type"] = "BUFF",
					["source"] = "Dismantlèd",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279555] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["encounterID"] = 2122,
					["source"] = "Dismantlèd",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57994] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113942] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271877] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thrullnar-Tichondrius",
					["npcID"] = 0,
				},
				[114255] = {
					["source"] = "Lovemuffins-Eonar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193358] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196555] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188499] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214202] = {
					["type"] = "BUFF",
					["source"] = "Blakas-Ragnaros",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1122] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85256] = {
					["source"] = "Bastyón-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[248473] = {
					["source"] = "Azamov",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Deathcrittz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288537] = {
					["source"] = "Druid of the Claw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146769,
				},
				[203845] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[69826] = {
					["source"] = "Promides",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283876] = {
					["source"] = "High-Explosive Bomb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146054,
				},
				[257537] = {
					["source"] = "Bjargey-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192081] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259455] = {
					["source"] = "Shiftyden-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205636] = {
					["source"] = "Dawndaylion-Thunderhorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51505] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188501] = {
					["source"] = "Felstench",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8092] = {
					["source"] = "Stryfe-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196941] = {
					["type"] = "DEBUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117588] = {
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[234153] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[83568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Echo of Myzrael",
					["npcID"] = 141668,
				},
				[288535] = {
					["source"] = "Druid of the Claw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146769,
				},
				[256148] = {
					["type"] = "DEBUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269885] = {
					["source"] = "Xyvel-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259473] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Casteless Zandalari",
					["npcID"] = 131331,
				},
				[33702] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77761] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257408] = {
					["source"] = "Msgirlie-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zurax-Tichondrius",
					["npcID"] = 0,
				},
				[105771] = {
					["source"] = "Sonex",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285219] = {
					["source"] = "Ancient Protector",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146678,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kargarn-Darrowmere",
					["npcID"] = 0,
				},
				[270657] = {
					["source"] = "Ishin-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278543] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108446] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[212800] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48181] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1160] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[111771] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282381] = {
					["source"] = "Kaldorei Sentinel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144973,
				},
				[288779] = {
					["source"] = "Kaldorei Glaive Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148921,
				},
				[200397] = {
					["source"] = "Ferocious Swiftclaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149312,
				},
				[271896] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thrullnar-Tichondrius",
					["npcID"] = 0,
				},
				[275006] = {
					["source"] = "Firèindaholè",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11366] = {
					["source"] = "Cluge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[14443] = {
					["source"] = "Dark Ranger Velonara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148479,
				},
				[285196] = {
					["source"] = "Xyvel-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[586] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54861] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[135425] = {
					["source"] = "Boomshot Specialist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148164,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269085] = {
					["type"] = "BUFF",
					["source"] = "Blakas-Ragnaros",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1044] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["encounterID"] = 2122,
					["source"] = "Dolclemits",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269853] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198097] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Finalstarr-Illidan",
					["npcID"] = 0,
				},
				[279572] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Derpvader-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191840] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Verzenia-Tichondrius",
					["npcID"] = 0,
				},
				[181346] = {
					["source"] = "Edgard Shadeclaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144757,
				},
				[131347] = {
					["encounterID"] = 2122,
					["source"] = "Rebblle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273947] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267327] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263416] = {
					["encounterID"] = 2122,
					["source"] = "Anburogue-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77758] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282116] = {
					["source"] = "Druid of the Branch",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144971,
				},
				[185311] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[528] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[3409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Finalstarr-Illidan",
					["npcID"] = 0,
				},
				[77489] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264265] = {
					["encounterID"] = 2122,
					["source"] = "Blue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 121571,
				},
				[115098] = {
					["source"] = "Buschgush-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205644] = {
					["source"] = "Treant",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 103822,
				},
				[73920] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[26297] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Azglok-Hyjal",
					["npcID"] = 0,
				},
				[61391] = {
					["source"] = "Aeroponics-Skywall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259480] = {
					["source"] = "Casteless Zandalari",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 131331,
				},
				[115546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "On-Cairne",
					["npcID"] = 0,
				},
				[275756] = {
					["encounterID"] = 2122,
					["source"] = "G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132998,
				},
				[35395] = {
					["encounterID"] = 2122,
					["source"] = "Blakas-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[123986] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289043] = {
					["source"] = "Kaldorei Chimaera",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148940,
				},
				[44535] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[111759] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270373] = {
					["encounterID"] = 2122,
					["source"] = "G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132998,
				},
				[221886] = {
					["type"] = "BUFF",
					["source"] = "Blakas-Ragnaros",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[235313] = {
					["source"] = "Frozenkisses",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286486] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[27576] = {
					["encounterID"] = 2122,
					["source"] = "Khelikloth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46968] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121557] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[119381] = {
					["source"] = "Buschgush-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[211881] = {
					["encounterID"] = 2122,
					["source"] = "Rebblle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201427] = {
					["encounterID"] = 2122,
					["source"] = "Rebblle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273956] = {
					["source"] = "Forsaken Alchemist",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144875,
				},
				[260857] = {
					["source"] = "Worgen Musketeer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145865,
				},
				[101546] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[101545] = {
					["source"] = "Buschgush-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191837] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45242] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289047] = {
					["source"] = "Kaldorei Chimaera",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148940,
				},
				[138130] = {
					["source"] = "Earth Spirit",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 69792,
				},
				[266030] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263217] = {
					["encounterID"] = 2122,
					["source"] = "Amorphous Cyst",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138185,
				},
				[289048] = {
					["source"] = "Kaldorei Chimaera",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148940,
				},
				[288281] = {
					["source"] = "Kaldorei Huntress",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144972,
				},
				[204242] = {
					["type"] = "DEBUFF",
					["source"] = "Blakas-Ragnaros",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190456] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107428] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283167] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jaminzz-Aegwynn",
					["npcID"] = 0,
				},
				[289492] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[115804] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285981] = {
					["source"] = "Alorianth",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287256] = {
					["source"] = "Boomshot Specialist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148164,
				},
				[288539] = {
					["source"] = "Druid of the Claw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146770,
				},
				[34914] = {
					["encounterID"] = 2122,
					["source"] = "Plutø",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195292] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8921] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22127] = {
					["source"] = "Keeper Dagda",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144759,
				},
				[204883] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210126] = {
					["source"] = "Atikus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thrullnar-Tichondrius",
					["npcID"] = 0,
				},
				[279185] = {
					["source"] = "Gilnean Defuser",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145850,
				},
				[267330] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[268898] = {
					["source"] = "Dulanjiao-Thaurissan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289349] = {
					["source"] = "Ishin-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206930] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276191] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284213] = {
					["source"] = "Veteran Sentinel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146657,
				},
				[275773] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280615] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213708] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[188389] = {
					["encounterID"] = 2122,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206931] = {
					["source"] = "Ishin-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[633] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264760] = {
					["source"] = "Firstcoming",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283430] = {
					["source"] = "Sonex",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289745] = {
					["source"] = "Shandris Feathermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149311,
				},
				[263482] = {
					["type"] = "BUFF",
					["source"] = "Reorigination Drive",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136263,
				},
				[264761] = {
					["source"] = "Demontnk-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228287] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263227] = {
					["type"] = "DEBUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[199603] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48792] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278317] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34026] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[26573] = {
					["encounterID"] = 2122,
					["source"] = "Blakas-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[209746] = {
					["type"] = "BUFF",
					["source"] = "Tackydime",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255909] = {
					["type"] = "DEBUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[697] = {
					["source"] = "Donteven-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["type"] = "BUFF",
					["source"] = "Blakas-Ragnaros",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228928] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149096,
				},
				[255654] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[179057] = {
					["encounterID"] = 2122,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235450] = {
					["source"] = "Aureana",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123586] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210131] = {
					["source"] = "Edgard Shadeclaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144757,
				},
				[282110] = {
					["source"] = "Kaldorei Archer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144970,
				},
				[11327] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210643] = {
					["encounterID"] = 2122,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273974] = {
					["source"] = "Dawndaylion-Thunderhorn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Blakas-Ragnaros",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124503] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[108199] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jaminzz-Aegwynn",
					["npcID"] = 0,
				},
				[210657] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266047] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jaminzz-Aegwynn",
					["npcID"] = 0,
				},
				[267326] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1966] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192226] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 97369,
				},
				[21807] = {
					["source"] = "Keeper Dagda",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144759,
				},
				[212051] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139546] = {
					["encounterID"] = 2122,
					["source"] = "Gapethatazz-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90361] = {
					["encounterID"] = 2122,
					["source"] = "Blue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 121571,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Cluge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93622] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278070] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198067] = {
					["source"] = "Stormbreaker-Crushridge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267329] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280400] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269887] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267412] = {
					["encounterID"] = 2122,
					["source"] = "Dark Young",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138529,
				},
				[287790] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85288] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[110744] = {
					["source"] = "Lovemuffins-Eonar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116768] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267331] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53365] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124121] = {
					["source"] = "Azamov",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290605] = {
					["source"] = "Ferocious Swiftclaw",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149312,
				},
				[116680] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100784] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[596] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276125] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182387] = {
					["type"] = "DEBUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1329] = {
					["encounterID"] = 2122,
					["source"] = "Khelikloth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1330] = {
					["type"] = "DEBUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119582] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[223819] = {
					["source"] = "Xyvel-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32645] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102383] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245686] = {
					["source"] = "Ecllipsê",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193641] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280788] = {
					["source"] = "Dawndaylion-Thunderhorn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114250] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194153] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289483] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[157348] = {
					["type"] = "BUFF",
					["source"] = "Primal Storm Elemental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 77942,
				},
				[122] = {
					["source"] = "Bjargey-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268616] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285496] = {
					["source"] = "Aeroponics-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202188] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85222] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273988] = {
					["source"] = "Dawndaylion-Thunderhorn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190446] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18499] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196840] = {
					["source"] = "Stormbreaker-Crushridge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13877] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199804] = {
					["encounterID"] = 2122,
					["source"] = "Gapethatazz-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[22842] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263504] = {
					["type"] = "DEBUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Cluge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22703] = {
					["type"] = "DEBUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64843] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33917] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131894] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200166] = {
					["encounterID"] = 2122,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231843] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278227] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273992] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256455] = {
					["source"] = "Joubai",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221771] = {
					["source"] = "Buschgush-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97462] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272970] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zurax-Tichondrius",
					["npcID"] = 0,
				},
				[272506] = {
					["type"] = "DEBUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[289850] = {
					["source"] = "Shandris Feathermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149311,
				},
				[172] = {
					["source"] = "Tunrida-Perenolde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278086] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[688] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287340] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61295] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[75532] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279541] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288829] = {
					["source"] = "Ishin-Blackhand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199600] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275672] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119905] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97463] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195949] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kiande-Tichondrius",
					["npcID"] = 0,
				},
				[27243] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195182] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43265] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[348] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117952] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[64844] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270674] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[137639] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shinzutalos-Tichondrius",
					["npcID"] = 0,
				},
				[12975] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44544] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233497] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61999] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196718] = {
					["encounterID"] = 2122,
					["source"] = "Rebblle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6673] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43681] = {
					["source"] = "Aeroponics-Skywall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2825] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[703] = {
					["encounterID"] = 2122,
					["source"] = "Anburogue-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289371] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[205351] = {
					["encounterID"] = 2122,
					["source"] = "Dismantlèd",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261488] = {
					["source"] = "Nevara Nightshade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146485,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271105] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267537] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281721] = {
					["type"] = "DEBUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Sntgeorge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119907] = {
					["source"] = "Donteven-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278249] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[355] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287560] = {
					["source"] = "Crankshot Blaster",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148300,
				},
				[5672] = {
					["type"] = "BUFF",
					["source"] = "Healing Stream Totem",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 3527,
				},
				[158486] = {
					["source"] = "Lacey",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261769] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274262] = {
					["type"] = "DEBUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[113656] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278866] = {
					["type"] = "DEBUFF",
					["source"] = "Nazmani Veinsplitter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142800,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276132] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281724] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256695] = {
					["source"] = "Daminia",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251836] = {
					["source"] = "Vaeseline",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205708] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273251] = {
					["type"] = "DEBUFF",
					["source"] = "Dark Young",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138529,
				},
				[183436] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190410] = {
					["source"] = "Nevara Nightshade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146485,
				},
				[29893] = {
					["source"] = "Donteven-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5740] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[112042] = {
					["source"] = "Jhomtast",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[251837] = {
					["source"] = "Yuumi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6343] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184575] = {
					["source"] = "Bastyón-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Vladruk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278359] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31224] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6795] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[121536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[263806] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6807] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113899] = {
					["encounterID"] = 2122,
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59262,
				},
				[203814] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Søulsharter-Blackrock",
					["npcID"] = 0,
				},
				[2061] = {
					["source"] = "Lovemuffins-Eonar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192249] = {
					["encounterID"] = 2122,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268899] = {
					["source"] = "Ecllipsê",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251839] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225289] = {
					["source"] = "Dark Ranger Velonara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148479,
				},
				[1459] = {
					["source"] = "Scorpionx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279028] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20243] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267409] = {
					["encounterID"] = 2122,
					["source"] = "Dark Young",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138529,
				},
				[278364] = {
					["source"] = "Ishin-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280412] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5308] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36554] = {
					["type"] = "BUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188031] = {
					["source"] = "Ragingbear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[240460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vengeful Ghost",
					["npcID"] = 142723,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289308] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287062] = {
					["source"] = "Vïrstrath-BoreanTundra",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280413] = {
					["source"] = "Rínoa-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250871] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Dismantlèd",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17767] = {
					["source"] = "Zhar'vhug",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[60234] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11824] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thundering Guardian",
					["npcID"] = 141648,
				},
				[283506] = {
					["source"] = "Dawndaylion-Thunderhorn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[261612] = {
					["source"] = "Forsaken Alchemist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144875,
				},
				[188033] = {
					["source"] = "Felstench",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276194] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263321] = {
					["encounterID"] = 2122,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279673] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Greasyhog",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120679] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223306] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188290] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288602] = {
					["source"] = "Scorpionx",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278156] = {
					["type"] = "BUFF",
					["source"] = "Dismantlèd",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274792] = {
					["source"] = "Released Crawg",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140149,
				},
				[146739] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23920] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263284] = {
					["type"] = "BUFF",
					["source"] = "Gibbering Horror",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134010,
				},
				[8042] = {
					["encounterID"] = 2122,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115181] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[255937] = {
					["source"] = "Bastyón-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[122470] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290337] = {
					["source"] = "Prapsmabus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213771] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270447] = {
					["type"] = "BUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[755] = {
					["source"] = "Dulanjiao-Thaurissan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34861] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256460] = {
					["source"] = "Adys-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116844] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290141] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Vladruk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258925] = {
					["source"] = "Maldoriz-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30455] = {
					["source"] = "Bjargey-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281792] = {
					["source"] = "Pandamage",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "On-Cairne",
					["npcID"] = 0,
				},
				[115310] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5487] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185736] = {
					["source"] = "Yuumi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78674] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47585] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288044] = {
					["source"] = "Kaldorei Glaive Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145303,
				},
				[288524] = {
					["source"] = "Kaldorei Huntress",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144972,
				},
				[107574] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33076] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212207] = {
					["source"] = "Edgard Shadeclaw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144757,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["encounterID"] = 2122,
					["source"] = "Rebblle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[285798] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[227041] = {
					["source"] = "Shiftyden-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Alorianth",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6136] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["npcID"] = 141658,
				},
				[17735] = {
					["source"] = "Jhomtast",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 1860,
				},
				[115192] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78675] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Vladruk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[222695] = {
					["source"] = "Aurtur",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195457] = {
					["encounterID"] = 2122,
					["source"] = "Gapethatazz-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256700] = {
					["source"] = "Daminia",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[129250] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[152108] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[84366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Echo of Myzrael",
					["npcID"] = 141668,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "Blue",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 121571,
				},
				[279153] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Daihoa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185565] = {
					["encounterID"] = 2122,
					["source"] = "Anburogue-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232670] = {
					["source"] = "Tunrida-Perenolde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Alleus-Tichondrius",
					["npcID"] = 0,
				},
				[280433] = {
					["source"] = "Rínoa-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272505] = {
					["encounterID"] = 2122,
					["source"] = "G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132998,
				},
				[277185] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284270] = {
					["source"] = "Base Cap'n Crankshot",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146228,
				},
				[157736] = {
					["type"] = "DEBUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116847] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zurax-Tichondrius",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["type"] = "BUFF",
					["source"] = "Shortbread",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279924] = {
					["type"] = "DEBUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90633] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Scorpionx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Prapsmabus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205179] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 142047,
				},
				[288877] = {
					["source"] = "Ishin-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3716] = {
					["source"] = "Jhomtast",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 1860,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31274] = {
					["source"] = "Darkshore Stag",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144837,
				},
				[217200] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5277] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205180] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290165] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[82326] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199844] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zurax-Tichondrius",
					["npcID"] = 0,
				},
				[281240] = {
					["source"] = "Gitmoe-Draka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196741] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Exbono-Tichondrius",
					["npcID"] = 0,
				},
				[262538] = {
					["source"] = "Forsaken Lancer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144877,
				},
				[109304] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157228] = {
					["source"] = "Rínoa-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284861] = {
					["source"] = "Forsaken Blight Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146647,
				},
				[281209] = {
					["source"] = "Thogar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["source"] = "Bjargey-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116849] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116] = {
					["source"] = "Bjargey-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118000] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Finalstarr-Illidan",
					["npcID"] = 0,
				},
				[100] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274369] = {
					["source"] = "Stryfe-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198533] = {
					["encounterID"] = 2122,
					["source"] = "Jade Serpent Statue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 60849,
				},
				[272260] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268998] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84193] = {
					["source"] = "Dymetex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278143] = {
					["source"] = "Soodo",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225603] = {
					["source"] = "Gitmoe-Draka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["source"] = "Kaldorei Sentinel",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144973,
				},
				[285049] = {
					["source"] = "Forsaken Blight Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146647,
				},
				[186258] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276127] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20549] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267659] = {
					["encounterID"] = 2122,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[403] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280286] = {
					["type"] = "DEBUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[871] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256698] = {
					["source"] = "Daminia",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132168] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185763] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["source"] = "Bastyón-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278147] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286587] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["source"] = "Msgirlie-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155145] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19750] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48707] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277179] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276839] = {
					["type"] = "BUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[23922] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[216695] = {
					["source"] = "Dulanjiao-Thaurissan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252753] = {
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30108] = {
					["source"] = "Tunrida-Perenolde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["encounterID"] = 2122,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51490] = {
					["source"] = "Stormbreaker-Crushridge",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hît-Silvermoon",
					["npcID"] = 0,
				},
				[200200] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280709] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223498] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55233] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6552] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77535] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1766] = {
					["encounterID"] = 2122,
					["source"] = "Khelikloth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271550] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280711] = {
					["encounterID"] = 2122,
					["source"] = "Plutø",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6572] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 141615,
				},
				[29166] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Felstench",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278155] = {
					["type"] = "BUFF",
					["source"] = "Dismantlèd",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256467] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Burning Guardian",
					["npcID"] = 141663,
				},
				[280713] = {
					["source"] = "Felstench",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267700] = {
					["type"] = "DEBUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[190356] = {
					["source"] = "Bjargey-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263372] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48778] = {
					["source"] = "Deathgriplol",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15286] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Vaeseline",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268439] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276142] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Finalstarr-Illidan",
					["npcID"] = 0,
				},
				[272276] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124280] = {
					["source"] = "Buschgush-Mal'Ganis",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49028] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31707] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Water Elemental",
					["npcID"] = 78116,
				},
				[94028] = {
					["source"] = "Aeroponics-Skywall",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278159] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277904] = {
					["source"] = "Fellody",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[279439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Echo of Myzrael",
					["npcID"] = 141668,
				},
				[87187] = {
					["source"] = "Crazed Thistlebear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144993,
				},
				[272790] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Gitmoe-Draka",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205448] = {
					["encounterID"] = 2122,
					["source"] = "Plutø",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57984] = {
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289362] = {
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274582] = {
					["encounterID"] = 2122,
					["source"] = "G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132998,
				},
				[57724] = {
					["type"] = "DEBUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["source"] = "Audigy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224001] = {
					["source"] = "Gitmoe-Draka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279187] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["source"] = "Scorpionx",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210053] = {
					["source"] = "Lassahof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20822] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drywhisker Surveyor",
					["npcID"] = 142047,
				},
				[221562] = {
					["source"] = "Ishin-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269214] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["source"] = "Jinqs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282258] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188443] = {
					["encounterID"] = 2122,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164545] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5302] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56222] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[82841] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Rumbling Guardian",
					["npcID"] = 141659,
				},
				[162243] = {
					["encounterID"] = 2122,
					["source"] = "Rebblle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[282260] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243955] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267427] = {
					["type"] = "BUFF",
					["source"] = "Cyclopean Terror",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138531,
				},
				[3408] = {
					["source"] = "Anburogue-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1706] = {
					["encounterID"] = 2122,
					["source"] = "Dolclemits",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147362] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32379] = {
					["source"] = "Stryfe-Korgath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287639] = {
					["source"] = "Donteven-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276124] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["source"] = "Çml",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260834] = {
					["source"] = "Forsaken Deathguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144878,
				},
				[267685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zurax-Tichondrius",
					["npcID"] = 0,
				},
				[115450] = {
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[180612] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274357] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276126] = {
					["source"] = "Rínoa-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259161] = {
					["source"] = "Mourdread",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193316] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282265] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48265] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288158] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276128] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278081] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[77472] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[228600] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276129] = {
					["source"] = "Rínoa-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287638] = {
					["source"] = "Donteven-Zul'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120694] = {
					["encounterID"] = 2122,
					["source"] = "Beast",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149584,
				},
				[185123] = {
					["encounterID"] = 2122,
					["source"] = "Rebblle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276130] = {
					["source"] = "Dulanjiao-Thaurissan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202770] = {
					["source"] = "Aeroponics-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116858] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6940] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276131] = {
					["source"] = "Dulanjiao-Thaurissan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225788] = {
					["source"] = "Yuumi",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[31884] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243563] = {
					["source"] = "Tide Crawler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144842,
				},
				[270443] = {
					["type"] = "DEBUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[193315] = {
					["encounterID"] = 2122,
					["source"] = "Gapethatazz-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113900] = {
					["encounterID"] = 2122,
					["source"] = "Demonic Gateway",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 59271,
				},
				[47528] = {
					["source"] = "Ishin-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61882] = {
					["encounterID"] = 2122,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263346] = {
					["encounterID"] = 2122,
					["source"] = "Plutø",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203539] = {
					["source"] = "Jinqs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2565] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197908] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118905] = {
					["encounterID"] = 2122,
					["source"] = "Capacitor Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[194844] = {
					["source"] = "Ishin-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279204] = {
					["source"] = "Xyvel-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116705] = {
					["source"] = "Buschgush-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157331] = {
					["encounterID"] = 2122,
					["source"] = "Primal Storm Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 77942,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276136] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["encounterID"] = 2122,
					["source"] = "Blue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 121571,
				},
				[285855] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[194584] = {
					["source"] = "Myara Nightsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145123,
				},
				[276137] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266163] = {
					["source"] = "Rínoa-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12042] = {
					["source"] = "Bonedaddy-Shandris",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["encounterID"] = 2122,
					["source"] = "Voidamental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17962] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203538] = {
					["source"] = "Jinqs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285857] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[273836] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276139] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131493] = {
					["source"] = "Xyvel-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Dismantlèd",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260830] = {
					["source"] = "Forsaken Deathguard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144878,
				},
				[276140] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188838] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1776] = {
					["encounterID"] = 2122,
					["source"] = "Gapethatazz-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276141] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290209] = {
					["source"] = "Blooming Protector",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149635,
				},
				[197277] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["source"] = "Gitmoe-Draka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118779] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282262] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216331] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276143] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271538] = {
					["source"] = "Ishin-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219788] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203852] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276138] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201754] = {
					["encounterID"] = 2122,
					["source"] = "Blue",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 121571,
				},
				[198813] = {
					["source"] = "Maldoriz-Dalaran",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["source"] = "Aeroponics-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282283] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119611] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Otherion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290468] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Forvitni-Tichondrius",
					["npcID"] = 0,
				},
				[184364] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271543] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31821] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Snyplee",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271544] = {
					["type"] = "DEBUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126389] = {
					["source"] = "Vïrstrath-BoreanTundra",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277921] = {
					["source"] = "Archdruid Andrenius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148618,
				},
				[228354] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6201] = {
					["source"] = "Donteven-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thrullnar-Tichondrius",
					["npcID"] = 0,
				},
				[49576] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15487] = {
					["encounterID"] = 2122,
					["source"] = "Dismantlèd",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198304] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[267560] = {
					["source"] = "Strmyshamuls",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[243435] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256453] = {
					["source"] = "Daihoa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79140] = {
					["encounterID"] = 2122,
					["source"] = "Khelikloth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275384] = {
					["encounterID"] = 2122,
					["source"] = "Spark Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 140789,
				},
				[114050] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[853] = {
					["encounterID"] = 2122,
					["source"] = "Iightboi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275129] = {
					["type"] = "BUFF",
					["source"] = "G'huun",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132998,
				},
				[184367] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264106] = {
					["source"] = "Tunrida-Perenolde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[277943] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Latrodectus-KulTiras",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263373] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164547] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275863] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242551] = {
					["source"] = "Gitmoe-Draka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285979] = {
					["source"] = "Jinqs",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["encounterID"] = 2122,
					["source"] = "Blakas-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1833] = {
					["type"] = "DEBUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2643] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51399] = {
					["type"] = "DEBUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115767] = {
					["type"] = "DEBUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262346] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Thundering Guardian",
					["npcID"] = 141648,
				},
				[61336] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288433] = {
					["source"] = "Worgen Musketeer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145865,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257642] = {
					["source"] = "Myara Nightsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145123,
				},
				[53209] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201633] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[5784] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288043] = {
					["source"] = "Kaldorei Glaive Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145303,
				},
				[113860] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79206] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blamrogue-Tichondrius",
					["npcID"] = 0,
				},
				[190984] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289459] = {
					["source"] = "Nevara Nightshade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146485,
				},
				[186263] = {
					["encounterID"] = 2122,
					["source"] = "Dismantlèd",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1856] = {
					["encounterID"] = 2122,
					["source"] = "Khelikloth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Blakas-Ragnaros",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Qerach",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[141917] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Cluge",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289205] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5394] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268062] = {
					["source"] = "Maldoriz-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269455] = {
					["encounterID"] = 2122,
					["source"] = "Orcbum",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[286393] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284277] = {
					["source"] = "Vaeseline",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280943] = {
					["type"] = "DEBUFF",
					["source"] = "Cyclopean Terror",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138531,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277187] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73325] = {
					["encounterID"] = 2122,
					["source"] = "Dismantlèd",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202225] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kiande-Tichondrius",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Apocalypto",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186257] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205473] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41635] = {
					["source"] = "Elitrex-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Justgeekin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20271] = {
					["source"] = "Bastyón-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[93402] = {
					["encounterID"] = 2122,
					["source"] = "Slurry",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Khelikloth",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263307] = {
					["encounterID"] = 2122,
					["source"] = "Gibbering Horror",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134010,
				},
				[209785] = {
					["source"] = "Xyvel-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233499] = {
					["source"] = "Dulanjiao-Thaurissan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Finalstarr-Illidan",
					["npcID"] = 0,
				},
				[73326] = {
					["type"] = "BUFF",
					["source"] = "Orcbum",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280772] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[91002] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271054] = {
					["type"] = "BUFF",
					["source"] = "Blakas-Ragnaros",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270287] = {
					["encounterID"] = 2122,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280773] = {
					["source"] = "Sonex",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84963] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193455] = {
					["encounterID"] = 2122,
					["source"] = "Bigwilly",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jaminzz-Aegwynn",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3110] = {
					["encounterID"] = 2122,
					["source"] = "鲁尔纳尔",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[22120] = {
					["source"] = "Darkshore Stag",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144837,
				},
				[279152] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277706] = {
					["source"] = "Donteven-Zul'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280165] = {
					["source"] = "Aeroponics-Skywall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Exbono-Tichondrius",
					["npcID"] = 0,
				},
				[280776] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Erekasa-Gurubashi",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Biubiubang",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108281] = {
					["type"] = "BUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90985] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288091] = {
					["source"] = "Sonex",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[286404] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132157] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210152] = {
					["type"] = "BUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81256] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287586] = {
					["source"] = "Crankshot Blaster",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148300,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55078] = {
					["type"] = "DEBUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114052] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280780] = {
					["source"] = "Dulanjiao-Thaurissan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281036] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["encounterID"] = 2122,
					["source"] = "Plutø",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Anburogue-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19483] = {
					["type"] = "BUFF",
					["source"] = "Infernal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 89,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279503] = {
					["type"] = "BUFF",
					["source"] = "Lilbeefy-Zul'jin",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Çml",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205231] = {
					["source"] = "Darkglare",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103673,
				},
				[278225] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279151] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115080] = {
					["source"] = "Buschgush-Mal'Ganis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273232] = {
					["source"] = "Maldoriz-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276834] = {
					["encounterID"] = 2122,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193359] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49821] = {
					["encounterID"] = 2122,
					["source"] = "Plutø",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[7744] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[585] = {
					["source"] = "Lovemuffins-Eonar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288969] = {
					["source"] = "Nevara Nightshade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146485,
				},
				[288339] = {
					["source"] = "Ancient Protector",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146678,
				},
				[272090] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1943] = {
					["encounterID"] = 2122,
					["source"] = "Khelikloth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115175] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197937] = {
					["type"] = "BUFF",
					["source"] = "Plutø",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275160] = {
					["encounterID"] = 2122,
					["source"] = "G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132998,
				},
				[141928] = {
					["source"] = "Dreamyy-BlackwaterRaiders",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280787] = {
					["source"] = "Dawndaylion-Thunderhorn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285976] = {
					["source"] = "Kalarzlorbek",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265954] = {
					["type"] = "BUFF",
					["source"] = "Gapethatazz-Illidan",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271581] = {
					["source"] = "Xyvel-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25046] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Finalstarr-Illidan",
					["npcID"] = 0,
				},
				[278231] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210660] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279277] = {
					["source"] = "Forsaken Blight Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146647,
				},
				[268769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Erekasa-Gurubashi",
					["npcID"] = 0,
				},
				[271071] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[980] = {
					["source"] = "Tunrida-Perenolde",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289997] = {
					["source"] = "Rínoa-Illidan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Bastyón-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276187] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191034] = {
					["type"] = "BUFF",
					["source"] = "Slurry",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Freearcwine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276188] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Gapethatazz-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289999] = {
					["source"] = "Rínoa-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120517] = {
					["source"] = "Elitrex-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276189] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192058] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118297] = {
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[51723] = {
					["encounterID"] = 2122,
					["source"] = "Anburogue-Arthas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276190] = {
					["source"] = "Maldoriz-Dalaran",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[233490] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Sonex",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271843] = {
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[77066] = {
					["source"] = "Druid of the Branch",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144971,
				},
				[96231] = {
					["source"] = "Bastyón-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[546] = {
					["source"] = "Stormbreaker-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276192] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[129597] = {
					["encounterID"] = 2122,
					["source"] = "Yuumi",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198837] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Risen Skulker",
					["npcID"] = 99541,
				},
				[268776] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130257,
				},
				[276193] = {
					["type"] = "BUFF",
					["source"] = "Dragonsdeath",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Rebblle",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290004] = {
					["source"] = "Rínoa-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264685] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Echo of Myzrael",
					["npcID"] = 141668,
				},
				[498] = {
					["type"] = "BUFF",
					["source"] = "Iightboi",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["type"] = "BUFF",
					["source"] = "Dolclemits",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198838] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[7964] = {
					["source"] = "Shandris Feathermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149311,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49358] = {
					["source"] = "Msgirlie-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270603] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cresting Guardian",
					["npcID"] = 141658,
				},
				[273977] = {
					["source"] = "Ishin-Blackhand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Tomate",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275429] = {
					["type"] = "BUFF",
					["source"] = "Killerwhale-Mok'Nathal",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198839] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[84714] = {
					["source"] = "Bjargey-MoonGuard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254473] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["encounterID"] = 2122,
					["source"] = "Bigbullz",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Anburogue-Arthas",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Spaghettie",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278244] = {
					["source"] = "Dolclemits",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184662] = {
					["source"] = "Bastyón-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77505] = {
					["type"] = "DEBUFF",
					["source"] = "Voidamental",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["encounterID"] = 2122,
					["source"] = "Blakas-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263235] = {
					["encounterID"] = 2122,
					["source"] = "G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132998,
				},
				[131476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aerrithal-Bladefist",
					["npcID"] = 0,
				},
				[267325] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Finalstarr-Illidan",
					["npcID"] = 0,
				},
				[281116] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bamahunter-Bloodscalp",
					["npcID"] = 0,
				},
				[192090] = {
					["source"] = "Toyaruku-WyrmrestAccord",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49998] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275689] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jaminzz-Aegwynn",
					["npcID"] = 0,
				},
				[183752] = {
					["encounterID"] = 2122,
					["source"] = "Dragonsdeath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280549] = {
					["type"] = "BUFF",
					["source"] = "Xtxd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245388] = {
					["encounterID"] = 2122,
					["source"] = "Khelikloth",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[210764] = {
					["encounterID"] = 2122,
					["source"] = "Lilbeefy-Zul'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[47540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tosh",
					["npcID"] = 0,
				},
				[233496] = {
					["source"] = "Tunrida-Perenolde",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Bigwilly",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195901] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jaminzz-Aegwynn",
					["npcID"] = 0,
				},
				[40120] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dstewy-Tichondrius",
					["npcID"] = 0,
				},
				[80240] = {
					["encounterID"] = 2122,
					["source"] = "Killerwhale-Mok'Nathal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212653] = {
					["source"] = "Bjargey-MoonGuard",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Memp-Tichondrius",
					["npcID"] = 0,
				},
				[266018] = {
					["type"] = "BUFF",
					["source"] = "Bigbullz",
					["encounterID"] = 2122,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225313] = {
					["source"] = "Dark Ranger Velonara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148479,
				},
				[267509] = {
					["encounterID"] = 2122,
					["source"] = "G'huun",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 132998,
				},
				[85739] = {
					["source"] = "Sonex",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["source"] = "Tomate",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279792] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zurax-Tichondrius",
					["npcID"] = 0,
				},
				[278267] = {
					["source"] = "Stryfe-Korgath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vengeful Ghost",
					["npcID"] = 142723,
				},
			},
			["auto_toggle_friendly_enabled"] = true,
		},
	},
}
