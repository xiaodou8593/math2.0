#math:uvw/remote/_vecto
#输入{<3vec_x,int>,<3vec_y,int>,<3vec_z,int>}，输出{<u,int>,<v,int>,<w,int>}

scoreboard players operation sstempx1 int = 3vec_x int
scoreboard players operation sstempy1 int = 3vec_y int
scoreboard players operation sstempz1 int = 3vec_z int

execute store result score sstempx0 int run scoreboard players operation sstempx1 int -= x int
execute store result score sstempy0 int run scoreboard players operation sstempy1 int -= y int
execute store result score sstempz0 int run scoreboard players operation sstempz1 int -= z int

scoreboard players operation sstempx1 int /= 10000 int
scoreboard players operation sstempx0 int %= 10000 int
scoreboard players operation sstempy1 int /= 10000 int
scoreboard players operation sstempy0 int %= 10000 int
scoreboard players operation sstempz1 int /= 10000 int
scoreboard players operation sstempz0 int %= 10000 int

#u0*x
scoreboard players operation u int = sstempx1 int
scoreboard players operation u int *= u0 int
scoreboard players operation sstemp0 int = sstempx0 int
scoreboard players operation sstemp0 int *= u0 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation u int += sstemp0 int
#u1*y
scoreboard players operation sstemp0 int = sstempy1 int
scoreboard players operation sstemp0 int *= u1 int
scoreboard players operation u int += sstemp0 int
scoreboard players operation sstemp0 int = sstempy0 int
scoreboard players operation sstemp0 int *= u1 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation u int += sstemp0 int
#u2*z
scoreboard players operation sstemp0 int = sstempz1 int
scoreboard players operation sstemp0 int *= u2 int
scoreboard players operation u int += sstemp0 int
scoreboard players operation sstemp0 int = sstempz0 int
scoreboard players operation sstemp0 int *= u2 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation u int += sstemp0 int

#v0*x
scoreboard players operation v int = sstempx1 int
scoreboard players operation v int *= v0 int
scoreboard players operation sstemp0 int = sstempx0 int
scoreboard players operation sstemp0 int *= v0 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation v int += sstemp0 int
#v1*y
scoreboard players operation sstemp0 int = sstempy1 int
scoreboard players operation sstemp0 int *= v1 int
scoreboard players operation v int += sstemp0 int
scoreboard players operation sstemp0 int = sstempy0 int
scoreboard players operation sstemp0 int *= v1 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation v int += sstemp0 int
#v2*z
scoreboard players operation sstemp0 int = sstempz1 int
scoreboard players operation sstemp0 int *= v2 int
scoreboard players operation v int += sstemp0 int
scoreboard players operation sstemp0 int = sstempz0 int
scoreboard players operation sstemp0 int *= v2 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation v int += sstemp0 int

#w0*x
scoreboard players operation w int = sstempx1 int
scoreboard players operation w int *= w0 int
scoreboard players operation sstemp0 int = sstempx0 int
scoreboard players operation sstemp0 int *= w0 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation w int += sstemp0 int
#w1*y
scoreboard players operation sstemp0 int = sstempy1 int
scoreboard players operation sstemp0 int *= w1 int
scoreboard players operation w int += sstemp0 int
scoreboard players operation sstemp0 int = sstempy0 int
scoreboard players operation sstemp0 int *= w1 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation w int += sstemp0 int
#w2*z
scoreboard players operation sstemp0 int = sstempz1 int
scoreboard players operation sstemp0 int *= w2 int
scoreboard players operation w int += sstemp0 int
scoreboard players operation sstemp0 int = sstempz0 int
scoreboard players operation sstemp0 int *= w2 int
scoreboard players operation sstemp0 int /= 10000 int
scoreboard players operation w int += sstemp0 int