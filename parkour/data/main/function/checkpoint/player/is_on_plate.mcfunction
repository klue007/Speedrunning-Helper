tag @s remove on_plate

execute if block ~ ~0.75 ~ light_weighted_pressure_plate run tag @s add on_plate
execute if block ~0.175 ~0.75 ~ light_weighted_pressure_plate run tag @s add on_plate
execute if block ~-0.175 ~0.75 ~ light_weighted_pressure_plate run tag @s add on_plate
execute if block ~ ~0.75 ~0.175 light_weighted_pressure_plate run tag @s add on_plate
execute if block ~ ~0.75 ~-0.175 light_weighted_pressure_plate run tag @s add on_plate

execute if block ~0.175 ~0.75 ~0.175 light_weighted_pressure_plate run tag @s add on_plate
execute if block ~0.175 ~0.75 ~-0.175 light_weighted_pressure_plate run tag @s add on_plate
execute if block ~-0.175 ~0.75 ~0.175 light_weighted_pressure_plate run tag @s add on_plate
execute if block ~-0.175 ~0.75 ~-0.175 light_weighted_pressure_plate run tag @s add on_plate

tag @a[tag=!on_plate] add init_plate