##
 # Date: 12/14/22
 # Created by Galdeveer.
##
#declare tag veer.soul_poes.fix_glowing.vehicle
#declare tag veer.soul_poes.fix_glowing.passenger
effect clear @s glowing
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=potion, tag=veer.soul_poes.fix_glowing.passenger, distance=..1,limit=1] run function veer:soul_poes/fix_glowing/start