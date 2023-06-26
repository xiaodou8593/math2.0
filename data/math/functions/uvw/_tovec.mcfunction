#math:uvw/_tosto
#输入局部坐标系，输入uvw坐标，输出{<3vec_x,int>,<3vec_y,int>,<3vec_z,int>}

scoreboard players operation 3vec_x int = u0 int
scoreboard players operation 3vec_y int = u1 int
scoreboard players operation 3vec_z int = u2 int
scoreboard players operation 3vec_x int *= u int
scoreboard players operation 3vec_y int *= u int
scoreboard players operation 3vec_z int *= u int

scoreboard players operation sstemp0 int = v0 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation 3vec_x int += sstemp0 int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation 3vec_y int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation 3vec_z int += sstemp0 int

scoreboard players operation sstemp0 int = w0 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation 3vec_x int += sstemp0 int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation 3vec_y int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation 3vec_z int += sstemp0 int

scoreboard players operation 3vec_x int /= 10000 int
scoreboard players operation 3vec_y int /= 10000 int
scoreboard players operation 3vec_z int /= 10000 int

scoreboard players operation 3vec_x int += x int
scoreboard players operation 3vec_y int += y int
scoreboard players operation 3vec_z int += z int