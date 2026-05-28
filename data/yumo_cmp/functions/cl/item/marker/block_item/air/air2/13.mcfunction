execute at @s if data block ~ ~ ~ {Items:[{Slot:13b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air2/13_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:13b}]} run function yumo_cmp:cl/item/marker/block_item/air/air2/13_1
