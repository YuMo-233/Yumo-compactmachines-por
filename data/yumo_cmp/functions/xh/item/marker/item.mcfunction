#存入物品到潜影盒
#获取数量，如果有才执行
execute store result score item0 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[0].add 10000

execute if score item0 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:xh/item/marker/block_item/id/0


execute store result score item1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[1].add 10000

execute if score item1 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:xh/item/marker/block_item/id/1


execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[2].add 10000

execute if score item2 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:xh/item/marker/block_item/id/2


execute store result score item3 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[3].add 10000

execute if score item3 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:xh/item/marker/block_item/id/3


execute store result score item4 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[4].add 10000

execute if score item4 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:xh/item/marker/block_item/id/4


execute store result score item5 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[5].add 10000

execute if score item5 yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:xh/item/marker/block_item/id/5




