#math:qrot/_ex-uvw
#扩展函数：根据xyzw扩展局部坐标系属性

execute store result score u1 int store result score u2 int store result score sstempxw int run scoreboard players operation u0 int = qrot_x int
scoreboard players operation u0 int *= qrot_x int
execute store result score v2 int store result score sstempyw int run scoreboard players operation v1 int = qrot_y int
scoreboard players operation v1 int *= qrot_y int
execute store result score sstempzw int run scoreboard players operation w2 int = qrot_z int
scoreboard players operation w2 int *= qrot_z int
scoreboard players operation sstempx2 int = u0 int
scoreboard players operation sstempy2 int = v1 int
scoreboard players operation sstempw2 int = qrot_w int
scoreboard players operation sstempw2 int *= qrot_w int
scoreboard players operation u0 int += sstempw2 int
scoreboard players operation u0 int -= v1 int
scoreboard players operation u0 int -= w2 int
scoreboard players operation v1 int += sstempw2 int
scoreboard players operation v1 int -= sstempx2 int
scoreboard players operation v1 int -= w2 int
scoreboard players operation w2 int += sstempw2 int
scoreboard players operation w2 int -= sstempx2 int
scoreboard players operation w2 int -= sstempy2 int

scoreboard players operation u0 int /= 10000 int
scoreboard players operation v1 int /= 10000 int
scoreboard players operation w2 int /= 10000 int

scoreboard players operation u1 int *= qrot_y int
scoreboard players operation v0 int = u1 int
scoreboard players operation sstempzw int *= qrot_w int
scoreboard players operation u1 int += sstempzw int
scoreboard players operation v0 int -= sstempzw int

scoreboard players operation u1 int /= 5000 int
scoreboard players operation v0 int /= 5000 int

scoreboard players operation u2 int *= qrot_z int
scoreboard players operation w0 int = u2 int
scoreboard players operation sstempyw int *= qrot_w int
scoreboard players operation u2 int -= sstempyw int
scoreboard players operation w0 int += sstempyw int

scoreboard players operation u2 int /= 5000 int
scoreboard players operation w0 int /= 5000 int

scoreboard players operation v2 int *= qrot_z int
scoreboard players operation w1 int = v2 int
scoreboard players operation sstempxw int *= qrot_w int
scoreboard players operation v2 int += sstempxw int
scoreboard players operation w1 int -= sstempxw int

scoreboard players operation v2 int /= 5000 int
scoreboard players operation w1 int /= 5000 int