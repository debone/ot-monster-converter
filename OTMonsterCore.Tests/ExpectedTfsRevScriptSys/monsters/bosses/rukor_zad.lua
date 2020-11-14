local mType = Game.createMonsterType("Rukor Zad")
local monster = {}

monster.description = "Rukor Zad"
monster.experience = 380
monster.outfit = {
	lookType = 152,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 380
monster.maxHealth = 380
monster.race = "blood"
monster.corpse = 20578
monster.speed = 215
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
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
	{text = "I can kill a man in a thousand ways. And that`s only with a spoon!", yell = false},
	{text = "You shouldn`t have come here!", yell = false},
	{text = "Haiiii!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 93210, maxCount = 50},
	{id = 2399, chance = 9210, maxCount = 14},
	{id = 7366, chance = 6200, maxCount = 7},
	{id = 2457, chance = 4190},
	{id = 2509, chance = 1940}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 15, minDamage = 0, maxDamage = -100, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = false},
	{name ="combat", interval = 2000, chance = 15, minDamage = 0, maxDamage = -100, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_POISONARROW, target = false},
	-- poison
	{name ="combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 10, minDamage = -8, maxDamage = -8, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = false},
	{name ="drunk", interval = 3000, chance = 34, range = 7, target = false}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
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