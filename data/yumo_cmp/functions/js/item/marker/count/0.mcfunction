#获得已存的物品
execute store result score itme_Count_1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js[0].Count 1
execute store result score itme_Count_11 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js[0].add 1

#获得箱子物品
execute store result score itme_Count_2 yumo_cmp_item run data get block ~ ~ ~ Items[0].Count 1


#删除箱子物品
data remove block ~ ~ ~ Items[0]

#计算
scoreboard players operation itme_Count_1 yumo_cmp_item += itme_Count_2 yumo_cmp_item
scoreboard players operation itme_Count_11 yumo_cmp_item += itme_Count_2 yumo_cmp_item

#存储物品
execute store result entity @s data.yumo_cmp_Item_js[0].Count double 1 run scoreboard players get itme_Count_1 yumo_cmp_item
execute store result entity @s data.yumo_cmp_Item_js[0].add double 1 run scoreboard players get itme_Count_11 yumo_cmp_item