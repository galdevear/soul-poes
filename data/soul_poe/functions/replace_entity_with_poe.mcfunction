###########################################################
# Author: Galdevear
# Date: 02.16.20
#
# Desc: Removes entity and summons soul poe
###########################################################
# Author: Galdevear
# Date: 12.30.2020
###########################################################

# TODO: This file should be reorganized entirely into seperate files.

#declare tag soul_poe.summon_poe.jockey

# Roll for type
tag @s[predicate=soul_poe:poe_jockey/spawn_chance] add soul_poe.summon_poe.jockey

# if rolled normal
execute if entity @s[type=skeleton,tag=!soul_poe.summon_poe.jockey] at @s run function soul_poe:summon_poe
# else
execute if entity @s[type=skeleton,tag=soul_poe.summon_poe.jockey] at @s run function soul_poe:poe_jockey_skel/convert
execute if entity @s[type=wither_skeleton,tag=soul_poe.summon_poe.jockey] at @s run function soul_poe:poe_jockey_wskel/convert

# No need to remove tags because the entity gets killed by remove entity
# Don't kill witherskeletons if it wasn't a jockey
execute unless entity @s[type=wither_skeleton, tag=!soul_poe.summon_poe.jockey] run function soul_poe:remove_entity
# Anything that doesn't get killed needs to not loop back to this
tag @s remove soul_poe.replace
tag @s remove soul_poe.summon_poe.jockey