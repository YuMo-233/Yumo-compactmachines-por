#更改物品
execute if data entity @s {data:{yumo_cmp_ca_block:1}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:copper_block",Count:1b}} run tag @s add yumo_cmp_tag

execute unless entity @e[tag=yumo_cmp_tag] if data entity @s {data:{yumo_cmp_ca_block:1}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:exposed_copper",Count:1b}} run tag @s add yumo_cmp_tag

execute unless entity @e[tag=yumo_cmp_tag] if data entity @s {data:{yumo_cmp_ca_block:1}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:weathered_copper",Count:1b}} run tag @s add yumo_cmp_tag

execute unless entity @e[tag=yumo_cmp_tag] if data entity @s {data:{yumo_cmp_ca_block:1}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:oxidized_copper",Count:1b}} run tag @s add yumo_cmp_tag

execute unless entity @e[tag=yumo_cmp_tag] if data entity @s {data:{yumo_cmp_ca_block:1}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:waxed_copper_block",Count:1b}} run tag @s add yumo_cmp_tag

execute unless entity @e[tag=yumo_cmp_tag] if data entity @s {data:{yumo_cmp_ca_block:1}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:waxed_exposed_copper",Count:1b}} run tag @s add yumo_cmp_tag

execute unless entity @e[tag=yumo_cmp_tag] if data entity @s {data:{yumo_cmp_ca_block:1}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:waxed_weathered_copper",Count:1b}} run tag @s add yumo_cmp_tag

execute unless entity @e[tag=yumo_cmp_tag] if data entity @s {data:{yumo_cmp_ca_block:1}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:waxed_oxidized_copper",Count:1b}} run tag @s add yumo_cmp_tag



execute if data entity @s {data:{yumo_cmp_ca_block:2}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:iron_block",Count:1b}} run tag @s add yumo_cmp_tag

execute if data entity @s {data:{yumo_cmp_ca_block:3}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:gold_block",Count:1b}} run tag @s add yumo_cmp_tag

execute if data entity @s {data:{yumo_cmp_ca_block:4}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:obsidian",Count:1b}} run tag @s add yumo_cmp_tag

execute if data entity @s {data:{yumo_cmp_ca_block:5}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:diamond_block",Count:1b}} run tag @s add yumo_cmp_tag

execute if data entity @s {data:{yumo_cmp_ca_block:6}} as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{id:"minecraft:netherite_block",Count:1b}} run tag @s add yumo_cmp_tag

#存储方块数据临时
data modify entity @s data.BlockEntityTag set from entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item.tag.BlockEntityTag

execute if score lang yumo_cmp_configs matches 0 run data modify entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item set value {Count:1,id:"minecraft:item_frame",tag:{EntityTag:{Invisible:1b,Item:{Count:1,id:"minecraft:structure_void",tag:{}},Tags:["yumo_cmp_item_frame_ca"]},display:{Lore:['{"italic":false,"color":"white","extra":[{"text":""},{"color":"gray","text":"内含无尽虚空，不含盐"}],"text":""}'],Name:'{"italic":false,"extra":[{"text":""},{"text":"间隙"}],"text":""}'}}}

execute if score lang yumo_cmp_configs matches 1 run data modify entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item set value {Count:1,id:"minecraft:item_frame",tag:{EntityTag:{Invisible:1b,Item:{Count:1,id:"minecraft:structure_void",tag:{}},Tags:["yumo_cmp_item_frame_cl"]},display:{Lore:['{"italic":false,"color":"white","extra":[{"text":""},{"color":"gray","text":"Contains Ceaseless Void, salt free"}],"text":""}'],Name:'{"italic":false,"extra":[{"text":""},{"text":"Clearance"}],"text":""}'}}}

#模型更改
scoreboard players set CMD yumo_cmp_item 781520
execute store result score CMD1 yumo_cmp_item run data get entity @s data.yumo_cmp_ca_block
execute store result entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item.tag.CustomModelData int 1 run scoreboard players operation CMD yumo_cmp_item += CMD1 yumo_cmp_item

#存储方块数据
data modify entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item.tag.EntityTag.Item.tag.data set from entity @s data

#隐藏材质
data modify entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item.tag.EntityTag.Item.tag.CustomModelData set value 307815

tag @e[tag=yumo_cmp_tag] remove yumo_cmp_tag

kill @s