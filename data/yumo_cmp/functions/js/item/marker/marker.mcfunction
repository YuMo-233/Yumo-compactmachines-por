#粒子
particle minecraft:composter ~ ~0.5 ~ 0.1 0.3 0.1 10 5



#当检测到玩家时加载30秒区块

execute if entity @a[distance=..50,tag=!yumo_cmp_playe] run data modify entity @s data.yumo_cmp_load.load_time set value 600
execute if entity @s if entity @a[distance=..50,tag=!yumo_cmp_playe] run forceload add ~ ~


#没检测到玩家时减少计时，计时空后取消区块加载
execute unless entity @a[distance=..50,tag=!yumo_cmp_playe] store result score load_time yumo_cmp_item run data get entity @s data.yumo_cmp_load.load_time
execute unless entity @a[distance=..50,tag=!yumo_cmp_playe] store result entity @s data.yumo_cmp_load.load_time int 1 run scoreboard players remove load_time yumo_cmp_item 1
execute unless entity @a[distance=..50,tag=!yumo_cmp_playe] if score load_time yumo_cmp_item matches ..0 run forceload remove ~ ~

execute unless entity @a[distance=..50,tag=!yumo_cmp_playe] if score load_time yumo_cmp_item matches ..0 run kill @p[distance=..50,tag=yumo_cmp_playe]
execute unless entity @a[distance=..50,tag=!yumo_cmp_playe] if score load_time yumo_cmp_item matches ..0 run data modify entity @s data.yumo_cmp_Item_load.player_load set value 0b

#假玩家加载，有玩家进入就取消nbtjs
execute if data entity @s {data:{yumo_cmp_Item_load:{player_load:1b}}} if score load_time yumo_cmp_item matches 1.. if entity @s unless entity @a[distance=..50] run function yumo_cmp:main/extern/carpet_player/1
execute if entity @a[distance=..50,tag=!yumo_cmp_playe] run kill @p[distance=..50,tag=yumo_cmp_playe]
execute if entity @a[distance=..50,tag=!yumo_cmp_playe] run data modify entity @s data.yumo_cmp_Item_load.player_load set value 0b

#清除自己
execute unless block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:js/item/marker/kill

#存入物品
execute if block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:js/item/marker/item

#计算产量
execute if score Count_time yumo_cmp_configs = configs_Count_time yumo_cmp_configs run function yumo_cmp:js/item/marker/cl/cl

data remove entity @s data.yumo_cmp_Item_block