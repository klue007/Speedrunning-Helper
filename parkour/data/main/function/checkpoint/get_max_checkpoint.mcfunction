scoreboard players set max_checkpoint checkpoint 0
execute as @e[tag=checkpoint] run scoreboard players add max_checkpoint checkpoint 1
scoreboard players operation max_checkpoint checkpoint_display = max_checkpoint checkpoint
scoreboard players remove max_checkpoint checkpoint_display 1
execute if score max_checkpoint checkpoint_display matches ..-1 run scoreboard players set max_checkpoint checkpoint_display 0
