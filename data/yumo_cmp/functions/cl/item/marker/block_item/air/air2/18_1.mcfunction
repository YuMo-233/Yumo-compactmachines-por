data modify block ~ ~ ~ Items insert 18 value {Count:1b,Slot:18b,id:"minecraft:dirt"}

data modify block ~ ~ ~ Items[18].id set from entity @s data.yumo_cmp_Item_cl[2].id
data modify block ~ ~ ~ Items[18].tag set from entity @s data.yumo_cmp_Item_cl[2].tag

execute store result score item yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl[2].add 10000
execute store result entity @s data.yumo_cmp_Item_cl[2].add double 0.0001 run scoreboard players operation item yumo_cmp_item -= 10000 yumo_cmp_configs

execute if score item yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air2/18
