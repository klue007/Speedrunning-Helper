summon area_effect_cloud ~ ~0.8 ~ {CustomNameVisible:1b,Tags:["checkpoint"],Duration:9999999}
data modify entity @e[tag=checkpoint,limit=1,sort=nearest] Rotation set from entity @s Rotation
function main:checkpoint/get_max_checkpoint

scoreboard players operation @e[tag=checkpoint,limit=1,sort=nearest] checkpoint = max_checkpoint checkpoint
scoreboard players operation @e[tag=checkpoint,limit=1,sort=nearest] checkpoint_display = @e[tag=checkpoint,limit=1,sort=nearest] checkpoint
scoreboard players remove @e[tag=checkpoint,limit=1,sort=nearest] checkpoint_display 1

#data get entity @e[tag=checkpoint,limit=1]
execute as @e[tag=checkpoint,limit=1,sort=nearest] run data merge storage macro {checkpoint:0}
execute as @e[tag=checkpoint,limit=1,sort=nearest] store result storage macro checkpoint int 1 run scoreboard players get @s checkpoint_display
execute as @e[tag=checkpoint,limit=1,sort=nearest] run function main:checkpoint/set_name with storage macro

kill @e[tag=pb]
kill @e[tag=pb_total]
scoreboard players reset @a checkpoint
scoreboard players set @a pb -1
scoreboard players reset @a pb_timer_tick
execute as @a run function main:timer/main/timer/reset