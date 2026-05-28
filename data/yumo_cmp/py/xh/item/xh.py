i = 0

for __count in range(6):
    with open('yumo_cmp/functions/xh/item/marker/xh/'+str(i)+'.mcfunction', 'w') as file:
        #数值
        file.write('execute store result score item_xh yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].Count 10000'+'\n')
        file.write('execute store result score item_xh1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].xh 10000'+'\n')
        file.write('data modify entity @s data.yumo_cmp_Item_xh['+str(i)+'].Count set value 0'+'\n')
        file.write('\n')

        #除以时间获得产量
        file.write('scoreboard players operation item_xh yumo_cmp_item /= configs_Count_time yumo_cmp_configs'+'\n')
        file.write('\n')

        #百分百
        file.write('scoreboard players operation item_xh yumo_cmp_item *= configs_Count_count yumo_cmp_configs'+'\n')
        file.write('scoreboard players operation item_xh yumo_cmp_item /= 100 yumo_cmp_configs'+'\n')
        file.write('\n')

        file.write('scoreboard players operation item_xh1 yumo_cmp_item *= configs_Count_count100 yumo_cmp_configs'+'\n')
        file.write('scoreboard players operation item_xh1 yumo_cmp_item /= 100 yumo_cmp_configs'+'\n')
        file.write('\n')

        file.write('scoreboard players operation item_xh yumo_cmp_item += item_xh1 yumo_cmp_item'+'\n')
        file.write('\n')

        #存储
        file.write('execute store result entity @s data.yumo_cmp_Item_xh['+str(i)+'].xh double 0.0001 run scoreboard players get item_xh yumo_cmp_item'+'\n')
        
    i += 1
    pass
xh = 0
#总文件
with open('yumo_cmp/functions/xh/item/marker/xh/xh.mcfunction', 'w') as file:
    for __count in range(6):
        file.write('execute if data entity @s data.yumo_cmp_Item_xh['+str(xh)+'].id run function yumo_cmp:xh/item/marker/xh/'+str(xh)+''+'\n')
        file.write('\n')
        xh += 1
        pass
    
