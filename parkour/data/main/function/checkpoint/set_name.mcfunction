execute unless score @s checkpoint_display matches 1.. run data modify entity @s CustomName set value '[{"text": "跑酷起点","color": "gold"}]'

$execute if score @s checkpoint_display matches 1.. run data modify entity @s CustomName set value '[{"text": "检查点 #$(checkpoint)","color": "gold"}]'