title @s clear
title @s times 0 20 15
title @s title [""]
title @s subtitle [{"text": "Disabled training mode","bold": true,"color": "red"}]
scoreboard players set @s training_mode 0
function main:timer/main/timer/reset
tag @s remove timer_display
gamemode adventure @s
tag @s remove enable_flight
tag @s remove disable_flight
tag @s remove timer_enable
clear @s
effect clear @s
tag @s remove training_mode

execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 0.5