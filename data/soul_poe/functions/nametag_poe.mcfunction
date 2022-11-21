##
 # nametag_poe.mcfunction
 # 
 #
 # Created by Galdeveer.
##

execute as @e[type=#soul_poe:poes,tag=soul_poe.poe, distance=..8,name=!"Soul Poe", name=!"Poe",limit=1] run function soul_poe:nametag_poe-1
advancement revoke @s only soul_poe:nametag_poe