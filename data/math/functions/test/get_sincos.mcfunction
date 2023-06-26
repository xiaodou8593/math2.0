#math:test/get_sincos
execute store result entity @s Rotation[0] float -1 run scoreboard players get t int
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score u int run data get entity @s Pos[2] 10000
execute store result score v int run data get entity @s Pos[0] 10000