execute store result score item64_125 yumo_cmp_item at @s run data get block ~ ~ ~ Items[25].Count 10000

execute if score item64_125 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/air/air1/26

execute unless score item64_125 yumo_cmp_item >= duidie yumo_cmp_configs at @s run function yumo_cmp:cl/item/marker/block_item/64/64_1/25_1
