function main:pb/timer

#d_timer
execute as @a[team=ingame,tag=timer_on] run scoreboard players operation @s dt_tick = @s pb_timer_tick
execute as @a[team=ingame,tag=timer_on] run scoreboard players operation @s dt_tick -= @s pb
execute as @a[team=ingame,tag=timer_on] run function main:timer/d_timer