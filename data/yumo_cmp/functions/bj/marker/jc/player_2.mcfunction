data modify entity @s data.yumo_cmp_bj.Item set value {Count:1,id:"minecraft:item_frame",tag:{EntityTag:{Invisible:1b,Item:{Count:1,id:"minecraft:structure_void",tag:{}},Tags:["yumo_cmp_item_frame_ca"]},display:{Lore:['{"italic":false,"color":"white","extra":[{"text":""},{"color":"gray","translate":"yumo_cmp.block.jx_1"}],"text":""}'],Name:'{"italic":false,"extra":[{"text":""},{"translate":"yumo_cmp.block.jx"}],"text":""}'}}}

data modify entity @s data.yumo_cmp_bj.Item.tag.EntityTag.Item.tag.data set from entity @e[distance=..0.5,limit=1,tag=yumo_cmp_ca_marker,sort=nearest] data

#模型改变
scoreboard players set CMD yumo_cmp_item 781520
execute store result score CMD1 yumo_cmp_item run data get entity @e[distance=..0.5,limit=1,tag=yumo_cmp_ca_marker,sort=nearest] data.yumo_cmp_ca_block
execute store result entity @s data.yumo_cmp_bj.Item.tag.CustomModelData int 1 run scoreboard players operation CMD yumo_cmp_item += CMD1 yumo_cmp_item



data modify entity @e[distance=..0.5,limit=1,tag=yumo_cmp_ca_marker,sort=nearest] data.yumo_cmp_ca_bj_kill set value 1b
kill @e[limit=1,tag=yumo_cmp_ca_marker,sort=nearest]


