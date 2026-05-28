execute at @s run tp @s ~ ~ ~1000
scoreboard players remove @s yumo_cmp_player_pos_z 1000
execute if score @s yumo_cmp_player_pos_z matches 1000.. run function yumo_cmp:ca/item_used/player_pos_tp/1000/z
