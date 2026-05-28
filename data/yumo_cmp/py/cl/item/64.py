air = 0
i = 0
import os

for __count in range(6):
    #重复每个文件夹中内容
    #0
    for __count in range(30):
        with open('yumo_cmp/functions/cl/item/marker/block_item/64/64_'+str(air)+'/'+str(i)+'.mcfunction', 'w') as file:
            #容器格子是否大于等于64
            file.write('execute store result score item64_'+str(air)+''+str(i)+' yumo_cmp_item at @s run data get block ~ ~ ~ Items['+str(i)+'].Count 10000'+'\n')
            file.write('\n')
            
            #大于
            #跳到下一个格子
            file.write('execute if score item64_'+str(air)+''+str(i)+' yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/air/air'+str(air)+'/'+str(i+1)+''+'\n')
            file.write('\n')
            
            #小于
            #合并物品
            file.write('execute unless score item64_'+str(air)+''+str(i)+' yumo_cmp_item >= duidie yumo_cmp_configs at @s run function yumo_cmp:cl/item/marker/block_item/64/64_'+str(air)+'/'+str(i)+'_1'+'\n')
        
        #0_1
        with open('yumo_cmp/functions/cl/item/marker/block_item/64/64_'+str(air)+'/'+str(i)+'_1.mcfunction', 'w') as file:
            #合并物品
            #计算物品数量
            file.write('execute store result score item1 yumo_cmp_item run data get block ~ ~ ~ Items['+str(i)+'].Count 10000'+'\n')
            file.write('execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl['+str(air)+'].add 10000'+'\n')
            file.write('\n')
            
            #数量相加
            file.write('scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item'+'\n')
            file.write('\n')
            
            #小于堆叠上限
            file.write('execute unless score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/64/64_'+str(air)+'/'+str(i)+'_11'+'\n')
            file.write('\n')
            
            #大于等于堆叠上限的话
            file.write('execute if score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:cl/item/marker/block_item/64/64_'+str(air)+'/'+str(i)+'_12'+'\n')
            file.write('\n')

        #0_11
        with open('yumo_cmp/functions/cl/item/marker/block_item/64/64_'+str(air)+'/'+str(i)+'_11.mcfunction', 'w') as file:
            #取小数
            file.write('function yumo_cmp:main/extern/item_count_xs'+'\n')
            file.write('\n')

            file.write('execute store result block ~ ~ ~ Items['+str(i)+'].Count double 0.0001 run scoreboard players get item1 yumo_cmp_item'+'\n')
            file.write('execute store result entity @s data.yumo_cmp_Item_cl['+str(air)+'].add double 0.0001 run scoreboard players get itemxs1 yumo_cmp_item'+'\n')

        #0_12
        with open('yumo_cmp/functions/cl/item/marker/block_item/64/64_'+str(air)+'/'+str(i)+'_12.mcfunction', 'w') as file:
            file.write('execute store result block ~ ~ ~ Items['+str(i)+'].Count double 0.0001 run scoreboard players get duidie yumo_cmp_configs'+'\n')
            file.write('\n')

            file.write('execute store result entity @s data.yumo_cmp_Item_cl['+str(air)+'].add double 0.0001 run scoreboard players operation item1 yumo_cmp_item -= duidie yumo_cmp_configs'+'\n')


        i += 1    
        pass
    i = 0
    air += 1
    pass