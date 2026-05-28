execute at @s if data block ~ ~ ~ {Items:[{Slot:9b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air5/9_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:9b}]} run function yumo_cmp:cl/item/marker/block_item/air/air5/9_1
