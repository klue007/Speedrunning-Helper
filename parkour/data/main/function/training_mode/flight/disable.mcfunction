tag @s remove enable_flight
tag @s add disable_flight
tag @s add flight_toggled
gamemode adventure @s
effect clear @s invisibility
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 0.75 0.75

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"tm_flight":true}] run item modify entity @s weapon.mainhand main:training_mode/glint/disable

execute if items entity @s weapon.offhand *[minecraft:custom_data~{"tm_flight":true}] run item modify entity @s weapon.offhand main:training_mode/glint/disable