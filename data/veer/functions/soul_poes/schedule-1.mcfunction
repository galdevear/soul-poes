###########################################################
# Author: Galdevear
# Date: 12/14/2022
###########################################################
#declare tag veer.soul_poes
#declare tag veer.soul_poes.new
#declare tag global.ignore
#declare tag global.ignore.pos

## New entities
tag @s[tag=veer.soul_poes.new] remove veer.soul_poes.new
tag @s[tag=!veer.soul_poes] add veer.soul_poes.new
tag @s[tag=!veer.soul_poes] add veer.soul_poes

## New Skeleton/Wither Skeleton in soul sand valley
execute at @s if entity @s[type=#veer:soul_poes/skeletons,tag=veer.soul_poes.new,tag=!global.ignore,tag=!global.ignore.pos,predicate=veer:soul_poes/soul_poe/spawn_chance,predicate=veer:soul_poes/in_soul_sand_valley] run function veer:soul_poes/replace_ssv_skeleton

## New Bats in mineshaft
execute at @s if entity @s[type=bat,tag=veer.soul_poes.new,tag=!global.ignore,tag=!global.ignore.pos,predicate=veer:soul_poes/mineshaft_poe/spawn_chance,predicate=veer:soul_poes/in_mineshaft] run function veer:soul_poes/mineshaft_poe/replace

## Make Soul Lantern Projectiles team aqua (glow color changes)
execute if entity @s[type=potion,tag=veer.soul_poes.join_aqua] run function veer:soul_poes/join_aqua

## Bind Vex
execute if entity @s[type=vex,tag=veer.soul_poes.util.bind_vex] run function veer:soul_poes/util/bind_vex

## Share Glow (Soul variants)
execute if entity @s[type=#veer:soul_poes/share_glow/soul, tag=veer.soul_poes.share_glow.soul] if score @s veer.soul_poes.glowTimer matches 9 run function veer:soul_poes/share_glow/soul/detect

## Share Glow (Mineshaft variants)
execute if entity @s[type=#veer:soul_poes/share_glow/mineshaft, tag=veer.soul_poes.share_glow.mineshaft] if score @s veer.soul_poes.glowTimer matches 9 run function veer:soul_poes/share_glow/mineshaft/detect

## Upgrade potion
execute if entity @s[type=potion, tag=veer.soul_poes.potion.glow_upgrade] if score @s veer.soul_poes.glowTimer matches 10 run function veer:soul_poes/potion_glow_upgrade/start
execute if entity @s[type=potion, tag=veer.soul_poes.potion.glow_upgrade] if score @s veer.soul_poes.glowTimer matches 0 run function veer:soul_poes/potion_glow_upgrade/end

## Simulate Glowing Duration
execute if entity @s[type=potion,tag=veer.soul_poes.fix_glowing.passenger] if score @s veer.soul_poes.glowTimer matches 0.. run function veer:soul_poes/fix_glowing/decrement