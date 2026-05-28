execute at @s run tp @s ~1024 ~ ~
scoreboard players remove ca_pos0 yumo_cmp_item 1
execute if score ca_pos0 yumo_cmp_item matches 1.. run function yumo_cmp:ca/item_used/tp/1/x