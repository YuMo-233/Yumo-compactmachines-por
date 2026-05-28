#方块面
function yumo_cmp:cl/item_xh/marker/facing/facing

execute at @e[tag=yumo_cmp_clxh_marker,limit=1] run particle minecraft:glow ~ ~0.5 ~ 0 0 0 0 1

#存储消耗物品
execute at @e[tag=yumo_cmp_clxh_marker,limit=1] if data block ~ ~ ~ Items[0] in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item_xh/marker/add



#如果是1就消耗物品
execute if data entity @s {data:{yumo_cmp_Item_cl_xh_open:1b}} run function yumo_cmp:cl/item_xh/marker/xh/xh

kill @e[tag=yumo_cmp_clxh_marker]