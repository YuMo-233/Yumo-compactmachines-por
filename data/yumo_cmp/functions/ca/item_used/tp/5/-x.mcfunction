execute at @s run tp @s ~-5120 ~ ~
scoreboard players add ca_pos0 yumo_cmp_item 5
execute if score ca_pos0 yumo_cmp_item matches ..-5 run function yumo_cmp:ca/item_used/tp/5/-x

