execute at @s if data block ~ ~ ~ {Items:[{Slot:26b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air4/26_2

execute at @s unless data block ~ ~ ~ {Items:[{Slot:26b}]} run function yumo_cmp:cl/item/marker/block_item/air/air4/26_1
