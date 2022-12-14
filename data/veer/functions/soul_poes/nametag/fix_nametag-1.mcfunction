##
 # nametag_poe-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##
#declare tag veer.soul_poes.fix_nametag.passenger
execute at @s run data modify entity @e[type=potion,tag=veer.soul_poes.fix_nametag.passenger,distance=..1,limit=1] CustomNameVisible set value 1b
execute at @s run data modify entity @e[type=potion,tag=veer.soul_poes.fix_nametag.passenger,distance=..1,limit=1] CustomName set from entity @s CustomName
