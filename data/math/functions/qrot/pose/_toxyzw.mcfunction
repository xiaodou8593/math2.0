#math:qrot/pose/_toxyzw
#转换函数：轴角姿态到四元数四分量姿态

scoreboard players operation qrot_x int = qrot_v0 int
scoreboard players operation qrot_x int *= qrot_sbeta int
scoreboard players operation qrot_x int /= 10000 int

scoreboard players operation qrot_y int = qrot_v1 int
scoreboard players operation qrot_y int *= qrot_sbeta int
scoreboard players operation qrot_y int /= 10000 int

scoreboard players operation qrot_z int = qrot_v2 int
scoreboard players operation qrot_z int *= qrot_sbeta int
scoreboard players operation qrot_z int /= 10000 int

scoreboard players operation qrot_w int = qrot_cbeta int