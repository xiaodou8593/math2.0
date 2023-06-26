#math:uvw/_tosto
#输入局部坐标系，输入uvw坐标，输出{<3vec_x,int>,<3vec_y,int>,<3vec_z,int>}

execute store result score sstempu0 int run scoreboard players operation sstempu1 int = u int
scoreboard players operation sstempu1 int /= 10000 int
scoreboard players operation sstempu0 int %= 10000 int

execute store result score sstempv0 int run scoreboard players operation sstempv1 int = v int
scoreboard players operation sstempv1 int /= 10000 int
scoreboard players operation sstempv0 int %= 10000 int

execute store result score sstempw0 int run scoreboard players operation sstempw1 int = w int
scoreboard players operation sstempw1 int /= 10000 int
scoreboard players operation sstempw0 int %= 10000 int

scoreboard players operation 3vec_x int = u0 int
scoreboard players operation 3vec_y int = u1 int
scoreboard players operation 3vec_z int = u2 int
scoreboard players operation 3vec_x int *= sstempu0 int
scoreboard players operation 3vec_y int *= sstempu0 int
scoreboard players operation 3vec_z int *= sstempu0 int

scoreboard players operation sstemp0 int = v0 int
scoreboard players operation sstemp0 int *= sstempv0 int
scoreboard players operation 3vec_x int += sstemp0 int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= sstempv0 int
scoreboard players operation 3vec_y int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= sstempv0 int
scoreboard players operation 3vec_z int += sstemp0 int

scoreboard players operation sstemp0 int = w0 int
scoreboard players operation sstemp0 int *= sstempw0 int
scoreboard players operation 3vec_x int += sstemp0 int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= sstempw0 int
scoreboard players operation 3vec_y int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= sstempw0 int
scoreboard players operation 3vec_z int += sstemp0 int

scoreboard players operation 3vec_x int /= 10000 int
scoreboard players operation 3vec_y int /= 10000 int
scoreboard players operation 3vec_z int /= 10000 int

scoreboard players operation sstemp0 int = u0 int
scoreboard players operation sstemp0 int *= sstempu1 int
scoreboard players operation 3vec_x int += sstemp0 int
scoreboard players operation sstemp0 int = u1 int
scoreboard players operation sstemp0 int *= sstempu1 int
scoreboard players operation 3vec_y int += sstemp0 int
scoreboard players operation sstemp0 int = u2 int
scoreboard players operation sstemp0 int *= sstempu1 int
scoreboard players operation 3vec_z int += sstemp0 int

scoreboard players operation sstemp0 int = v0 int
scoreboard players operation sstemp0 int *= sstempv1 int
scoreboard players operation 3vec_x int += sstemp0 int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= sstempv1 int
scoreboard players operation 3vec_y int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= sstempv1 int
scoreboard players operation 3vec_z int += sstemp0 int

scoreboard players operation sstemp0 int = w0 int
scoreboard players operation sstemp0 int *= sstempw1 int
scoreboard players operation 3vec_x int += sstemp0 int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= sstempw1 int
scoreboard players operation 3vec_y int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= sstempw1 int
scoreboard players operation 3vec_z int += sstemp0 int

scoreboard players operation 3vec_x int += x int
scoreboard players operation 3vec_y int += y int
scoreboard players operation 3vec_z int += z int