execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} unless data entity @s data.yumo_cmp_Item_xh[5].id at @s run data modify entity @s data.yumo_cmp_Item_xh[5].tag set from block ~ ~-1 ~ tunnel_data.items.Items[0].tag

execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] unless data entity @s data.yumo_cmp_Item_xh[5].id run data modify entity @s data.yumo_cmp_Item_xh[5].tag set from block ~ ~ ~ Items[0].tag


execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} unless data entity @s data.yumo_cmp_Item_xh[5].id at @s run data modify entity @s data.yumo_cmp_Item_xh[5].id set from block ~ ~-1 ~ tunnel_data.items.Items[0].id

execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] unless data entity @s data.yumo_cmp_Item_xh[5].id run data modify entity @s data.yumo_cmp_Item_xh[5].id set from block ~ ~ ~ Items[0].id


execute if data entity @s data.yumo_cmp_Item_xh[5].id run function yumo_cmp:xh/item/marker/add/5
