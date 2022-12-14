##
 # summon.mcfunction
 # Pass existing mob in execution context to move over equipment to the new mob 
 # Created by Galdeveer.
 # TODO: ?Change w_skeleton to wskeleton?
##
#@private
#declare tag veer.soul_poes.poe_jockey_wskel.new Temporary tag for editing summoned entity after summoning. Only one of this tag should exist at a time.
#declare tag veer.soul_poes.wskeleton_jockey

# Bug prevention: When merging nbt over, tags will not update immediately. As a result, you cannot do /tag remove to get rid of the tag the tick its merged over, unless you remove it before merging.

# Remove replace so it doesn't get merged into the new mob.
tag @s remove veer.soul_poes.replace
# Tag as a new entity
tag @s add veer.soul_poes.wskeleton_jockey

# Summon Soul Poe themed Potion Jockey
summon wither_skeleton ~ ~ ~ {Tags:["veer.soul_poes.poe_jockey_wskel.new"],Attributes:[{Name:"generic.movement_speed",Base:0.25, Modifiers:[{Amount:0.1, Name:"veer.soul_poes.poe_jockey_wskel.speedBoost", Operation:0, UUID:[I;3456,1870,487,19687]}]}],Passengers:[{id:"minecraft:potion",Tags:["veer.soul_poes.lanternProj","veer.soul_poes.lanternProj.new"],Item:{id:"minecraft:soul_lantern",Count:1b,tag:{CustomPotionColor:2409983,CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:280}],CustomModelData:5444819}}}]}
# Move everything from original mob to the new one.
data modify entity @e[type=wither_skeleton,tag=veer.soul_poes.poe_jockey_wskel.new,limit=1] {} merge from entity @s {}