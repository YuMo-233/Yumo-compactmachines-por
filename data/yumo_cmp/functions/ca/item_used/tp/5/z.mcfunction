execute at @s run tp @s ~ ~ ~5120
scoreboard players remove ca_pos1 yumo_cmp_item 5
execute if score ca_pos1 yumo_cmp_item matches 5.. run function yumo_cmp:ca/item_used/tp/5/z