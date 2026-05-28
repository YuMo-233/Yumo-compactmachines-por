#检测物品是否相同
data merge block 0 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}
data merge block 1 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}


#更改物品
execute at @s run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~ ~ Items

data modify block 0 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_block[0].id
data modify block 0 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_block[0].tag

data modify block 1 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_js[0].id
data modify block 1 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_js[0].tag

#检测
##不一样
execute unless blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:js/item/marker/air/1

##一样
execute if blocks 1 0 0 1 0 0 0 0 0 all at @s run function yumo_cmp:js/item/marker/count/0