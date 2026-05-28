execute unless entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker] run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"translate\":\"yumo_cmp.block.bj.text_3\",\"color\":\"dark_red\"}]"}

#检测玩家
execute if entity @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker] at @e[tag=yumo_cmp_marker_tag,tag=yumo_cmp_js_marker,limit=1] run function yumo_cmp:bj/marker/jc/player