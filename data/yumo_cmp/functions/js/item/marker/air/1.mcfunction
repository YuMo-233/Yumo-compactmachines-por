execute unless data entity @s data.yumo_cmp_Item_js[1].id at @s run data modify entity @s data.yumo_cmp_Item_js[1].tag set from block ~ ~ ~ Items[0].tag
execute unless data entity @s data.yumo_cmp_Item_js[1].id at @s run data modify entity @s data.yumo_cmp_Item_js[1].id set from block ~ ~ ~ Items[0].id

execute if data entity @s data.yumo_cmp_Item_js[1].id run function yumo_cmp:js/item/marker/id/1
