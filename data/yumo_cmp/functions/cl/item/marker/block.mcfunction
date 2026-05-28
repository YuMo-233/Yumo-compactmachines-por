#变回压缩空间
#粒子
execute as @e[type=minecraft:item,nbt={Item:{tag:{EntityTag:{Tags:["yumo_cmp_item_frame_cl"]}}}},distance=..1] at @s run particle minecraft:block minecraft:cobbled_deepslate ~ ~0.2 ~ 0.1 0.1 0.1 0 15

playsound minecraft:block.deepslate.break block @a ~ ~ ~ 1 0.5

execute as @e[type=minecraft:item,nbt={Item:{tag:{EntityTag:{Tags:["yumo_cmp_item_frame_cl"]}}}},distance=..1] run data modify entity @s Item set from entity @s Item.tag.EntityTag.Item.tag.data.yumo_cmp_room_Item



#(传送器物品，不清除掉落物)
function yumo_cmp:main/extern/play_item/item