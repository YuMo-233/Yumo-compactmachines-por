scoreboard objectives add yumo_cmp_item dummy



#生成标记(debug)
execute as @e[tag=yumo_cmp_item_frame_xh] at @s run function yumo_cmp:xh/item/spawn

#生成标记(正常方式)
#使用漏斗生成(只能有一个)
execute as @e[tag=!yumo_cmp_spawn_error,tag=yumo_cmp_personal_shrinking_device,limit=1] at @s unless entity @e[tag=yumo_cmp_marker,distance=..1] if data block ~ ~-1 ~ {tunnel_type:"compactmachines:item"} if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:hopper"}},distance=..1] run function yumo_cmp:xh/item/spawn

execute as @e[tag=!yumo_cmp_spawn_error,tag=yumo_cmp_personal_shrinking_device,limit=1] at @s unless entity @e[tag=yumo_cmp_marker,distance=..1] if block ~ ~-1 ~ minecraft:bedrock if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:hopper"}},distance=..1] run function yumo_cmp:xh/item/spawn

#标记实体
execute as @e[tag=yumo_cmp_xh_item_marker] unless data entity @s {data:{yumo_cmp_Item_load:{stop:1b}}} at @s run function yumo_cmp:xh/item/marker/marker

execute as @e[tag=yumo_cmp_xh_item_marker] at @s if entity @a[distance=..50] run data modify entity @s data.yumo_cmp_Item_load.stop set value 0b

scoreboard objectives remove yumo_cmp_item
