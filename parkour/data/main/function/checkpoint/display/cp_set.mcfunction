tellraw @s[scores={tr_min=0..0,tr_hour=0..0}] [{"text": "已抵达","color": "gray"},{"text": "CP","color": "gold"},{"score": {"objective":"checkpoint","name":"@s"},"color": "gold"},{"text": ", 时间: ","color": "gray"},{"score": {"objective":"tr_sec","name":"@s"},"color": "gold"},{"text": ".","color": "gold"},{"score": {"objective":"tr_display_zero3","name":"@s"},"color": "gold"},{"score": {"objective":"tr_dec","name":"@s"},"color": "gold"}]
tellraw @s[scores={tr_min=1..,tr_hour=0..0}] [{"text": "已抵达","color": "gray"},{"text": "CP","color": "gold"},{"score": {"objective":"checkpoint","name":"@s"},"color": "gold"},{"text": ", 时间: ","color": "gray"},{"score": {"objective":"tr_min","name":"@s"},"color": "gold"},{"text": ":","color": "gold"},{"score": {"objective":"tr_display_zero1","name":"@s"},"color": "gold"},{"score": {"objective":"tr_sec","name":"@s"},"color": "gold"},{"text": ".","color": "gold"},{"score": {"objective":"tr_display_zero3","name":"@s"},"color": "gold"},{"score": {"objective":"tr_dec","name":"@s"},"color": "gold"}]
tellraw @s[scores={tr_hour=1..}] [{"text": "已抵达","color": "gray"},{"text": "CP","color": "gold"},{"score": {"objective":"checkpoint","name":"@s"},"color": "gold"},{"text": ", 时间: ","color": "gray"},{"score": {"objective":"tr_hour","name":"@s"},"color": "gold"},{"text": ":","color": "gold"},{"score": {"objective":"tr_display_zero2","name":"@s"},"color": "gold"},{"score": {"objective":"tr_min","name":"@s"},"color": "gold"},{"text": ":","color": "gold"},{"score": {"objective":"tr_display_zero1","name":"@s"},"color": "gold"},{"score": {"objective":"tr_sec","name":"@s"},"color": "gold"},{"text": ".","color": "gold"},{"score": {"objective":"tr_display_zero3","name":"@s"},"color": "gold"},{"score": {"objective":"tr_dec","name":"@s"},"color": "gold"}]