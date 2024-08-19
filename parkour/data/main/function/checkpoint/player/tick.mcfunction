execute as @a at @s run function main:checkpoint/player/is_on_plate

execute if entity @e[tag=checkpoint,scores={checkpoint=1..1},distance=..1.5] if entity @s[tag=on_plate,tag=init_plate] run function main:checkpoint/player/run_start

execute if entity @e[tag=checkpoint,distance=..1.5] if score @e[tag=checkpoint,limit=1,sort=nearest] checkpoint = @s checkpoint_next if score @e[tag=checkpoint,limit=1,sort=nearest] checkpoint = max_checkpoint checkpoint if entity @s[tag=on_plate,tag=init_plate] run function main:checkpoint/player/run_end

execute if entity @e[tag=checkpoint,distance=..1.5] if score @e[tag=checkpoint,limit=1,sort=nearest] checkpoint = @s checkpoint_next if entity @s[tag=on_plate,tag=init_plate] run function main:checkpoint/player/checkpoint_set