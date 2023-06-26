#math:geom/sector/_dsp
#需要传入世界实体为执行者

#暂存坐标
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get z int

#半径1
scoreboard players operation stemp_theta int = sector_alpha int
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players operation stemp_theta int += sector_beta int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score 3vec_x int run data get entity @s Pos[0] 1000
scoreboard players set 3vec_y int 0
execute store result score 3vec_z int run data get entity @s Pos[2] 1000
scoreboard players operation 3vec_x int *= sector_r int
scoreboard players operation 3vec_x int /= 1000 int
scoreboard players operation 3vec_z int *= sector_r int
scoreboard players operation 3vec_z int /= 1000 int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function math:3vec/_ldsp-ex

#半径2
scoreboard players operation stemp_theta int = sector_alpha int
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players operation stemp_theta int -= sector_beta int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score 3vec_x int run data get entity @s Pos[0] 1000
scoreboard players set 3vec_y int 0
execute store result score 3vec_z int run data get entity @s Pos[2] 1000
scoreboard players operation 3vec_x int *= sector_r int
scoreboard players operation 3vec_x int /= 1000 int
scoreboard players operation 3vec_z int *= sector_r int
scoreboard players operation 3vec_z int /= 1000 int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function math:3vec/_ldsp-ex

scoreboard players operation sstemp0 int = stemp_theta int
scoreboard players set sstemp1 int 0
scoreboard players operation stemp0 int = sector_beta int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int /= arc_n int
scoreboard players operation stemp1 int %= arc_n int
scoreboard players operation sloop int = arc_n int
execute if score sloop int matches 1.. run function math:geom/sector/dsp/loop