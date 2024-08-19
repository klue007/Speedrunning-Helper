tag @s remove disable_flight
tag @s add enable_flight
tag @s add flight_toggled
gamemode creative @s
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 0.75 1.5

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"tm_flight":true}] run item modify entity @s weapon.mainhand main:training_mode/glint/enable

execute if items entity @s weapon.offhand *[minecraft:custom_data~{"tm_flight":true}] run item modify entity @s weapon.offhand main:training_mode/glint/enable