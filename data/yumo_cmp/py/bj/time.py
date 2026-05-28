time = 0
bfb = 0

with open('yumo_cmp/functions/bj/marker/time/time_configs_0.mcfunction', 'w') as file:
    for __count in range(100):
        file.write('execute if score js_time yumo_cmp_item matches '+str(time+1)+'..'+str(time+120)+' run data merge entity @e[tag=yumo_cmp_text_tag,limit=1] {CustomName:"[{\\"text\\":\\"'+str(bfb)+'%\\",\\"color\\":\\"dark_red\\"}]"}'+'\n')
        bfb += 1
        time += 120

        pass