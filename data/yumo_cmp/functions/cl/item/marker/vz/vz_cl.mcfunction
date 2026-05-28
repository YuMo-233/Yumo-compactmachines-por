execute as @e[type=minecraft:item_frame,distance=..2,limit=1,sort=nearest] unless data entity @s Tags run tag @s add yumo_cmp_tag

execute as @e[tag=yumo_cmp_tag,limit=1] if data entity @s Item unless data entity @s {ItemDropChance:0.0f} run data modify entity @s ItemDropChance set value 0

#旋转后切换物品
execute if entity @e[tag=yumo_cmp_tag,nbt=!{ItemRotation:0b},nbt={ItemDropChance:0.0f}] run function yumo_cmp:cl/item/marker/vz/vz_cl_1

tag @e[tag=yumo_cmp_tag] remove yumo_cmp_tag