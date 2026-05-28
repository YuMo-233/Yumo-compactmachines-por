#音效
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 1 1

particle minecraft:smoke ~ ~1 ~ 0.2 3 0.2 0 300

execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["yumo_cmp_marker","yumo_cmp_gc_block_marker"]}

kill @s