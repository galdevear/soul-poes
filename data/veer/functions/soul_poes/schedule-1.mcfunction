###########################################################
# Author: Galdevear
# Date: 12/14/2022
###########################################################
#declare tag veer.soul_poes
#declare tag veer.soul_poes.new
#declare tag global.ignore
#declare tag global.ignore.pos
#declare tag veer.soul_poes.fix_glowing.vehicle
#declare tag veer.soul_poes.fix_glowing.passenger

## New entities
tag @s[tag=veer.soul_poes.new] remove veer.soul_poes.new
tag @s[tag=!veer.soul_poes] add veer.soul_poes.new
tag @s[tag=!veer.soul_poes] add veer.soul_poes

## New Skeleton/Wither Skeleton in soul sand valley
execute at @s if entity @s[type=#veer:soul_poes/skeletons,tag=veer.soul_poes.new,tag=!global.ignore,tag=!global.ignore.pos,predicate=veer:soul_poes/poe_spawn_chance,predicate=veer:soul_poes/in_soul_sand_valley] run function veer:soul_poes/replace_ssv_skeleton

## New Bats in mineshaft
execute at @s if entity @s[type=bat,tag=veer.soul_poes.new,tag=!global.ignore,tag=!global.ignore.pos,predicate=veer:soul_poes/poe_spawn_chance,predicate=veer:soul_poes/in_mineshaft] run function veer:soul_poes/mineshaft_poe/replace

## Make Soul Lantern Projectiles team aqua (glow color changes)
execute if entity @s[type=potion,tag=veer.soul_poes.join_aqua] run function veer:soul_poes/join_aqua

## Bind Vex
execute if entity @s[type=vex,tag=veer.soul_poes.util.bind_vex] run function veer:soul_poes/util/bind_vex

## Transfer glowing from vehicle to passenger
execute if entity @s[type=#veer:soul_poes/fix_glowing,tag=veer.soul_poes.fix_glowing.vehicle] if predicate veer:soul_poes/is_glowing run function veer:soul_poes/glowing/fix_glowing

## Simulate Glowing Duration
execute if entity @s[type=potion,tag=veer.soul_poes.fix_glowing.passenger] if score @s veer.soul_poes.glowTimer matches 0.. run function veer:soul_poes/glowing/end_glowing