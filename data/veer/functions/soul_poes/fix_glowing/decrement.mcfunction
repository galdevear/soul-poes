 ##
 # end_glowing.mcfunction
 # 
 # Counts down and eventually removes glowing nbt to simulate potion effect duration.
 # Created by Galdeveer.
##

execute if score @s veer.soul_poes.glowTimer matches 0 run data remove entity @s Glowing
scoreboard players remove @s veer.soul_poes.glowTimer 1

# Leaves it at -1 when finished