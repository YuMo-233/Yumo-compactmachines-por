#容器格子是否大于等于堆叠上限
execute store result score item64 yumo_cmp_item run data get block ~ ~ ~ Items[0].Count 10000

##大于
##跳到下一个格子
execute if score item64 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/air/air0/1

##小于
##合并物品
execute unless score item64 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/64/64_0/0_1