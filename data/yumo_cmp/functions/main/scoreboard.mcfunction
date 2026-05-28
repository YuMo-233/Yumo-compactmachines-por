#计算周期计分板
execute if score Count_time yumo_cmp_configs <= configs_Count_time yumo_cmp_configs run scoreboard players add Count_time yumo_cmp_configs 1

execute unless score Count_time yumo_cmp_configs <= configs_Count_time yumo_cmp_configs run scoreboard players set Count_time yumo_cmp_configs 0
