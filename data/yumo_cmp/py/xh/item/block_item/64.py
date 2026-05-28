i = 1

for __count in range(5):
    with open('yumo_cmp/functions/xh/item/marker/block_item/64/'+str(i)+'.mcfunction', 'w') as file:
        #容器格子是否大于等于堆叠上限
        file.write('execute store result score item64'+str(i)+' yumo_cmp_item run data get block ~ ~ ~ Items[{Slot:'+str(i)+'b}].Count 10000'+'\n')
        file.write('\n')

        ##小于
        ##合并物品
        file.write('execute unless score item64'+str(i)+' yumo_cmp_item >= duidie_xh yumo_cmp_configs run function yumo_cmp:xh/item/marker/block_item/add/'+str(i)+''+'\n')
    i += 1
    pass