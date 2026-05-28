execute at @s run tp @s ~ ~-1000 ~
scoreboard players add @s yumo_cmp_player_pos_y 1000
execute if score @s yumo_cmp_player_pos_y matches ..-1000 run function yumo_cmp:ca/item_used/player_pos_tp/1000/-y
