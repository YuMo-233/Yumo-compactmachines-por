scoreboard objectives add yumo_cmp_item dummy

#生成结构
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},limit=1] at @s unless entity @e[distance=..1,tag=yumo_cmp_gc_block_marker] if block ~ ~-1 ~ minecraft:bedrock if block ~ ~1 ~ minecraft:iron_trapdoor[half=bottom] if block ~-1 ~ ~ minecraft:obsidian if block ~1 ~ ~ minecraft:obsidian if block ~ ~ ~-1 minecraft:obsidian if block ~ ~ ~1 minecraft:obsidian if block ~-1 ~ ~-1 minecraft:polished_deepslate if block ~-1 ~ ~1 minecraft:polished_deepslate if block ~1 ~ ~-1 minecraft:polished_deepslate if block ~1 ~ ~1 minecraft:polished_deepslate run function yumo_cmp:gc/spawn

#标记实体
execute as @e[tag=yumo_cmp_gc_block_marker] at @s run function yumo_cmp:gc/marker/marker

scoreboard objectives remove yumo_cmp_item