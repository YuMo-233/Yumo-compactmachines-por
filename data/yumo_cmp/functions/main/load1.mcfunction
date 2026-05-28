#堆叠
execute if score duidie yumo_cmp_configs matches 128.. run scoreboard players set duidie yumo_cmp_configs 127
execute if score duidie_xh yumo_cmp_configs matches 128.. run scoreboard players set duidie_xh yumo_cmp_configs 127

scoreboard players operation duidie yumo_cmp_configs *= 10000 yumo_cmp_configs
scoreboard players operation duidie_xh yumo_cmp_configs *= 10000 yumo_cmp_configs


#
execute if score configs_Count_time yumo_cmp_configs matches ..0 run scoreboard players set configs_Count_time yumo_cmp_configs 1

#（100-配置文件）%
scoreboard players set configs_Count_count100 yumo_cmp_configs 100

scoreboard players operation configs_Count_count100 yumo_cmp_configs -= configs_Count_count yumo_cmp_configs

