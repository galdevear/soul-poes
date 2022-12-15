##
 # nametag_poe.mcfunction
 # 
 #
 # Created by Galdeveer.
##

#declare tag veer.soul_poes.fix_nametag.vehicle
execute at @s anchored eyes positioned ^ ^ ^3 as @e[type=#veer:soul_poes/includes_proj_model,tag=veer.soul_poes.fix_nametag.vehicle,distance=..3,name=!"Soul Poe",name=!"Poe",limit=1] run function veer:soul_poes/nametag/fix_nametag-1
advancement revoke @s only veer:soul_poes/fix_nametag