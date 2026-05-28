scoreboard objectives add yumo_cmp_item dummy


#生成标记压缩空间方块
execute as @e[tag=yumo_cmp_item_frame_ca] at @s run function yumo_cmp:ca/spawn

#标记实体
execute as @e[tag=yumo_cmp_ca_marker] at @s run function yumo_cmp:ca/marker/marker



scoreboard objectives remove yumo_cmp_item