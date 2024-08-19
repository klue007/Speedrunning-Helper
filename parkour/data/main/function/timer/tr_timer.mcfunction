scoreboard players operation @s tr_tick_calc = @s tr_tick
execute if score @s tr_tick matches ..-1 run scoreboard players operation @s tr_tick_calc *= nega1 const
scoreboard players operation @s tr_tick_calc /= hour_conv const
scoreboard players operation @s tr_hour = @s tr_tick_calc

scoreboard players operation @s tr_tick_calc = @s tr_tick
execute if score @s tr_tick matches ..-1 run scoreboard players operation @s tr_tick_calc *= nega1 const
scoreboard players operation @s tr_tick_calc %= hour_conv const
scoreboard players operation @s tr_tick_calc /= min_conv const
scoreboard players operation @s tr_min = @s tr_tick_calc

scoreboard players operation @s tr_tick_calc = @s tr_tick
execute if score @s tr_tick matches ..-1 run scoreboard players operation @s tr_tick_calc *= nega1 const
scoreboard players operation @s tr_tick_calc %= hour_conv const
scoreboard players operation @s tr_tick_calc %= min_conv const
scoreboard players operation @s tr_tick_calc /= sec_conv const
scoreboard players operation @s tr_sec = @s tr_tick_calc

scoreboard players operation @s tr_tick_calc = @s tr_tick
execute if score @s tr_tick matches ..-1 run scoreboard players operation @s tr_tick_calc *= nega1 const
scoreboard players operation @s tr_tick_calc %= hour_conv const
scoreboard players operation @s tr_tick_calc %= min_conv const
scoreboard players operation @s tr_tick_calc %= sec_conv const
scoreboard players operation @s tr_tick_calc *= dec_conv const
scoreboard players operation @s tr_dec = @s tr_tick_calc

execute if score @s tr_min matches 1.. if score @s tr_sec matches 0..9 run scoreboard players set @s tr_display_zero1 0
execute if score @s tr_min matches 0 run scoreboard players reset @s tr_display_zero1
execute if score @s tr_sec matches 10.. run scoreboard players reset @s tr_display_zero1

execute if score @s tr_hour matches 1.. if score @s tr_min matches 0..9 run scoreboard players set @s tr_display_zero2 0
execute if score @s tr_hour matches 0 run scoreboard players reset @s tr_display_zero2
execute if score @s tr_min matches 10.. run scoreboard players reset @s tr_display_zero2

execute if score @s tr_dec matches 0..9 run scoreboard players set @s tr_display_zero3 0
execute if score @s tr_dec matches 10.. run scoreboard players reset @s tr_display_zero3