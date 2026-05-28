execute in yumo_cmp:yumo_cmp_load run forceload add 0 0 0 0

#检测容器
execute in yumo_cmp:yumo_cmp_load run setblock 0 0 0 minecraft:shulker_box[facing=up]{Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}
execute in yumo_cmp:yumo_cmp_load run setblock 1 0 0 minecraft:shulker_box[facing=up]{Items:[{Count:1b,Slot:0b,id:"minecraft:dirt"}]}


#配置
##计分板
scoreboard objectives add yumo_cmp_configs dummy

scoreboard players set 10000 yumo_cmp_configs 10000
scoreboard players set 100 yumo_cmp_configs 100
scoreboard players set 20 yumo_cmp_configs 20
scoreboard players set -1 yumo_cmp_configs -1

#间隙相关
##添加钓鱼竿计分板
scoreboard objectives add yumo_cmp_used minecraft.used:minecraft.warped_fungus_on_a_stick

##玩家位置计分板
scoreboard objectives add yumo_cmp_player_pos_x dummy
scoreboard objectives add yumo_cmp_player_pos_y dummy
scoreboard objectives add yumo_cmp_player_pos_z dummy

##方块位置计分板
scoreboard objectives add yumo_cmp_ca_block_pos_x dummy
scoreboard objectives add yumo_cmp_ca_block_pos_y dummy
scoreboard objectives add yumo_cmp_ca_block_pos_z dummy

execute unless score load yumo_cmp_configs matches 1 run scoreboard players set clearance_pos_x yumo_cmp_configs 1
execute unless score load yumo_cmp_configs matches 1 run scoreboard players set clearance_pos_z yumo_cmp_configs -1

#
function yumo_cmp:main/forge


#最初始加载
scoreboard players set load yumo_cmp_configs 1

#调试(id是作者名字)
tellraw Yu_Mo233 [{"text":"6"}]
