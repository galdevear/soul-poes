##
 # nametag_poe-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

data modify entity @s PersistenceRequired set value 1b
# data modify storage soul_poes nametag_poe.name set from entity @s 
execute at @s run data modify entity @e[type=potion,distance=..1,limit=1] CustomNameVisible set value 1b
execute at @s run data modify entity @e[type=potion,distance=..1,limit=1] CustomName set from entity @s CustomName
