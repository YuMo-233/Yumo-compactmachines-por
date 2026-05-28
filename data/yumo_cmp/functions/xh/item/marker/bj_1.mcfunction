execute store result score pos00 yumo_cmp_item run data get entity @s Pos[0]
execute store result score pos11 yumo_cmp_item run data get entity @s Pos[1]
execute store result score pos22 yumo_cmp_item run data get entity @s Pos[2]

execute if score pos0 yumo_cmp_item = pos00 yumo_cmp_item if score pos1 yumo_cmp_item = pos11 yumo_cmp_item if score pos2 yumo_cmp_item = pos22 yumo_cmp_item run tag @s add yumo_cmp_marker_tag
