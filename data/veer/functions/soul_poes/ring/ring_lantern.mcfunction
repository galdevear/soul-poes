#declare tag veer.soul_poes.ring.passenger

execute at @s as @e[type=potion, tag=veer.soul_poes.ring.passenger, distance=..10, limit=1] run function veer:soul_poes/fix_glowing/start
advancement revoke @s only veer:soul_poes/ring_lantern