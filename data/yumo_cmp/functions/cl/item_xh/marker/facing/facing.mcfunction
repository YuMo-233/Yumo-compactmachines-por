#方向方块
scoreboard players set facing yumo_cmp_item 1
#面
execute if score facing yumo_cmp_item matches 1 if block ~1 ~ ~ #minecraft:yumo_cmp_items_block run function yumo_cmp:cl/item_xh/marker/facing/1_0_0

execute if score facing yumo_cmp_item matches 1 if block ~-1 ~ ~ #minecraft:yumo_cmp_items_block run function yumo_cmp:cl/item_xh/marker/facing/-1_0_0

execute if score facing yumo_cmp_item matches 1 if block ~ ~1 ~ #minecraft:yumo_cmp_items_block run function yumo_cmp:cl/item_xh/marker/facing/0_1_0

execute if score facing yumo_cmp_item matches 1 if block ~ ~-1 ~ #minecraft:yumo_cmp_items_block run function yumo_cmp:cl/item_xh/marker/facing/0_-1_0

execute if score facing yumo_cmp_item matches 1 if block ~ ~ ~1 #minecraft:yumo_cmp_items_block run function yumo_cmp:cl/item_xh/marker/facing/0_0_1

execute if score facing yumo_cmp_item matches 1 if block ~ ~ ~-1 #minecraft:yumo_cmp_items_block run function yumo_cmp:cl/item_xh/marker/facing/0_0_-1

