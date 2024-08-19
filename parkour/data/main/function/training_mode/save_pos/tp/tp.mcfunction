function main:training_mode/save_pos/tp/tp_macro with entity @s

effect give @s instant_health 1 20 true
effect give @s resistance 1 20 true
scoreboard players operation @s click_delay = #click_delay const

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 2