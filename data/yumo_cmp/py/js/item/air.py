i = 1

for __count in range(5):
    with open('yumo_cmp/functions/js/item/marker/air/'+str(i)+'.mcfunction', 'w') as file:
        #是空气 
        file.write('execute unless data entity @s data.yumo_cmp_Item_js['+str(i)+'].id at @s run data modify entity @s data.yumo_cmp_Item_js['+str(i)+'].tag set from block ~ ~ ~ Items[0].tag'+'\n')

        file.write('execute unless data entity @s data.yumo_cmp_Item_js['+str(i)+'].id at @s run data modify entity @s data.yumo_cmp_Item_js['+str(i)+'].id set from block ~ ~ ~ Items[0].id'+'\n')

        file.write('\n')

        #不是空气
        file.write('execute if data entity @s data.yumo_cmp_Item_js['+str(i)+'].id run function yumo_cmp:js/item/marker/id/'+str(i)+''+'\n')
        

    i += 1
    pass