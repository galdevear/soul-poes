###########################################################
# Author: Galdevear
# Date: 12.13.22
#
# Desc: Removes entity and summons soul poe or poe jockey
###########################################################

#declare tag veer.soul_poes.init_ssv_skeleton.soul_poe
#declare tag veer.soul_poes.init_ssv_skeleton.jockey

## Summon Jockey or Poe
tag @s[predicate=veer:soul_poes/poe_jockey/spawn_chance] add veer.soul_poes.init_ssv_skeleton.jockey
tag @s[tag=!veer.soul_poes.init_ssv_skeleton.jockey] add veer.soul_poes.init_ssv_skeleton.soul_poe

# Poe
execute if entity @s[type=skeleton,tag=veer.soul_poes.init_ssv_skeleton.soul_poe] at @s run function veer:soul_poes/soul_poe/replace
# Jockey
execute if entity @s[type=skeleton,tag=veer.soul_poes.init_ssv_skeleton.jockey] at @s run function veer:soul_poes/poe_jockey/skeleton/replace
execute if entity @s[type=wither_skeleton,tag=veer.soul_poes.init_ssv_skeleton.jockey] at @s run function veer:soul_poes/poe_jockey/wither_skeleton/replace

## Remove temporary tags
tag @s remove veer.soul_poes.init_ssv_skeleton.jockey
tag @s remove veer.soul_poes.init_ssv_skeleton.poe