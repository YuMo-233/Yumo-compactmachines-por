execute store result score itme_Count_1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js[5].Count 1
execute store result score itme_Count_11 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js[5].add 1

execute store result score itme_Count_2 yumo_cmp_item run data get block ~ ~ ~ Items[0].Count 1

data remove block ~ ~ ~ Items[0]

scoreboard players operation itme_Count_1 yumo_cmp_item += itme_Count_2 yumo_cmp_item
scoreboard players operation itme_Count_11 yumo_cmp_item += itme_Count_2 yumo_cmp_item

execute store result entity @s data.yumo_cmp_Item_js[5].Count double 1 run scoreboard players get itme_Count_1 yumo_cmp_item
execute store result entity @s data.yumo_cmp_Item_js[5].add double 1 run scoreboard players get itme_Count_11 yumo_cmp_item

