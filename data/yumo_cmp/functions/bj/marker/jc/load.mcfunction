

function yumo_cmp:bj/marker/ts/pos

execute unless entity @e[tag=yumo_cmp_marker_tag] run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\"translate\":\"yumo_cmp.block.bj.text_2\",\"color\":\"dark_red\"}]"}


execute if entity @e[tag=yumo_cmp_marker_tag] unless data entity @s {data:{yumo_cmp_Item_load:{stop:1b}}} run function yumo_cmp:bj/marker/jc/load_1

kill @e[tag=yumo_cmp_item_tag]
tag @e[tag=yumo_cmp_marker_tag] remove yumo_cmp_marker_tag

#tellraw @a [{"score":{"objective":"yumo_cmp_item","name":"pos0"}}]
#tellraw @a [{"score":{"objective":"yumo_cmp_item","name":"pos1"}}]
#tellraw @a [{"score":{"objective":"yumo_cmp_item","name":"pos2"}}]
#tellraw @a [{"score":{"objective":"yumo_cmp_item","name":"pos00"}}]
#tellraw @a [{"score":{"objective":"yumo_cmp_item","name":"pos11"}}]
#tellraw @a [{"score":{"objective":"yumo_cmp_item","name":"pos22"}}]

#tellraw @a [{"score":{"objective":"yumo_cmp_item","name":"jc"}}]