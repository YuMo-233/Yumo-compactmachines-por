#收纳
execute as @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:book"}}] at @s run function yumo_cmp:gc/marker/recipe/personal_shrinking_device/1

#间隙
execute as @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:copper_block"}}] at @s run function yumo_cmp:gc/marker/recipe/clearance/1

execute as @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:iron_block"}}] at @s run function yumo_cmp:gc/marker/recipe/clearance/1

execute as @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:gold_block"}}] at @s run function yumo_cmp:gc/marker/recipe/clearance/1

execute as @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:obsidian"}}] at @s run function yumo_cmp:gc/marker/recipe/clearance/1

execute as @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:diamond_block"}}] at @s run function yumo_cmp:gc/marker/recipe/clearance/1

execute as @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:netherite_block"}}] at @s run function yumo_cmp:gc/marker/recipe/clearance/1

#清除物品
kill @e[type=item,distance=..1]

playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 0.75
particle minecraft:campfire_cosy_smoke ~0.2 ~1 ~0.2 0.3 0.5 0.3 0.5 500