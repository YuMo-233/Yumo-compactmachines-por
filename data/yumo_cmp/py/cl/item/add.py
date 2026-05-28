#添加存量
i = 1
for __count in range(5):
    with open('yumo_cmp/functions/cl/item/marker/add/'+str(i)+'.mcfunction', 'w') as file:
        #获取物品数量
        #存量
        file.write('execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl['+str(i)+'].add 10000'+'\n')
        file.write('\n')

        #产量
        file.write('execute store result score item1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_cl['+str(i)+'].cl 10000'+'\n')
        file.write('\n')

        #存储到存量
        file.write('execute store result entity @s data.yumo_cmp_Item_cl['+str(i)+'].add double 0.0001 run scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item'+'\n')
        i += 1
    pass