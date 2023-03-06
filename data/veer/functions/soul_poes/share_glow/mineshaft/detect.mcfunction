#declare tag veer.soul_poes.share_glow.mineshaft

execute at @s run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..30]

tag @s add veer.soul_poes.share_glow.ignore
execute at @s as @e[type=potion,tag=veer.soul_poes.share_glow.mineshaft, tag=!veer.soul_poes.share_glow.ignore, distance=..20] if predicate veer:soul_poes/share_glow/chance run function veer:soul_poes/fix_glowing/start
tag @s remove veer.soul_poes.share_glow.ignore