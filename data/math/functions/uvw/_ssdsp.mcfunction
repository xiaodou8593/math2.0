#math:uvw/_ssdsp
# 对局部坐标系临时对象进行粒子显示
# 需要传入世界实体为执行者
# 输入{<inp,int>,1w倍率}控制坐标系大小
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get z int

scoreboard players set 3vec_n int 100

scoreboard players set particle int 4
scoreboard players operation 3vec_x int = u0 int
scoreboard players operation 3vec_y int = u1 int
scoreboard players operation 3vec_z int = u2 int
scoreboard players operation 3vec_x int *= inp int
scoreboard players operation 3vec_y int *= inp int
scoreboard players operation 3vec_z int *= inp int
scoreboard players operation 3vec_x int /= 10000 int
scoreboard players operation 3vec_y int /= 10000 int
scoreboard players operation 3vec_z int /= 10000 int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function math:3vec/_dsp-ex

scoreboard players set particle int 5
scoreboard players operation 3vec_x int = v0 int
scoreboard players operation 3vec_y int = v1 int
scoreboard players operation 3vec_z int = v2 int
scoreboard players operation 3vec_x int *= inp int
scoreboard players operation 3vec_y int *= inp int
scoreboard players operation 3vec_z int *= inp int
scoreboard players operation 3vec_x int /= 10000 int
scoreboard players operation 3vec_y int /= 10000 int
scoreboard players operation 3vec_z int /= 10000 int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function math:3vec/_dsp-ex

scoreboard players set particle int 6
scoreboard players operation 3vec_x int = w0 int
scoreboard players operation 3vec_y int = w1 int
scoreboard players operation 3vec_z int = w2 int
scoreboard players operation 3vec_x int *= inp int
scoreboard players operation 3vec_y int *= inp int
scoreboard players operation 3vec_z int *= inp int
scoreboard players operation 3vec_x int /= 10000 int
scoreboard players operation 3vec_y int /= 10000 int
scoreboard players operation 3vec_z int /= 10000 int
data modify entity @s Pos set from storage math:io xyz
execute at @s run function math:3vec/_dsp-ex