#math:graph/display/phyx_lloop
execute store result score inp int run data get storage math:io temp[0]
function math:list/_index
#弹簧拉力
execute store result score stempx int run data get storage math:io list[0].display.uvw[0] 10000
execute store result score stempy int run data get storage math:io list[0].display.uvw[1] 10000

scoreboard players operation stempx int -= x int
scoreboard players operation stempy int -= y int
scoreboard players operation stempx int *= link_k int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int *= link_k int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation vx int += stempx int
scoreboard players operation vy int += stempy int

#循环迭代
data remove storage math:io temp[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:graph/display/phyx_lloop