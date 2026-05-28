#
scoreboard objectives add yumo_cmp_item dummy

#生成方块
execute as @e[tag=yumo_cmp_item_frame_cl] at @s run function yumo_cmp:cl/fluid/spawn/all

#标记实体
execute as @e[tag=yumo_cmp_cl_item_marker] unless data entity @s {data:{yumo_cmp_Item_load:{stop:1b}}} at @s run function yumo_cmp:cl/fluid/marker/marker

execute as @e[tag=yumo_cmp_cl_item_marker] at @s if entity @a[distance=..50] run data modify entity @s data.yumo_cmp_Item_load.stop set value 0b

#变回压缩空间
execute as @e[tag=yumo_cmp_personal_shrinking_device,limit=1] at @s if entity @e[type=minecraft:item,nbt={Item:{tag:{EntityTag:{Tags:["yumo_cmp_item_frame_cl"]}}}},distance=..1] run function yumo_cmp:cl/item/marker/block

#换颜色
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:item_frame"}},limit=1] at @s if data entity @s {Item:{tag:{EntityTag:{Item:{tag:{CustomModelData:307815}}}}}} run function yumo_cmp:main/extern/item_color/color


#
scoreboard objectives remove yumo_cmp_item