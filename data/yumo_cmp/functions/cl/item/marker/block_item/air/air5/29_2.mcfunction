data merge block 0 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}
data merge block 1 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}

data remove entity @s data.yumo_cmp_Item_block
execute at @s run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~ ~ Items

data modify block 0 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_block[29].id
data modify block 0 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_block[29].tag

data modify block 1 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_cl[5].id
data modify block 1 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_cl[5].tag

execute if blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:cl/item/marker/block_item/64/64_5/29

execute unless blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:cl/item/marker/block_item/air/air5/30
