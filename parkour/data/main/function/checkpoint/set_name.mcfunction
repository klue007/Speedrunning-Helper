execute unless score @s checkpoint_display matches 1.. run data modify entity @s CustomName set value '[{"text": "Start!","color": "gold"}]'

$execute if score @s checkpoint_display matches 1.. run data modify entity @s CustomName set value '[{"text": "Checkpoint #$(checkpoint)","color": "gold"}]'