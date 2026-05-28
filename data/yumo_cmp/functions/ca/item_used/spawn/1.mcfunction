execute positioned ~-1 ~-1 ~-1 run fill ~ ~ ~ ~4 ~4 ~4 minecraft:bedrock
fill ~ ~ ~ ~2 ~2 ~2 minecraft:air
setblock ~ ~-2 ~ minecraft:bedrock
execute if entity @e[distance=..50,tag=yumo_cmp_ca_space_marker] run kill @s
kill @s