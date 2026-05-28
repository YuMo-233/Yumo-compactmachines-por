setblock ~ ~ ~ minecraft:air destroy
#颜色
function yumo_cmp:cl/item/spawn_color
#设置密码
data modify block ~ ~ ~ Lock set value yumo_cmp_cl_lock

#标记
execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["yumo_cmp_marker","yumo_cmp_cl_marker","yumo_cmp_cl_item_marker","yumo_cmp_cl_marker_data"]}
                                       
data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data set from entity @s Item.tag.data

#初始不暂停
data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data.yumo_cmp_Item_load.stop set value 0b

#初始显示
#data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data.yumo_cmp_Item_cl[].Count set value 1b
#data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data.yumo_cmp_Item_xh[].Count set value 1b
#data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data.yumo_cmp_Item_vz set value -1b

#继承容器物品
data modify block ~ ~ ~ Items set from entity @s Item.tag.data.BlockEntityTag.Items

tag @e[tag=yumo_cmp_cl_marker_data] remove yumo_cmp_cl_marker_data

kill @s
