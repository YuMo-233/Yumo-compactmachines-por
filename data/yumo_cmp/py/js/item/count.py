i = 1

for __count in range(5):
    with open('yumo_cmp/functions/js/item/marker/count/'+str(i)+'.mcfunction', 'w') as file:
        #获得已存的物品
        file.write('execute store result score itme_Count_1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js['+str(i)+'].Count 1'+'\n')
        file.write('execute store result score itme_Count_11 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_js['+str(i)+'].add 1'+'\n')
        file.write('\n')

        #获得箱子物品
        file.write('execute store result score itme_Count_2 yumo_cmp_item run data get block ~ ~ ~ Items[0].Count 1'+'\n')
        file.write('\n')

        #删除箱子物品
        file.write('data remove block ~ ~ ~ Items[0]'+'\n')
        file.write('\n')

        #计算
        file.write('scoreboard players operation itme_Count_1 yumo_cmp_item += itme_Count_2 yumo_cmp_item'+'\n')
        file.write('scoreboard players operation itme_Count_11 yumo_cmp_item += itme_Count_2 yumo_cmp_item'+'\n')
        file.write('\n')

        #存储物品
        file.write('execute store result entity @s data.yumo_cmp_Item_js['+str(i)+'].Count double 1 run scoreboard players get itme_Count_1 yumo_cmp_item'+'\n')
        file.write('execute store result entity @s data.yumo_cmp_Item_js['+str(i)+'].add double 1 run scoreboard players get itme_Count_11 yumo_cmp_item'+'\n')
        file.write('\n')
    i += 1
    pass