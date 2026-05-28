execute store result score pos_y yumo_cmp_item run data get entity @s Pos[1]

execute if score pos_y yumo_cmp_item matches ..37 run tp @s ~ 40.5 ~
execute if score pos_y yumo_cmp_item matches ..37 run effect give @s minecraft:slow_falling 1 0 true