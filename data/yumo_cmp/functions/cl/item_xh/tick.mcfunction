#
scoreboard objectives add yumo_cmp_item dummy

#标记实体
execute as @e[tag=yumo_cmp_cl_marker] if data entity @s data.yumo_cmp_Item_xh at @s run function yumo_cmp:cl/item_xh/marker/marker


#
scoreboard objectives remove yumo_cmp_item