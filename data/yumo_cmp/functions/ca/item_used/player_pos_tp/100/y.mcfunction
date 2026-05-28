execute at @s run tp @s ~ ~100 ~
scoreboard players remove @s yumo_cmp_player_pos_y 100
execute if score @s yumo_cmp_player_pos_y matches 100.. run function yumo_cmp:ca/item_used/player_pos_tp/100/y
