execute store result score pos0 yumo_cmp_item run data get entity @s Pos[0]
execute store result score pos1 yumo_cmp_item run data get entity @s Pos[1]
execute store result score pos2 yumo_cmp_item run data get entity @s Pos[2]


execute as @e[tag=yumo_cmp_marker,tag=!yumo_cmp_bj_block_marker] at @s run function yumo_cmp:bj/marker/ts/pos_1