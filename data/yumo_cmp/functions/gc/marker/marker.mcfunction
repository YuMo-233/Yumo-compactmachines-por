#粒子
particle minecraft:dragon_breath ~ ~-0.4 ~ 0.5 0.25 0.5 0.001 7

#清除自身
function yumo_cmp:gc/marker/kill

#受伤光环
execute positioned ~ ~-0.5 ~ run effect give @e[distance=..1] minecraft:wither 5 5

#物品落下音效
execute positioned ~ ~-0.5 ~ if entity @e[type=item,tag=!yumo_cmp_gc_item_sound,distance=..1] run playsound minecraft:entity.player.splash block @a ~ ~ ~ 1 1
execute positioned ~ ~-0.5 ~ if entity @e[type=item,tag=!yumo_cmp_gc_item_sound,distance=..1] run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.5 0.2 0.01 60
execute positioned ~ ~-0.5 ~ run tag @e[type=item,tag=!yumo_cmp_gc_item_sound,distance=..1] add yumo_cmp_gc_item_sound

#生产计时清零
execute if block ~ ~1 ~ minecraft:iron_trapdoor[half=bottom,powered=true] run data modify entity @s data.yumo_cmp_gc_recipe.time set value 0

#生产
execute if block ~ ~1 ~ minecraft:iron_trapdoor[half=bottom,powered=false] positioned ~ ~-0.5 ~ if entity @e[type=item,distance=..1] run function yumo_cmp:gc/marker/recipe/recipe