execute at @s if data block ~ ~ ~ {Items:[{Slot:25b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air4/25_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:25b}]} run function yumo_cmp:cl/item/marker/block_item/air/air4/25_1
