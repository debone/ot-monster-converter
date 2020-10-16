local mType = Game.createMonsterType("Essence Of Malice")
local monster = {}

monster.description = "Essence Of Malice"
monster.experience = 4600
monster.outfit = {
	lookType = 351,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "undead"
monster.corpse = 11362
monster.speed = 320
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 5
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 366,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{id = "silver token", chance = 2732},
	{id = "gold token", chance = 1530},
	{id = "gold coin", chance = 100000, maxCount = 200},
	{id = "platinum coin", chance = 29840, maxCount = 57},
	{id = "lightning legs", chance = 8723},
	{id = "yellow gem", chance = 29460},
	{id = "demon shield", chance = 2270},
	{id = "shockwave amulet", chance = 15100},
	{id = "witch hat", chance = 9510},
	{id = "mysterious remains", chance = 100000},
	{id = "small amethyst", chance = 14700, maxCount = 10},
	{id = "small amethyst", chance = 12259, maxCount = 10},
	{id = "odd organ", chance = 100000},
	{id = "energy bar", chance = 16872, maxCount = 3},
	{id = 26186, chance = 8762},
	{id = "ultimate health potion", chance = 27652, maxCount = 10},
	{id = "blade of corruption", chance = 3775}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -603, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 5, range = 5, target = false},
	-- poison
	{name ="combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 10, minDamage = -520, maxDamage = -780, range = 5, effect = CONST_ME_SMALLCLOUDS, target = true},
	{name ="combat", interval = 2000, chance = 15, minDamage = -80, maxDamage = -230, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = true},
	{name ="combat", interval = 2000, chance = 10, minDamage = -120, maxDamage = -250, type = COMBAT_DEATHDAMAGE, length = 8, spread = 3, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = -110, maxDamage = -180, type = COMBAT_DEATHDAMAGE, effect = CONST_ME_MORTAREA, target = false},
	{name ="speed", interval = 2000, chance = 20, speedChange = -800, duration = 30000}
}

monster.defenses = {
	defense = 35,
	armor = 35
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = -30},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType:register(monster)
