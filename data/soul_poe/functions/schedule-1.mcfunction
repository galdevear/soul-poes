###########################################################
# Author: Galdevear
# Date: 02.05.22
###########################################################
#declare tag soul_poe.replace
#declare tag global.ignore
#declare tag global.ignore.pos
#declare tag soul_poe.skeleton

# Skeletons #
execute if entity @s[type=#soul_poe:skeletons,tag=!soul_poe.skeleton,tag=!soul_poe.w_skeleton,tag=!global.ignore,tag=!global.ignore.pos] run function soul_poe:init_skeletons
execute if entity @s[type=#soul_poe:skeletons,tag=soul_poe.replace] run function soul_poe:replace_entity_with_poe

# Bats #
execute at @s if entity @s[type=bat, tag=!soul_poe.mineshaft.bat, tag=!global.ignore, tag=!global.ignore.pos, predicate=soul_poe:in_mineshaft] run function soul_poe:mineshaft/init_bat

# Vex #
execute if entity @s[type=vex,tag=soul_poe.util.bind_vex,tag=!global.ignore.pos] run function soul_poe:util/bind_vex
execute if entity @s[type=vex,tag=soul_poe.poe] if predicate soul_poe:is_glowing run function soul_poe:fix_glowing

# Lantern Projectile #
# Initialize
execute if entity @s[type=potion,tag=soul_poe.lanternProj.new] run function soul_poe:init_lantern_projectile
# Countdown and eventually clear glow
execute if entity @s[type=potion,tag=soul_poe.lanternProj] if score @s soul_poes.glowTimer matches 0.. run function soul_poe:end_glowing
# Absorb host's glow
execute if entity @s[type=#soul_poe:skeletons,tag=soul_poe.skeleton_jockey] if predicate soul_poe:is_glowing run function soul_poe:fix_glowing
execute if entity @s[type=#soul_poe:skeletons,tag=soul_poe.wskeleton_jockey] if predicate soul_poe:is_glowing run function soul_poe:fix_glowing