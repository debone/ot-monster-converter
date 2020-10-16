local mType = Game.createMonsterType("Apprentice Sheng")
local monster = {}

monster.description = "Apprentice Sheng"
monster.experience = 150
monster.outfit = {
	lookType = 23,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 95
monster.maxHealth = 95
monster.race = "blood"
monster.corpse = 5981
monster.speed = 170
monster.summonCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	targetDistance = 4,
	runHealth = 20,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "Hyaena", chance = 30, interval = 5000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I will protect the secrets of my master!", yell = false},
	{text = "This isle will become ours alone", yell = false},
	{text = "Kaplar!", yell = false},
	{text = "You already know too much.", yell = false}
}

monster.loot = {
	{id = 5878, chance = 100000},
	{id = 2162, chance = 80000},
	{id = 2148, chance = 30000, maxCount = 10},
	{id = 2050, chance = 30000, maxCount = 2},
	{id = 2649, chance = 20000},
	{id = 2403, chance = 10000},
	{id = 2461, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -10, effect = CONST_ME_DRAWBLOOD},
	{name ="energyfield", interval = 1000, chance = 8, range = 7, shootEffect = CONST_ANI_ENERGY, target = true},
	{name ="combat", interval = 1000, chance = 14, minDamage = 0, maxDamage = -25, type = COMBAT_ENERGYDAMAGE, range = 7, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = 0, maxDamage = -45, type = COMBAT_FIREDAMAGE, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = false}
}

monster.defenses = {
	defense = 13,
	armor = 12,
	{name ="combat", interval = 4000, chance = 15, minDamage = 10, maxDamage = 20, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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
