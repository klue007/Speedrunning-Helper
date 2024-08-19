$data remove storage tm_savestate data[{"UUID":$(UUID)}]
clear @s nether_star[custom_data~{"tm_tp_to_save":true}]
execute at @s run playsound item.armor.equip_netherite master @s ~ ~ ~ 1 1
tellraw @s {"text": "已删除保存的位置.","color": "gray"}