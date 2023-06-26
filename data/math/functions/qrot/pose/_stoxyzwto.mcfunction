#math:qrot/pose/_xyzwto
#转换函数：四元数四分量姿态到轴角姿态
#需要传入世界实体为执行者
execute store result score qrot_x int store result entity @s Pos[0] double 0.0001 run data get storage math:io xyzw[0] 10000
execute store result score qrot_y int store result entity @s Pos[1] double 0.0001 run data get storage math:io xyzw[1] 10000
execute store result score qrot_z int store result entity @s Pos[2] double 0.0001 run data get storage math:io xyzw[2] 10000
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0

#单位方向向量转换为临时分数
execute store result score qrot_v0 int run data get entity @s Pos[0] 10000
execute store result score qrot_v1 int run data get entity @s Pos[1] 10000
execute store result score qrot_v2 int run data get entity @s Pos[2] 10000

#求坐标的绝对值和
scoreboard players operation qrot_sbeta int = qrot_x int
execute if score qrot_x int matches ..-1 run scoreboard players operation qrot_sbeta int *= -1 int
execute if score qrot_y int matches 1.. run scoreboard players operation qrot_sbeta int += qrot_y int
execute if score qrot_y int matches ..-1 run scoreboard players operation qrot_sbeta int -= qrot_y int
execute if score qrot_z int matches 1.. run scoreboard players operation qrot_sbeta int += qrot_z int
execute if score qrot_z int matches ..-1 run scoreboard players operation qrot_sbeta int -= qrot_z int

#求单位向量坐标的绝对值和
scoreboard players operation stemp_d int = qrot_v0 int
execute if score qrot_v0 int matches ..-1 run scoreboard players operation stemp_d int *= -1 int
execute if score qrot_v1 int matches 1.. run scoreboard players operation stemp_d int += qrot_v1 int
execute if score qrot_v1 int matches ..-1 run scoreboard players operation stemp_d int -= qrot_v1 int
execute if score qrot_v2 int matches 1.. run scoreboard players operation stemp_d int += qrot_v2 int
execute if score qrot_v2 int matches ..-1 run scoreboard players operation stemp_d int -= qrot_v2 int

#绝对值相除获得模长
scoreboard players operation qrot_sbeta int *= 10000 int
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation qrot_sbeta int /= stemp_d int
execute store result entity @s Pos[2] double 0.001 store result score qrot_cbeta int run data get storage math:io xyzw[3] 10000
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ 0.0
execute store result score qrot_beta int run data get entity @s Rotation[0] -10000