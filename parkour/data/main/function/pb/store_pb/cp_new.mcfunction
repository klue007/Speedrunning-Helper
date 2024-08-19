summon marker ~ ~ ~ {Tags:["pb"]}
execute as @e[tag=pb,limit=1,sort=nearest] unless score @s ID matches 0.. run scoreboard players operation @s ID = @p ID
execute as @e[tag=pb,limit=1,sort=nearest] if score @s ID = @p ID unless score @s checkpoint matches 1.. run scoreboard players operation @s checkpoint = @p checkpoint
execute as @e[tag=pb,limit=1,sort=nearest] if score @s ID = @p ID unless score @s pb matches 0.. run scoreboard players operation @s pb = @p pb_timer_tick