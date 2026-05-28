#存储
function yumo_cmp:cl/item_xh/marker/block_item/id/0

#还有物品就递归
execute at @s at @e[tag=yumo_cmp_clxh_marker,limit=1] if data block ~ ~ ~ Items[0] in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item_xh/marker/add