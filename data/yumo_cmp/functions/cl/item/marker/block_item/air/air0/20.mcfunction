execute at @s if data block ~ ~ ~ {Items:[{Slot:20b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air0/20_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:20b}]} run function yumo_cmp:cl/item/marker/block_item/air/air0/20_1
