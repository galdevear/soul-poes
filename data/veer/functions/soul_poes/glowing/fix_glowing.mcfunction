##
 # fix_glowing.mcfunction
 # 
 #
 # Created by Galdeveer.
##
effect clear @s glowing
# execute at @s[type=vex] anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ run particle minecraft:soul ~ ~ ~ 0 0 0 0.07 5 normal @a[distance=..30]
execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..30]
execute at @s as @e[type=potion, tag=veer.soul_poes.lanternProj, distance=..20] run function veer:soul_poes/glowing/fix_glowing-1