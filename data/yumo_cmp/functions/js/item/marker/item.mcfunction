#记录物品
execute if data block ~ ~ ~ Items[0] in yumo_cmp:yumo_cmp_load run function yumo_cmp:js/item/marker/air/0

#如果还有物品就递归，直到没有物品

execute if data block ~ ~ ~ Items[0] run function yumo_cmp:js/item/marker/item