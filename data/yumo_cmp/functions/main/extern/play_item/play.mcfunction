#玩家uuid
execute store result score uuid00 yumo_cmp_item run data get entity @s UUID[0]
execute store result score uuid11 yumo_cmp_item run data get entity @s UUID[1]
execute store result score uuid22 yumo_cmp_item run data get entity @s UUID[2]
execute store result score uuid33 yumo_cmp_item run data get entity @s UUID[3]

execute if score uuid0 yumo_cmp_item = uuid00 yumo_cmp_item if score uuid1 yumo_cmp_item = uuid11 yumo_cmp_item if score uuid2 yumo_cmp_item = uuid22 yumo_cmp_item if score uuid3 yumo_cmp_item = uuid33 yumo_cmp_item run tag @s add yumo_cmp_item