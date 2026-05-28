execute at @s if data block ~ ~ ~ {Items:[{Slot:17b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air2/17_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:17b}]} run function yumo_cmp:cl/item/marker/block_item/air/air2/17_1
