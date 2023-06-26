#math:qrot/_xyzto
#使用角速度{<3vec_x>,<3vec_y>,<3vec_z>}确定旋转基
#需要传入世界实体为执行者
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get 3vec_x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get 3vec_y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get 3vec_z int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score qrot_u0 int run data get entity @s Pos[0] 10000
execute store result score qrot_u1 int run data get entity @s Pos[1] 10000
execute store result score qrot_u2 int run data get entity @s Pos[2] 10000

function math:3vec/_ex-len
scoreboard players operation qrot_alpha int = 3vec_l int

function math:qrot/axis/_uvecto