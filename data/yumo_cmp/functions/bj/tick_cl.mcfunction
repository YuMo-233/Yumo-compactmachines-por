#
scoreboard objectives add yumo_cmp_item dummy


#标记实体
execute as @e[tag=yumo_cmp_bj_block_marker] if data entity @s {data:{yumo_cmp_bj:{js:1b}}} at @s run function yumo_cmp:cl/item/marker/item

execute as @e[tag=yumo_cmp_bj_block_marker] if data entity @s {data:{yumo_cmp_bj:{js:1b}}} at @s run data remove entity @s data.yumo_cmp_Item_block
#
scoreboard objectives remove yumo_cmp_item