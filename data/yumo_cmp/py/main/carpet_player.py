p = 1

for __count in range(100):
    with open('yumo_cmp/functions/main/extern/carpet_player/'+str(p)+'.mcfunction', 'w') as file:
        file.write('execute if entity @a[name=yumo_cmp_playe_'+str(p)+'] run function yumo_cmp:main/extern/carpet_player/'+str(p+1)+''+'\n')
        file.write('execute unless entity @a[name=yumo_cmp_playe_'+str(p)+'] run player yumo_cmp_playe_'+str(p)+' spawn'+'\n')
        file.write('tag @p[name=yumo_cmp_playe_'+str(p)+'] add yumo_cmp_playe'+'\n')

        
    p += 1
    pass