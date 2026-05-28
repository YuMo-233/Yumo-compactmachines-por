#更改物品
execute as @e[type=item,limit=1,sort=nearest] if data entity @s {Item:{tag:{BlockEntityTag:{Lock:"yumo_cmp_cl_lock"}}}} run tag @s add yumo_cmp_tag

data modify entity @e[tag=yumo_cmp_tag,limit=1,sort=nearest] Item set from entity @s data.yumo_cmp_bj.Item

tag @e[tag=yumo_cmp_tag] remove yumo_cmp_tag