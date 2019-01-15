
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
				[164815] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[289074] = {
					["source"] = "Vile Screecher",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148898,
				},
				[6136] = {
					["source"] = "Unknown",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144850,
				},
				[265534] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mor'fani the Exile",
					["npcID"] = 134694,
				},
				[289075] = {
					["source"] = "Zaerallis-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[215479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[266047] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265536] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mor'fani the Exile",
					["npcID"] = 134694,
				},
				[214968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Taorot",
					["npcID"] = 0,
				},
				[183752] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[104318] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wild Imp",
					["npcID"] = 55659,
				},
				[265539] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mor'fani the Exile",
					["npcID"] = 134694,
				},
				[270657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Luvleyone",
					["npcID"] = 0,
				},
				[281404] = {
					["source"] = "Iroha",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fetid Maggot",
					["npcID"] = 130909,
				},
				[85256] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liadryn",
					["npcID"] = 0,
				},
				[265541] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mor'fani the Exile",
					["npcID"] = 134694,
				},
				[31661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[17364] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[153561] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[123254] = {
					["source"] = "Daltina-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[240559] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[275779] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[280385] = {
					["source"] = "Hüff-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102401] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[116858] = {
					["source"] = "Thugra-Uther",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[250284] = {
					["source"] = "Scrollsage Rooka",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 125312,
				},
				[269130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kao-Tien Pillager",
					["npcID"] = 133499,
				},
				[200389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[190410] = {
					["source"] = "Nevara Nightshade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146485,
				},
				[281413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Amuri-Suramar",
					["npcID"] = 0,
				},
				[224186] = {
					["source"] = "Kelyra-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251309] = {
					["source"] = "Lutra-Vek'nilash",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194249] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190411] = {
					["source"] = "Grandchief-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45524] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[268623] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[124280] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[118779] = {
					["source"] = "Grandchief-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120954] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2123,
				},
				[176596] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221886] = {
					["source"] = "Belandriá",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224189] = {
					["source"] = "Kelyra-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ryañ-Boulderfist",
					["npcID"] = 0,
				},
				[210372] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Atuns-Dragonmaw",
					["npcID"] = 0,
				},
				[270674] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[1719] = {
					["source"] = "Taichokizaru-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gerudo-Darkspear",
					["npcID"] = 0,
				},
				[197835] = {
					["source"] = "Circé",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288075] = {
					["source"] = "Lexaria-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[280400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[235450] = {
					["source"] = "Fieryveinz-Area52",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273238] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[204490] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188370] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Haxxorwyn-Dragonmaw",
					["npcID"] = 0,
				},
				[291150] = {
					["source"] = "Zaethe-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280404] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cridious",
					["npcID"] = 0,
				},
				[64844] = {
					["source"] = "Yellowy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251316] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[267611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Snygg-Darkspear",
					["npcID"] = 0,
				},
				[252340] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaemme",
					["npcID"] = 0,
				},
				[116095] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[290641] = {
					["source"] = "Fearfactory-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[219589] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[115072] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[203981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[265568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Befouled Spirit",
					["npcID"] = 133685,
				},
				[280409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aoria-Tichondrius",
					["npcID"] = 0,
				},
				[287062] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dabuddhabear",
					["npcID"] = 0,
				},
				[5217] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[271711] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[278364] = {
					["source"] = "Pheanor-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266083] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krolusk Sandhunter",
					["npcID"] = 135582,
				},
				[7384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[279902] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[61391] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[210126] = {
					["source"] = "Flommin-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201427] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[204242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[79892] = {
					["source"] = "Murgha the Tempered",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96957,
				},
				[102793] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[115203] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["encounterID"] = 2123,
				},
				[251836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Decisionz-Winterhoof",
					["npcID"] = 0,
				},
				[205523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[126462] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Twelve",
					["npcID"] = 0,
				},
				[198103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[251837] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moogie-Bonechewer",
					["npcID"] = 0,
				},
				[127230] = {
					["source"] = "Bluedart",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256699] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Daiyzed",
					["npcID"] = 0,
				},
				[125439] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Show-KulTiras",
					["npcID"] = 0,
				},
				[279913] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Raklocks-Ner'zhul",
					["npcID"] = 0,
				},
				[123904] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[1943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[185311] = {
					["source"] = "Trinketsap-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216528] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kabuches-Blackrock",
					["npcID"] = 0,
				},
				[1953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[251839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nosao-Hyjal",
					["npcID"] = 0,
				},
				[58450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hahot-Tichondrius",
					["npcID"] = 0,
				},
				[52437] = {
					["source"] = "Pheanor-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278381] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[117892] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Glompmaw",
					["npcID"] = 121242,
				},
				[195292] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[256958] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Natha'vor Cannibal",
					["npcID"] = 124688,
				},
				[208086] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[79639] = {
					["source"] = "Frannymc",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192222] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[115078] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[226510] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264057] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[265081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chosen Blood Matron",
					["npcID"] = 131436,
				},
				[193759] = {
					["source"] = "Lehman-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187874] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[266106] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Feral Bloodswarmer",
					["npcID"] = 133835,
				},
				[283506] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279924] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[266107] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Feral Bloodswarmer",
					["npcID"] = 133835,
				},
				[226512] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265084] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Devout Blood Priest",
					["npcID"] = 131492,
				},
				[30449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[48792] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202461] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sertroz-Arthas",
					["npcID"] = 0,
				},
				[115080] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[264064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kul'krazahn",
					["npcID"] = 120899,
				},
				[147193] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188389] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Saafir",
					["npcID"] = 0,
				},
				[2094] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rokerboxx-Tichondrius",
					["npcID"] = 0,
				},
				[2098] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[187878] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[202719] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[260291] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Atal'zul Executioner",
					["npcID"] = 132722,
				},
				[269185] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unbound Abomination",
					["npcID"] = 133007,
				},
				[228563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Narkzul",
					["npcID"] = 0,
				},
				[204255] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[260292] = {
					["npcID"] = 131817,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cragmaw the Infested",
					["encounterID"] = 2118,
				},
				[264070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kul'krazahn",
					["npcID"] = 120899,
				},
				[273794] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Saltville-Tichondrius",
					["npcID"] = 0,
				},
				[546] = {
					["source"] = "Gohaam-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256455] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zapzed",
					["npcID"] = 0,
				},
				[272260] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205025] = {
					["source"] = "Bubbï-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273285] = {
					["npcID"] = 139127,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Volatile Pod",
					["encounterID"] = 2112,
				},
				[89751] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Klekzeras",
					["npcID"] = 17252,
				},
				[273286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ijon-Area52",
					["npcID"] = 0,
				},
				[235219] = {
					["source"] = "Morynia-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102417] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Jplbrady-Arthas",
					["npcID"] = 0,
				},
				[200166] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[210657] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[118922] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Theotino",
					["npcID"] = 0,
				},
				[256459] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Empio-Spirestone",
					["npcID"] = 0,
				},
				[171253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bobcasio-Bloodscalp",
					["npcID"] = 0,
				},
				[585] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[586] = {
					["source"] = "Yellowy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pqq-Crushridge",
					["npcID"] = 0,
				},
				[589] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236502] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Shockdathird-BleedingHollow",
					["npcID"] = 0,
				},
				[89753] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Klekzeras",
					["npcID"] = 17252,
				},
				[204262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Heatedsack-Nesingwary",
					["npcID"] = 0,
				},
				[16953] = {
					["source"] = "Kawahe-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[596] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268178] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[210660] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[190446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[50842] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[199658] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[273298] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[277904] = {
					["source"] = "Bobgratton-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273299] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[272790] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[124682] = {
					["source"] = "Wonton-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[33763] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[278420] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[264603] = {
					["npcID"] = 131318,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elder Leaxa",
					["encounterID"] = 2111,
				},
				[279956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Runakk-Blackrock",
					["npcID"] = 0,
				},
				[210152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[227040] = {
					["source"] = "The Demon Within",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 111022,
				},
				[231390] = {
					["source"] = "Beafpasta",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[288146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Darkpoint",
					["npcID"] = 0,
				},
				[200174] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223203] = {
					["source"] = "Tàl",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269214] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[206572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scrap-Korgath",
					["npcID"] = 0,
				},
				[287638] = {
					["source"] = "Thugra-Uther",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273310] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[222695] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vudutroll-Perenolde",
					["npcID"] = 0,
				},
				[267685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[277921] = {
					["source"] = "Archdruid Andrenius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148618,
				},
				[49821] = {
					["source"] = "Daltina-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Darkpoint",
					["npcID"] = 0,
				},
				[686] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[135700] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289184] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akhon",
					["npcID"] = 0,
				},
				[192249] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Saafir",
					["npcID"] = 0,
				},
				[698] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[703] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[2818] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[274346] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[273323] = {
					["source"] = "Fireburst-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[710] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[193786] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[55899] = {
					["source"] = "Bubbï-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264114] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kul'krazahn",
					["npcID"] = 120899,
				},
				[16827] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["npcID"] = 66668,
				},
				[33702] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[208628] = {
					["source"] = "Decimation-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176644] = {
					["source"] = "Venomsolid-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266163] = {
					["source"] = "Daltina-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281517] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[273842] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigbadbill-Akama",
					["npcID"] = 0,
				},
				[275378] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[256735] = {
					["source"] = "Trinketsap-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278961] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Diseased Lasher",
					["npcID"] = 133870,
				},
				[57755] = {
					["source"] = "Pheanor-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269239] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigbadbill-Akama",
					["npcID"] = 0,
				},
				[139546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[252387] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zaemme",
					["npcID"] = 0,
				},
				[260320] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Direhorn Cow",
					["npcID"] = 122060,
				},
				[195072] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[279990] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Casino-Cenarius",
					["npcID"] = 0,
				},
				[768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[49184] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[256739] = {
					["source"] = "Beutfldsastr",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[289205] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[111898] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[256740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[783] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[155158] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[23161] = {
					["source"] = "Ikollv-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193796] = {
					["source"] = "Fireburst-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196099] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pinec-Tichondrius",
					["npcID"] = 0,
				},
				[265668] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Living Rot",
					["npcID"] = 133852,
				},
				[262115] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[85288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[158486] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Clechedkname",
					["npcID"] = 0,
				},
				[89766] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Felguard",
					["npcID"] = 17252,
				},
				[8690] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nailed-Tichondrius",
					["npcID"] = 0,
				},
				[19483] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Infernal",
					["npcID"] = 89,
				},
				[21562] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Apriest-Mok'Nathal",
					["npcID"] = 0,
				},
				[260070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pa'kura Priest",
					["npcID"] = 131834,
				},
				[190984] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Iko",
					["npcID"] = 0,
				},
				[118297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Primal Fire Elemental",
					["npcID"] = 61029,
				},
				[257512] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Imprisoned Pterrordax",
					["npcID"] = 129759,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Klekzeras",
					["npcID"] = 17252,
				},
				[267211] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[260072] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pa'kura Priest",
					["npcID"] = 131834,
				},
				[228600] = {
					["source"] = "Morynia-WyrmrestAccord",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["source"] = "Carthias-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265679] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Atal'zul Assassin",
					["npcID"] = 132618,
				},
				[185358] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[278985] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bound Tide Elemental",
					["npcID"] = 142991,
				},
				[275915] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[278986] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Stormcoil Tidecaller",
					["npcID"] = 134062,
				},
				[271310] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Cannoneer",
					["npcID"] = 128442,
				},
				[845] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[269776] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nixvalkyrie",
					["npcID"] = 0,
				},
				[157981] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[260843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jahden Fla",
					["npcID"] = 122704,
				},
				[281036] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cuziamkorean-Tichondrius",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2118,
				},
				[232698] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Apriest-Mok'Nathal",
					["npcID"] = 0,
				},
				[261612] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethrak Warden",
					["npcID"] = 136546,
				},
				[260333] = {
					["npcID"] = 131817,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cragmaw the Infested",
					["encounterID"] = 2118,
				},
				[261613] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[176151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhayze-Bloodscalp",
					["npcID"] = 0,
				},
				[263642] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[266201] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reanimated Guardian",
					["npcID"] = 133836,
				},
				[77489] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Veraphage",
					["npcID"] = 0,
				},
				[264667] = {
					["source"] = "Jungleweb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136341,
				},
				[224001] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[26297] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[30455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[203277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spellbender-Smolderthorn",
					["npcID"] = 0,
				},
				[250870] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[204301] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[280025] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Missyrat-Hyjal",
					["npcID"] = 0,
				},
				[24858] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bipolarbearr-Boulderfist",
					["npcID"] = 0,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[228354] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[216328] = {
					["source"] = "Vælør-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279515] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moarwolves-Boulderfist",
					["npcID"] = 0,
				},
				[116768] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[268769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[265187] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[213771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mythictaco",
					["npcID"] = 0,
				},
				[132403] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[3714] = {
					["source"] = "Nåtashå-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273892] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dazarian Stalker",
					["npcID"] = 137829,
				},
				[202770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Iko",
					["npcID"] = 0,
				},
				[101545] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nailed-Tichondrius",
					["npcID"] = 0,
				},
				[203538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vcap-Tichondrius",
					["npcID"] = 0,
				},
				[228358] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[268776] = {
					["source"] = "Amani Battle Bear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130257,
				},
				[178207] = {
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2111,
				},
				[264683] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Umbra'jin",
					["npcID"] = 122004,
				},
				[227847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[131894] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[203795] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280549] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dolsonn",
					["npcID"] = 0,
				},
				[101546] = {
					["source"] = "Wonton-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108199] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34861] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260857] = {
					["source"] = "Worgen Musketeer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145865,
				},
				[88625] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gertlook-Hyjal",
					["npcID"] = 0,
				},
				[22812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[264689] = {
					["source"] = "Dismantlèd",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264178] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[255741] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethrak Warbringer",
					["npcID"] = 136547,
				},
				[980] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[100780] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[288744] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148921,
				},
				[146739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[194844] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261628] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sethrak Warden",
					["npcID"] = 136546,
				},
				[145205] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[186401] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[270836] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["npcID"] = 138540,
				},
				[269301] = {
					["type"] = "DEBUFF",
					["source"] = "Unbound Abomination",
					["npcID"] = 133007,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2123,
				},
				[201754] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kenzie",
					["npcID"] = 10737,
				},
				[111400] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[115750] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[105771] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[207640] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[132157] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Hüff-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261886] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Scorpashi Venomtail",
					["npcID"] = 122153,
				},
				[48168] = {
					["source"] = "Matron Ossela",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96955,
				},
				[262652] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[288752] = {
					["source"] = "Forsaken Deathguard",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144878,
				},
				[8122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vyrotsqt-Darkspear",
					["npcID"] = 0,
				},
				[270330] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Azerite Chunk",
					["npcID"] = 137661,
				},
				[1022] = {
					["source"] = "Vælør-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197919] = {
					["source"] = "Kelthos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Saafir",
					["npcID"] = 0,
				},
				[8212] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sysenter-Darkspear",
					["npcID"] = 0,
				},
				[108843] = {
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2118,
				},
				[121253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[49576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[272381] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akunda's Bite Sapling",
					["npcID"] = 137618,
				},
				[272893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[112042] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 1860,
				},
				[66] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[260355] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Umbra'jin",
					["npcID"] = 122004,
				},
				[193316] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[262149] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Atal'zul Executioner",
					["npcID"] = 133175,
				},
				[2139] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[194084] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[122278] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[55078] = {
					["source"] = "Dad-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247563] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elrris-Darkspear",
					["npcID"] = 0,
				},
				[233490] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[254472] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cridious",
					["npcID"] = 0,
				},
				[43308] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deathfiend-Nathrezim",
					["npcID"] = 0,
				},
				[271877] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[289277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Milkykitty-Lightbringer",
					["npcID"] = 0,
				},
				[1122] = {
					["source"] = "Thugra-Uther",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[254474] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dohaan",
					["npcID"] = 0,
				},
				[282116] = {
					["source"] = "Druid of the Branch",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144971,
				},
				[193065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chewey-Tichondrius",
					["npcID"] = 0,
				},
				[77758] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mythictaco",
					["npcID"] = 0,
				},
				[289283] = {
					["source"] = "Farmertran",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[274443] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[269838] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2123,
				},
				[184367] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[203814] = {
					["source"] = "Fylvanas-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[233496] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[31290] = {
					["source"] = "Darkscale Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144849,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deathfiend-Nathrezim",
					["npcID"] = 0,
				},
				[273935] = {
					["source"] = "Vesli-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[256014] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodhunter Drudge",
					["npcID"] = 124547,
				},
				[178740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[269843] = {
					["npcID"] = 133007,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unbound Abomination",
					["encounterID"] = 2123,
				},
				[285196] = {
					["source"] = "Thugra-Uther",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[92089] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[225822] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arq-Nordrassil",
					["npcID"] = 0,
				},
				[267798] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cridious",
					["npcID"] = 0,
				},
				[267799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cridious",
					["npcID"] = 0,
				},
				[107570] = {
					["source"] = "Pheanor-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116014] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[266265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fallen Deathspeaker",
					["npcID"] = 134284,
				},
				[77505] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[48108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[96312] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Latinomixi",
					["npcID"] = 0,
				},
				[33907] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Broll Bearmantle",
					["npcID"] = 142294,
				},
				[119085] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moogie-Bonechewer",
					["npcID"] = 0,
				},
				[271896] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[92730] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jrozies",
					["npcID"] = 0,
				},
				[134477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 17252,
				},
				[225313] = {
					["source"] = "Dark Ranger Velonara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148479,
				},
				[236060] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[228128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Aphyxiation-Tichondrius",
					["npcID"] = 0,
				},
				[108211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Selinn-Boulderfist",
					["npcID"] = 0,
				},
				[275481] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[77762] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Heatedsack-Nesingwary",
					["npcID"] = 0,
				},
				[260881] = {
					["source"] = "Hornk",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33076] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160067] = {
					["source"] = "Jungleweb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136341,
				},
				[272414] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akunda's Bite Sapling",
					["npcID"] = 137618,
				},
				[197937] = {
					["source"] = "Daltina-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Daltina-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[287256] = {
					["source"] = "Boomshot Specialist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148164,
				},
				[288281] = {
					["source"] = "Kaldorei Huntress",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144972,
				},
				[243996] = {
					["source"] = "Fireburst-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nasargiel",
					["npcID"] = 0,
				},
				[31707] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Water Elemental",
					["npcID"] = 78116,
				},
				[108853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[14914] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280608] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[289308] = {
					["source"] = "Morynia-WyrmrestAccord",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sethrak Warden",
					["npcID"] = 136546,
				},
				[107574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[30108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[265258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chewey-Tichondrius",
					["npcID"] = 0,
				},
				[155722] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[250140] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fuoco-Nordrassil",
					["npcID"] = 0,
				},
				[288800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[191034] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sertroz-Arthas",
					["npcID"] = 0,
				},
				[290337] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[204596] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2823] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Selinn-Boulderfist",
					["npcID"] = 0,
				},
				[18562] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[272940] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fuoco-Nordrassil",
					["npcID"] = 0,
				},
				[160331] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kabuches-Blackrock",
					["npcID"] = 0,
				},
				[199736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[204598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[165961] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[271920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[36213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Earth Elemental",
					["npcID"] = 61056,
				},
				[264757] = {
					["npcID"] = 131318,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elder Leaxa",
					["encounterID"] = 2111,
				},
				[1464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[61353] = {
					["source"] = "Dagna Flintlock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 96779,
				},
				[263224] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warmother Boatema",
					["npcID"] = 123328,
				},
				[222256] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[195901] = {
					["source"] = "Agihor-Illidan",
					["type"] = "DEBUFF",
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
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[2983] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reintox-Tichondrius",
					["npcID"] = 0,
				},
				[190784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cridious",
					["npcID"] = 0,
				},
				[287790] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bipolarbearr-Boulderfist",
					["npcID"] = 0,
				},
				[260894] = {
					["npcID"] = 131318,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Elder Leaxa",
					["encounterID"] = 2111,
				},
				[169291] = {
					["source"] = "ßélle-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273974] = {
					["source"] = "Economic-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194879] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigbadbill-Akama",
					["npcID"] = 0,
				},
				[218164] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[264764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Killababe",
					["npcID"] = 0,
				},
				[278070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[279606] = {
					["source"] = "Unknown",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 26125,
				},
				[69070] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Preest-Cenarius",
					["npcID"] = 0,
				},
				[176458] = {
					["source"] = "Blacksmithing Follower - Horde",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88402,
				},
				[183111] = {
					["source"] = "Kirin Tor Guardian",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 104091,
				},
				[280121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arq-Nordrassil",
					["npcID"] = 0,
				},
				[269887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deadhuntery-Uldum",
					["npcID"] = 0,
				},
				[280634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kostin-Darkspear",
					["npcID"] = 0,
				},
				[277564] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Underrot Tick",
					["npcID"] = 131402,
				},
				[280635] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deadhuntery-Uldum",
					["npcID"] = 0,
				},
				[141917] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fuoco-Nordrassil",
					["npcID"] = 0,
				},
				[89158] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dohaan",
					["npcID"] = 0,
				},
				[101568] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigbadbill-Akama",
					["npcID"] = 0,
				},
				[277567] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spawn of G'huun",
					["npcID"] = 141851,
				},
				[290361] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brewdicke",
					["npcID"] = 0,
				},
				[187464] = {
					["source"] = "Tosh",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[100] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[235313] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Atal'zul Assassin",
					["npcID"] = 132618,
				},
				[175439] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigbadbill-Akama",
					["npcID"] = 0,
				},
				[288829] = {
					["source"] = "Daltina-Blackhand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264777] = {
					["source"] = "Heyana",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[126389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Resurwrecked-Daggerspine",
					["npcID"] = 0,
				},
				[264778] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ownahge-Darkspear",
					["npcID"] = 0,
				},
				[127797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[273992] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[272457] = {
					["npcID"] = 131383,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sporecaller Zancha",
					["encounterID"] = 2112,
				},
				[212800] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[205636] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Iko",
					["npcID"] = 0,
				},
				[51505] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Saafir",
					["npcID"] = 0,
				},
				[1680] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[196937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[207684] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6788] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Blessedheals-Tichondrius",
					["npcID"] = 0,
				},
				[271440] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Cannoneer",
					["npcID"] = 128442,
				},
				[207685] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[119611] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[206662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gendrel",
					["npcID"] = 0,
				},
				[19236] = {
					["source"] = "Yellowy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17253] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hyena",
					["npcID"] = 134744,
				},
				[133994] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cloverhoney-Shadowsong",
					["npcID"] = 0,
				},
				[199754] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[206151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[271443] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Shady Deckhand",
					["npcID"] = 128617,
				},
				[262232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[47540] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[272469] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Abyssal Reach",
					["npcID"] = 138538,
				},
				[268887] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[141928] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fuoco-Nordrassil",
					["npcID"] = 0,
				},
				[203850] = {
					["source"] = "Tyreke-Blackrock",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116670] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Voso",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1776] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[194384] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cokepriest-Darkspear",
					["npcID"] = 0,
				},
				[188499] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[275544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cokeheals-Tichondrius",
					["npcID"] = 0,
				},
				[24450] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "LilBiitch",
					["npcID"] = 94196,
				},
				[203852] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Creator-Mug'thol",
					["npcID"] = 0,
				},
				[289362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[277592] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Chaka the Infused",
					["npcID"] = 137663,
				},
				[102342] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[215111] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dreadstalker",
					["npcID"] = 98035,
				},
				[268893] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[277593] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chaka the Infused",
					["npcID"] = 137663,
				},
				[205644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Treant",
					["npcID"] = 103822,
				},
				[86606] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krolusk Sandhunter",
					["npcID"] = 135582,
				},
				[268894] = {
					["source"] = "Belandriá",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[78674] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Iko",
					["npcID"] = 0,
				},
				[225603] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 0,
				},
				[5221] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[1822] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[16870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[278108] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[48181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[268897] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Pyroshot",
					["npcID"] = 0,
				},
				[207693] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[284762] = {
					["source"] = "Felwind-Galakrond",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[278110] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[8599] = {
					["source"] = "Darkscale Myrmidon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146596,
				},
				[117952] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[1850] = {
					["source"] = "Voso",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reintox-Tichondrius",
					["npcID"] = 0,
				},
				[51124] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Abarsis-Suramar",
					["npcID"] = 0,
				},
				[289371] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[205648] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[31935] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[287837] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[268905] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[106951] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[121536] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[223306] = {
					["source"] = "Vælør-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221771] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[156779] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nosao-Hyjal",
					["npcID"] = 0,
				},
				[120] = {
					["source"] = "Morynia-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[206931] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20549] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[223819] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cysis-Hyjal",
					["npcID"] = 0,
				},
				[211793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[129597] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[11366] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[285798] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[152175] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[197721] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[122] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[275054] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109128] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[1966] = {
					["source"] = "Crince-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261947] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[117828] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Raklocks-Ner'zhul",
					["npcID"] = 0,
				},
				[287338] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Abarsis-Suramar",
					["npcID"] = 0,
				},
				[246851] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[279151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[49143] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Abarsis-Suramar",
					["npcID"] = 0,
				},
				[279152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[279664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Vanquished Tendril of G'huun",
					["npcID"] = 143520,
				},
				[279153] = {
					["source"] = "Pheanor-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mizael",
					["npcID"] = 0,
				},
				[19750] = {
					["source"] = "Eraice-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17735] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ormgarth",
					["npcID"] = 1860,
				},
				[191840] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214613] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Silverback Thumpknuckle",
					["npcID"] = 130543,
				},
				[205146] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[199261] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nosao-Hyjal",
					["npcID"] = 0,
				},
				[284275] = {
					["source"] = "Brianthedog-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244040] = {
					["source"] = "Fireburst-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263806] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Saafir",
					["npcID"] = 0,
				},
				[255299] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Natha'vor Cannibal",
					["npcID"] = 124688,
				},
				[12294] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[279160] = {
					["source"] = "Tikktok",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Chewey-Tichondrius",
					["npcID"] = 0,
				},
				[130] = {
					["source"] = "Heartrot",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105421] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[281209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khamal-Boulderfist",
					["npcID"] = 0,
				},
				[258883] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[116680] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2120] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[279164] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moogie-Bonechewer",
					["npcID"] = 0,
				},
				[259140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[281724] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278143] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wayllo-Mal'Ganis",
					["npcID"] = 0,
				},
				[114250] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Amuri-Suramar",
					["npcID"] = 0,
				},
				[8680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jabberjaw-Sargeras",
					["npcID"] = 0,
				},
				[278144] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[106830] = {
					["source"] = "Kawahe-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212061] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Atal'zul Assassin",
					["npcID"] = 132618,
				},
				[279169] = {
					["source"] = "Tikktok",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190824] = {
					["source"] = "Lisonna-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118345] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Earth Elemental",
					["npcID"] = 61056,
				},
				[8936] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[108366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[229206] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ehlphaba",
					["npcID"] = 0,
				},
				[280709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[34433] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[55095] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[185709] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[192106] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moarwolves-Boulderfist",
					["npcID"] = 0,
				},
				[268429] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[90328] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 110340,
				},
				[179057] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[185710] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[64843] = {
					["source"] = "Yellowy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57846] = {
					["source"] = "Darkscale Myrmidon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146596,
				},
				[280713] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[91352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[265533] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Underrot Tick",
					["npcID"] = 131402,
				},
				[278155] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[73313] = {
					["source"] = "Dopamin-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77535] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264173] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[278156] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[289073] = {
					["source"] = "Vile Screecher",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148898,
				},
				[278326] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[213602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tmrhyno-Tichondrius",
					["npcID"] = 0,
				},
				[280204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cridious",
					["npcID"] = 0,
				},
				[270481] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Demonic Tyrant",
					["npcID"] = 135002,
				},
				[102416] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1066] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zehkan-Tichondrius",
					["npcID"] = 0,
				},
				[288877] = {
					["source"] = "Pheanor-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[148540] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13750] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[278159] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[169081] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bobcasio-Bloodscalp",
					["npcID"] = 0,
				},
				[126664] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[262538] = {
					["source"] = "Forsaken Lancer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144877,
				},
				[190319] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[182387] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[82326] = {
					["source"] = "Vælør-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260685] = {
					["type"] = "DEBUFF",
					["source"] = "Elder Leaxa",
					["npcID"] = 131318,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2111,
				},
				[281000] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[167105] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[202090] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pqq-Crushridge",
					["npcID"] = 0,
				},
				[202602] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhayze-Bloodscalp",
					["npcID"] = 0,
				},
				[268439] = {
					["source"] = "Fireburst-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6016] = {
					["source"] = "Darkscale Dig-Slave",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146401,
				},
				[195182] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116011] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[740] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[115008] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Moogie-Bonechewer",
					["npcID"] = 0,
				},
				[193315] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[282258] = {
					["source"] = "Lookatmoi-Caelestrasz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196718] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[268953] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[278383] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115151] = {
					["source"] = "Wonton-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260834] = {
					["source"] = "Forsaken Deathguard",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144878,
				},
				[268954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[207472] = {
					["source"] = "Sendrena-Hakkar",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284307] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rampage",
					["npcID"] = 0,
				},
				[195630] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[93402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[203539] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vcap-Tichondrius",
					["npcID"] = 0,
				},
				[1784] = {
					["source"] = "Trinketsap-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[268956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[261712] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "War Krolusk",
					["npcID"] = 136548,
				},
				[282262] = {
					["source"] = "Carthias-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288044] = {
					["source"] = "Kaldorei Glaive Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145303,
				},
				[108238] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Envok",
					["npcID"] = 0,
				},
				[185123] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[80353] = {
					["npcID"] = 0,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["encounterID"] = 2111,
				},
				[264352] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tattersaìl-Tichondrius",
					["npcID"] = 0,
				},
				[281240] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tira-Spirestone",
					["npcID"] = 0,
				},
				[265376] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fanatical Headhunter",
					["npcID"] = 133663,
				},
				[279185] = {
					["source"] = "Shredder Technician",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146072,
				},
				[35395] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[273714] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265377] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fanatical Headhunter",
					["npcID"] = 133663,
				},
				[282265] = {
					["source"] = "Morynia-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224772] = {
					["source"] = "Kelyra-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84963] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cridious",
					["npcID"] = 0,
				},
				[257620] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Poisonshoot-Mal'Ganis",
					["npcID"] = 0,
				},
				[276125] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sertroz-Arthas",
					["npcID"] = 0,
				},
				[139] = {
					["source"] = "Yellowy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277149] = {
					["source"] = "Zaethe-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[234153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[276126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[44535] = {
					["source"] = "Pheanor-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[279709] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anitahanjob-Tichondrius",
					["npcID"] = 0,
				},
				[276127] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gertlook-Hyjal",
					["npcID"] = 0,
				},
				[113746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[277151] = {
					["source"] = "Zaethe-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5211] = {
					["source"] = "Kawahe-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290464] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[119582] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[273058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Marisa-BoreanTundra",
					["npcID"] = 0,
				},
				[257622] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poisonshoot-Mal'Ganis",
					["npcID"] = 0,
				},
				[284702] = {
					["source"] = "Darkscale Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144849,
				},
				[280735] = {
					["source"] = "Grandchief-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131476] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dunnhele",
					["npcID"] = 0,
				},
				[284713] = {
					["source"] = "Darkscale Siren",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144850,
				},
				[276130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[12654] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[277154] = {
					["source"] = "Zaethe-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[224871] = {
					["source"] = "Hexxer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[188443] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wartide",
					["npcID"] = 0,
				},
				[183081] = {
					["source"] = "Darkscale Siren",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144850,
				},
				[282692] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 144850,
				},
				[285855] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[138130] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Earth Spirit",
					["npcID"] = 69792,
				},
				[8921] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[172] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Servile-Chromaggus",
					["npcID"] = 0,
				},
				[279715] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[228928] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 149096,
				},
				[274598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[277157] = {
					["source"] = "Zaethe-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[215661] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[132169] = {
					["source"] = "Pheanor-Illidan",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[125056] = {
					["source"] = "Jungleweb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136341,
				},
				[277158] = {
					["source"] = "Zaethe-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97116] = {
					["source"] = "Spicy-Bloodscalp",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Hyena",
					["npcID"] = 134744,
				},
				[162794] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[269310] = {
					["npcID"] = 134419,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Titan Keeper Hezrel",
					["encounterID"] = 2123,
				},
				[15286] = {
					["source"] = "Carthias-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276136] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sunarun-Hyjal",
					["npcID"] = 0,
				},
				[276139] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[218803] = {
					["source"] = "Archdruid Andrenius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148618,
				},
				[276137] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sertroz-Arthas",
					["npcID"] = 0,
				},
				[22568] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[106839] = {
					["source"] = "Kawahe-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[15487] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276138] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gertlook-Hyjal",
					["npcID"] = 0,
				},
				[236645] = {
					["source"] = "Hexxer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268756] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[11426] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Serenit-Hyjal",
					["npcID"] = 0,
				},
				[282280] = {
					["source"] = "Felwind-Galakrond",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[216695] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Souri-Shadowsong",
					["npcID"] = 0,
				},
				[255074] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ripsoul",
					["npcID"] = 0,
				},
				[22888] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290469] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skaarjdk-Darkspear",
					["npcID"] = 0,
				},
				[280746] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ðetõx-Tichondrius",
					["npcID"] = 0,
				},
				[204843] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256456] = {
					["source"] = "Scire-Malorne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282282] = {
					["source"] = "Carthias-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217200] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[5782] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[288613] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[276142] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188034] = {
					["source"] = "Bloodabuse-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2908] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[32612] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[276143] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34428] = {
					["source"] = "Grandchief-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255131] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brewdicke",
					["npcID"] = 0,
				},
				[157331] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Storm Elemental",
					["npcID"] = 77942,
				},
				[2050] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288433] = {
					["source"] = "Worgen Musketeer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145865,
				},
				[64044] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[19434] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[2948] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[204883] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[247454] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[348] = {
					["source"] = "Thugra-Uther",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272052] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Akunda's Bite Sapling",
					["npcID"] = 137618,
				},
				[196447] = {
					["source"] = "Thugra-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2111,
				},
				[188033] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jinroh",
					["npcID"] = 0,
				},
				[190336] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[123986] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[273947] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274838] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274837] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[198013] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[12024] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dorj",
					["npcID"] = 125091,
				},
				[30213] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Klekzeras",
					["npcID"] = 17252,
				},
				[278388] = {
					["source"] = "Felwind-Galakrond",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204157] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[283826] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274105] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288944] = {
					["source"] = "Zaerallis-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225289] = {
					["source"] = "Dark Ranger Velonara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148479,
				},
				[255937] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cysis-Hyjal",
					["npcID"] = 0,
				},
				[58875] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Moarwolves-Boulderfist",
					["npcID"] = 0,
				},
				[20707] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[188290] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[81256] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209785] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cysis-Hyjal",
					["npcID"] = 0,
				},
				[203720] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203819] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[283829] = {
					["source"] = "Wonton-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[79849] = {
					["source"] = "Gija",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47248,
				},
				[256099] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Root-Hexxer Ib'aka",
					["npcID"] = 131596,
				},
				[289459] = {
					["source"] = "Nevara Nightshade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146485,
				},
				[188089] = {
					["source"] = "Fireburst-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[195457] = {
					["source"] = "Darkscare-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255076] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kokahiena",
					["npcID"] = 0,
				},
				[57724] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Igethitalot-Tichondrius",
					["npcID"] = 0,
				},
				[61882] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Wartide",
					["npcID"] = 0,
				},
				[280177] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[61684] = {
					["source"] = "Jungleweb",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136341,
				},
				[2649] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Unknown",
					["npcID"] = 66668,
				},
				[271550] = {
					["source"] = "Zaerallis-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265511] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Spirit Drain Totem",
					["npcID"] = 135169,
				},
				[8092] = {
					["source"] = "Carthias-Aegwynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[53209] = {
					["source"] = "Ragnash-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288539] = {
					["source"] = "Druid of the Claw",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146770,
				},
				[191837] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277181] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Anitahanjob-Tichondrius",
					["npcID"] = 0,
				},
				[283834] = {
					["source"] = "Felwind-Galakrond",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270017] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Enforcer",
					["npcID"] = 124635,
				},
				[261716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faithless Centurion",
					["npcID"] = 129774,
				},
				[216441] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Atuns-Dragonmaw",
					["npcID"] = 0,
				},
				[274431] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rhyechu",
					["npcID"] = 0,
				},
				[265931] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Raklocks-Ner'zhul",
					["npcID"] = 0,
				},
				[65081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blessedheals-Tichondrius",
					["npcID"] = 0,
				},
				[285979] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deathfiend-Nathrezim",
					["npcID"] = 0,
				},
				[260708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[12472] = {
					["source"] = "Morynia-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274426] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261866] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Deckhand",
					["npcID"] = 124697,
				},
				[259732] = {
					["npcID"] = 131383,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sporecaller Zancha",
					["encounterID"] = 2112,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spellbender-Smolderthorn",
					["npcID"] = 0,
				},
				[284861] = {
					["source"] = "Forsaken Blight Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146647,
				},
				[277185] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liadryn",
					["npcID"] = 0,
				},
				[88423] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[115313] = {
					["source"] = "Wonton-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268899] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[268998] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[115546] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[270022] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Silverback Thumpknuckle",
					["npcID"] = 130543,
				},
				[257642] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethrak Ravager",
					["npcID"] = 136545,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kahlan-Stonemaul",
					["npcID"] = 0,
				},
				[283840] = {
					["source"] = "Wonton-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[207744] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[278862] = {
					["source"] = "Morynia-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dune Louse",
					["npcID"] = 124029,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2118,
				},
				[202028] = {
					["source"] = "Kawahe-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260455] = {
					["npcID"] = 132051,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blood Tick",
					["encounterID"] = 2118,
				},
				[281795] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Pyrillis",
					["npcID"] = 0,
				},
				[258920] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[50259] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[84714] = {
					["source"] = "Morynia-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115804] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[60103] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[280773] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[176277] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271448] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Overseer",
					["npcID"] = 124667,
				},
				[32645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[124503] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[120517] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[255595] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Krolusk Sandhunter",
					["npcID"] = 135582,
				},
				[277201] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethrak Warden",
					["npcID"] = 136546,
				},
				[232633] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271445] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Redrock Laborer",
					["npcID"] = 128444,
				},
				[201350] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rant",
					["npcID"] = 0,
				},
				[179089] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dreadcoil Myrmidon",
					["npcID"] = 125037,
				},
				[781] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Theotino",
					["npcID"] = 0,
				},
				[197214] = {
					["source"] = "Fireburst-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[214621] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[186254] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[256108] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodhunter Stalker",
					["npcID"] = 122239,
				},
				[289043] = {
					["source"] = "Kaldorei Chimaera",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148940,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tattersaìl-Tichondrius",
					["npcID"] = 0,
				},
				[193357] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[186257] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Theotino",
					["npcID"] = 0,
				},
				[85739] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[289483] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[208772] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[101643] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Viicck-Tichondrius",
					["npcID"] = 0,
				},
				[137639] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[3408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Selinn-Boulderfist",
					["npcID"] = 0,
				},
				[79206] = {
					["source"] = "Fearfactory-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272592] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faceless Corruptor",
					["npcID"] = 138281,
				},
				[143625] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deathfiend-Nathrezim",
					["npcID"] = 0,
				},
				[273977] = {
					["source"] = "Dad-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43265] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288969] = {
					["source"] = "Nevara Nightshade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146485,
				},
				[205191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cysis-Hyjal",
					["npcID"] = 0,
				},
				[81262] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Efflorescence",
					["npcID"] = 47649,
				},
				[224126] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elemental Raptor",
					["npcID"] = 100820,
				},
				[41635] = {
					["source"] = "Yellowy",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[261488] = {
					["source"] = "Nevara Nightshade",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146485,
				},
				[139176] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Twelve",
					["npcID"] = 0,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xerexis-Darrowmere",
					["npcID"] = 0,
				},
				[156064] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deadhuntery-Uldum",
					["npcID"] = 0,
				},
				[205448] = {
					["source"] = "Daltina-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Luvleyone",
					["npcID"] = 0,
				},
				[228477] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[262161] = {
					["source"] = "Pheanor-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288343] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Theotino",
					["npcID"] = 0,
				},
				[8042] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Saafir",
					["npcID"] = 0,
				},
				[267612] = {
					["source"] = "Zaerallis-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225919] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[278227] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[124506] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[30151] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Klekzeras",
					["npcID"] = 17252,
				},
				[232893] = {
					["source"] = "Zaerallis-BleedingHollow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271581] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Amuri-Suramar",
					["npcID"] = 0,
				},
				[245686] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hît-Silvermoon",
					["npcID"] = 0,
				},
				[278359] = {
					["source"] = "Thugra-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80240] = {
					["source"] = "Thugra-Uther",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290004] = {
					["source"] = "Daltina-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190356] = {
					["source"] = "Morynia-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[265954] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Reionas-BleedingHollow",
					["npcID"] = 0,
				},
				[288043] = {
					["source"] = "Kaldorei Glaive Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 145303,
				},
				[197003] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Hahot-Tichondrius",
					["npcID"] = 0,
				},
				[44614] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[276189] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liadryn",
					["npcID"] = 0,
				},
				[225921] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[272090] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[191634] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[49028] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61295] = {
					["source"] = "Cowdra-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19574] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[288524] = {
					["source"] = "Kaldorei Huntress",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144972,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267486] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Trolljuice-Darkspear",
					["npcID"] = 0,
				},
				[205708] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[276191] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[289492] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[157348] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Primal Storm Elemental",
					["npcID"] = 77942,
				},
				[276187] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Narkzul",
					["npcID"] = 0,
				},
				[277153] = {
					["source"] = "Zaethe-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[41425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[5215] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[276188] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225604] = {
					["source"] = "Blackclouds-Crushridge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271071] = {
					["source"] = "Carthias-Aegwynn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116705] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[186263] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Freeguwop-Tichondrius",
					["npcID"] = 0,
				},
				[287280] = {
					["source"] = "Vælør-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156070] = {
					["source"] = "Jagameister-Bonechewer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[282381] = {
					["source"] = "Kaldorei Sentinel",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144973,
				},
				[276190] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Narkzul",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Vælør-Darkspear",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45438] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[642] = {
					["source"] = "Eraice-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87023] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2118,
				},
				[272609] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faceless Corruptor",
					["npcID"] = 138281,
				},
				[156071] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[147833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scrap-Korgath",
					["npcID"] = 0,
				},
				[280286] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Anitahanjob-Tichondrius",
					["npcID"] = 0,
				},
				[255095] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Merehn-Bladefist",
					["npcID"] = 0,
				},
				[52174] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Nosao-Hyjal",
					["npcID"] = 0,
				},
				[23881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[3716] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ormgarth",
					["npcID"] = 1860,
				},
				[277943] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Saafir",
					["npcID"] = 0,
				},
				[212799] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tattersaìl-Tichondrius",
					["npcID"] = 0,
				},
				[176798] = {
					["source"] = "Zenra-Nordrassil",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[268518] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Luvleyone",
					["npcID"] = 0,
				},
				[270846] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scorpashi Direclaw",
					["npcID"] = 125882,
				},
				[116] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[87024] = {
					["type"] = "DEBUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2118,
				},
				[192226] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liquid Magma Totem",
					["npcID"] = 97369,
				},
				[133] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[290013] = {
					["source"] = "Daltina-Blackhand",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276140] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ryañ-Boulderfist",
					["npcID"] = 0,
				},
				[69369] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Naenow-Tichondrius",
					["npcID"] = 0,
				},
				[278244] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ehlphaba",
					["npcID"] = 0,
				},
				[53365] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[96231] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Amuri-Suramar",
					["npcID"] = 0,
				},
				[273226] = {
					["npcID"] = 0,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2112,
				},
				[223202] = {
					["source"] = "Tàl",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264681] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Umbra'jin",
					["npcID"] = 122004,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tarö-Frostmane",
					["npcID"] = 0,
				},
				[45053] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Abarsis-Suramar",
					["npcID"] = 0,
				},
				[270058] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deathfiend-Nathrezim",
					["npcID"] = 0,
				},
				[207203] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigbadbill-Akama",
					["npcID"] = 0,
				},
				[107428] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[219788] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185245] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154796] = {
					["source"] = "Kelyra-Daggerspine",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196941] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[265273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[285978] = {
					["source"] = "Musculate-Firetree",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279584] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[265742] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Gendrel",
					["npcID"] = 0,
				},
				[25771] = {
					["source"] = "Eraice-Frostwolf",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278249] = {
					["source"] = "Ragnash-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259454] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Decisionz-Winterhoof",
					["npcID"] = 0,
				},
				[108271] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[184662] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cridious",
					["npcID"] = 0,
				},
				[276211] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Narkzul",
					["npcID"] = 0,
				},
				[183585] = {
					["source"] = "Lightsworn Anchorite",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 109751,
				},
				[81141] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279302] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Abarsis-Suramar",
					["npcID"] = 0,
				},
				[276204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Indizzle",
					["npcID"] = 0,
				},
				[255101] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Decimation-Darkspear",
					["npcID"] = 0,
				},
				[124007] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Xuen",
					["npcID"] = 63508,
				},
				[212552] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thogar",
					["npcID"] = 0,
				},
				[276205] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[270576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[113942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Xandyn",
					["npcID"] = 0,
				},
				[248705] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 124667,
				},
				[256453] = {
					["source"] = "Drunkfgt-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279277] = {
					["source"] = "Forsaken Blight Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146647,
				},
				[257161] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Faithless Stalker",
					["npcID"] = 129647,
				},
				[276207] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Narkzul",
					["npcID"] = 0,
				},
				[123725] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[156079] = {
					["source"] = "Becauseican",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157982] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[276208] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poisonshoot-Mal'Ganis",
					["npcID"] = 0,
				},
				[278767] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[202137] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279303] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Abarsis-Suramar",
					["npcID"] = 0,
				},
				[276209] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[32064] = {
					["source"] = "Vengeance Bringer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 23865,
				},
				[196608] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dabuddhabear",
					["npcID"] = 0,
				},
				[213652] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Haxxorwyn-Dragonmaw",
					["npcID"] = 0,
				},
				[276210] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[202138] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198300] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[270070] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Layzy",
					["npcID"] = 0,
				},
				[280817] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Ijon-Area52",
					["npcID"] = 0,
				},
				[267558] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rustyjin-Hyjal",
					["npcID"] = 0,
				},
				[197277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[62061] = {
					["source"] = "Lottiedaa",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162264] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[185763] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[260879] = {
					["npcID"] = 134701,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Blood Effigy",
					["encounterID"] = 2111,
				},
				[272119] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sömeone-Uldum",
					["npcID"] = 0,
				},
				[279810] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Luvleyone",
					["npcID"] = 0,
				},
				[205766] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[84342] = {
					["source"] = "Thugra-Uther",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[115175] = {
					["source"] = "Wonton-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257044] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[202140] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Irondemon-Draka",
					["npcID"] = 0,
				},
				[185562] = {
					["source"] = "Mauldor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259718] = {
					["npcID"] = 131383,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sporecaller Zancha",
					["encounterID"] = 2112,
				},
				[270588] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frenzied Thresher",
					["npcID"] = 125082,
				},
				[2061] = {
					["source"] = "Yellowy",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[119381] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[258945] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Fangcaller Xorreth",
					["npcID"] = 136323,
				},
				[273232] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[257410] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bbhammer-Blackrock",
					["npcID"] = 0,
				},
				[34767] = {
					["source"] = "Salanar-Stonemaul",
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
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Abarsis-Suramar",
					["npcID"] = 0,
				},
				[227729] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Brujobobby",
					["npcID"] = 0,
				},
				[51399] = {
					["source"] = "Dad-Stormscale",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["source"] = "Prisstà-Cairne",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261477] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Faithless Dervish",
					["npcID"] = 129652,
				},
				[277242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Fetid Maggot",
					["npcID"] = 130909,
				},
				[198304] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Scrap-Korgath",
					["npcID"] = 0,
				},
				[48265] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[281854] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[164273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lukesama-Arthas",
					["npcID"] = 0,
				},
				[58180] = {
					["source"] = "Kawahe-EmeraldDream",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270591] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Frenzied Thresher",
					["npcID"] = 125082,
				},
				[17] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Blessedheals-Tichondrius",
					["npcID"] = 0,
				},
				[29893] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[245388] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[196770] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[129250] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[131474] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dunnhele",
					["npcID"] = 0,
				},
				[272128] = {
					["source"] = "Rikgrimz-Hyjal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20572] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[264964] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mooltishawt",
					["npcID"] = 0,
				},
				[202188] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[6343] = {
					["source"] = "Mentah",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[271105] = {
					["source"] = "Lookatmoi-Caelestrasz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1079] = {
					["source"] = "Kawahe-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269571] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liadryn",
					["npcID"] = 0,
				},
				[5740] = {
					["source"] = "Thugra-Uther",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[122470] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[271107] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[261764] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mavry-Cenarius",
					["npcID"] = 0,
				},
				[236430] = {
					["source"] = "Zimzeexonia-Kilrogg",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116841] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[289324] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Typhoss-EmeraldDream",
					["npcID"] = 0,
				},
				[5697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Raoulskii-Darkspear",
					["npcID"] = 0,
				},
				[115178] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[162997] = {
					["source"] = "Hamsterhash",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nosao-Hyjal",
					["npcID"] = 0,
				},
				[245389] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[288509] = {
					["source"] = "Lexaria-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270598] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Savage Fathomjaw",
					["npcID"] = 130916,
				},
				[213405] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Illiril-Antonidas",
					["npcID"] = 0,
				},
				[205473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[267288] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Earthen Ring Shaman",
					["npcID"] = 135671,
				},
				[199844] = {
					["source"] = "Morynia-WyrmrestAccord",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[269576] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[259455] = {
					["source"] = "Bojjo-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255194] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 128617,
				},
				[34026] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[59052] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Bigbadbill-Akama",
					["npcID"] = 0,
				},
				[279793] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[278789] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27576] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[121557] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[159673] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Faindru",
					["npcID"] = 0,
				},
				[20271] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[48778] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Sohmek",
					["npcID"] = 0,
				},
				[265091] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Devout Blood Priest",
					["npcID"] = 131492,
				},
				[224869] = {
					["source"] = "Takeherdown-Blackrock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[289026] = {
					["source"] = "Vile Screecher",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148898,
				},
				[271115] = {
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2111,
				},
				[276206] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257408] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Missyrat-Hyjal",
					["npcID"] = 0,
				},
				[556] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Proficíent",
					["npcID"] = 0,
				},
				[63619] = {
					["source"] = "Shadowfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[265487] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodsworn Defiler",
					["npcID"] = 133912,
				},
				[257418] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Zeromau",
					["npcID"] = 0,
				},
				[115308] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[204197] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[283911] = {
					["source"] = "Asithra Diresong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144765,
				},
				[30146] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[119914] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[104773] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[260793] = {
					["npcID"] = 131817,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Cragmaw the Infested",
					["encounterID"] = 2118,
				},
				[124121] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Shockdathird-BleedingHollow",
					["npcID"] = 0,
				},
				[283876] = {
					["source"] = "High-Explosive Bomb",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146054,
				},
				[257420] = {
					["source"] = "Narose-Spirestone",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212653] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Serenit-Hyjal",
					["npcID"] = 0,
				},
				[264760] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skaarjdk-Darkspear",
					["npcID"] = 0,
				},
				[116844] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[264761] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ripsoul",
					["npcID"] = 0,
				},
				[228287] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[115181] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[288803] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[272180] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Grotesque Horror",
					["npcID"] = 138187,
				},
				[290056] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146678,
				},
				[5116] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Poisonshoot-Mal'Ganis",
					["npcID"] = 0,
				},
				[124009] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xuen",
					["npcID"] = 63508,
				},
				[184575] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Liadryn",
					["npcID"] = 0,
				},
				[266209] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Fallen Deathspeaker",
					["npcID"] = 134284,
				},
				[250769] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Thieving Snapper",
					["npcID"] = 126331,
				},
				[212040] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[257422] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Elemenohpee-Uldum",
					["npcID"] = 0,
				},
				[157375] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Primal Storm Elemental",
					["npcID"] = 77942,
				},
				[278288] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Indizzle",
					["npcID"] = 0,
				},
				[193530] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Luvleyone",
					["npcID"] = 0,
				},
				[53385] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[283918] = {
					["source"] = "Asithra Diresong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144765,
				},
				[197548] = {
					["source"] = "Shadarlogoth-Eldre'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115310] = {
					["source"] = "Wonton-Bloodhoof",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281402] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[261773] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sethrak Warbringer",
					["npcID"] = 136547,
				},
				[32752] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[100784] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[257284] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[273685] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193455] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[3409] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Jabberjaw-Sargeras",
					["npcID"] = 0,
				},
				[257424] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Parrotdh",
					["npcID"] = 0,
				},
				[290165] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278231] = {
					["source"] = "Lookatmoi-Caelestrasz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281178] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[30283] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[152108] = {
					["source"] = "Thugra-Uther",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[200196] = {
					["source"] = "Yellowy",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289999] = {
					["source"] = "Ragnash-Tichondrius",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187827] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33697] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Saafir",
					["npcID"] = 0,
				},
				[268856] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[289997] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[51714] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tystin-Spirestone",
					["npcID"] = 0,
				},
				[44544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Smellyone-Thrall",
					["npcID"] = 0,
				},
				[199854] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[26573] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Haxxorwyn-Dragonmaw",
					["npcID"] = 0,
				},
				[252216] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drakkzul",
					["npcID"] = 0,
				},
				[271449] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Ashvane Overseer",
					["npcID"] = 124667,
				},
				[116847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[269085] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258925] = {
					["source"] = "Zaerallis-BleedingHollow",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211881] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[22703] = {
					["source"] = "Thugra-Uther",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[49020] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[280780] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Skylah-Darkspear",
					["npcID"] = 0,
				},
				[51723] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[260242] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Salystanna",
					["npcID"] = 0,
				},
				[271451] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Redrock Laborer",
					["npcID"] = 125307,
				},
				[164545] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Víðarr-Eitrigg",
					["npcID"] = 0,
				},
				[199600] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[269406] = {
					["npcID"] = 134419,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Titan Keeper Hezrel",
					["encounterID"] = 2123,
				},
				[198065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tattersaìl-Tichondrius",
					["npcID"] = 0,
				},
				[285976] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Khalesse-EchoIsles",
					["npcID"] = 0,
				},
				[288535] = {
					["source"] = "Druid of the Claw",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 146769,
				},
				[289047] = {
					["source"] = "Kaldorei Chimaera",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148940,
				},
				[162243] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Umbrano-Misha",
					["npcID"] = 0,
				},
				[2645] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Heatedsack-Nesingwary",
					["npcID"] = 0,
				},
				[289048] = {
					["source"] = "Kaldorei Chimaera",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 148940,
				},
				[49376] = {
					["source"] = "Kawahe-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1329] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Zhouge-Area52",
					["npcID"] = 0,
				},
				[288537] = {
					["source"] = "Druid of the Claw",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146769,
				},
				[266091] = {
					["source"] = "Thugra-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195181] = {
					["source"] = "Dad-Stormscale",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164547] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Víðarr-Eitrigg",
					["npcID"] = 0,
				},
				[228260] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278379] = {
					["source"] = "Economic-Frostwolf",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[194509] = {
					["source"] = "Tosh",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[153595] = {
					["source"] = "Morynia-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262036] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Da'kani Provocator",
					["npcID"] = 137840,
				},
				[206930] = {
					["source"] = "Dad-Stormscale",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Amuri-Suramar",
					["npcID"] = 0,
				},
				[285981] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ryañ-Boulderfist",
					["npcID"] = 0,
				},
				[339] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[281791] = {
					["source"] = "Ragani",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rustyjin-Hyjal",
					["npcID"] = 0,
				},
				[196277] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[120679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cuziamkorean-Tichondrius",
					["npcID"] = 0,
				},
				[205351] = {
					["source"] = "Daltina-Blackhand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204019] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[267560] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Harambacon-Tichondrius",
					["npcID"] = 0,
				},
				[274213] = {
					["npcID"] = 131383,
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Sporecaller Zancha",
					["encounterID"] = 2112,
				},
				[201846] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Kenske-Zul'jin",
					["npcID"] = 0,
				},
				[198069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[205385] = {
					["source"] = "Wyngpriest-EmeraldDream",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118699] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[198837] = {
					["source"] = "Risen Skulker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 99541,
				},
				[278637] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Underrot Tick",
					["npcID"] = 131402,
				},
				[283831] = {
					["source"] = "Wonton-Bloodhoof",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arcangelle-Uldum",
					["npcID"] = 0,
				},
				[17962] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Raklocks-Ner'zhul",
					["npcID"] = 0,
				},
				[202164] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Scrap-Korgath",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Fylvanas-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259830] = {
					["type"] = "BUFF",
					["source"] = "Sporecaller Zancha",
					["npcID"] = 131383,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2112,
				},
				[204021] = {
					["source"] = "Diist-Sen'jin",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[72968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Empio-Spirestone",
					["npcID"] = 0,
				},
				[199786] = {
					["source"] = "Morynia-WyrmrestAccord",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268955] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[280870] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[157736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Raklocks-Ner'zhul",
					["npcID"] = 0,
				},
				[280433] = {
					["source"] = "Thugra-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266030] = {
					["source"] = "Thugra-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2825] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ndevar",
					["npcID"] = 0,
				},
				[283430] = {
					["source"] = "Thugra-Uther",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[284277] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Ranti-Tichondrius",
					["npcID"] = 0,
				},
				[265097] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Mooltishawt",
					["npcID"] = 0,
				},
				[51533] = {
					["source"] = "Fireburst-Frostwolf",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204213] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Tujori",
					["npcID"] = 0,
				},
				[247456] = {
					["source"] = "Diist-Sen'jin",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[974] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vok",
					["npcID"] = 0,
				},
				[270479] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Venomous Cobra",
					["npcID"] = 138540,
				},
				[276141] = {
					["source"] = "Tosh",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197561] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Poloumna",
					["npcID"] = 0,
				},
				[49998] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Quîlo-Tichondrius",
					["npcID"] = 0,
				},
				[282110] = {
					["source"] = "Kaldorei Archer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144970,
				},
				[265522] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mor'fani the Exile",
					["npcID"] = 134694,
				},
				[113656] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yuumi",
					["npcID"] = 0,
				},
				[290467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[192225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rustyjin-Hyjal",
					["npcID"] = 0,
				},
				[265523] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Bloodsworn Defiler",
					["npcID"] = 133912,
				},
				[29722] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Raklocks-Ner'zhul",
					["npcID"] = 0,
				},
				[125050] = {
					["source"] = "Ragnash-Tichondrius",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[29166] = {
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
					["event"] = "SPELL_AURA_APPLIED",
					["encounterID"] = 2111,
				},
				[265524] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mor'fani the Exile",
					["npcID"] = 134694,
				},
				[1459] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Arnbjørn",
					["npcID"] = 0,
				},
				[194153] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Iko",
					["npcID"] = 0,
				},
				[853] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Dbspaladin-Tichondrius",
					["npcID"] = 0,
				},
				[124273] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[285857] = {
					["source"] = "Maiev Shadowsong",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 149098,
				},
				[279204] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Amuri-Suramar",
					["npcID"] = 0,
				},
				[271843] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Yorman",
					["npcID"] = 0,
				},
				[202425] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Gertlook-Hyjal",
					["npcID"] = 0,
				},
				[260069] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Priest of Gonk",
					["npcID"] = 131809,
				},
				[274738] = {
					["source"] = "Pheanor-Illidan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276124] = {
					["source"] = "Pocketkings",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265527] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Mor'fani the Exile",
					["npcID"] = 134694,
				},
				[31884] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Liadryn",
					["npcID"] = 0,
				},
				[274739] = {
					["source"] = "Pheanor-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265016] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chosen Blood Matron",
					["npcID"] = 131436,
				},
				[135425] = {
					["source"] = "Boomshot Specialist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 148164,
				},
				[264682] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Umbra'jin",
					["npcID"] = 122004,
				},
				[282260] = {
					["source"] = "Lookatmoi-Caelestrasz",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196840] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Trolrunner-Tichondrius",
					["npcID"] = 0,
				},
				[124274] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[242599] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Deadbullie-Darkspear",
					["npcID"] = 0,
				},
				[285049] = {
					["source"] = "Forsaken Blight Thrower",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146647,
				},
				[280711] = {
					["source"] = "Carthias-Aegwynn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[104316] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Warlockmania",
					["npcID"] = 0,
				},
				[198589] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Andruww",
					["npcID"] = 0,
				},
				[274742] = {
					["source"] = "Pheanor-Illidan",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265019] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Chosen Blood Matron",
					["npcID"] = 131436,
				},
				[273415] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cons-Darkspear",
					["npcID"] = 0,
				},
				[115191] = {
					["source"] = "Wearyof-Darkspear",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259232] = {
					["source"] = "Darkscale Myrmidon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 146596,
				},
				[79962] = {
					["source"] = "Nelur Lightsown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 96954,
				},
				[225599] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Vendetá-Ragnaros",
					["npcID"] = 0,
				},
				[262047] = {
					["event"] = "SPELL_CAST_SUCCESS",
					["source"] = "Da'kani Provocator",
					["npcID"] = 137840,
				},
				[54861] = {
					["source"] = "Thugra-Uther",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77066] = {
					["source"] = "Druid of the Branch",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144971,
				},
				[124275] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drift",
					["npcID"] = 0,
				},
				[287639] = {
					["source"] = "Daltina-Blackhand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
			},
			["auto_toggle_friendly_enabled"] = true,
		},
	},
}
