execute positioned ~-1 ~-1 ~-1 run fill ~ ~ ~ ~10 ~10 ~10 minecraft:bedrock
fill ~ ~ ~ ~8 ~8 ~8 minecraft:air
setblock ~ ~-2 ~ minecraft:bedrock
execute if entity @e[distance=..50,tag=yumo_cmp_ca_space_marker] run kill @s
kill @s