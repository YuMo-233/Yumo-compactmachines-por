data modify entity @s data.yumo_cmp_bj.js set value 1b

#放置方块
execute if block ~ ~-1 ~ #minecraft:yumo_cmp_machine run function yumo_cmp:bj/marker/jc/block_1

execute if entity @e[distance=..0.5,limit=1,tag=yumo_cmp_ca_marker,sort=nearest] run function yumo_cmp:bj/marker/jc/block_2

#设置强制加载
execute at @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] run forceload add ~ ~ ~ ~

#如果是玩家式强加载
execute if entity @e[tag=yumo_cmp_item_tag,nbt={Item:{id:"minecraft:deepslate"}}] run data modify entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] data.yumo_cmp_Item_load.player_load set value 1b

#设置密码
data modify block ~ ~ ~ Lock set value yumo_cmp_cl_lock

execute as @e[type=item,limit=1,sort=nearest] if data entity @s Item.tag.room_pos run tag @s add yumo_cmp_tag


execute if data entity @s {data:{yumo_cmp_bj:{ca:0b}}} run data modify entity @s data.yumo_cmp_bj.Item set from entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item

execute if data entity @s {data:{yumo_cmp_bj:{ca:1b}}} run function yumo_cmp:bj/marker/jc/player_2


data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"text\":\"0%\",\"color\":\"dark_red\"}]"}



kill @e[type=item,limit=1,sort=nearest]

kill @e[tag=yumo_cmp_tag]