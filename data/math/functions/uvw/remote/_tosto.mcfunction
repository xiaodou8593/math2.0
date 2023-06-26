#math:uvw/_tosto
#输入局部坐标系，输入uvw坐标，输出storage math:io xyz

execute store result score sstempu0 int run scoreboard players operation sstempu1 int = u int
scoreboard players operation sstempu1 int /= 10000 int
scoreboard players operation sstempu0 int %= 10000 int

execute store result score sstempv0 int run scoreboard players operation sstempv1 int = v int
scoreboard players operation sstempv1 int /= 10000 int
scoreboard players operation sstempv0 int %= 10000 int

execute store result score sstempw0 int run scoreboard players operation sstempw1 int = w int
scoreboard players operation sstempw1 int /= 10000 int
scoreboard players operation sstempw0 int %= 10000 int

scoreboard players operation sstempx int = u0 int
scoreboard players operation sstempy int = u1 int
scoreboard players operation sstempz int = u2 int
scoreboard players operation sstempx int *= sstempu0 int
scoreboard players operation sstempy int *= sstempu0 int
scoreboard players operation sstempz int *= sstempu0 int

scoreboard players operation sstemp0 int = v0 int
scoreboard players operation sstemp0 int *= sstempv0 int
scoreboard players operation sstempx int += sstemp0 int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= sstempv0 int
scoreboard players operation sstempy int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= sstempv0 int
scoreboard players operation sstempz int += sstemp0 int

scoreboard players operation sstemp0 int = w0 int
scoreboard players operation sstemp0 int *= sstempw0 int
scoreboard players operation sstempx int += sstemp0 int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= sstempw0 int
scoreboard players operation sstempy int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= sstempw0 int
scoreboard players operation sstempz int += sstemp0 int

scoreboard players operation sstempx int /= 10000 int
scoreboard players operation sstempy int /= 10000 int
scoreboard players operation sstempz int /= 10000 int

scoreboard players operation sstemp0 int = u0 int
scoreboard players operation sstemp0 int *= sstempu1 int
scoreboard players operation sstempx int += sstemp0 int
scoreboard players operation sstemp0 int = u1 int
scoreboard players operation sstemp0 int *= sstempu1 int
scoreboard players operation sstempy int += sstemp0 int
scoreboard players operation sstemp0 int = u2 int
scoreboard players operation sstemp0 int *= sstempu1 int
scoreboard players operation sstempz int += sstemp0 int

scoreboard players operation sstemp0 int = v0 int
scoreboard players operation sstemp0 int *= sstempv1 int
scoreboard players operation sstempx int += sstemp0 int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= sstempv1 int
scoreboard players operation sstempy int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= sstempv1 int
scoreboard players operation sstempz int += sstemp0 int

scoreboard players operation sstemp0 int = w0 int
scoreboard players operation sstemp0 int *= sstempw1 int
scoreboard players operation sstempx int += sstemp0 int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= sstempw1 int
scoreboard players operation sstempy int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= sstempw1 int
scoreboard players operation sstempz int += sstemp0 int

execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sstempx int += x int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation sstempy int += y int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation sstempz int += z int