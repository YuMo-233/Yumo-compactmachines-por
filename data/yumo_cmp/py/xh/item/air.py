i = 1

for __count in range(5):
    with open('yumo_cmp/functions/xh/item/marker/air/'+str(i)+'.mcfunction', 'w') as file:
        #是空气
        file.write('execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} unless data entity @s data.yumo_cmp_Item_xh['+str(i)+'].id at @s run data modify entity @s data.yumo_cmp_Item_xh['+str(i)+'].tag set from block ~ ~-1 ~ tunnel_data.items.Items[0].tag'+'\n')

        file.write('\n')

        file.write('execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] unless data entity @s data.yumo_cmp_Item_xh['+str(i)+'].id run data modify entity @s data.yumo_cmp_Item_xh['+str(i)+'].tag set from block ~ ~ ~ Items[0].tag'+'\n')

        file.write('\n')
        file.write('\n')

        file.write('execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} unless data entity @s data.yumo_cmp_Item_xh['+str(i)+'].id at @s run data modify entity @s data.yumo_cmp_Item_xh['+str(i)+'].id set from block ~ ~-1 ~ tunnel_data.items.Items[0].id'+'\n')

        file.write('\n')

        file.write('execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] unless data entity @s data.yumo_cmp_Item_xh['+str(i)+'].id run data modify entity @s data.yumo_cmp_Item_xh['+str(i)+'].id set from block ~ ~ ~ Items[0].id'+'\n')
        file.write('\n')
        file.write('\n')
        
        #不是空气
        file.write('execute if data entity @s data.yumo_cmp_Item_xh['+str(i)+'].id run function yumo_cmp:xh/item/marker/add/'+str(i)+''+'\n')
    i += 1
    pass