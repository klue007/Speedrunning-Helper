scoreboard players operation @s timer_tick_calc = @s timer_tick
scoreboard players operation @s timer_tick_calc /= hour_conv const
scoreboard players operation @s timer_hour = @s timer_tick_calc

scoreboard players operation @s timer_tick_calc = @s timer_tick
scoreboard players operation @s timer_tick_calc %= hour_conv const
scoreboard players operation @s timer_tick_calc /= min_conv const
scoreboard players operation @s timer_min = @s timer_tick_calc

scoreboard players operation @s timer_tick_calc = @s timer_tick
scoreboard players operation @s timer_tick_calc %= hour_conv const
scoreboard players operation @s timer_tick_calc %= min_conv const
scoreboard players operation @s timer_tick_calc /= sec_conv const
scoreboard players operation @s timer_sec = @s timer_tick_calc

scoreboard players operation @s timer_tick_calc = @s timer_tick
scoreboard players operation @s timer_tick_calc %= hour_conv const
scoreboard players operation @s timer_tick_calc %= min_conv const
scoreboard players operation @s timer_tick_calc %= sec_conv const
scoreboard players operation @s timer_tick_calc *= dec_conv const
scoreboard players operation @s timer_dec = @s timer_tick_calc

execute if score @s timer_min matches 1.. if score @s timer_sec matches 0..9 run scoreboard players set @s timer_display_zero1 0
execute if score @s timer_min matches 0 run scoreboard players reset @s timer_display_zero1
execute if score @s timer_sec matches 10.. run scoreboard players reset @s timer_display_zero1

execute if score @s timer_hour matches 1.. if score @s timer_min matches 0..9 run scoreboard players set @s timer_display_zero2 0
execute if score @s timer_hour matches 0 run scoreboard players reset @s timer_display_zero2
execute if score @s timer_min matches 10.. run scoreboard players reset @s timer_display_zero2

execute if score @s timer_dec matches 0..9 run scoreboard players set @s timer_display_zero3 0
execute if score @s timer_dec matches 10.. run scoreboard players reset @s timer_display_zero3