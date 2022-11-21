###########################################################
# Author: Galdevear
# Version: 3
# 
# Desc: Summons soul poe mob 1 block above the given coords.  
###########################################################

#declare tag soul_poe.util.bind_vex Removed by soul_poe.util.bind_vex function. Make sure the function is ran elsewhere. Code should probably be refactored to use a tag to indicates its new.

summon vex ~ ~1 ~ {ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],CustomNameVisible:0b,DeathLootTable:"soul_poe:poe",Tags:["soul_poe.poe","soul_poe.util.bind_vex"],Passengers:[{id:"minecraft:potion",Tags:["soul_poe.lanternProj","soul_poe.lanternProj.new"],Item:{id:"minecraft:soul_lantern",Count:1b,tag:{CustomPotionColor:2409983,CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:280}],CustomModelData:5444819}}}],CustomName:'{"text":"Soul Poe"}',ArmorItems:[{id:"minecraft:soul_torch",Count:1b,tag:{Enchantments:[{id:"minecraft:soul_speed",lvl:1s}]}},{},{},{}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0.01},{Name:"generic.follow_range",Base:5.1},{Name:"generic.attack_knockback",Base:1.6}]}