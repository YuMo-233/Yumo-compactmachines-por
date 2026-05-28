#是空气
execute unless data entity @s data.yumo_cmp_Item_js[0].id at @s run data modify entity @s data.yumo_cmp_Item_js[0].tag set from block ~ ~ ~ Items[0].tag

execute unless data entity @s data.yumo_cmp_Item_js[0].id at @s run data modify entity @s data.yumo_cmp_Item_js[0].id set from block ~ ~ ~ Items[0].id

#不是空气
execute if data entity @s data.yumo_cmp_Item_js[0].id run function yumo_cmp:js/item/marker/id/0
