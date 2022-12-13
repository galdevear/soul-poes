###########################################################
# Author: Galdevear
# Date: 02.05.22
###########################################################
#declare tag veer.soul_poes
#declare tag veer.soul_poes.new
#declare tag global.ignore
#declare tag global.ignore.pos
#declare tag veer.soul_poes.fix_glowing.base
#declare tag veer.soul_poes.fix_glowing.proj
#declare tag veer.soul_poes.lanternProj

## New entities
tag @s[tag=veer.soul_poes.new] remove veer.soul_poes.new
tag @s[tag=!veer.soul_poes] add veer.soul_poes.new
tag @s[tag=!veer.soul_poes] add veer.soul_poes

## New Skeleton/Wither Skeleton in soul sand valley
execute at @s if entity @s[type=#veer:soul_poes/skeletons,tag=veer.soul_poes.new,tag=!global.ignore,tag=!global.ignore.pos,predicate=veer:soul_poes/poe_spawn_chance,predicate=veer:soul_poes/in_soul_sand_valley] run function veer:soul_poes/init_ssv_skeleton

## New Bats in mineshaft
execute at @s if entity @s[type=bat,tag=veer.soul_poes.new,tag=!global.ignore,tag=!global.ignore.pos,predicate=veer:soul_poes/poe_spawn_chance,predicate=veer:soul_poes/in_mineshaft] run function veer:soul_poes/mineshaft_poe/replace

## Bind Vex
execute if entity @s[type=vex,tag=veer.soul_poes.util.bind_vex,tag=!global.ignore.pos] run function veer:soul_poes/util/bind_vex

## Fix Glowing
execute if entity @s[type=#veer:soul_poes/fix_glowing,tag=veer.soul_poes.fix_glowing.base] if predicate veer:soul_poes/is_glowing run function veer:soul_poes/glowing/fix_glowing

## New Lantern Projectile
execute if entity @s[type=potion,tag=veer.soul_poes.fix_glowing.proj,tag=veer.soul_poes.new] run function veer:soul_poes/init_lantern_projectile

## Lantern Projectile Glowing Duration
execute if entity @s[type=potion,tag=veer.soul_poes.lanternProj] if score @s veer.soul_poes.glowTimer matches 0.. run function veer:soul_poes/glowing/end_glowing