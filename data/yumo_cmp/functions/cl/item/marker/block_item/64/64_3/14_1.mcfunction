execute store result score item1 yumo_cmp_item run data get block ~ ~ ~ Items[14].Count 10000
execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[3].add 10000

scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item

execute unless score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/64/64_3/14_11

execute if score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/64/64_3/14_12

