title @s clear
title @s times 0 20 15
title @s title [""]
title @s subtitle [{"text": "Enabled training mode","bold": true,"color": "green"}]
clear @s
function main:timer/main/timer/reset
tag @s add timer_display
tag @s remove timer_enable
tag @s add disable_flight
tag @s add training_mode

scoreboard players set @s pb -1
scoreboard players set @s checkpoint 0
scoreboard players set @s checkpoint_next -1

execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1