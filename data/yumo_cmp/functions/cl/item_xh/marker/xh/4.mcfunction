execute store result score itemadd1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[4].add 10000
execute store result score itemxh2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh[4].xh 10000

execute if score itemadd1 yumo_cmp_item < itemxh2 yumo_cmp_item run scoreboard players set xh yumo_cmp_item 0
