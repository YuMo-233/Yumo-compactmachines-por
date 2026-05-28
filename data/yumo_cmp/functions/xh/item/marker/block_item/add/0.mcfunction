#合并物品
#计算物品数量
execute store result score item1 yumo_cmp_item run data get block ~ ~ ~ Items[{Slot:0b}].Count 10000
execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[0].add 10000

#数量相加
scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item


#改变之前的数量
execute store result score item1^ yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[0].add 10000


#小于堆叠上限
execute unless score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/0_1

#大于等于堆叠上限的话
execute if score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/0_2


#改变之后的数量
execute store result score item2^ yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[0].add 10000
#改变量
scoreboard players operation item1^ yumo_cmp_item -= item2^ yumo_cmp_configs

#储存消耗量
function yumo_cmp:xh/item/marker/block_item/xh/0