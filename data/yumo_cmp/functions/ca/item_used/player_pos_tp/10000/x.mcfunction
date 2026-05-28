execute at @s run tp @s ~10000 ~ ~
scoreboard players remove @s yumo_cmp_player_pos_x 10000
execute if score @s yumo_cmp_player_pos_x matches 10000.. run function yumo_cmp:ca/item_used/player_pos_tp/10000/x

