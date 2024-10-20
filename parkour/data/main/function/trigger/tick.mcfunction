scoreboard players enable @a back
execute as @a[scores={back=1..}] at @e[tag=checkpoint] if score @e[limit=1,sort=nearest] checkpoint = @s checkpoint run tp @s ~ ~-0.8 ~ ~ ~
execute as @a[scores={back=1..}] run scoreboard players set @s back 0

scoreboard players enable @a restart
execute as @a[scores={restart=1..}] run function main:timer/main/timer/reset
execute as @a[scores={restart=1..}] run scoreboard players set @s pb -1
execute as @a[scores={restart=1..}] run scoreboard players set @s checkpoint 0
execute as @a[scores={restart=1..}] run scoreboard players set @s checkpoint_next -1
execute as @a[scores={restart=1..}] at @e[tag=checkpoint,scores={checkpoint=1..1}] run tp @s ~ ~-0.8 ~ ~ ~
execute as @a[scores={restart=1..}] run scoreboard players set @s restart 0

scoreboard players enable @a training_mode
execute as @a[scores={training_mode=1..},team=training_mode] run function main:training_mode/team_leave
execute as @a[scores={training_mode=1..},team=!training_mode] run function main:training_mode/team_join

scoreboard players enable @a reset_pb
execute at @a[scores={reset_pb=1..}] as @e[tag=pb] if score @s ID = @p ID run kill @s
execute at @a[scores={reset_pb=1..}] as @e[tag=pb_total] if score @s ID = @p ID run kill @s
execute as @a[scores={reset_pb=1..}] run tellraw @s [{"text": "已重置个人最佳纪录.","color": "gray"}]
execute as @a[scores={reset_pb=1..}] run scoreboard players set @s pb -1
execute as @a[scores={reset_pb=1..}] run scoreboard players set @s reset_pb 0

scoreboard players enable @a[scores={show_pb=-2..-2}] show_pb
execute as @a unless score @s show_pb matches -2147483648..2147483647 run scoreboard players set @s show_pb -2
execute as @a[scores={show_pb=-1..}] at @s run function main:trigger/show_pb/tick
execute as @a if score @s show_pb > max_checkpoint checkpoint run scoreboard players set @s show_pb -2

scoreboard players enable @a show_sum_of_best
execute as @a[scores={show_sum_of_best=1..}] at @s run function main:trigger/show_sum_of_best
execute as @a[scores={show_sum_of_best=1..}] run scoreboard players set @s show_sum_of_best 0

scoreboard players enable @a tools
execute as @a if score @s tools matches 1.. if entity @s[tag=tools] run tellraw @s [{"text": "已隐藏快捷工具.","color": "gray"}]
execute as @a if score @s tools matches 1.. if entity @s[tag=tools] run clear @s *[custom_data={tm_toggle:true}]
execute as @a if score @s tools matches 1.. if entity @s[tag=tools] run clear @s *[custom_data={race_create:true}]
execute as @a if score @s tools matches 1.. if entity @s[tag=tools] run tag @s add tools_hide
execute as @a if score @s tools matches 1.. if entity @s[tag=tools] run tag @s remove tools
execute as @a if score @s tools matches 1.. if entity @s[tag=!tools,tag=!tools_hide] run tellraw @s [{"text": "已显示快捷工具.","color": "gray"}]
execute as @a if score @s tools matches 1.. if entity @s[tag=!tools,tag=!tools_hide] run tag @s add tools
execute as @a if score @s tools matches 1.. as @s[tag=tools_hide] run tag @s remove tools_hide
execute as @a unless score @s tools matches 0 run scoreboard players set @s tools 0

scoreboard players enable @a only_sprint
execute as @a[scores={only_sprint=1..}] unless score @s only_sprint_enabled matches 1 at @s run scoreboard players set @s only_sprint_enabled_changed 1
execute as @a[scores={only_sprint=1..}] unless score @s only_sprint_enabled matches 1 at @s run tellraw @s [{"text": "Only Sprint模式已启用.","color": "gray"}]
execute as @a[scores={only_sprint=1..}] if score @s only_sprint_enabled matches 1 at @s run scoreboard players set @s only_sprint_enabled_changed 0
execute as @a[scores={only_sprint=1..}] if score @s only_sprint_enabled matches 1 at @s run tellraw @s [{"text": "Only Sprint模式已禁用.","color": "gray"}]
execute as @a[scores={only_sprint=1..}] run scoreboard players operation @s only_sprint_enabled = @s only_sprint_enabled_changed
execute as @a[scores={only_sprint=1..}] run scoreboard players set @s only_sprint 0