data merge block 0 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}
data merge block 1 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}

data remove entity @s data.yumo_cmp_Item_block
execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @s run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~-1 ~ tunnel_data.items.Items

execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~ ~ Items

data modify block 0 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_block[0].id
data modify block 0 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_block[0].tag

data modify block 1 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_xh[5].id
data modify block 1 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_xh[5].tag

execute if blocks 1 0 0 1 0 0 0 0 0 all at @s run function yumo_cmp:xh/item/marker/add/5_1

execute unless blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:xh/item/marker/air/6
