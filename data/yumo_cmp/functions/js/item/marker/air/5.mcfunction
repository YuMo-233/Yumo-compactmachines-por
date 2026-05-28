execute unless data entity @s data.yumo_cmp_Item_js[5].id at @s run data modify entity @s data.yumo_cmp_Item_js[5].tag set from block ~ ~ ~ Items[0].tag
execute unless data entity @s data.yumo_cmp_Item_js[5].id at @s run data modify entity @s data.yumo_cmp_Item_js[5].id set from block ~ ~ ~ Items[0].id

execute if data entity @s data.yumo_cmp_Item_js[5].id run function yumo_cmp:js/item/marker/id/5
