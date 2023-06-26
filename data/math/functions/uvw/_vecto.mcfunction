#math:uvw/_vecto
#输入{<3vec_x,int>,<3vec_y,int>,<3vec_z,int>}，输出{<u,int>,<v,int>,<w,int>}
scoreboard players operation 3vec_x int -= x int
scoreboard players operation 3vec_y int -= y int
scoreboard players operation 3vec_z int -= z int

scoreboard players operation u int = u0 int
scoreboard players operation u int *= 3vec_x int
scoreboard players operation sstemp0 int = u1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation u int += sstemp0 int
scoreboard players operation sstemp0 int = u2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation u int += sstemp0 int
scoreboard players operation u int /= 10000 int

scoreboard players operation v int = v0 int
scoreboard players operation v int *= 3vec_x int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation v int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation v int += sstemp0 int
scoreboard players operation v int /= 10000 int

scoreboard players operation w int = w0 int
scoreboard players operation w int *= 3vec_x int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= 3vec_y int
scoreboard players operation w int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= 3vec_z int
scoreboard players operation w int += sstemp0 int
scoreboard players operation w int /= 10000 int

scoreboard players operation 3vec_x int += x int
scoreboard players operation 3vec_y int += y int
scoreboard players operation 3vec_z int += z int