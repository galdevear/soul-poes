##
 # Date: 12/13/22
 # Created by Galdeveer.
##

#declare tag veer.soul_poes.fix_glowing.soul_particles

effect clear @s glowing
execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..30]
execute at @s[tag=veer.soul_poes.fix_glowing.soul_particles] anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ run particle minecraft:soul ~ ~ ~ 0 0 0 0.07 5 normal @a[distance=..30]
execute at @s as @e[type=potion,tag=veer.soul_poes.fix_glowing.passenger, distance=..20] run function veer:soul_poes/glowing/fix_glowing-1

# If new mobs that need glowing fixed at add a lanternProj tag to denote which ones get glowing spreaded between them