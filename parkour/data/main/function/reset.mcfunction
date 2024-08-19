kill @e[tag=pb]
kill @e[tag=pb_total]
scoreboard players reset @a checkpoint
scoreboard players set @a pb -1
scoreboard players reset @a pb_timer_tick
execute as @a run function main:timer/main/timer/reset

execute as @e[tag=checkpoint] at @s run function main:checkpoint/self/remove