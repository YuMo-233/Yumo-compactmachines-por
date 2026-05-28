execute store result score item1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[5].add 10000

execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[5].xh 10000

execute store result entity @s data.yumo_cmp_Item_xh[5].add double 0.0001 run scoreboard players operation item1 yumo_cmp_item -= item2 yumo_cmp_item
