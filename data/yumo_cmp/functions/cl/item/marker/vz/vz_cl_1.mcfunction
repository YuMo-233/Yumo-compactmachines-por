#展示框旋转角度重置
data modify entity @e[tag=yumo_cmp_tag,limit=1] ItemRotation set value 0

#
execute store result score vz yumo_cmp_item run data get entity @s data.yumo_cmp_Item_vz
execute store result entity @s data.yumo_cmp_Item_vz byte 1 run scoreboard players add vz yumo_cmp_item 1

execute if score vz yumo_cmp_item matches 6.. store result entity @s data.yumo_cmp_Item_vz byte 1 run scoreboard players set vz yumo_cmp_item 0

execute if score vz yumo_cmp_item matches 0 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item set from entity @s data.yumo_cmp_Item_cl[0]
execute if score vz yumo_cmp_item matches 0 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item.tag.display.Name set from entity @s data.yumo_cmp_Item_cl[0].cl

execute if score vz yumo_cmp_item matches 1 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item set from entity @s data.yumo_cmp_Item_cl[1]
execute if score vz yumo_cmp_item matches 1 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item.tag.display.Name set from entity @s data.yumo_cmp_Item_cl[1].cl

execute if score vz yumo_cmp_item matches 2 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item set from entity @s data.yumo_cmp_Item_cl[2]
execute if score vz yumo_cmp_item matches 2 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item.tag.display.Name set from entity @s data.yumo_cmp_Item_cl[2].cl

execute if score vz yumo_cmp_item matches 3 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item set from entity @s data.yumo_cmp_Item_cl[3]
execute if score vz yumo_cmp_item matches 3 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item.tag.display.Name set from entity @s data.yumo_cmp_Item_cl[3].cl

execute if score vz yumo_cmp_item matches 4 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item set from entity @s data.yumo_cmp_Item_cl[4]
execute if score vz yumo_cmp_item matches 4 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item.tag.display.Name set from entity @s data.yumo_cmp_Item_cl[4].cl

execute if score vz yumo_cmp_item matches 5 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item set from entity @s data.yumo_cmp_Item_cl[5]
execute if score vz yumo_cmp_item matches 5 run data modify entity @e[tag=yumo_cmp_tag,limit=1] Item.tag.display.Name set from entity @s data.yumo_cmp_Item_cl[5].cl