#传送器掉落物传送到玩家
execute store result score uuid0 yumo_cmp_item run data get entity @s Thrower[0]
execute store result score uuid1 yumo_cmp_item run data get entity @s Thrower[1]
execute store result score uuid2 yumo_cmp_item run data get entity @s Thrower[2]
execute store result score uuid3 yumo_cmp_item run data get entity @s Thrower[3]
execute as @a[distance=..5] run function yumo_cmp:main/extern/play_item/play

execute if entity @a[tag=yumo_cmp_item,distance=..5,limit=1] run data modify entity @s PickupDelay set value 0
tp @s @a[tag=yumo_cmp_item,limit=1]

tag @a[tag=yumo_cmp_item] remove yumo_cmp_item