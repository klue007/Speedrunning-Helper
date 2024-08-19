summon marker ~ ~ ~ {Tags:["pb_total"]}
execute as @e[tag=pb_total,limit=1,sort=nearest] unless score @s ID matches 0.. run scoreboard players operation @s ID = @p ID
execute as @e[tag=pb_total,limit=1,sort=nearest] if score @s ID = @p ID unless score @s pb matches 0.. run scoreboard players operation @s pb = @p timer_tick