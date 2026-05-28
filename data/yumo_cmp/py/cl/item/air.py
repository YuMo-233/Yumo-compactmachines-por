air = 0
i = 0
import os

for __count in range(6):
    
    #重复每个文件夹中内容
    #0
    for __count in range(30):
        with open('yumo_cmp/functions/cl/item/marker/block_item/air/air'+str(air)+'/'+str(i)+'.mcfunction', 'w') as file:

            #检测是否是空气

            #不是空气
            file.write('execute at @s if data block ~ ~ ~ {Items:[{Slot:'+str(i)+'b}]} in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air'+str(air)+'/'+str(i)+'_2'+'\n')
            file.write('\n')

            #是空气
            file.write('execute at @s unless data block ~ ~ ~ {Items:[{Slot:'+str(i)+'b}]} run function yumo_cmp:cl/item/marker/block_item/air/air'+str(air)+'/'+str(i)+'_1'+'\n')
        
        #0_1
        with open('yumo_cmp/functions/cl/item/marker/block_item/air/air'+str(air)+'/'+str(i)+'_1.mcfunction', 'w') as file:
            #替换格子内容为泥土
            file.write('data modify block ~ ~ ~ Items insert '+str(i)+' value {Count:1b,Slot:'+str(i)+'b,id:"minecraft:dirt"}'+'\n')
            file.write('\n')

            #替换数据
            file.write('data modify block ~ ~ ~ Items['+str(i)+'].id set from entity @s data.yumo_cmp_Item_cl['+str(air)+'].id'+'\n')
            file.write('data modify block ~ ~ ~ Items['+str(i)+'].tag set from entity @s data.yumo_cmp_Item_cl['+str(air)+'].tag'+'\n')
            file.write('\n')

            #存量减一
            file.write('execute store result score item yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl['+str(air)+'].add 10000'+'\n')
            file.write('execute store result entity @s data.yumo_cmp_Item_cl['+str(air)+'].add double 0.0001 run scoreboard players operation item yumo_cmp_item -= 10000 yumo_cmp_configs'+'\n')
            file.write('\n')

            #如果还大于1就递归
            file.write('execute if score item yumo_cmp_item matches 10000.. in yumo_cmp:yumo_cmp_load run function yumo_cmp:cl/item/marker/block_item/air/air'+str(air)+'/'+str(i)+''+'\n')
        
        #0_2
        with open('yumo_cmp/functions/cl/item/marker/block_item/air/air'+str(air)+'/'+str(i)+'_2.mcfunction', 'w') as file:
            #检测物品是否相同
            file.write('data merge block 0 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}'+'\n')
            file.write('data merge block 1 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}'+'\n')
            file.write('\n')
            
            #更改物品
            file.write('data remove entity @s data.yumo_cmp_Item_block'+'\n')
            
            file.write('execute at @s run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~ ~ Items'+'\n')
            file.write('\n')

            file.write('data modify block 0 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_block['+str(i)+'].id'+'\n')
            file.write('data modify block 0 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_block['+str(i)+'].tag'+'\n')
            file.write('\n')

            file.write('data modify block 1 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_cl['+str(air)+'].id'+'\n')
            file.write('data modify block 1 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_cl['+str(air)+'].tag'+'\n')
            file.write('\n')

            #对比
            #一样
            file.write('execute if blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:cl/item/marker/block_item/64/64_'+str(air)+'/'+str(i)+''+'\n')
            file.write('\n')


            #不一样
            #跳到下一个格子
            file.write('execute unless blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:cl/item/marker/block_item/air/air'+str(air)+'/'+str(i+1)+''+'\n')


        i += 1
        pass
    i = 0
    air += 1
    pass