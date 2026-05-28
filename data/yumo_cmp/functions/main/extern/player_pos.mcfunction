data modify entity @s data.yumo_cmp_Item_load.pos set value [0d,0d,0d]

execute store result entity @s data.yumo_cmp_Item_load.pos[0] double 1 run scoreboard players get @p yumo_cmp_ca_block_pos_x

execute store result entity @s data.yumo_cmp_Item_load.pos[1] double 1 run scoreboard players get @p yumo_cmp_ca_block_pos_y

execute store result entity @s data.yumo_cmp_Item_load.pos[2] double 1 run scoreboard players get @p yumo_cmp_ca_block_pos_z