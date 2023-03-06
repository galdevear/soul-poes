##
 # Move existing mobs data (equipment, etc) to the mob its being replaced with.
 # Created by Galdeveer.
##
#declare tag veer.soul_poes.skeleton_jockey.new

# Passengers prevent the nametag from displaying, therefore fix nametag is needed.

# Bug prevention: When merging nbt over, tags will not update immediately. As a result, you cannot do /tag remove to get rid of the tag the tick its merged over, unless you remove it before merging.
# The mob being merged from already has the tags needed to not get processed again (only because the veer.soul_poes.new tag gets removed at the start of schedule)

#Tags on summoned mob won't stay, but tags from mob being merged over will be added one tick after the respective tag nbt is added because it needs a tick to sync up.
tag @s remove veer.soul_poes.init_ssv_skeleton.jockey
tag @s add veer.soul_poes.fix_glowing.vehicle
tag @s add veer.soul_poes.fix_nametag.vehicle


# Summon poe jockey
summon skeleton ~ ~ ~ {Tags:["veer.soul_poes.skeleton_jockey.new"],Passengers:[{id:"minecraft:potion",Tags:["global.ignore","veer.soul_poes","veer.soul_poes.fix_glowing.passenger","veer.soul_poes.fix_nametag.passenger","veer.soul_poes.ring.passenger","veer.soul_poes.share_glow.mineshaft","veer.soul_poes.potion.glow_upgrade"],Item:{id:"minecraft:lantern",Count:1b,tag:{CustomPotionColor:16749609,CustomPotionEffects:[{Id:10,Amplifier:0b,Duration:400}]}}}],ActiveEffects:[{Id:10,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
# Move everything from original mob to the new one.
data modify entity @e[type=skeleton,tag=veer.soul_poes.skeleton_jockey.new,limit=1] {} merge from entity @s {}