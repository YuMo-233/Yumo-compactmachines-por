i = 1

for __count in range(5):
    #0
    with open('yumo_cmp/functions/xh/item/marker/add/'+str(i)+'.mcfunction', 'w') as file:
        #检测物品是否相同
        file.write('data merge block 0 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}'+'\n')
        file.write('data merge block 1 0 0 {Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}'+'\n')
        file.write('\n')

        #更改物品
        file.write('data remove entity @s data.yumo_cmp_Item_block'+'\n')

        file.write('execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @s run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~-1 ~ tunnel_data.items.Items'+'\n')
        file.write('\n')

        file.write('execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] run data modify entity @s data.yumo_cmp_Item_block set from block ~ ~ ~ Items'+'\n')
        file.write('\n')

        file.write('data modify block 0 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_block[0].id'+'\n')
        file.write('data modify block 0 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_block[0].tag'+'\n')
        file.write('\n')

        file.write('data modify block 1 0 0 Items[0].id set from entity @s data.yumo_cmp_Item_xh['+str(i)+'].id'+'\n')
        file.write('data modify block 1 0 0 Items[0].tag set from entity @s data.yumo_cmp_Item_xh['+str(i)+'].tag'+'\n')
        file.write('\n')

        #对比（一样）
        file.write('execute if blocks 1 0 0 1 0 0 0 0 0 all at @s run function yumo_cmp:xh/item/marker/add/'+str(i)+'_1'+'\n')
        file.write('\n')

        #不一样
        file.write('execute unless blocks 1 0 0 1 0 0 0 0 0 all run function yumo_cmp:xh/item/marker/air/'+str(i+1)+''+'\n')
    #0_1
    with open('yumo_cmp/functions/xh/item/marker/add/'+str(i)+'_1.mcfunction', 'w') as file:
        #获取物品数量
        ##存量
        file.write('execute store result score item2 yumo_cmp_item run data get entity @s data.yumo_cmp_Item_xh['+str(i)+'].add 10000'+'\n')
        file.write('\n')

        ##接口
        file.write('execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} store result score item1 yumo_cmp_item run data get block ~ ~-1 ~ tunnel_data.items.Items[0].Count 10000'+'\n')
        file.write('\n')

        file.write('execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] store result score item1 yumo_cmp_item run data get block ~ ~ ~ Items[0].Count 10000'+'\n')
        
        file.write('\n')

        #存储到存量
        file.write('execute store result entity @s data.yumo_cmp_Item_xh['+str(i)+'].add double 0.0001 run scoreboard players operation item1 yumo_cmp_item += item2 yumo_cmp_item'+'\n')

        #删除接口物品
        file.write('execute unless data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} run data remove block ~ ~-1 ~ tunnel_data.items.Items[0]'+'\n')
        file.write('\n')

        file.write('execute if data entity @s {data:{yumo_cmp_Item_load:{js:1b}}} at @e[tag=yumo_cmp_xhbj_marker,limit=1] run data remove block ~ ~ ~ Items[0]'+'\n')


        
    i += 1
    pass