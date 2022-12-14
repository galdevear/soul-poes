###########################################################
# Author: Galdevear
# DateL 12/13/22
# 
# Desc: Summons soul poe mob.  
###########################################################

# Position is one block higher to prevent immediately sinking into the ground.

summon vex ~ ~1 ~ {Tags:["veer.soul_poes", "veer.soul_poes.soul_poe", "veer.soul_poes.fix_glowing.vehicle","veer.soul_poes.util.bind_vex"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],CustomNameVisible:0b,DeathLootTable:"veer:soul_poes/poe",Passengers:[{id:"minecraft:potion",Tags:["global.ignore","veer.soul_poes","veer.soul_poes.soul_poe", "veer.soul_poes.soul_poe.new", "veer.soul_poes.fix_glowing.passenger","veer.soul_poes.lanternProj"],Item:{id:"minecraft:soul_lantern",Count:1b,tag:{CustomPotionColor:2409983,CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:280}],CustomModelData:5444819}}}],CustomName:'{"text":"Soul Poe"}',ArmorItems:[{id:"minecraft:soul_torch",Count:1b,tag:{Enchantments:[{id:"minecraft:soul_speed",lvl:1s}]}},{},{},{}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.01},{Name:"generic.follow_range",Base:5.1},{Name:"generic.attack_knockback",Base:1.6}]}