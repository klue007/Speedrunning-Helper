give @s written_book[item_name='[{"text":"全局检查点设置","color": "gold","bold": true,"italic": false}]',written_book_content={title:'helper',author:'klue',pages:['[{"text":"[在当前位置添加检查点]\\n\\n","color": "green","underlined": true,"clickEvent": {"action": "run_command","value": "/function main:checkpoint/add_checkpoint"}},{"text":"[移除最后添加的检查点]\\n\\n","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/function main:checkpoint/remove_checkpoint"}},{"text":"[移除所有检查点]\\n\\n","color": "red","underlined": true,"clickEvent": {"action": "run_command","value": "/function main:reset"}}]']},custom_data={book:true}]

scoreboard players set @s pb -1
scoreboard players set @s checkpoint 0
scoreboard players set @s checkpoint_next -1
scoreboard players set @s pb_timer_tick 0
function main:timer/main/timer/reset