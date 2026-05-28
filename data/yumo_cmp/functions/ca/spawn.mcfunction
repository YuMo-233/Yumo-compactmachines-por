setblock ~ ~ ~ minecraft:air destroy
#方块类型
function yumo_cmp:ca/spawn_block

#标记
execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["yumo_cmp_marker","yumo_cmp_ca_marker","yumo_cmp_ca_marker_data"]}
                                       
data modify entity @e[tag=yumo_cmp_ca_marker_data,limit=1] data set from entity @s Item.tag.data

tag @e[tag=yumo_cmp_ca_marker_data] remove yumo_cmp_ca_marker_data

kill @s
