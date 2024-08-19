function main:training_mode/save_pos/save_state with entity @s
item replace entity @s hotbar.7 with air
function main:training_mode/save_pos/show_text/macro with entity @s

scoreboard players operation @s click_delay = #click_delay const
execute at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2