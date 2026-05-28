#检测是否是空气

##不是空气(格子slot)
execute if data block ~ ~ ~ {Items:[{Slot:0b}]} run function yumo_cmp:cl/item/marker/block_item/air/air0/-1_2

##是空气(格子slot)
execute unless data block ~ ~ ~ {Items:[{Slot:0b}]} run function yumo_cmp:cl/item/marker/block_item/air/air0/-1_1
