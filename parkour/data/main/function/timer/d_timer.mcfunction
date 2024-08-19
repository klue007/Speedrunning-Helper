scoreboard players operation @s dt_tick_calc = @s dt_tick
execute if score @s dt_tick matches ..-1 run scoreboard players operation @s dt_tick_calc *= nega1 const
scoreboard players operation @s dt_tick_calc /= hour_conv const
scoreboard players operation @s dt_hour = @s dt_tick_calc

scoreboard players operation @s dt_tick_calc = @s dt_tick
execute if score @s dt_tick matches ..-1 run scoreboard players operation @s dt_tick_calc *= nega1 const
scoreboard players operation @s dt_tick_calc %= hour_conv const
scoreboard players operation @s dt_tick_calc /= min_conv const
scoreboard players operation @s dt_min = @s dt_tick_calc

scoreboard players operation @s dt_tick_calc = @s dt_tick
execute if score @s dt_tick matches ..-1 run scoreboard players operation @s dt_tick_calc *= nega1 const
scoreboard players operation @s dt_tick_calc %= hour_conv const
scoreboard players operation @s dt_tick_calc %= min_conv const
scoreboard players operation @s dt_tick_calc /= sec_conv const
scoreboard players operation @s dt_sec = @s dt_tick_calc

scoreboard players operation @s dt_tick_calc = @s dt_tick
execute if score @s dt_tick matches ..-1 run scoreboard players operation @s dt_tick_calc *= nega1 const
scoreboard players operation @s dt_tick_calc %= hour_conv const
scoreboard players operation @s dt_tick_calc %= min_conv const
scoreboard players operation @s dt_tick_calc %= sec_conv const
scoreboard players operation @s dt_tick_calc *= dec_conv const
scoreboard players operation @s dt_dec = @s dt_tick_calc

execute if score @s dt_min matches 1.. if score @s dt_sec matches 0..9 run scoreboard players set @s dt_display_zero1 0
execute if score @s dt_min matches 0 run scoreboard players reset @s dt_display_zero1
execute if score @s dt_sec matches 10.. run scoreboard players reset @s dt_display_zero1

execute if score @s dt_hour matches 1.. if score @s dt_min matches 0..9 run scoreboard players set @s dt_display_zero2 0
execute if score @s dt_hour matches 0 run scoreboard players reset @s dt_display_zero2
execute if score @s dt_min matches 10.. run scoreboard players reset @s dt_display_zero2

execute if score @s dt_dec matches 0..9 run scoreboard players set @s dt_display_zero3 0
execute if score @s dt_dec matches 10.. run scoreboard players reset @s dt_display_zero3