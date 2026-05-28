execute at @s run tp @s ~ ~100000 ~
scoreboard players remove @s yumo_cmp_player_pos_y 100000
execute if score @s yumo_cmp_player_pos_y matches 100000.. run function yumo_cmp:ca/item_used/player_pos_tp/100000/y
