##
 # fix_glowing.mcfunction
 # 
 #
 # Created by Galdeveer.
##
data modify entity @s Glowing set value 1b
data modify entity @s Item.tag.CustomPotionEffects[0].Amplifier set value 1b
scoreboard players set @s veer.soul_poes.glowTimer 10