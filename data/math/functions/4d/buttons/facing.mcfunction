#圆心
execute at @e[tag=center,limit=1] run particle minecraft:flame ^ ^ ^0.2 0.0 0.0 0.0 0.0 1 force @a

#坐标和法向获取
execute at @e[tag=center,limit=1] run tp @s ~ ~ ~
execute store result score tempx0 int run data get entity @s Pos[0] 1000
execute store result score tempy0 int run data get entity @s Pos[1] 1000
execute store result score tempz0 int run data get entity @s Pos[2] 1000

execute at @e[tag=center,limit=1] positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score tempf0 int run data get entity @s Pos[0] 1000
execute store result score tempf1 int run data get entity @s Pos[1] 1000
execute store result score tempf2 int run data get entity @s Pos[2] 1000

tp @s ~ ~ ~
execute store result score tempx int run data get entity @s Pos[0] 1000
execute store result score tempy int run data get entity @s Pos[1] 1000
execute store result score tempz int run data get entity @s Pos[2] 1000

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score tempv0 int run data get entity @s Pos[0] 1000
execute store result score tempv1 int run data get entity @s Pos[1] 1000
execute store result score tempv2 int run data get entity @s Pos[2] 1000

scoreboard players operation tempx int -= tempx0 int
scoreboard players operation tempy int -= tempy0 int
scoreboard players operation tempz int -= tempz0 int

#计算参数t
scoreboard players operation res int = tempx int
scoreboard players operation res int *= tempf0 int
scoreboard players operation temp0 int = tempy int
scoreboard players operation temp0 int *= tempf1 int
scoreboard players operation res int += temp0 int
scoreboard players operation temp0 int = tempz int
scoreboard players operation temp0 int *= tempf2 int
scoreboard players operation res int += temp0 int

scoreboard players operation inp int = tempv0 int
scoreboard players operation inp int *= tempf0 int
scoreboard players operation temp0 int = tempv1 int
scoreboard players operation temp0 int *= tempf1 int
scoreboard players operation inp int += temp0 int
scoreboard players operation temp0 int = tempv2 int
scoreboard players operation temp0 int *= tempf2 int
scoreboard players operation inp int += temp0 int

function math:hpo/_3div

#算得交点坐标
scoreboard players operation tempv0 int *= res int
scoreboard players operation tempv1 int *= res int
scoreboard players operation tempv2 int *= res int
scoreboard players operation tempv0 int /= 1000 int
scoreboard players operation tempv1 int /= 1000 int
scoreboard players operation tempv2 int /= 1000 int

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation tempx int -= tempv0 int
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation tempy int -= tempv1 int
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation tempz int -= tempv2 int

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^2.0
execute store result score tempx int run data get entity @s Pos[0] 1000
execute store result score tempy int run data get entity @s Pos[1] 1000
execute store result score tempz int run data get entity @s Pos[2] 1000

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation tempx0 int += tempx int
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation tempy0 int += tempy int
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation tempz0 int += tempz int
execute at @s rotated as @e[tag=center,limit=1] run particle flame ^ ^ ^0.2 0.0 0.0 0.0 0.0 1 force @a

#局部坐标
execute at @e[tag=center,limit=1] positioned 0.0 0.0 0.0 run tp @s ^1.0 ^ ^
execute store result score tempi0 int run data get entity @s Pos[0] 1000
execute store result score tempi2 int run data get entity @s Pos[2] 1000
execute at @e[tag=center,limit=1] positioned 0.0 0.0 0.0 run tp @s ^ ^1.0 ^
execute store result score tempj0 int run data get entity @s Pos[0] 1000
execute store result score tempj1 int run data get entity @s Pos[1] 1000
execute store result score tempj2 int run data get entity @s Pos[2] 1000

scoreboard players operation tempu int = tempx int
scoreboard players operation tempu int *= tempi0 int
scoreboard players operation temp0 int = tempz int
scoreboard players operation temp0 int *= tempi2 int
execute store result entity @s Pos[2] double 0.000001 run scoreboard players operation tempu int += temp0 int

scoreboard players operation tempv int = tempx int
scoreboard players operation tempv int *= tempj0 int
scoreboard players operation temp0 int = tempy int
scoreboard players operation temp0 int *= tempj1 int
scoreboard players operation tempv int += temp0 int
scoreboard players operation temp0 int = tempz int
scoreboard players operation temp0 int *= tempj2 int
execute store result entity @s Pos[0] double 0.000001 run scoreboard players operation tempv int += temp0 int

execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ~ ~ ~ ~ 0.0

data modify storage math:io temp_rot set value {axis:[0.0f,0.0f,1.0f],angle:0.0f}
execute store result storage math:io 4d.charts[0].angle float 0.0001 store result score stemp int run data get entity @s Rotation[0] -174.5329
#execute store result storage math:io temp_rot.angle float 0.0001 run scoreboard players remove stemp int 23562
execute store result storage math:io temp_rot.angle float 0.0001 run scoreboard players add stemp int 54978
data modify entity @e[tag=arrow,limit=1] transformation.left_rotation set from storage math:io temp_rot