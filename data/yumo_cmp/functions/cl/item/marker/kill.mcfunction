#更改物品
execute as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{tag:{BlockEntityTag:{Lock:"yumo_cmp_cl_lock"}}}} run tag @s add yumo_cmp_tag

#存储方块数据临时
data modify entity @s data.BlockEntityTag set from entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item.tag.BlockEntityTag

data modify entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item set value {Count:1,id:"minecraft:item_frame",tag:{EntityTag:{Invisible:1b,Item:{Count:1,id:"minecraft:structure_void",tag:{}},Tags:["yumo_cmp_item_frame_cl"]},display:{Lore:['{"italic":false,"color":"white","extra":[{"text":""},{"color":"gray","translate":"yumo_cmp.block.cl_1"}],"text":""}'],Name:'{"italic":false,"extra":[{"text":""},{"translate":"yumo_cmp.block.cl"}],"text":""}'}}}


#模型更改
scoreboard players set CMD yumo_cmp_item 781500
execute store result score CMD1 yumo_cmp_item run data get entity @s data.yumo_cmp_ys
execute store result entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item.tag.CustomModelData int 1 run scoreboard players operation CMD yumo_cmp_item += CMD1 yumo_cmp_item

#存储方块数据
data modify entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item.tag.EntityTag.Item.tag.data set from entity @s data

#隐藏材质
data modify entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item.tag.EntityTag.Item.tag.CustomModelData set value 307815

tag @e[tag=yumo_cmp_tag] remove yumo_cmp_tag

kill @s