execute store result score pos0 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_load.pos[0]
execute store result score pos1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_load.pos[1]
execute store result score pos2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_load.pos[2]

execute as @e[tag=yumo_cmp_bj_block_marker] if data entity @s {data:{yumo_cmp_bj:{js:1b}}} run function yumo_cmp:xh/item/marker/bj_1

#生成标记实体
execute at @e[tag=yumo_cmp_bj_block_marker] run function yumo_cmp:xh/item/marker/bj_facing/facing

tag @e[tag=yumo_cmp_marker_tag] remove yumo_cmp_marker_tag

