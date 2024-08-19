tellraw @s[team=!ingame] [{"text": "已开始计时.","color": "gray"}]
tellraw @s[team=ingame] [{"text": "已重新开始计时.","color": "gray"}]
team join ingame @s[team=!ingame]
scoreboard players set @s checkpoint 1
scoreboard players set @s checkpoint_next 2
playsound entity.experience_orb.pickup master @s ~ ~ ~ 9999 1
title @s clear
title @s times 0 20 15
title @s title [""]
title @s subtitle [{"text": "跑酷挑战已开始","bold": true,"color": "gold"}]
function main:timer/main/timer/restart
particle totem_of_undying ~ ~0.8 ~ 0.75 0.75 0.75 0.2 50
execute at @e[tag=checkpoint,limit=1,sort=nearest] run spawnpoint @s ~ ~ ~ ~
function main:pb/get_pb/checkpoint
scoreboard players set @s pb_timer_tick 0
tag @s remove init_plate