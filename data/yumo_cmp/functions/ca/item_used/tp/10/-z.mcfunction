execute at @s run tp @s ~ ~ ~-10240
scoreboard players add ca_pos1 yumo_cmp_item 10
execute if score ca_pos1 yumo_cmp_item matches ..-10 run function yumo_cmp:ca/item_used/tp/10/-z
