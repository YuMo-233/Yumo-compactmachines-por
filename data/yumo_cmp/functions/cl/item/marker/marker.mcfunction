#粒子
execute if data entity @s {data:{yumo_cmp_Item_cl_xh_open:0b}} run particle minecraft:glow ~ ~0.5 ~ 0 0 0 0 1
execute unless data entity @s {data:{yumo_cmp_Item_cl_xh_open:0b}} run particle minecraft:dust 1 0 0 1 ~ ~0.5 ~ 0 0.3 0 1 1

#清除自己
execute unless block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:cl/item/marker/kill


#生产
execute if data entity @s {data:{yumo_cmp_Item_cl_xh_open:0b}} run function yumo_cmp:cl/item/marker/add/add


#可视化
#function yumo_cmp:cl/item/marker/vz/vz_cl

execute if block ~ ~ ~ #minecraft:shulker_boxes run function yumo_cmp:cl/item/marker/item

data remove entity @s data.yumo_cmp_Item_block