particle minecraft:dust 1 1 1 1 ~ ~0.2 ~ 0.1 0.1 0.1 1 20
playsound minecraft:item.honeycomb.wax_on block @a ~ ~ ~ 1 1
playsound minecraft:item.honeycomb.wax_on block @a ~ ~ ~ 1 1
playsound minecraft:item.honeycomb.wax_on block @a ~ ~ ~ 1 1
playsound minecraft:item.honeycomb.wax_on block @a ~ ~ ~ 1 1
playsound minecraft:item.honeycomb.wax_on block @a ~ ~ ~ 1 1

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_dye",Count:1b}},distance=..1]

data modify entity @s Item.tag.EntityTag.Item.tag.data.yumo_cmp_ys set value 1
data modify entity @s Item.tag.CustomModelData set value 781501
