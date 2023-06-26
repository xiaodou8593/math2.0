#math:graph/display/phyx_ploop
execute store result score x int run data get storage math:io list[0].display.uvw[0] 10000
execute store result score y int run data get storage math:io list[0].display.uvw[1] 10000
execute store result score vx int run data get storage math:io list[0].display.velocity[0] 10000
execute store result score vy int run data get storage math:io list[0].display.velocity[1] 10000
execute store result storage math:io list[0].display.uvw[0] double 0.0001 run scoreboard players operation x int += vx int
execute store result storage math:io list[0].display.uvw[1] double 0.0001 run scoreboard players operation y int += vy int
#循环
data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:graph/display/phyx_ploop