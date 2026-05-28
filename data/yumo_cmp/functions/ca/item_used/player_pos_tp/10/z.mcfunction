execute at @s run tp @s ~ ~ ~10
scoreboard players remove @s yumo_cmp_player_pos_z 10
execute if score @s yumo_cmp_player_pos_z matches 10.. run function yumo_cmp:ca/item_used/player_pos_tp/10/z
