#math:qrot/_xyzw
#输入：确定旋转基的qrot,<alpha,int>
#输出：<qrot_x,int>,<qrot_y,int>,<qrot_z,int>,<qrot_w,int>
#需要传入math_marker为执行者

execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get qrot_alpha int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score stemp_cos int run data get entity @s Pos[2] 10000
execute store result score stemp_sin int run data get entity @s Pos[0] 10000

scoreboard players operation qrot_x int = qrot_i0 int
scoreboard players operation qrot_y int = qrot_i1 int
scoreboard players operation qrot_z int = qrot_i2 int
scoreboard players operation qrot_w int = qrot_i3 int

scoreboard players operation stempj0 int = qrot_j0 int
scoreboard players operation stempj1 int = qrot_j1 int
scoreboard players operation stempj2 int = qrot_j2 int
scoreboard players operation stempj3 int = qrot_j3 int

scoreboard players operation qrot_x int *= stemp_cos int
scoreboard players operation qrot_y int *= stemp_cos int
scoreboard players operation qrot_z int *= stemp_cos int
scoreboard players operation qrot_w int *= stemp_cos int
scoreboard players operation stempj0 int *= stemp_sin int
scoreboard players operation stempj1 int *= stemp_sin int
scoreboard players operation stempj2 int *= stemp_sin int
scoreboard players operation stempj3 int *= stemp_sin int
scoreboard players operation qrot_x int += stempj0 int
scoreboard players operation qrot_y int += stempj1 int
scoreboard players operation qrot_z int += stempj2 int
scoreboard players operation qrot_w int += stempj3 int

scoreboard players operation qrot_x int /= 10000 int
scoreboard players operation qrot_y int /= 10000 int
scoreboard players operation qrot_z int /= 10000 int
scoreboard players operation qrot_w int /= 10000 int