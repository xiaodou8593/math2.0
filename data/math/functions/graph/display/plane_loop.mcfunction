#math:graph/display/plane_loop
execute store result score stemp0 int store result score stemp1 int run scoreboard players remove loop int 1

data modify storage math:io list[0].display.velocity set value [0.0d,0.0d]
execute store result storage math:io list[0].display.uvw[0] double 1 run scoreboard players operation stemp0 int %= inp int
execute store result storage math:io list[0].display.uvw[1] double 1 run scoreboard players operation stemp1 int /= inp int
data modify storage math:io list[0].display.uvw[2] set value 0.0d

#循环迭代
data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
execute if score loop int matches 1.. run function math:graph/display/plane_loop