####### Scoreboards #######

#farmland
scoreboard objectives add on_farmland dummy ["on_farmland"]
scoreboard objectives add motion_y dummy ["motion_y"]

#random
scoreboard objectives add random dummy ["random"]
scoreboard players set r_math_min random 0
scoreboard players set r_math_max random 2147483647

#ID
scoreboard objectives add ID dummy ["ID"]

#const
scoreboard objectives add const dummy ["const"]
scoreboard players set dec_conv const 5
scoreboard players set sec_conv const 20
scoreboard players set min_conv const 1200
scoreboard players set hour_conv const 72000
scoreboard players set nega1 const -1
scoreboard players set #click_delay const 3

#timer
scoreboard objectives add timer_tick dummy ["tick"]
scoreboard objectives add timer_dec dummy ["decimal"]
scoreboard objectives add timer_sec dummy ["second"]
scoreboard objectives add timer_min dummy ["minute"]
scoreboard objectives add timer_hour dummy ["hour"]
scoreboard objectives add timer_tick_calc dummy ["tick_calc"]
scoreboard objectives add timer_display_zero1 dummy ["display_zero1"]
scoreboard objectives add timer_display_zero2 dummy ["display_zero2"]
scoreboard objectives add timer_display_zero3 dummy ["display_zero3"]

#tr_timer
scoreboard objectives add tr_tick dummy ["tick"]
scoreboard objectives add tr_dec dummy ["decimal"]
scoreboard objectives add tr_sec dummy ["second"]
scoreboard objectives add tr_min dummy ["minute"]
scoreboard objectives add tr_hour dummy ["hour"]
scoreboard objectives add tr_tick_calc dummy ["tick_calc"]
scoreboard objectives add tr_display_zero1 dummy ["display_zero1"]
scoreboard objectives add tr_display_zero2 dummy ["display_zero2"]
scoreboard objectives add tr_display_zero3 dummy ["display_zero3"]

#pb
scoreboard objectives add pb dummy ["pb"]
scoreboard objectives add pb_timer_tick dummy ["pb_timer_tick"]

#dt_timer
scoreboard objectives add dt_tick dummy ["tick"]
scoreboard objectives add dt_dec dummy ["decimal"]
scoreboard objectives add dt_sec dummy ["second"]
scoreboard objectives add dt_min dummy ["minute"]
scoreboard objectives add dt_hour dummy ["hour"]
scoreboard objectives add dt_tick_calc dummy ["tick_calc"]
scoreboard objectives add dt_display_zero1 dummy ["display_zero1"]
scoreboard objectives add dt_display_zero2 dummy ["display_zero2"]
scoreboard objectives add dt_display_zero3 dummy ["display_zero3"]

#checkpoint
scoreboard objectives add checkpoint dummy ["checkpoint"]
scoreboard objectives add checkpoint_display dummy ["checkpoint_display"]
scoreboard objectives add checkpoint_next dummy ["checkpoint_next"]

#trigger
scoreboard objectives add tools trigger [{"text": "Tools","bold":true,"color": "yellow"}]
scoreboard objectives add restart trigger [{"text": "Restart","bold":true,"color": "yellow"}]
scoreboard objectives add back trigger [{"text": "Back to Checkpoint","bold":true,"color": "yellow"}]
scoreboard objectives add training_mode trigger [{"text": "Training Mode","bold":true,"color": "aqua"}]
scoreboard objectives add reset_pb trigger [{"text": "Reset PB","bold":true,"color": "yellow"}]
scoreboard objectives add show_pb trigger [{"text": "Show PB","bold":true,"color": "yellow"}]
scoreboard objectives add show_sum_of_best trigger [{"text": "Show Sum of Best","bold":true,"color": "yellow"}]

#training mode
scoreboard objectives add click_delay dummy "click_delay"

#OnlySprint mode
scoreboard objectives add onlysprint_enabled dummy "onlysprint_enabled"
scoreboard objectives add onlysprint_enabled_changed dummy "onlysprint_enabled"

####### Team #######
team add ingame
team add training_mode

function main:gamerule