scoreboard players set gc_kill yumo_cmp_item 1

execute unless block ~ ~-1 ~ minecraft:bedrock run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~ ~1 ~ minecraft:iron_trapdoor[half=bottom] run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~-1 ~ ~ minecraft:obsidian run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~1 ~ ~ minecraft:obsidian run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~ ~ ~-1 minecraft:obsidian run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~ ~ ~1 minecraft:obsidian run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~-1 ~ ~-1 minecraft:polished_deepslate run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~-1 ~ ~1 minecraft:polished_deepslate run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~1 ~ ~-1 minecraft:polished_deepslate run scoreboard players set gc_kill yumo_cmp_item 0
execute unless block ~1 ~ ~1 minecraft:polished_deepslate run scoreboard players set gc_kill yumo_cmp_item 0

execute if score gc_kill yumo_cmp_item matches 0 run particle minecraft:dust 0 0 0 1.2 ~ ~-0.4 ~ 0.5 2 0.5 3 1000

execute if score gc_kill yumo_cmp_item matches 0 run kill @s