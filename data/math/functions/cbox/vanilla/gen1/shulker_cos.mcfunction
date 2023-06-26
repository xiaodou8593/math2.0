execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get sstemp int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score sstemp int run data get entity @s Pos[2] 5000