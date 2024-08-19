## Position when join
tp @s ~ ~ ~
execute at @s run spawnpoint @s ~ ~ ~ ~
gamemode adventure @s
team join ingame @s
tag @s add joined
tag @s add tools
function main:timer/main/timer/reset
scoreboard players set @s pb -1
scoreboard players set @s checkpoint 0
scoreboard players set @s checkpoint_next -1