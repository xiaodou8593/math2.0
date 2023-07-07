#math:uvw/_dsp
# 对执行者的局部坐标系进行粒子显示
# 输入{<inp,int>,1w倍率}控制坐标系大小
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players get @s x
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players get @s y
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players get @s z

scoreboard players set 3vec_n int 100

scoreboard players set particle int 4
scoreboard players operation 3vec_x int = @s u0
scoreboard players operation 3vec_y int = @s u1
scoreboard players operation 3vec_z int = @s u2
scoreboard players operation 3vec_x int *= inp int
scoreboard players operation 3vec_y int *= inp int
scoreboard players operation 3vec_z int *= inp int
scoreboard players operation 3vec_x int /= 10000 int
scoreboard players operation 3vec_y int /= 10000 int
scoreboard players operation 3vec_z int /= 10000 int
data modify entity @e[tag=math_marker,limit=1] Pos set from storage math:io xyz
execute at @e[tag=math_marker,limit=1] run function math:3vec/_dsp-ex

scoreboard players set particle int 5
scoreboard players operation 3vec_x int = @s v0
scoreboard players operation 3vec_y int = @s v1
scoreboard players operation 3vec_z int = @s v2
scoreboard players operation 3vec_x int *= inp int
scoreboard players operation 3vec_y int *= inp int
scoreboard players operation 3vec_z int *= inp int
scoreboard players operation 3vec_x int /= 10000 int
scoreboard players operation 3vec_y int /= 10000 int
scoreboard players operation 3vec_z int /= 10000 int
data modify entity @e[tag=math_marker,limit=1] Pos set from storage math:io xyz
execute at @e[tag=math_marker,limit=1] run function math:3vec/_dsp-ex

scoreboard players set particle int 6
scoreboard players operation 3vec_x int = @s w0
scoreboard players operation 3vec_y int = @s w1
scoreboard players operation 3vec_z int = @s w2
scoreboard players operation 3vec_x int *= inp int
scoreboard players operation 3vec_y int *= inp int
scoreboard players operation 3vec_z int *= inp int
scoreboard players operation 3vec_x int /= 10000 int
scoreboard players operation 3vec_y int /= 10000 int
scoreboard players operation 3vec_z int /= 10000 int
data modify entity @e[tag=math_marker,limit=1] Pos set from storage math:io xyz
execute at @e[tag=math_marker,limit=1] run function math:3vec/_dsp-ex