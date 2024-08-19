execute as @a[tag=enable_flight] run effect give @s invisibility 9999 255 true

execute as @a[team=training_mode] at @s run function main:training_mode/items/hotbar
execute as @a at @s run function main:training_mode/items/toggle_item

#check
execute as @a[team=training_mode,tag=!training_mode] run function main:training_mode/join
execute as @a[team=!training_mode,tag=training_mode] run function main:training_mode/leave

execute as @a[team=training_mode] at @s run function main:training_mode/timer/tick

execute as @a[team=training_mode] at @s run function main:training_mode/save_pos/tick with entity @s