execute store result score item_xh yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[3].Count 10000
execute store result score item_xh1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[3].xh 10000
data modify entity @s data.yumo_cmp_Item_xh[3].Count set value 0

scoreboard players operation item_xh yumo_cmp_item /= configs_Count_time yumo_cmp_configs

scoreboard players operation item_xh yumo_cmp_item *= configs_Count_count yumo_cmp_configs
scoreboard players operation item_xh yumo_cmp_item /= 100 yumo_cmp_configs

scoreboard players operation item_xh1 yumo_cmp_item *= configs_Count_count100 yumo_cmp_configs
scoreboard players operation item_xh1 yumo_cmp_item /= 100 yumo_cmp_configs

scoreboard players operation item_xh yumo_cmp_item += item_xh1 yumo_cmp_item

execute store result entity @s data.yumo_cmp_Item_xh[3].xh double 0.0001 run scoreboard players get item_xh yumo_cmp_item
