#生成
summon minecraft:item ~ ~1.25 ~ {Motion:[0d,0.5d,0d],Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Invisible:1b,Item:{Count:1,id:"minecraft:structure_void",tag:{CustomModelData:307815,data:{spawn:0b}}},Tags:["yumo_cmp_item_frame_ca"]},display:{Lore:['{"italic":false,"color":"white","extra":[{"text":""},{"color":"gray","translate":"yumo_cmp.block.jx_1"}],"text":""}'],Name:'{"italic":false,"extra":[{"text":""},{"translate":"yumo_cmp.block.jx"}],"text":""}'}}},Tags:["yumo_cmp_item_tag"]}


#方块等级
execute if entity @s[nbt={Item:{id:"minecraft:copper_block"}}] run data modify entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.yumo_cmp_ca_block set value 1

execute if entity @s[nbt={Item:{id:"minecraft:iron_block"}}] run data modify entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.yumo_cmp_ca_block set value 2

execute if entity @s[nbt={Item:{id:"minecraft:gold_block"}}] run data modify entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.yumo_cmp_ca_block set value 3

execute if entity @s[nbt={Item:{id:"minecraft:obsidian"}}] run data modify entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.yumo_cmp_ca_block set value 4

execute if entity @s[nbt={Item:{id:"minecraft:diamond_block"}}] run data modify entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.yumo_cmp_ca_block set value 5

execute if entity @s[nbt={Item:{id:"minecraft:netherite_block"}}] run data modify entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.yumo_cmp_ca_block set value 6

#模型更改
scoreboard players set CMD yumo_cmp_item 781520
execute store result score CMD1 yumo_cmp_item run data get entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.yumo_cmp_ca_block
execute store result entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.CustomModelData int 1 run scoreboard players operation CMD yumo_cmp_item += CMD1 yumo_cmp_item

#坐标
data modify entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.pos set value [0,0]

execute store result entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.pos[0] int 1 run scoreboard players get clearance_pos_x yumo_cmp_configs
execute store result entity @e[tag=yumo_cmp_item_tag,limit=1] Item.tag.EntityTag.Item.tag.data.pos[1] int 1 run scoreboard players get clearance_pos_z yumo_cmp_configs

#
function yumo_cmp:gc/marker/recipe/clearance/pos


tag @e[tag=yumo_cmp_item_tag,limit=1] remove yumo_cmp_item_tag

#根据数量执行
scoreboard players remove gc_Count yumo_cmp_item 1
execute if score gc_Count yumo_cmp_item matches 1.. run function yumo_cmp:gc/marker/recipe/clearance/2