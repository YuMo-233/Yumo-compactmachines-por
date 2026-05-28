i = 0

#1
for __count in range(6):
    with open('yumo_cmp/functions/cl/item_xh/marker/xh/'+str(i)+'.mcfunction', 'w') as file:
        file.write('execute store result score itemadd1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].add 10000'+'\n')
        file.write('execute store result score itemxh2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].xh 10000'+'\n')
        file.write('\n')

        file.write('execute if score itemadd1 yumo_cmp_item < itemxh2 yumo_cmp_item run scoreboard players set xh yumo_cmp_item 0'+'\n')
    i += 1
    pass

i = 0

#xh
with open('yumo_cmp/functions/cl/item_xh/marker/xh/xh.mcfunction', 'w') as file:
    #判断物品是否足够
    file.write('scoreboard players set xh yumo_cmp_item 1'+'\n')
    file.write('\n')

    for __count in range(6):
        file.write('execute if data entity @s data.yumo_cmp_Item_xh['+str(i)+'] run function yumo_cmp:cl/item_xh/marker/xh/'+str(i)+''+'\n')
        file.write('\n')
        i += 1
    pass
    file.write('\n')

    #设置允许生成
    file.write('execute if score xh yumo_cmp_item matches 1 run data modify entity @s data.yumo_cmp_Item_cl_xh_open set value 0b'+'\n')
    file.write('\n')

    i = 0
    for __count in range(6):
        file.write('execute if score xh yumo_cmp_item matches 1 if data entity @s data.yumo_cmp_Item_xh['+str(i)+'] run function yumo_cmp:cl/item_xh/marker/xh/xh_'+str(i)+''+'\n')
        i += 1
        pass

#xh_0
i = 0

for __count in range(6):
    with open('yumo_cmp/functions/cl/item_xh/marker/xh/xh_'+str(i)+'.mcfunction', 'w') as file:
        #获取物品数量
        ##存量
        file.write('execute store result score item1 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].add 10000'+'\n')
        file.write('\n')

        ##消耗量
        file.write('execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].xh 10000'+'\n')
        file.write('\n')

        #存量减消耗量
        file.write('execute store result entity @s data.yumo_cmp_Item_xh['+str(i)+'].add double 0.0001 run scoreboard players operation item1 yumo_cmp_item -= item2 yumo_cmp_item'+'\n')
    i += 1
    pass
    