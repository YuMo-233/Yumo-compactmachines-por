##此文件为配置文件，可以修改数据包的一些特性来达到定制化
#//This file is a configuration file, and some characteristics of the packet can be modified to achieve customization

##最大堆叠数量,在安装了更改堆叠数量的模组时可用,否则可能产生意想不到的bug[默认64](1~127)
#//This determines the maximum number of stacks and can be used when mods are installed that change the number of stacks, otherwise unexpected bugs may occur[default 64](1~100,000)
scoreboard players set duidie yumo_cmp_configs 64

##耗材计算方块中每格最大的堆叠上限,不建议过大[默认64](1~127)
#//The maximum stacking limit for each cell in the consumables calculation block is not recommended to be too large [default 64] (1-100000)
scoreboard players set duidie_xh yumo_cmp_configs 64


##产量计算方块和耗材计算方块的计算周期[默认600 tick]
#//Calculation cycle for production calculation blocks and consumables calculation blocks [default 600 ticks]
scoreboard players set configs_Count_time yumo_cmp_configs 600

##产量计算时，每周期产量对上周期产量的影响[默认10](1~99)
#//When calculating production, the impact of weekly production on previous cycle production is determined [default 10](1~99)
scoreboard players set configs_Count_count yumo_cmp_configs 10

##产量计算时进度条显示方式(0百分比显示 1格子条显示 其他数值取消进度条显示)
#//Display method of progress bar during production calculation (0 percentage display, 1 grid bar display, other numerical values are removed from the progress bar display)
scoreboard players set js_time_configs yumo_cmp_configs 0