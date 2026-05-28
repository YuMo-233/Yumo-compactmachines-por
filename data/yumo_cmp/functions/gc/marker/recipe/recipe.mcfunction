

#合成时间
execute store result score gc_time yumo_cmp_item run data get entity @s data.yumo_cmp_gc_recipe.time
execute store result entity @s data.yumo_cmp_gc_recipe.time int 1 run scoreboard players add gc_time yumo_cmp_item 1

#音效
execute if score gc_time yumo_cmp_item matches ..190 run playsound minecraft:entity.blaze.ambient block @a ~ ~ ~ 0.1 1

execute if score gc_time yumo_cmp_item matches ..100 run particle minecraft:flame ~0.2 ~0.5 ~0.2 0 0.15 0 2 0
execute if score gc_time yumo_cmp_item matches ..100 run particle minecraft:flame ~-0.2 ~0.5 ~0.2 0 0.15 0 2 0
execute if score gc_time yumo_cmp_item matches ..100 run particle minecraft:flame ~0.2 ~0.5 ~-0.2 0 0.15 0 2 0
execute if score gc_time yumo_cmp_item matches ..100 run particle minecraft:flame ~-0.2 ~0.5 ~-0.2 0 0.15 0 2 0

execute if score gc_time yumo_cmp_item matches 100.. run particle minecraft:soul_fire_flame ~0.2 ~0.5 ~0.2 0 0.15 0 2 0
execute if score gc_time yumo_cmp_item matches 100.. run particle minecraft:soul_fire_flame ~-0.2 ~0.5 ~0.2 0 0.15 0 2 0
execute if score gc_time yumo_cmp_item matches 100.. run particle minecraft:soul_fire_flame ~0.2 ~0.5 ~-0.2 0 0.15 0 2 0
execute if score gc_time yumo_cmp_item matches 100.. run particle minecraft:soul_fire_flame ~-0.2 ~0.5 ~-0.2 0 0.15 0 2 0

execute if score gc_time yumo_cmp_item matches 200.. run function yumo_cmp:gc/marker/recipe/recipe_1

