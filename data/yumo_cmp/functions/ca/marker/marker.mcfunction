#粒子
function yumo_cmp:ca/marker/particle

#清除
execute unless data entity @s {data:{yumo_cmp_ca_bj_kill:1b}} run function yumo_cmp:ca/marker/kill
