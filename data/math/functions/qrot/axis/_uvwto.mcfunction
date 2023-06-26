#math:qrot/axis/_uvwto
#转换函数：uvw到旋转基
#i向量
scoreboard players operation qrot_i0 int = qrot_v0 int
scoreboard players operation qrot_i0 int *= qrot_sbeta int
scoreboard players operation qrot_i0 int /= 10000 int

scoreboard players operation qrot_i1 int = qrot_v1 int
scoreboard players operation qrot_i1 int *= qrot_sbeta int
scoreboard players operation qrot_i1 int /= 10000 int

scoreboard players operation qrot_i2 int = qrot_v2 int
scoreboard players operation qrot_i2 int *= qrot_sbeta int
scoreboard players operation qrot_i2 int /= 10000 int

scoreboard players operation qrot_i3 int = qrot_cbeta int

#j向量
scoreboard players operation qrot_j3 int = u int
scoreboard players operation qrot_j3 int *= qrot_v0 int
scoreboard players operation stemp0 int = v int
scoreboard players operation stemp0 int *= qrot_v1 int
scoreboard players operation qrot_j3 int += stemp0 int
scoreboard players operation stemp0 int = w int
scoreboard players operation stemp0 int *= qrot_v2 int
scoreboard players operation qrot_j3 int += stemp0 int
scoreboard players operation qrot_j3 int /= 10000 int
scoreboard players operation qrot_j3 int *= qrot_sbeta int
scoreboard players operation qrot_j3 int /= -10000 int

scoreboard players operation qrot_j0 int = u int
scoreboard players operation qrot_j0 int *= qrot_cbeta int
scoreboard players operation qrot_j1 int = v int
scoreboard players operation qrot_j1 int *= qrot_cbeta int
scoreboard players operation qrot_j2 int = w int
scoreboard players operation qrot_j2 int *= qrot_cbeta int

scoreboard players operation stemp0 int = u int
scoreboard players operation stemp0 int *= qrot_v1 int
scoreboard players operation stemp1 int = v int
scoreboard players operation stemp1 int *= qrot_v0 int
scoreboard players operation stemp0 int -= stemp1 int
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp0 int *= qrot_sbeta int
scoreboard players operation qrot_j2 int -= stemp0 int

scoreboard players operation stemp0 int = v int
scoreboard players operation stemp0 int *= qrot_v2 int
scoreboard players operation stemp1 int = w int
scoreboard players operation stemp1 int *= qrot_v1 int
scoreboard players operation stemp0 int -= stemp1 int
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp0 int *= qrot_sbeta int
scoreboard players operation qrot_j0 int -= stemp0 int

scoreboard players operation stemp0 int = w int
scoreboard players operation stemp0 int *= qrot_v0 int
scoreboard players operation stemp1 int = u int
scoreboard players operation stemp1 int *= qrot_v2 int
scoreboard players operation stemp0 int -= stemp1 int
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp0 int *= qrot_sbeta int
scoreboard players operation qrot_j1 int -= stemp0 int

scoreboard players operation qrot_j0 int /= 10000 int
scoreboard players operation qrot_j1 int /= 10000 int
scoreboard players operation qrot_j2 int /= 10000 int