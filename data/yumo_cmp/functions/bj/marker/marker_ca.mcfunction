#粒子
particle minecraft:composter ~ ~0.5 ~ 0.1 0.3 0.1 10 5

#文本
execute positioned ~ ~0.9 ~ run tag @e[tag=yumo_cmp_text,limit=1,sort=nearest,distance=..1] add yumo_cmp_text_tag

#判断与连接
execute if data entity @s {data:{yumo_cmp_bj:{js:0b}}} as @e[type=minecraft:item,nbt={Item:{id:"minecraft:polished_deepslate"}},distance=..1] if data entity @s Thrower run tag @s add yumo_cmp_item_tag
#深板岩
execute if data entity @s {data:{yumo_cmp_bj:{js:0b}}} as @e[type=minecraft:item,nbt={Item:{id:"minecraft:deepslate"}},distance=..1] if data entity @s Thrower run tag @s add yumo_cmp_item_tag

execute if data entity @s {data:{yumo_cmp_bj:{js:0b}}} if entity @e[tag=yumo_cmp_item_tag] run function yumo_cmp:bj/marker/jc/load

tag @e[tag=yumo_cmp_item_tag] remove yumo_cmp_item_tag

#清除自己
execute if data entity @s {data:{yumo_cmp_bj:{js:0b}}} unless entity @e[distance=..0.5,tag=yumo_cmp_ca_marker] run function yumo_cmp:bj/marker/kill

execute if data entity @s {data:{yumo_cmp_bj:{js:1b}}} unless block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:bj/marker/kill_1
execute if data entity @s {data:{yumo_cmp_bj:{js:1b}}} unless block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:bj/marker/kill

#传递内部数据(ts)
execute if data entity @s {data:{yumo_cmp_bj:{js:1b}}} if block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:bj/marker/ts/ts

#统计计时与转化
execute if data entity @s {data:{yumo_cmp_bj:{js:1b}}} if block ~ ~ ~ #minecraft:shulker_boxes at @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] unless entity @a[distance=..50,tag=!yumo_cmp_playe] run function yumo_cmp:bj/marker/time/time

tag @e[tag=yumo_cmp_marker_tag] remove yumo_cmp_marker_tag
tag @e[tag=yumo_cmp_text_tag] remove yumo_cmp_text_tag
