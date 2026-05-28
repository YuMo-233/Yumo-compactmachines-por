#合并物品
#计算物品数量
execute store result score item1 yumo_cmp_item run data get block ~ ~ ~ Items[0].Count 10000
execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[0].add 10000

#数量相加
scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item

#小于堆叠上限
execute unless score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/64/64_0/0_11


#大于等于堆叠上限的话
execute if score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/64/64_0/0_12