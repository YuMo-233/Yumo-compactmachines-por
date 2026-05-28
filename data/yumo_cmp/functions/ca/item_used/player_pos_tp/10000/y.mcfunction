execute at @s run tp @s ~ ~10000 ~
scoreboard players remove @s yumo_cmp_player_pos_y 10000
execute if score @s yumo_cmp_player_pos_y matches 10000.. run function yumo_cmp:ca/item_used/player_pos_tp/10000/y
