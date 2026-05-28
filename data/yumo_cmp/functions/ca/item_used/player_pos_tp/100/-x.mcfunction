execute at @s run tp @s ~-100 ~ ~
scoreboard players add @s yumo_cmp_player_pos_x 100
execute if score @s yumo_cmp_player_pos_x matches ..-100 run function yumo_cmp:ca/item_used/player_pos_tp/100/-x
