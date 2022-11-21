##
 # nametag_poe-1.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#TODO: Remove this line?
data modify entity @s PersistenceRequired set value 1b
execute at @s run data modify entity @e[type=potion,distance=..1,limit=1] CustomNameVisible set value 1b
execute at @s run data modify entity @e[type=potion,distance=..1,limit=1] CustomName set from entity @s CustomName
