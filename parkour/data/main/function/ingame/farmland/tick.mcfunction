scoreboard players set @a on_farmland 0
tag @a[tag=farmland_protect] remove farmland_protect

execute as @a at @s positioned ~ ~-1 ~ run function main:ingame/farmland/is_on_farmland
execute as @a store result score @s motion_y run data get entity @s Motion[1] 1000
tag @a[scores={on_farmland=1..1,motion_y=..-300}] add farmland_protect

effect clear @a[tag=have_slowfalling,tag=!farmland_protect] slow_falling
tag @a[tag=have_slowfalling,tag=!farmland_protect] remove ave_slowfallingh

effect give @a[tag=farmland_protect] slow_falling 1 0 true
tag @a[tag=farmland_protect,tag=!have_slowfalling] add have_slowfalling