scoreboard players set @s pb -1
execute as @e[tag=pb_total] if score @s ID = @p ID run scoreboard players operation @p pb = @s pb