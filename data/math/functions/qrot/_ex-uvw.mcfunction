#math:qrot/_ex-uvw
#扩展函数：根据xyzw扩展局部坐标系属性

execute store result score u1 int store result score u2 int store result score stempxw int run scoreboard players operation u0 int = qrot_x int
scoreboard players operation u0 int *= qrot_x int
execute store result score v2 int store result score stempyw int run scoreboard players operation v1 int = qrot_y int
scoreboard players operation v1 int *= qrot_y int
execute store result score stempzw int run scoreboard players operation w2 int = qrot_z int
scoreboard players operation w2 int *= qrot_z int
scoreboard players operation stempx2 int = u0 int
scoreboard players operation stempy2 int = v1 int
scoreboard players operation stempw2 int = qrot_w int
scoreboard players operation stempw2 int *= qrot_w int
scoreboard players operation u0 int += stempw2 int
scoreboard players operation u0 int -= v1 int
scoreboard players operation u0 int -= w2 int
scoreboard players operation v1 int += stempw2 int
scoreboard players operation v1 int -= stempx2 int
scoreboard players operation v1 int -= w2 int
scoreboard players operation w2 int += stempw2 int
scoreboard players operation w2 int -= stempx2 int
scoreboard players operation w2 int -= stempy2 int

scoreboard players operation u0 int /= 10000 int
scoreboard players operation v1 int /= 10000 int
scoreboard players operation w2 int /= 10000 int

scoreboard players operation u1 int *= qrot_y int
scoreboard players operation v0 int = u1 int
scoreboard players operation stempzw int *= qrot_w int
scoreboard players operation u1 int += stempzw int
scoreboard players operation v0 int -= stempzw int

scoreboard players operation u1 int /= 5000 int
scoreboard players operation v0 int /= 5000 int

scoreboard players operation u2 int *= qrot_z int
scoreboard players operation w0 int = u2 int
scoreboard players operation stempyw int *= qrot_w int
scoreboard players operation u2 int -= stempyw int
scoreboard players operation w0 int += stempyw int

scoreboard players operation u2 int /= 5000 int
scoreboard players operation w0 int /= 5000 int

scoreboard players operation v2 int *= qrot_z int
scoreboard players operation w1 int = v2 int
scoreboard players operation stempxw int *= qrot_w int
scoreboard players operation v2 int += stempxw int
scoreboard players operation w1 int -= stempxw int

scoreboard players operation v2 int /= 5000 int
scoreboard players operation w1 int /= 5000 int