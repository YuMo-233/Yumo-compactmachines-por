execute if entity @e[tag=yumo_cmp_xh_item_marker,distance=..50] run tag @s add yumo_cmp_spawn_error

execute if entity @e[tag=yumo_cmp_xh_item_marker,distance=..50] if score lang yumo_cmp_configs matches 0 run data merge entity @s {CustomName:"[{\"text\":\"[错误]每种类型的耗材计算方块只能有一个\",\"color\":\"dark_red\"}]",CustomNameVisible:1b}

execute if entity @e[tag=yumo_cmp_xh_item_marker,distance=..50] if score lang yumo_cmp_configs matches 1 run data merge entity @s {CustomName:"[{\"text\":\"[error]Each type of consumable calculation block can only have one type\",\"color\":\"dark_red\"}]",CustomNameVisible:1b}

execute unless entity @e[tag=yumo_cmp_xh_item_marker,distance=..50] run function yumo_cmp:xh/item/spawn_1