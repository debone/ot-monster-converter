local mType = Game.createMonsterType("Bazir")
local monster = {}

monster.description = "Bazir"
monster.experience = 30000
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 110000
monster.maxHealth = 110000
monster.race = "fire"
monster.corpse = 2916
monster.speed = 530
monster.summonCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 2000,
	chance = 10
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
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 3000,
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
	{name = "bazir", chance = 15, interval = 1000, max = 1}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "COME HERE! FREE ITEMS FOR EVERYONE!", yell = true},
	{text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = false},
	{text = "Slay your friends and I will spare you!", yell = true},
	{text = "DON'T BE AFRAID! I AM COMING IN PEACE!", yell = true}
}

monster.loot = {
	{id = 2142, chance = 3500},
	{id = 2231, chance = 9000},
	{id = 2144, chance = 15000, maxCount = 15},
	{id = 2158, chance = 1500},
	{id = 2195, chance = 4000},
	{id = 2186, chance = 3500},
	{id = 2192, chance = 2500},
	{id = 2125, chance = 1500},
	{id = 2124, chance = 5500},
	{id = 2520, chance = 15500},
	{id = 2462, chance = 11000},
	{id = 2387, chance = 20000},
	{id = 2434, chance = 4500},
	{id = 2167, chance = 13500},
	{id = 2432, chance = 17000},
	{id = 2393, chance = 12500},
	{id = 2148, chance = 99900, maxCount = 100},
	{id = 2148, chance = 88800, maxCount = 100},
	{id = 2148, chance = 77700, maxCount = 100},
	{id = 2148, chance = 66600, maxCount = 100},
	{id = 2179, chance = 8000},
	{id = 2470, chance = 5000},
	{id = 2033, chance = 7500},
	{id = 2418, chance = 4500},
	{id = 2182, chance = 3500},
	{id = 2155, chance = 1500},
	{id = 2188, chance = 2500},
	{id = 2396, chance = 7500},
	{id = 2177, chance = 1000},
	{id = 2162, chance = 11500},
	{id = 2472, chance = 3000},
	{id = 2514, chance = 7500},
	{id = 2164, chance = 5000},
	{id = 2178, chance = 4000},
	{id = 2176, chance = 12000},
	{id = 2171, chance = 4500},
	{id = 2200, chance = 4500},
	{id = 1982, chance = 2600},
	{id = 2214, chance = 13000},
	{id = 2123, chance = 3500},
	{id = 2170, chance = 13000},
	{id = 2402, chance = 15500},
	{id = 2436, chance = 5000},
	{id = 2150, chance = 13500, maxCount = 20},
	{id = 2145, chance = 9500, maxCount = 5},
	{id = 2149, chance = 15500, maxCount = 10},
	{id = 2146, chance = 13500, maxCount = 10},
	{id = 2165, chance = 9500},
	{id = 2197, chance = 4000},
	{id = 2174, chance = 2500},
	{id = 2151, chance = 14000, maxCount = 7},
	{id = 2112, chance = 14500},
	{id = 2421, chance = 13500},
	{id = 2377, chance = 20000},
	{id = 3955, chance = 100},
	{id = 2185, chance = 3500},
	{id = 2143, chance = 12500, maxCount = 15}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 200, attack = 250, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 1000, chance = 7, minDamage = -100, maxDamage = -1000, type = COMBAT_MANADRAIN, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF, target = false},
	{name ="drunk", interval = 1000, chance = 7, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 1000, chance = 9, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA, target = false},
	{name ="combat", interval = 1000, chance = 13, minDamage = -400, maxDamage = -700, type = COMBAT_LIFEDRAIN, effect = CONST_ME_LOSEENERGY, target = false},
	{name ="combat", interval = 1000, chance = 10, minDamage = -400, maxDamage = -700, type = COMBAT_MANADRAIN, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="speed", interval = 1000, chance = 12, speedChange = -1900, duration = 60000},
	{name ="combat", interval = 1000, chance = 8, effect = CONST_ME_HITAREA, target = false},
	{name ="outfit", interval = 1000, chance = 2},
	{name ="outfit", interval = 1000, chance = 2},
	{name ="combat", interval = 1000, chance = 34, minDamage = -100, maxDamage = -900, type = COMBAT_FIREDAMAGE, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 1000, chance = 15, minDamage = -500, maxDamage = -850, type = COMBAT_LIFEDRAIN, length = 8, spread = 3, effect = CONST_ME_MAGIC_RED, target = false}
}

monster.defenses = {
	defense = 160,
	armor = 160,
	{name ="combat", interval = 1000, chance = 15, minDamage = 5000, maxDamage = 10000, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="combat", interval = 1000, chance = 25, minDamage = 2000, maxDamage = 3000, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 1000, chance = 8, speedChange = 1901, duration = 5000},
	{name ="invisible", interval = 1000, chance = 4, effect = CONST_ME_MAGIC_BLUE},
	{name ="invisible", interval = 1000, chance = 17, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1000, chance = 2}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
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