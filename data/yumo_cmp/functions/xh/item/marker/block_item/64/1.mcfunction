execute store result score item641 yumo_cmp_item run data get block ~ ~ ~ Items[{Slot:1b}].Count 10000

execute unless score item641 yumo_cmp_item >= duidie_xh yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/1
