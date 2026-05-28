
#标记实体
execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["yumo_cmp_marker","yumo_cmp_bj_block_marker","yumo_cmp_bj_block_marker_data"]}

data modify entity @e[tag=yumo_cmp_bj_block_marker_data,limit=1] data.yumo_cmp_bj.js set value 0b

data modify entity @e[tag=yumo_cmp_bj_block_marker_data,limit=1] data.yumo_cmp_bj.ca set value 0b

execute as @e[tag=yumo_cmp_bj_block_marker_data,limit=1] at @s run summon minecraft:armor_stand ~ ~0.9 ~ {CustomName:"[{\"translate\":\"yumo_cmp.block.bj.text_1\",\"color\":\"dark_red\"}]",CustomNameVisible:1b,Marker:1b,Invisible:1,Tags:["yumo_cmp_text"]}

tag @e[tag=yumo_cmp_bj_block_marker_data] remove yumo_cmp_bj_block_marker_data

#(传送器物品，不清除掉落物)
function yumo_cmp:main/extern/play_item/item

