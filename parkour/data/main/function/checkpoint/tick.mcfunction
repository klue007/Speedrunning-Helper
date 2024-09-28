execute as @e[tag=checkpoint] run data merge entity @s {Age:0}

execute as @e[tag=checkpoint] at @s run function main:checkpoint/self/tick

execute as @a[team=!training_mode,nbt=!{Inventory:[{id:"minecraft:written_book",components:{"minecraft:custom_data":{book:true}}}]}] at @s run function main:checkpoint/player/tick