#math:cbox/center/_posto
execute store result score x int run data get entity @s Pos[0] 10000
execute store result score y int run data get entity @s Pos[1] 10000
execute store result score z int run data get entity @s Pos[2] 10000
scoreboard players operation stemph int = h int
scoreboard players operation stemph int /= 2 int
scoreboard players operation y int -= stemph int
scoreboard players operation y int -= dy int