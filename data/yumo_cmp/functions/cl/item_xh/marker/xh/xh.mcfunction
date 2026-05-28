scoreboard players set xh yumo_cmp_item 1

execute if data entity @s data.yumo_cmp_Item_xh[0] run function yumo_cmp:cl/item_xh/marker/xh/0

execute if data entity @s data.yumo_cmp_Item_xh[1] run function yumo_cmp:cl/item_xh/marker/xh/1

execute if data entity @s data.yumo_cmp_Item_xh[2] run function yumo_cmp:cl/item_xh/marker/xh/2

execute if data entity @s data.yumo_cmp_Item_xh[3] run function yumo_cmp:cl/item_xh/marker/xh/3

execute if data entity @s data.yumo_cmp_Item_xh[4] run function yumo_cmp:cl/item_xh/marker/xh/4

execute if data entity @s data.yumo_cmp_Item_xh[5] run function yumo_cmp:cl/item_xh/marker/xh/5


execute if score xh yumo_cmp_item matches 1 run data modify entity @s data.yumo_cmp_Item_cl_xh_open set value 0b

execute if score xh yumo_cmp_item matches 1 if data entity @s data.yumo_cmp_Item_xh[0] run function yumo_cmp:cl/item_xh/marker/xh/xh_0
execute if score xh yumo_cmp_item matches 1 if data entity @s data.yumo_cmp_Item_xh[1] run function yumo_cmp:cl/item_xh/marker/xh/xh_1
execute if score xh yumo_cmp_item matches 1 if data entity @s data.yumo_cmp_Item_xh[2] run function yumo_cmp:cl/item_xh/marker/xh/xh_2
execute if score xh yumo_cmp_item matches 1 if data entity @s data.yumo_cmp_Item_xh[3] run function yumo_cmp:cl/item_xh/marker/xh/xh_3
execute if score xh yumo_cmp_item matches 1 if data entity @s data.yumo_cmp_Item_xh[4] run function yumo_cmp:cl/item_xh/marker/xh/xh_4
execute if score xh yumo_cmp_item matches 1 if data entity @s data.yumo_cmp_Item_xh[5] run function yumo_cmp:cl/item_xh/marker/xh/xh_5
