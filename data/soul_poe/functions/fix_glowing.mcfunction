##
 # fix_glowing.mcfunction
 # 
 #
 # Created by Galdeveer.
##
effect clear @s glowing
execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ run particle minecraft:soul ~ ~ ~ 0 0 0 0.07 5 normal @a[distance=..30]
execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..30]
execute at @s as @e[type=potion, tag=soul_poe.lanternProj, distance=..20] run function soul_poe:fix_glowing-1