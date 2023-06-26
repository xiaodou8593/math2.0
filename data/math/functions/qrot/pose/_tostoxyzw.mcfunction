#math:qrot/pose/_tostoxyzw
#转换函数：轴角姿态到四元数四分量姿态

scoreboard players operation qrot_x int = qrot_v0 int
execute store result storage math:io xyzw[0] float 0.00000001 run scoreboard players operation qrot_x int *= qrot_sbeta int
scoreboard players operation qrot_x int /= 10000 int

scoreboard players operation qrot_y int = qrot_v1 int
execute store result storage math:io xyzw[1] float 0.00000001 run scoreboard players operation qrot_y int *= qrot_sbetan int
scoreboard players operation qrot_y int /= 10000 int

scoreboard players operation qrot_z int = qrot_v2 int
execute store result storage math:io xyzw[2] float 0.00000001 run scoreboard players operation qrot_z int *= qrot_sbeta int
scoreboard players operation qrot_z int /= 10000 int

execute store result storage math:io xyzw[3] float 0.0001 run scoreboard players operation qrot_w int = qrot_cbeta int