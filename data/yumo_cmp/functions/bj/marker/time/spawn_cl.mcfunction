#烟火庆祝
summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Flicker:1b,Type:2,Colors:[I;16777215],FadeColors:[I;16772608]}]}}}}

#生成产量标记
summon minecraft:marker ~ ~ ~ {Tags:["yumo_cmp_marker","yumo_cmp_cl_marker","yumo_cmp_cl_item_marker","yumo_cmp_cl_marker_data"]}


#转移数据
#消耗                  
data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data.yumo_cmp_Item_xh set from entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_xh_marker,limit=1] data.yumo_cmp_Item_xh
#清除空间内
data modify entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_xh_marker,limit=1] data.yumo_cmp_Item_xh[].add set value 0d

#产量
data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data.yumo_cmp_Item_cl set from entity @s data.yumo_cmp_Item_cl

#压缩空间item
data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data.yumo_cmp_room_Item set from entity @s data.yumo_cmp_bj.Item


#生产状态
execute as @e[tag=yumo_cmp_cl_marker_data,limit=1] if data entity @s data.yumo_cmp_Item_xh run data modify entity @s data.yumo_cmp_Item_cl_xh_open set value 1b
execute as @e[tag=yumo_cmp_cl_marker_data,limit=1] unless data entity @s data.yumo_cmp_Item_xh run data modify entity @s data.yumo_cmp_Item_cl_xh_open set value 0b

#初始化，不暂停
data modify entity @e[tag=yumo_cmp_cl_marker_data,limit=1] data.yumo_cmp_Item_load.stop set value 0b

#颜色
function yumo_cmp:bj/marker/time/spawn_cl_color

#暂停方块内
execute at @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] run forceload remove ~ ~ ~ ~

execute at @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] as @e[tag=yumo_cmp_marker,distance=..50] run data modify entity @s data.yumo_cmp_Item_load.stop set value 1b


#移除tag
tag @e[tag=yumo_cmp_cl_marker_data] remove yumo_cmp_cl_marker_data




kill @s
kill @e[tag=yumo_cmp_text_tag]