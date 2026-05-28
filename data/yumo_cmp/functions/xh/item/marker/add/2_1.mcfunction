execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[2].add 10000

execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} store result score item1 yumo_cmp_item run data get block ~ ~-1 ~ tunnel_data.items.Items[0].Count 10000

execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] store result score item1 yumo_cmp_item run data get block ~ ~ ~ Items[0].Count 10000

execute store result entity @s data.yumo_cmp_Item_xh[2].add double 0.0001 run scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item
execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} run data remove block ~ ~-1 ~ tunnel_data.items.Items[0]

execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] run data remove block ~ ~ ~ Items[0]
