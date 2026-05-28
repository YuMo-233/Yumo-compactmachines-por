execute store result score item64_59 yumo_cmp_item at @s run data get block ~ ~ ~ Items[9].Count 10000

execute if score item64_59 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/air/air5/10

execute unless score item64_59 yumo_cmp_item >= duidie yumo_cmp_configs at @s run function yumo_cmp:cl/item/marker/block_item/64/64_5/9_1
