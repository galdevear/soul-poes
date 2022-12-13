##
 # end_glowing.mcfunction
 # 
 # This function should only be called if 0 or greater
 # Created by Galdeveer.
##

execute if score @s veer.soul_poes.glowTimer matches 0 run data remove entity @s Glowing
execute if score @s veer.soul_poes.glowTimer matches 0 run data modify entity @s Item.tag.CustomPotionEffects[0].Amplifier set value 0b
scoreboard players remove @s veer.soul_poes.glowTimer 1
