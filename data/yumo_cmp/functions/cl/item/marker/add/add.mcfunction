#检测和生成物品
execute in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/add/0
execute in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/add/1
execute in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/add/2
execute in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/add/3
execute in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/add/4
execute in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/add/5

data modify entity @s data.yumo_cmp_Item_cl_xh_open set value 1b

#没有消耗的话跳过
execute unless data entity @s data.yumo_cmp_Item_xh if data entity @s {data:{yumo_cmp_Item_cl_xh_open:1b}} run data modify entity @s data.yumo_cmp_Item_cl_xh_open set value 0b
#假如的液体（）
execute unless data entity @s data.yumo_cmp_Item_xh if data entity @s {data:{yumo_cmp_Item_cl_xh_open:2b}} run data modify entity @s data.yumo_cmp_Item_cl_xh_open set value 1b