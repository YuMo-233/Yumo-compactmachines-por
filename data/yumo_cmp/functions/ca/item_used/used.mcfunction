#检测面前的实体
execute anchored eyes positioned ^ ^ ^1 run tag @e[tag=yumo_cmp_ca_marker,distance=..1] add yumo_cmp_ca_tag
execute anchored eyes positioned ^ ^ ^2 run tag @e[tag=yumo_cmp_ca_marker,distance=..1] add yumo_cmp_ca_tag
execute anchored eyes positioned ^ ^ ^3 run tag @e[tag=yumo_cmp_ca_marker,distance=..1] add yumo_cmp_ca_tag
execute anchored eyes positioned ^ ^ ^4 run tag @e[tag=yumo_cmp_ca_marker,distance=..1] add yumo_cmp_ca_tag
execute anchored eyes positioned ^ ^ ^5 run tag @e[tag=yumo_cmp_ca_marker,distance=..1] add yumo_cmp_ca_tag

execute as @e[tag=yumo_cmp_ca_tag,limit=1,sort=nearest] store result score ca_pos0 yumo_cmp_item run data get entity @s data.pos[0]
execute as @e[tag=yumo_cmp_ca_tag,limit=1,sort=nearest] store result score ca_pos1 yumo_cmp_item run data get entity @s data.pos[1]
execute as @e[tag=yumo_cmp_ca_tag,limit=1,sort=nearest] store result score spawn yumo_cmp_item run data get entity @s data.spawn
execute as @e[tag=yumo_cmp_ca_tag,limit=1,sort=nearest] store result score ca_block yumo_cmp_item run data get entity @s data.yumo_cmp_ca_block

#pos
execute if entity @e[tag=yumo_cmp_ca_tag] store result score @s yumo_cmp_player_pos_x run data get entity @s Pos[0] 1
execute if entity @e[tag=yumo_cmp_ca_tag] store result score @s yumo_cmp_player_pos_y run data get entity @s Pos[1] 1
execute if entity @e[tag=yumo_cmp_ca_tag] store result score @s yumo_cmp_player_pos_z run data get entity @s Pos[2] 1

#ca_pos
execute if entity @e[tag=yumo_cmp_ca_tag] store result score @s yumo_cmp_ca_block_pos_x run data get entity @e[tag=yumo_cmp_ca_tag,limit=1,sort=nearest] Pos[0] 1
execute if entity @e[tag=yumo_cmp_ca_tag] store result score @s yumo_cmp_ca_block_pos_y run data get entity @e[tag=yumo_cmp_ca_tag,limit=1,sort=nearest] Pos[1] 1
execute if entity @e[tag=yumo_cmp_ca_tag] store result score @s yumo_cmp_ca_block_pos_z run data get entity @e[tag=yumo_cmp_ca_tag,limit=1,sort=nearest] Pos[2] 1

#传送
execute if entity @e[tag=yumo_cmp_ca_tag] run function yumo_cmp:ca/item_used/tp/tp

data modify entity @e[tag=yumo_cmp_ca_tag,limit=1,sort=nearest] data.spawn set value 1b


tag @e[tag=yumo_cmp_ca_tag] remove yumo_cmp_ca_tag

scoreboard players set used yumo_cmp_item 0