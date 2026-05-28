execute if score js_time yumo_cmp_item matches 0..2400 run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"text\":\"▓░░░░░\",\"color\":\"dark_red\"}]"}

execute if score js_time yumo_cmp_item matches 2401..4800 run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"text\":\"▓▓░░░░\",\"color\":\"dark_red\"}]"}

execute if score js_time yumo_cmp_item matches 4801..7200 run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"text\":\"▓▓▓░░░\",\"color\":\"dark_red\"}]"}

execute if score js_time yumo_cmp_item matches 7201..9600 run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"text\":\"▓▓▓▓░░\",\"color\":\"dark_red\"}]"}

execute if score js_time yumo_cmp_item matches 9601..12000 run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"text\":\"▓▓▓▓▓░\",\"color\":\"dark_red\"}]"}