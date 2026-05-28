data modify block ~ ~ ~ Items insert 20 value {Count:1b,Slot:20b,id:"minecraft:dirt"}

data modify block ~ ~ ~ Items[20].id set from entity @s data.yumo_cmp_Item_cl[4].id
data modify block ~ ~ ~ Items[20].tag set from entity @s data.yumo_cmp_Item_cl[4].tag

execute store result score item yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[4].add 10000
execute store result entity @s data.yumo_cmp_Item_cl[4].add double 0.0001 run scoreboard players operation item yumo_cmp_item -= 10000 yumo_cmp_configs

execute if score item yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air4/20
