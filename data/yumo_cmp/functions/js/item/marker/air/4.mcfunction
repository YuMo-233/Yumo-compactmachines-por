execute unless data entity @s data.yumo_cmp_Item_js[4].id at @s run data modify entity @s data.yumo_cmp_Item_js[4].tag set from block ~ ~ ~ Items[0].tag
execute unless data entity @s data.yumo_cmp_Item_js[4].id at @s run data modify entity @s data.yumo_cmp_Item_js[4].id set from block ~ ~ ~ Items[0].id

execute if data entity @s data.yumo_cmp_Item_js[4].id run function yumo_cmp:js/item/marker/id/4
