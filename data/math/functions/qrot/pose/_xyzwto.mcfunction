#math:qrot/pose/_xyzwto
#转换函数：四元数四分量姿态到轴角姿态
#需要传入世界实体为执行者
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get qrot_x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get qrot_y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get qrot_z int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0

#单位方向向量转换为临时分数
execute store result score qrot_v0 int run data get entity @s Pos[0] 10000
execute store result score qrot_v1 int run data get entity @s Pos[1] 10000
execute store result score qrot_v2 int run data get entity @s Pos[2] 10000

#求坐标的平方和
scoreboard players operation qrot_sbeta int = qrot_x int
scoreboard players operation qrot_sbeta int *= qrot_x int
scoreboard players operation stemp_d int = qrot_y int
scoreboard players operation stemp_d int *= qrot_y int
scoreboard players operation qrot_sbeta int += stemp_d int
scoreboard players operation stemp_d int = qrot_z int
scoreboard players operation stemp_d int *= qrot_z int
scoreboard players operation qrot_sbeta int += stemp_d int

#开根号
execute store result score stemp0 int store result score stemp1 int store result score stemp2 int store result score stemp3 int run scoreboard players operation stemp4 int = qrot_sbeta int
execute if score stemp4 int matches ..13924 run function math:qrot/pose/sqrt/range0
execute if score stemp4 int matches 13925..16777216 run function math:qrot/pose/sqrt/range1
execute if score stemp4 int matches 16777217.. run function math:qrot/pose/sqrt/range2
scoreboard players operation stemp0 int /= qrot_sbeta int
scoreboard players operation qrot_sbeta int += stemp0 int
scoreboard players operation qrot_sbeta int /= 2 int
scoreboard players operation stemp1 int /= qrot_sbeta int
scoreboard players operation qrot_sbeta int += stemp1 int
scoreboard players operation qrot_sbeta int /= 2 int
scoreboard players operation stemp2 int /= qrot_sbeta int
scoreboard players operation qrot_sbeta int += stemp2 int
scoreboard players operation qrot_sbeta int /= 2 int
scoreboard players operation stemp3 int /= qrot_sbeta int
scoreboard players operation qrot_sbeta int += stemp3 int

#绝对值相除获得模长
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation qrot_sbeta int /= 2 int
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation qrot_cbeta int = qrot_w int
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s ^ ^ ^1.0 ~ 0.0
execute store result score qrot_cbeta int run data get entity @s Pos[2] 10000
execute store result score qrot_sbeta int run data get entity @s Pos[0] 10000
execute store result score qrot_beta int run data get entity @s Rotation[0] -10000