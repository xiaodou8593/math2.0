#math:uvw/_stoto
#输入storage math:io input，输出{<u,int>,<v,int>,<w,int>}
execute store result score sstempx int run data get storage math:io input[0] 10000
execute store result score sstempy int run data get storage math:io input[1] 10000
execute store result score sstempz int run data get storage math:io input[2] 10000

scoreboard players operation sstempx int -= x int
scoreboard players operation sstempy int -= y int
scoreboard players operation sstempz int -= z int

scoreboard players operation u int = u0 int
scoreboard players operation u int *= sstempx int
scoreboard players operation sstemp0 int = u1 int
scoreboard players operation sstemp0 int *= sstempy int
scoreboard players operation u int += sstemp0 int
scoreboard players operation sstemp0 int = u2 int
scoreboard players operation sstemp0 int *= sstempz int
scoreboard players operation u int += sstemp0 int
scoreboard players operation u int /= 10000 int

scoreboard players operation v int = v0 int
scoreboard players operation v int *= sstempx int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= sstempy int
scoreboard players operation v int += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= sstempz int
scoreboard players operation v int += sstemp0 int
scoreboard players operation v int /= 10000 int

scoreboard players operation w int = w0 int
scoreboard players operation w int *= sstempx int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= sstempy int
scoreboard players operation w int += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= sstempz int
scoreboard players operation w int += sstemp0 int
scoreboard players operation w int /= 10000 int