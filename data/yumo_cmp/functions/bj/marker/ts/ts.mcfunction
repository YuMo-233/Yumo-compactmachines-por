function yumo_cmp:bj/marker/ts/pos

#耗材
data modify entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_xh_marker,limit=1] data.yumo_cmp_Item_load.js set value 1b
#产量计算
data modify entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] data.yumo_cmp_load.load_time set value 5


#传递存量
data modify entity @s data.yumo_cmp_Item_cl set from entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] data.yumo_cmp_Item_js

data modify entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] data.yumo_cmp_Item_js[].add set value 0