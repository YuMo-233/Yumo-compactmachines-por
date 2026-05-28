#容器格子是否大于等于堆叠上限
execute store result score item640 yumo_cmp_item run data get block ~ ~ ~ Items[{Slot:0b}].Count 10000

##小于
##合并物品
execute unless score item640 yumo_cmp_item >= duidie_xh yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/0