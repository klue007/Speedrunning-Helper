execute as @s[tag=!show_pb] run scoreboard players set @s show_pb 0
execute as @s[tag=!show_pb] run tag @s add show_pb

execute if score @s show_pb matches 0 run tellraw @s {"text": "                             ","strikethrough":true}
execute if score @s show_pb matches 0 run function main:trigger/show_pb/total
execute if score @s show_pb matches 1.. if score @s show_pb < max_checkpoint checkpoint run function main:trigger/show_pb/checkpoint
execute if score @s show_pb = max_checkpoint checkpoint run function main:trigger/show_sum_of_best
execute if score @s show_pb = max_checkpoint checkpoint run tellraw @s {"text": "                             ","strikethrough":true}
execute if score @s show_pb = max_checkpoint checkpoint run tag @s remove show_pb

scoreboard players add @s show_pb 1
