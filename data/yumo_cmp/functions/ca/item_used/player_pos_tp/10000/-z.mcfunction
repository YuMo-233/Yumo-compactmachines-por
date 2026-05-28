execute at @s run tp @s ~ ~ ~-10000
scoreboard players add @s yumo_cmp_player_pos_z 10000
execute if score @s yumo_cmp_player_pos_z matches ..-10000 run function yumo_cmp:ca/item_used/player_pos_tp/10000/-z
