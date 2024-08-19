execute as @s[tag=!timer_enable,tag=!timer_toggled] run function main:training_mode/timer/enable
execute as @s[tag=timer_enable,tag=!timer_toggled] run function main:training_mode/timer/disable
tag @s remove timer_toggled

execute at @s run playsound minecraft:block.lever.click master @s ~ ~ ~ 1 2
scoreboard players operation @s click_delay = #click_delay const