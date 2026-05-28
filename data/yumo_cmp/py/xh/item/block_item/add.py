i = 1

for __count in range(5):
    #0
    with open('yumo_cmp/functions/xh/item/marker/block_item/add/'+str(i)+'.mcfunction', 'w') as file:
        #合并物品
        #计算物品数量
        file.write('execute store result score item1 yumo_cmp_item run data get block ~ ~ ~ Items[{Slot:'+str(i)+'b}].Count 10000'+'\n')
        file.write('execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].add 10000'+'\n')
        file.write('\n')


        #数量相加
        file.write('scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item'+'\n')
        file.write('\n')
        file.write('\n')


        #改变之前的数量
        file.write('execute store result score item1^ yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].add 10000'+'\n')
        file.write('\n')
        file.write('\n')

        #小于堆叠上限
        file.write('execute unless score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/'+str(i)+'_1'+'\n')
        file.write('\n')

        #大于等于堆叠上限的话
        file.write('execute if score item1 yumo_cmp_item >= duidie yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/'+str(i)+'_2'+'\n')
        file.write('\n')
        file.write('\n')

        #改变之后的数量
        file.write('execute store result score item2^ yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].add 10000'+'\n')
        #改变量
        file.write('scoreboard players operation item1^ yumo_cmp_item -= item2^ yumo_cmp_configs'+'\n')
        file.write('\n')

        #存储消耗量
        file.write('function yumo_cmp:xh/item/marker/block_item/xh/'+str(i)+'\n')
    #0_1
    with open('yumo_cmp/functions/xh/item/marker/block_item/add/'+str(i)+'_1.mcfunction', 'w') as file:
        #取小数
        file.write('function yumo_cmp:main/extern/item_count_xs'+'\n')
        file.write('\n')

        file.write('execute store result block ~ ~ ~ Items[{Slot:'+str(i)+'b}].Count double 0.0001 run scoreboard players get item1 yumo_cmp_item'+'\n')
        file.write('\n')

        file.write('execute store result entity @s data.yumo_cmp_Item_xh['+str(i)+'].add double 0.0001 run scoreboard players get itemxs1 yumo_cmp_item'+'\n')
    #0_2
    with open('yumo_cmp/functions/xh/item/marker/block_item/add/'+str(i)+'_2.mcfunction', 'w') as file:
        file.write('execute store result block ~ ~ ~ Items[{Slot:'+str(i)+'b}].Count double 0.0001 run scoreboard players get duidie yumo_cmp_configs'+'\n')
        file.write('\n')

        file.write('execute store result entity @s data.yumo_cmp_Item_xh['+str(i)+'].add double 0.0001 run scoreboard players operation item1 yumo_cmp_item -= duidie yumo_cmp_configs'+'\n')
    i += 1
    pass