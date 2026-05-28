execute at @s if data block ~ ~ ~ {Items:[{Slot:8b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air1/8_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:8b}]} run function yumo_cmp:cl/item/marker/block_item/air/air1/8_1
