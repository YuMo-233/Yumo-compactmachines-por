execute in yumo_cmp:clearance run tp @s 0 40 0

#tellraw @a [{"score":{"objective":"yumo_cmp_item","name":"ca_pos0"}},{"score":{"objective":"yumo_cmp_item","name":"ca_pos1"}}]



#x
execute if score ca_pos0 yumo_cmp_item matches 10.. run function yumo_cmp:ca/item_used/tp/10/x
execute if score ca_pos0 yumo_cmp_item matches ..-10 run function yumo_cmp:ca/item_used/tp/10/-x
#z
execute if score ca_pos1 yumo_cmp_item matches 10.. run function yumo_cmp:ca/item_used/tp/10/z
execute if score ca_pos1 yumo_cmp_item matches ..-10 run function yumo_cmp:ca/item_used/tp/10/-z

#x
execute if score ca_pos0 yumo_cmp_item matches 5..9 run function yumo_cmp:ca/item_used/tp/5/x
execute if score ca_pos0 yumo_cmp_item matches -9..-5 run function yumo_cmp:ca/item_used/tp/5/-x
#z
execute if score ca_pos1 yumo_cmp_item matches 5.. run function yumo_cmp:ca/item_used/tp/5/z
execute if score ca_pos1 yumo_cmp_item matches ..-5 run function yumo_cmp:ca/item_used/tp/5/-z

#x
execute if score ca_pos0 yumo_cmp_item matches 1..4 run function yumo_cmp:ca/item_used/tp/1/x
execute if score ca_pos0 yumo_cmp_item matches -4..-1 run function yumo_cmp:ca/item_used/tp/1/-x
#z
execute if score ca_pos1 yumo_cmp_item matches 1..4 run function yumo_cmp:ca/item_used/tp/1/z
execute if score ca_pos1 yumo_cmp_item matches -4..-1 run function yumo_cmp:ca/item_used/tp/1/-z




execute at @s run tp @s ~1 ~ ~1

#生成结构
execute if score spawn yumo_cmp_item matches 0 at @s run function yumo_cmp:ca/item_used/spawn/spawn