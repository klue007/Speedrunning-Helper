$execute unless data storage tm_savestate data[{"UUID":$(UUID)}] run data modify storage tm_savestate data append value {"UUID":$(UUID),"X":0f,"Y":0f,"Z":0f,"RX":0f,"RZ":0f}

$data modify storage tm_savestate data[{"UUID":$(UUID)}]."X" set from entity @s Pos[0]
$data modify storage tm_savestate data[{"UUID":$(UUID)}]."Y" set from entity @s Pos[1]
$data modify storage tm_savestate data[{"UUID":$(UUID)}]."Z" set from entity @s Pos[2]
$data modify storage tm_savestate data[{"UUID":$(UUID)}]."RX" set from entity @s Rotation[0]
$data modify storage tm_savestate data[{"UUID":$(UUID)}]."RZ" set from entity @s Rotation[1]