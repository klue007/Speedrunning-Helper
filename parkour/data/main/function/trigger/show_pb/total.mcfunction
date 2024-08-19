scoreboard players set @s tr_tick -1
execute as @e[tag=pb_total] if score @s ID = @p ID run scoreboard players operation @p tr_tick = @s pb
tellraw @s[scores={tr_tick=-1..-1}] [{"text": "未找到个人最佳记录","color": "gray"}]
execute as @s[scores={tr_tick=0..}] run function main:timer/tr_timer
tellraw @s[scores={tr_min=0..0,tr_hour=0..0,tr_tick=0..}] [{"text": "个人最佳记录: ","color": "gray"},{"score": {"objective":"tr_sec","name":"@s"},"color": "gold"},{"text": ".","color": "gold"},{"score": {"objective":"tr_display_zero3","name":"@s"},"color": "gold"},{"score": {"objective":"tr_dec","name":"@s"},"color": "gold"}]
tellraw @s[scores={tr_min=1..,tr_hour=0..0,tr_tick=0..}] [{"text": "个人最佳记录: ","color": "gray"},{"score": {"objective":"tr_min","name":"@s"},"color": "gold"},{"text": ":","color": "gold"},{"score": {"objective":"tr_display_zero1","name":"@s"},"color": "gold"},{"score": {"objective":"tr_sec","name":"@s"},"color": "gold"},{"text": ".","color": "gold"},{"score": {"objective":"tr_display_zero3","name":"@s"},"color": "gold"},{"score": {"objective":"tr_dec","name":"@s"},"color": "gold"}]
tellraw @s[scores={tr_hour=1..,tr_tick=0..}] [{"text": "个人最佳记录: ","color": "gray"},{"score": {"objective":"tr_hour","name":"@s"},"color": "gold"},{"text": ":","color": "gold"},{"score": {"objective":"tr_display_zero2","name":"@s"},"color": "gold"},{"score": {"objective":"tr_min","name":"@s"},"color": "gold"},{"text": ":","color": "gold"},{"score": {"objective":"tr_display_zero1","name":"@s"},"color": "gold"},{"score": {"objective":"tr_sec","name":"@s"},"color": "gold"},{"text": ".","color": "gold"},{"score": {"objective":"tr_display_zero3","name":"@s"},"color": "gold"},{"score": {"objective":"tr_dec","name":"@s"},"color": "gold"}]