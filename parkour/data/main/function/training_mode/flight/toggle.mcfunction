execute as @s[tag=disable_flight,tag=!flight_toggled] run function main:training_mode/flight/enable
execute as @s[tag=enable_flight,tag=!flight_toggled] run function main:training_mode/flight/disable
tag @s remove flight_toggled

scoreboard players operation @s click_delay = #click_delay const