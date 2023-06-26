#math:test/move_loop
#投影
execute as @e[tag=math_marker,limit=1] run function math:test/rand_uvec
execute store result score x int run data get storage math:io list[0][0] 1000
execute store result score y int run data get storage math:io list[0][1] 1000
execute store result score z int run data get storage math:io list[0][2] 1000
function math:test/move
execute store result storage math:io list[0][0] double 0.001 run scoreboard players get res_x int
execute store result storage math:io list[0][1] double 0.001 run scoreboard players get res_y int
execute store result storage math:io list[0][2] double 0.001 run scoreboard players get res_z int

#递归迭代
data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:test/move_loop