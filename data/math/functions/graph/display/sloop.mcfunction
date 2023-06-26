#math:graph/display/sloop
execute store result score inp int run data get storage math:io stemp.to[0]
function math:list/_index
data modify storage math:io stemp.dis append value 0.0d
data modify storage math:io stemp.end_dis append value 0.0d
#计算距离
execute store result score 3vec_x int run data get storage math:io list[0].display.uvw[0] 1000
execute store result score 3vec_y int run data get storage math:io list[0].display.uvw[1] 1000
execute store result score 3vec_z int run data get storage math:io list[0].display.uvw[2] 1000
scoreboard players operation 3vec_x int -= stempx int
scoreboard players operation 3vec_y int -= stempy int
scoreboard players operation 3vec_z int -= stempz int
function math:3vec/_ex-rot
data modify storage math:io stemp.dis_vec append from entity @s Pos
execute store result storage math:io stemp.end_dis[-1] double 0.001 run scoreboard players get 3vec_l int
#循环迭代
data remove storage math:io stemp.to[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:graph/display/sloop