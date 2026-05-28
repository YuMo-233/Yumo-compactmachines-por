data merge block 0 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}
data merge block 1 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}

data remove entity @s data.yumo_cmp_Item_block
execute at @s at @e[tag=yumo_cmp_clxh_marker,limit=1] run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~ ~ Items

data modify block 0 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_block[0].id
data modify block 0 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_block[0].tag

data modify block 1 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_xh[4].id
data modify block 1 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_xh[4].tag

execute if blocks 1 0 0 1 0 0 0 0 0 all at @s at @e[tag=yumo_cmp_clxh_marker,limit=1] run function yumo_cmp:cl/item_xh/marker/block_item/add/4

execute unless blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:cl/item_xh/marker/block_item/id/5
