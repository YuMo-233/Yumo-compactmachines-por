i = 1

for __count in range(5):
    with open('yumo_cmp/functions/xh/item/marker/block_item/xh/'+str(i)+'.mcfunction', 'w') as file:
        #获得已存的物品
        file.write('execute store result score itme_Count_1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].Count 10000'+'\n')
        file.write('\n')

        #获得变化物品
        file.write('execute store result score itme_Count_2 yumo_cmp_item run scoreboard players get item1^ yumo_cmp_item'+'\n')
        file.write('\n')

        #计算
        file.write('scoreboard players operation itme_Count_1 yumo_cmp_item += itme_Count_2 yumo_cmp_item'+'\n')
        file.write('\n')

        #存储物品
        file.write('execute store result entity @s data.yumo_cmp_Item_xh['+str(i)+'].Count double 0.0001 run scoreboard players get itme_Count_1 yumo_cmp_item'+'\n')
        file.write('\n')
    i += 1
    pass