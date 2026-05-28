execute store result score item64_017 yumo_cmp_item at @s run data get block ~ ~ ~ Items[17].Count 10000

execute if score item64_017 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/air/air0/18

execute unless score item64_017 yumo_cmp_item >= duidie yumo_cmp_configs at @s run function yumo_cmp:cl/item/marker/block_item/64/64_0/17_1
