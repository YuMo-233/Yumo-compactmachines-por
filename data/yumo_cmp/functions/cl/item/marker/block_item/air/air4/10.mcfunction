execute at @s if data block ~ ~ ~ {Items:[{Slot:10b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air4/10_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:10b}]} run function yumo_cmp:cl/item/marker/block_item/air/air4/10_1
