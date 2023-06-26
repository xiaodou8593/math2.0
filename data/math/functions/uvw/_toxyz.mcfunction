#math:uvw/_toxyz
#输入局部坐标系，输入uvw坐标，输出{<x,int>,<y,int>,<z,int>}
scoreboard players operation sstempx int = x int
scoreboard players operation sstempy int = y int
scoreboard players operation sstempz int = z int
scoreboard players operation x int = u0 int
scoreboard players operation y int = u1 int
scoreboard players operation z int = u2 int
scoreboard players operation x int *= u int
scoreboard players operation y int *= u int
scoreboard players operation z int *= u int

scoreboard players operation sstemp0 int = v0 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation x int += sstemp0 int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation y int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation z int += sstemp0 int

scoreboard players operation sstemp0 int = w0 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation x int += sstemp0 int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation y int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation z int += sstemp0 int

scoreboard players operation x int /= 10000 int
scoreboard players operation y int /= 10000 int
scoreboard players operation z int /= 10000 int

scoreboard players operation x int += sstempx int
scoreboard players operation y int += sstempy int
scoreboard players operation z int += sstempz int