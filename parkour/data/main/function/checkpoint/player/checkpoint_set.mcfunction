playsound entity.experience_orb.pickup master @s ~ ~ ~ 9999 1
title @s clear
title @s times 0 20 15
title @s title [""]
title @s subtitle [{"text": "Checkpoint set!","bold": true,"color": "gold"}]
execute at @e[tag=checkpoint,limit=1,sort=nearest] run spawnpoint @s ~ ~ ~ ~
particle totem_of_undying ~ ~0.8 ~ 0.75 0.75 0.75 0.2 50

scoreboard players operation @s tr_tick = @s pb_timer_tick
execute as @s run function main:timer/tr_timer
execute as @s[scores={pb=-1..-1}] run function main:checkpoint/display/cp_set
execute as @s[scores={pb=0..}] if score @s dt_tick matches ..0 run function main:checkpoint/display/cp_set2
execute as @s[scores={pb=0..}] if score @s dt_tick matches 1.. run function main:checkpoint/display/cp_set3

#pb
execute if score @s pb matches -1 run function main:pb/store_pb/cp_new
execute if score @s pb > @s pb_timer_tick run function main:pb/store_pb/cp_update

scoreboard players operation @s checkpoint = @s checkpoint_next
scoreboard players add @s checkpoint_next 1
scoreboard players set @s pb_timer_tick 0
function main:pb/get_pb/checkpoint

tag @s remove init_plate