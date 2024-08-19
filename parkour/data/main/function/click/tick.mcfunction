#click delay
execute as @a if score @s click_delay matches 1.. run scoreboard players remove @s click_delay 1
execute as @a if score @s click_delay matches 0 run function main:click/reset_advancement

execute as @a[team=ingame] run function main:click/back_to_cp_item

execute as @a[team=ingame] run function main:click/reset_item