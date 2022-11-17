###########################################################
# Author: Galdevear
# Date: 12.30.2020
#
# Desc: Tags skeletons which have just spawned or been summoned.
###########################################################

tag @s[type=skeleton] add soul_poe.skeleton
tag @s[type=wither_skeleton] add soul_poe.w_skeleton
tag @s[predicate=soul_poe:soul_sand_valley, predicate=soul_poe:poe_spawn_chance] add soul_poe.replace