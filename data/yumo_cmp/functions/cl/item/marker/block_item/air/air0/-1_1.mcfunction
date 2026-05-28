#替换格子内容为泥土
data modify block ~ ~ ~ Items insert 0 value {Count:1b,Slot:0b,id:"minecraft:dirt"}

#替换数据
data modify block ~ ~ ~ Items[0].Count set value 1
data modify block ~ ~ ~ Items[0].id set from entity @s data.yumo_cmp_Item_cl[0].id
data modify block ~ ~ ~ Items[0].tag set from entity @s data.yumo_cmp_Item_cl[0].tag

#存量减一
execute store result score item yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[0].add 10000
execute store result entity @s data.yumo_cmp_Item_cl[0].add double 0.0001 run scoreboard players operation item yumo_cmp_item -= 10000 yumo_cmp_configs

#如果还大于1就递归
execute if score item yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air0/0