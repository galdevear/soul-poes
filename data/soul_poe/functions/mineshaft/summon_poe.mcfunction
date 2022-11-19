###########################################################
#Summons soul poe mob 1 block above the given coords.  
###########################################################

# ,DeathLootTable:"soul_poe:poe"
summon bat ~ ~ ~ {ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Tags:["soul_poe.mineshaft.poe", "soul_poe.mineshaft.bat"],Silent:1b,Passengers:[{id:"minecraft:potion",Tags:["soul_poe.lanternProj","soul_poe.lanternProj.new"],Item:{id:"minecraft:lantern",Count:1b,tag:{CustomPotionColor:16749609, CustomPotionEffects:[{Id:10,Amplifier:0b,Duration:400}]}}}],ArmorItems:[{},{},{},{id:"minecraft:torch",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
function soul_poe:remove_entity