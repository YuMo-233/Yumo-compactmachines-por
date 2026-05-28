#进1
scoreboard players operation pos_x yumo_cmp_item = clearance_pos_x yumo_cmp_configs

scoreboard players operation pos_-x yumo_cmp_item = clearance_pos_x yumo_cmp_configs
scoreboard players operation pos_-x yumo_cmp_item *= -1 yumo_cmp_configs

scoreboard players operation pos_z yumo_cmp_item = clearance_pos_z yumo_cmp_configs


execute if score pos_x yumo_cmp_item <= pos_z yumo_cmp_item run scoreboard players add clearance_pos_x yumo_cmp_configs 1
execute if score pos_x yumo_cmp_item <= pos_z yumo_cmp_item run scoreboard players operation clearance_pos_z yumo_cmp_configs = pos_-x yumo_cmp_item

scoreboard players add clearance_pos_z yumo_cmp_configs 1