scoreboard players set @s pb -1
execute as @e[tag=pb] if score @s ID = @p ID if score @s checkpoint = @p checkpoint run scoreboard players operation @p pb = @s pb