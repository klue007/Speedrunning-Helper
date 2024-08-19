function main:timer/main/timer/restart
tag @s add timer_toggled
tag @s add timer_enable

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"tm_timer":true}] run item modify entity @s weapon.mainhand main:training_mode/glint/enable

execute if items entity @s weapon.offhand *[minecraft:custom_data~{"tm_timer":true}] run item modify entity @s weapon.offhand main:training_mode/glint/enable