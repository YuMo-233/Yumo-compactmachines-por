execute at @s run tp @s ~ ~ ~100000
scoreboard players remove @s yumo_cmp_player_pos_z 100000
execute if score @s yumo_cmp_player_pos_z matches 100000.. run function yumo_cmp:ca/item_used/player_pos_tp/100000/z
