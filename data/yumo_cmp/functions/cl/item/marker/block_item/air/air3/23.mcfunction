execute at @s if data block ~ ~ ~ {Items:[{Slot:23b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air3/23_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:23b}]} run function yumo_cmp:cl/item/marker/block_item/air/air3/23_1
