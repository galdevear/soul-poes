##
 # nametag_poe.mcfunction
 # 
 #
 # Created by Galdeveer.
##

execute as @e[type=#veer:soul_poes/poes,tag=veer.soul_poes.poe, distance=..8,name=!"Soul Poe", name=!"Poe",limit=1] run function veer:soul_poes/nametag_poe-1
advancement revoke @s only veer:soul_poes/nametag_poe