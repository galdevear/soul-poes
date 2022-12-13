##
 # summon.mcfunction
 # Pass existing mob in execution context to move over equipment to the new mob
 # Created by Galdeveer.
##
#@private
#declare tag veer.soul_poes.skeleton_jockey.new
#declare tag veer.soul_poes.skeleton_jockey
#declare tag veer.soul_poes.lanternProj
# Bug prevention: When merging nbt over, tags will not update immediately. As a result, you cannot do /tag remove to get rid of the tag the tick its merged over, unless you remove it before merging.

# Remove replacement tag before merging nbt so the new mob doesn't get removed as well.
# That won't actually happen I'm pretty sure, but tags are a special case for merging
tag @s remove veer.soul_poes.replace
tag @s add veer.soul_poes.skeleton_jockey

# Summon Soul Poe themed Potion Jockey
summon skeleton ~ ~ ~ {Tags:["veer.soul_poes.skeleton_jockey.new"],Attributes:[{Name:"generic.movement_speed",Base:0.25, Modifiers:[{Amount:0.1, Name:"veer.soul_poes.poe_jockey_wskel.speedBoost", Operation:0, UUID:[I;3456,1870,487,19687]}]}],Passengers:[{id:"minecraft:potion",Tags:["veer.soul_poes.lanternProj","veer.soul_poes.lanternProj.new"],Item:{id:"minecraft:soul_lantern",Count:1b,tag:{CustomPotionColor:2409983,CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:280}],CustomModelData:5444819}}}]}
# move everything from original mob to the new one.
data modify entity @e[type=skeleton,tag=veer.soul_poes.skeleton_jockey.new,limit=1] {} merge from entity @s {}