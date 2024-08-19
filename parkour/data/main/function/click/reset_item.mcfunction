execute as @s[gamemode=adventure] unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",components:{"minecraft:custom_data":{"reset":true}}}]}] unless items entity @s player.cursor redstone[custom_data={"reset":true}] run item replace entity @s hotbar.7 with minecraft:redstone[item_name='[{"text":"重新开始","color":"red","bold":true,"italic":false}]',custom_data={"reset":true},lore=['[{"text": "右键","color": "gold","italic": false},{"text": " 以重新开始","color": "gray","italic": false}]'],food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647}]

execute as @s[gamemode=!adventure] unless entity @s[nbt={Inventory:[{id:"minecraft:red_dye",components:{"minecraft:custom_data":{"reset":true}}}]}] unless items entity @s player.cursor red_dye[custom_data={"reset":true}] run item replace entity @s hotbar.7 with minecraft:red_dye[item_name='[{"text":"重新开始","color":"red","bold":true,"italic":false}]',custom_data={"reset":true},lore=['[{"text": "右键","color": "gold","italic": false},{"text": " 以重新开始","color": "gray","italic": false}]'],food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:2147483647}]