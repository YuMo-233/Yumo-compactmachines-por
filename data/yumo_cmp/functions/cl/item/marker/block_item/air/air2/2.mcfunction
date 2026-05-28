execute at @s if data block ~ ~ ~ {Items:[{Slot:2b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air2/2_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:2b}]} run function yumo_cmp:cl/item/marker/block_item/air/air2/2_1
