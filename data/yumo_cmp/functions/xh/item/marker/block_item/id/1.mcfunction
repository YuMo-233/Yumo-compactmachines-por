data merge block 0 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}
data merge block 1 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}

data remove entity @s data.yumo_cmp_Item_block
execute at @s run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~ ~ Items

data modify block 0 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_block[{Slot:1b}].id
data modify block 0 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_block[{Slot:1b}].tag

data modify block 1 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_xh[1].id
data modify block 1 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_xh[1].tag

execute if blocks 1 0 0 1 0 0 0 0 0 all at @s run function yumo_cmp:xh/item/marker/block_item/64/1

execute unless blocks 1 0 0 1 0 0 0 0 0 all at @s run function yumo_cmp:xh/item/marker/block_item/id/1_1
