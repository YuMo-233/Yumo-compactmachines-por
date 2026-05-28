execute at @s if data block ~ ~ ~ {Items:[{Slot:22b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air3/22_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:22b}]} run function yumo_cmp:cl/item/marker/block_item/air/air3/22_1
