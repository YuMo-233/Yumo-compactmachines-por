
#计算时间
execute store result score js_time yumo_cmp_item run data get entity @s data.yumo_cmp_Item_load.js_time
execute store result entity @s data.yumo_cmp_Item_load.js_time int 1 run scoreboard players add js_time yumo_cmp_item 1

#显示时间
##百分比
execute if score js_time_configs yumo_cmp_configs matches 0 run function yumo_cmp:bj/marker/time/time_configs_0

##格子
execute if score js_time_configs yumo_cmp_configs matches 1 run function yumo_cmp:bj/marker/time/time_configs_1

#完成
execute if score js_time yumo_cmp_item matches 12000.. at @s run function yumo_cmp:bj/marker/time/spawn_cl