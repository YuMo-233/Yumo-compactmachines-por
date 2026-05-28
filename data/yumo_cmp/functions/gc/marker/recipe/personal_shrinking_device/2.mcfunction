#生成
summon minecraft:item ~ ~1.25 ~ {Motion:[0d,0.5d,0d],Item:{Count:1,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:307815,display:{Name:'{"italic":false,"extra":[{"text":""},{"translate":"yumo_cmp.item.personal_shrinking_device"}],"text":""}'},yumo_cmp_item:"personal_shrinking_device"}}}

#根据数量执行
scoreboard players remove gc_Count yumo_cmp_item 1
execute if score gc_Count yumo_cmp_item matches 1.. run function yumo_cmp:gc/marker/recipe/personal_shrinking_device/2