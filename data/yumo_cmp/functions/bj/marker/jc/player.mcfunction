execute if entity @a[distance=..50] if score lang yumo_cmp_configs matches 0 run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"text\":\"[错误]请不要有任何玩家待在压缩空间内\",\"color\":\"dark_red\"}]"}

execute if entity @a[distance=..50] if score lang yumo_cmp_configs matches 1 run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"text\":\"[Error] Please do not leave any players in the compressed space\",\"color\":\"dark_red\"}]"}

execute unless entity @a[distance=..50] at @s run function yumo_cmp:bj/marker/jc/player_1