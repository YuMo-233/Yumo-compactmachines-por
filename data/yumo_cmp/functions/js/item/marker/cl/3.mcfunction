execute store result score item_cl yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js[3].Count 10000
execute store result score item_cl1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js[3].cl 10000
data modify entity @s data.yumo_cmp_Item_js[3].Count set value 0

scoreboard players operation item_cl yumo_cmp_item /= configs_Count_time yumo_cmp_configs

scoreboard players operation item_cl yumo_cmp_item *= configs_Count_count yumo_cmp_configs
scoreboard players operation item_cl yumo_cmp_item /= 100 yumo_cmp_configs

scoreboard players operation item_cl1 yumo_cmp_item *= configs_Count_count100 yumo_cmp_configs
scoreboard players operation item_cl1 yumo_cmp_item /= 100 yumo_cmp_configs

scoreboard players operation item_cl yumo_cmp_item += item_cl1 yumo_cmp_item

execute store result entity @s data.yumo_cmp_Item_js[3].cl double 0.0001 run scoreboard players get item_cl yumo_cmp_item
