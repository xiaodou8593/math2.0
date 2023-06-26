#计算坐标
data modify storage math:io 4d.points prepend value [0.0f,0.0f,0.0f,0.0f]
scoreboard players operation temp0 int = loop int

scoreboard players operation temp2 int = temp0 int
execute store result entity @s Rotation[0] float -10 run scoreboard players operation temp2 int %= 36 int
scoreboard players operation temp0 int /= 36 int

scoreboard players operation temp1 int = temp0 int
scoreboard players operation temp1 int %= 18 int
execute store result entity @s Rotation[1] float -10 run scoreboard players remove temp1 int 9

execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score tempx int run data get entity @s Pos[0] 1000
execute store result score tempy int run data get entity @s Pos[1] 1000
execute store result score tempz int run data get entity @s Pos[2] 1000

scoreboard players operation temp0 int /= 18 int
execute store result entity @s Rotation[0] float -10 run scoreboard players remove temp0 int 9

execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^5.0
execute store result score cos int run data get entity @s Pos[2] 1000
execute store result storage math:io 4d.points[0][3] float -0.001 run data get entity @s Pos[0] 1000
execute store result storage math:io 4d.points[0][0] float -0.000001 run scoreboard players operation tempx int *= cos int
execute store result storage math:io 4d.points[0][1] float -0.000001 run scoreboard players operation tempy int *= cos int
execute store result storage math:io 4d.points[0][2] float -0.000001 run scoreboard players operation tempz int *= cos int

#递归迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:4d/objects/hypersphere_loop