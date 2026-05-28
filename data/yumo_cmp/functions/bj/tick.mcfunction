scoreboard objectives add yumo_cmp_item dummy


#生成标记压缩空间方块
execute as @e[tag=yumo_cmp_personal_shrinking_device,limit=1] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:yumo_cmp_machine unless entity @e[distance=..1,tag=yumo_cmp_marker] run function yumo_cmp:bj/spawn

execute as @e[tag=yumo_cmp_personal_shrinking_device,limit=1] at @s positioned ~ ~-1 ~ if entity @e[distance=..0.5,tag=yumo_cmp_ca_marker] unless entity @e[distance=..1,tag=yumo_cmp_marker,tag=!yumo_cmp_ca_marker] run function yumo_cmp:bj/spawn_ca

#标记实体
execute as @e[tag=yumo_cmp_bj_block_marker] if data entity @s {data:{yumo_cmp_bj:{ca:0b}}} at @s run function yumo_cmp:bj/marker/marker

execute as @e[tag=yumo_cmp_bj_block_marker] if data entity @s {data:{yumo_cmp_bj:{ca:1b}}} at @s run function yumo_cmp:bj/marker/marker_ca



scoreboard objectives remove yumo_cmp_item

