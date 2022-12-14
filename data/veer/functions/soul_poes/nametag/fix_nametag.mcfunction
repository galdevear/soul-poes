##
 # nametag_poe.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#declare tag veer.soul_poes.fix_nametag.vehicle

execute as @e[type=#veer:soul_poes/poes,tag=veer.soul_poes.fix_nametag.vehicle, distance=..8,name=!"Soul Poe", name=!"Poe",limit=1] run function veer:soul_poes/nametag/fix_nametag-1
advancement revoke @s only veer:soul_poes/fix_nametag