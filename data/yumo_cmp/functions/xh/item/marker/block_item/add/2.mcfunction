execute store result score item1 yumo_cmp_item run data get block ~ ~ ~ Items[{Slot:2b}].Count 10000
execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[2].add 10000

scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item


execute store result score item1^ yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[2].add 10000


execute unless score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/2_1

execute if score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/2_2


execute store result score item2^ yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[2].add 10000
scoreboard players operation item1^ yumo_cmp_item -= item2^ yumo_cmp_configs

function yumo_cmp:xh/item/marker/block_item/xh/2
