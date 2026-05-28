i = 1
for __count in range(5):
    with open('yumo_cmp/functions/js/item/marker/id/'+str(i)+'.mcfunction', 'w') as file:
        #检测物品是否相同
        file.write('data merge block 0 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}'+'\n')
        file.write('data merge block 1 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}'+'\n')
        file.write('\n')

        #更改物品
        file.write('data remove entity @s data.yumo_cmp_Item_block'+'\n')
        file.write('execute at @s run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~ ~ Items'+'\n')
        file.write('\n')

        file.write('data modify block 0 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_block[0].id'+'\n')
        file.write('data modify block 0 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_block[0].tag'+'\n')
        file.write('\n')

        file.write('data modify block 1 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_js['+str(i)+'].id'+'\n')
        file.write('data modify block 1 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_js['+str(i)+'].tag'+'\n')
        file.write('\n')

        #检测
        #不一样
        file.write('execute unless blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:js/item/marker/air/'+str(i+1)+''+'\n')
        file.write('\n')

        #一样
        file.write('execute if blocks 1 0 0 1 0 0 0 0 0 all at @s run function yumo_cmp:js/item/marker/count/'+str(i)+''+'\n')
    i += 1
    pass