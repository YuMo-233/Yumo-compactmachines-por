execute at @s run tp @s ~ ~-1 ~
scoreboard players add @s yumo_cmp_player_pos_y 1
execute if score @s yumo_cmp_player_pos_y matches ..-1 run function yumo_cmp:ca/item_used/player_pos_tp/1/-y
