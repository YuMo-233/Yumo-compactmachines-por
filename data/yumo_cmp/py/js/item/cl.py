i = 1

for __count in range(5):
    with open('yumo_cmp/functions/js/item/marker/cl/'+str(i)+'.mcfunction', 'w') as file:
        #数值
        file.write('execute store result score item_cl yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js['+str(i)+'].Count 10000'+'\n')
        file.write('execute store result score item_cl1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js['+str(i)+'].cl 10000'+'\n')
        file.write('data modify entity @s data.yumo_cmp_Item_js['+str(i)+'].Count set value 0'+'\n')
        file.write('\n')

        #除以时间获得产量
        file.write('scoreboard players operation item_cl yumo_cmp_item /= configs_Count_time yumo_cmp_configs'+'\n')
        file.write('\n')

        #百分百
        file.write('scoreboard players operation item_cl yumo_cmp_item *= configs_Count_count yumo_cmp_configs'+'\n')
        file.write('scoreboard players operation item_cl yumo_cmp_item /= 100 yumo_cmp_configs'+'\n')
        file.write('\n')

        file.write('scoreboard players operation item_cl1 yumo_cmp_item *= configs_Count_count100 yumo_cmp_configs'+'\n')
        file.write('scoreboard players operation item_cl1 yumo_cmp_item /= 100 yumo_cmp_configs'+'\n')
        file.write('\n')

        file.write('scoreboard players operation item_cl yumo_cmp_item += item_cl1 yumo_cmp_item'+'\n')
        file.write('\n')

        #存储
        file.write('execute store result entity @s data.yumo_cmp_Item_js['+str(i)+'].cl double 0.0001 run scoreboard players get item_cl yumo_cmp_item'+'\n')
        
    i += 1
    pass
cl = 0
#总文件
with open('yumo_cmp/functions/js/item/marker/cl/cl.mcfunction', 'w') as file:
    for __count in range(6):
        file.write('execute if data entity @s data.yumo_cmp_Item_js['+str(cl)+'].id run function yumo_cmp:js/item/marker/cl/'+str(cl)+''+'\n')
        file.write('\n')
        cl += 1
        pass
    
