execute as @a[tag=timer_on] run scoreboard players add @s timer_tick 1
execute as @a run function main:timer/main/calculate
execute as @a run scoreboard players operation @s checkpoint_display = @s checkpoint
execute as @a run scoreboard players remove @s checkpoint_display 1
execute as @a[scores={checkpoint_display=..-1}] run scoreboard players set @s checkpoint_display 0
execute as @a[scores={pb=-1..-1}] run function main:timer/main/display
execute as @a[scores={pb=0..}] if score @s dt_tick matches ..0 run function main:timer/main/display2
execute as @a[scores={pb=0..}] if score @s dt_tick matches 1.. run function main:timer/main/display3