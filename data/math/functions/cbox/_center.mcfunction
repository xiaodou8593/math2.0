#math:cbox/_center
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get x int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get z int
scoreboard players operation stemph int = h int
scoreboard players operation stemph int /= 2 int
scoreboard players operation stemph int += y int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stemph int += dy int