#declare tag veer.soul_poes.share_glow.soul

execute at @s run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..30]
execute at @s run particle minecraft:soul ~ ~ ~ 0 0 0 0.07 5 normal @a[distance=..30]
execute at @s as @e[type=potion,tag=veer.soul_poes.share_glow.soul, distance=..20] unless score @s veer.soul_poes.glowTimer matches 10 run function veer:soul_poes/fix_glowing/start