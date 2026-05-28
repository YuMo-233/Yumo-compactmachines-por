#存入物品到实体
execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} if data block ~ ~-1 ~ tunnel_data.items.Items[0] in yumo_cmp:yumo_cmp_load run function yumo_cmp:xh/item/marker/air/0

execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] if data block ~ ~ ~ Items[0] in yumo_cmp:yumo_cmp_load run function yumo_cmp:xh/item/marker/air/0

#如果还有物品就递归，直到没有物品
execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} if data block ~ ~-1 ~ tunnel_data.items.Items[0] run function yumo_cmp:xh/item/marker/add

execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] if data block ~ ~ ~ Items[0] run function yumo_cmp:xh/item/marker/add