execute if entity @e[tag=yumo_cmp_js_marker,distance=..50] run tag @s add yumo_cmp_spawn_error

execute if entity @e[tag=yumo_cmp_js_item_marker,distance=..50] if score lang yumo_cmp_configs matches 0 run data merge entity @s {CustomName:"[{\"text\":\"[错误]只能存在一个产量计算方块\",\"color\":\"dark_red\"}]",CustomNameVisible:1b}

execute if entity @e[tag=yumo_cmp_js_item_marker,distance=..50] if score lang yumo_cmp_configs matches 1 run data merge entity @s {CustomName:"[{\"text\":\"[error]Only one yield calculation block can exist\",\"color\":\"dark_red\"}]",CustomNameVisible:1b}


execute unless entity @e[tag=yumo_cmp_js_marker,distance=..50] run function yumo_cmp:js/item/spawn_1