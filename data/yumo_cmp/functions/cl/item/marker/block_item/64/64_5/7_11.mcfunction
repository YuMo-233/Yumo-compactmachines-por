function yumo_cmp:main/extern/item_count_xs

execute store result block ~ ~ ~ Items[7].Count double 0.0001 run scoreboard players get item1 yumo_cmp_item
execute store result entity @s data.yumo_cmp_Item_cl[5].add double 0.0001 run scoreboard players get itemxs1 yumo_cmp_item
