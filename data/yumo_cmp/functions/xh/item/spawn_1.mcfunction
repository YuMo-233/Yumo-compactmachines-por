setblock ~ ~ ~ minecraft:air destroy
setblock ~ ~ ~ minecraft:shulker_box

data modify block ~ ~ ~ Lock set value yumo_cmp_cl_lock

#标记实体
execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["yumo_cmp_marker","yumo_cmp_xh_marker","yumo_cmp_xh_item_marker","yumo_cmp_xh_marker_data"]}

#最多支持6种消耗物
data modify entity @e[tag=yumo_cmp_xh_marker_data,limit=1] data.yumo_cmp_Item_xh set value [{},{},{},{},{},{}]
data modify entity @e[tag=yumo_cmp_xh_marker_data,limit=1] data.yumo_cmp_Item_xh[].Count set value 0

#修改接口
execute at @e[tag=yumo_cmp_xh_marker_data,limit=1] run data modify block ~ ~-1 ~ tunnel_data.items.Size set value 6



#同步机器坐标
execute as @e[tag=yumo_cmp_xh_marker_data,limit=1] at @s run function yumo_cmp:main/extern/player_pos

execute as @e[tag=yumo_cmp_xh_marker_data,limit=1] at @s if data block ~ ~-1 ~ {tunnel_type:"compactmachines:item"} run data modify entity @s data.yumo_cmp_Item_load.pos set from block ~ ~-1 ~ connection.pos



data modify entity @e[tag=yumo_cmp_xh_marker_data,limit=1] data.yumo_cmp_Item_load.stop set value 0b
data modify entity @e[tag=yumo_cmp_xh_marker_data,limit=1] data.yumo_cmp_Item_load.js set value 0b

tag @e[tag=yumo_cmp_xh_marker_data] remove yumo_cmp_xh_marker_data

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:hopper"}},distance=..1,limit=1]

#execute unless entity @s[type=minecraft:item,nbt={Item:{id:"compactmachines:personal_shrinking_device"}}] run kill @s

#(传送器物品，不清除掉落物)
function yumo_cmp:main/extern/play_item/item