execute at @s if data block ~ ~ ~ {Items:[{Slot:18b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air0/18_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:18b}]} run function yumo_cmp:cl/item/marker/block_item/air/air0/18_1
