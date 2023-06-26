#math:test/facing
tp @s 0.0 0.0 0.0 ~ ~
execute store result entity @s Rotation[0] float -0.0001 run data get entity @s Rotation[0] 5000
execute at @s rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score c1 int run data get entity @s Pos[2] 10000
execute store result score s1 int run data get entity @s Pos[0] 10000

execute store result entity @s Rotation[0] float -0.0001 run data get entity @s Rotation[1] 5000
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score c0 int run data get entity @s Pos[2] 10000
execute store result score s0 int run data get entity @s Pos[0] 10000

scoreboard players operation temp int = s0 int
execute store result storage math:io xyzw[0] float 0.00000001 run scoreboard players operation temp int *= c1 int
scoreboard players operation temp int = c0 int
execute store result storage math:io xyzw[1] float -0.00000001 run scoreboard players operation temp int *= s1 int
execute store result storage math:io xyzw[2] float 0.00000001 run scoreboard players operation s0 int *= s1 int
execute store result storage math:io xyzw[3] float 0.00000001 run scoreboard players operation c0 int *= c1 int