#向容器添加物品

##获取物品数量(小于1不执行) //  添加物品
execute store result score item0 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[0].add 10000
execute if score item0 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air0/0

execute store result score item1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[1].add 10000
execute if score item1 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air1/0

execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[2].add 10000
execute if score item2 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air2/0

execute store result score item3 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[3].add 10000
execute if score item3 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air3/0

execute store result score item4 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[4].add 10000
execute if score item4 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air4/0

execute store result score item5 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[5].add 10000
execute if score item5 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air5/0