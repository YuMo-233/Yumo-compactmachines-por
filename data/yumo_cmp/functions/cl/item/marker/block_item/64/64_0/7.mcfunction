execute store result score item64_07 yumo_cmp_item at @s run data get block ~ ~ ~ Items[7].Count 10000

execute if score item64_07 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/air/air0/8

execute unless score item64_07 yumo_cmp_item >= duidie yumo_cmp_configs at @s run function yumo_cmp:cl/item/marker/block_item/64/64_0/7_1
