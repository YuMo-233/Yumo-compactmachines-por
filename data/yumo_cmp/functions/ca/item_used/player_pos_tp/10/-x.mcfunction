execute at @s run tp @s ~-10 ~ ~
scoreboard players add @s yumo_cmp_player_pos_x 10
execute if score @s yumo_cmp_player_pos_x matches ..-10 run function yumo_cmp:ca/item_used/player_pos_tp/10/-x
