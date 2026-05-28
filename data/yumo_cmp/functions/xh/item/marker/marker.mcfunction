#粒子
particle minecraft:wax_off ~ ~1 ~ 0.1 0.3 0.1 1 1

execute unless block ~ ~ ~ #minecraft:shulker_boxes run data modify block ~ ~-1 ~ tunnel_data.items.Size set value 10
execute unless block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:xh/item/marker/kill

#生成标记实体于外面机器
execute if entity @a[distance=..50] run data modify entity @s data.yumo_cmp_Item_load.js set value 0b
execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} run function yumo_cmp:xh/item/marker/bj

#存入物品
execute if block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:xh/item/marker/add

#存入物品到潜影盒
execute if block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:xh/item/marker/item

#计算消耗
execute if score Count_time yumo_cmp_configs = configs_Count_time yumo_cmp_configs run function yumo_cmp:xh/item/marker/xh/xh

#粒子效果
execute at @e[tag=yumo_cmp_xhbj_marker,limit=1] run particle minecraft:glow ~ ~0.5 ~ 0 0 0 0 1




kill @e[tag=yumo_cmp_xhbj_marker]