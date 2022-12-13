##
 # bind_vex.mcfunction
 # version 2
 # Binds vex to it's current actual location. Does not require any delay.
 #alias entity vex @s
 #declare entity @s[type=vex,tag=!global.ignore.pos] Assumes this to be true; therefore, it does not test for it.
 #declare tag veer.soul_poes.util.bind_vex A tag that gets removed at the end of the function if it exists
 # 
 # Created by Galdeveer.
##

#declare tag veer.soul_poes.util.bind_vex Removed by veer.soul_poes.util.bind_vex function. Make sure the function is ran elsewhere. Code should probably be refactored to use a tag to indicates its new.
#alias vector PosX Pos[0]
#alias vector PosY Pos[1]
#alias vector PosZ Pos[2]

# Testing Note: BoundX, etc. do not need to exist for this to work 
#               Did not test what happens if this is ran on a non-vex

# Bind a vex to it's current position
data modify entity @s BoundX set from entity @s Pos[0]
data modify entity @s BoundY set from entity @s Pos[1]
data modify entity @s BoundZ set from entity @s Pos[2]

# Remove tag if it exists
tag @s remove veer.soul_poes.util.bind_vex