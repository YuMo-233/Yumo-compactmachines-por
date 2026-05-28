scoreboard objectives add yumo_cmp_item dummy


#使用了钓鱼竿
scoreboard players set used yumo_cmp_item 1

execute if score used yumo_cmp_item matches 1 as @a if data entity @s {Dimension:"minecraft:overworld"} if score @s yumo_cmp_used matches 1.. at @s run function yumo_cmp:ca/item_used/used

execute if score used yumo_cmp_item matches 1 as @a if data entity @s {Dimension:"yumo_cmp:clearance"} if score @s yumo_cmp_used matches 1.. at @s run function yumo_cmp:ca/item_used/used_1

#玩家别掉下去
execute as @a if data entity @s {Dimension:"yumo_cmp:clearance"} at @s run function yumo_cmp:ca/item_used/player_tp

#清空计分板
scoreboard players reset @a yumo_cmp_used


scoreboard objectives remove yumo_cmp_item 