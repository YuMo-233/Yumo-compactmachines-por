#获取物品数量
##存量
execute store result score item1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[0].add 10000

##容器物品数量
execute store result score item2 yumo_cmp_item run data get block ~ ~ ~ Items[0].Count 10000

#存储到存量
execute store result entity @s data.yumo_cmp_Item_xh[0].add double 0.0001 run scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item

#清除容器物品
data remove block ~ ~ ~ Items[0]