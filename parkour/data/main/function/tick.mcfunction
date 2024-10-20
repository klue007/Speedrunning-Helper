function main:ingame/tick
function main:timer/tick
function main:checkpoint/tick
function main:trigger/tick
function main:pb/tick
function main:click/tick
function main:checkpoint/get_max_checkpoint
function main:training_mode/tick

execute as @a[tag=!joined] at @s run function main:join

execute as @a[team=ingame,tag=timer_on,gamemode=adventure] if score @s onlysprint_enabled matches 1 at @s unless entity @e[tag=checkpoint,distance=..1.5] unless function main:onlysprint/check_water unless entity @s[predicate=main:sprinting] run function main:onlysprint/back