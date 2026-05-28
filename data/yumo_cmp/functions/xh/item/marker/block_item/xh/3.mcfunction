execute store result score itme_Count_1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[3].Count 10000

execute store result score itme_Count_2 yumo_cmp_item run scoreboard players get item1^ yumo_cmp_item

scoreboard players operation itme_Count_1 yumo_cmp_item += itme_Count_2 yumo_cmp_item

execute store result entity @s data.yumo_cmp_Item_xh[3].Count double 0.0001 run scoreboard players get itme_Count_1 yumo_cmp_item

