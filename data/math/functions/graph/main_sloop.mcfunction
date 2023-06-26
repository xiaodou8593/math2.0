#math:graph/main_sloop
execute store result score tempi0 int run data get storage math:io temp.dis_vec[0][0] 10000
execute store result score tempi1 int run data get storage math:io temp.dis_vec[0][1] 10000
execute store result score tempi2 int run data get storage math:io temp.dis_vec[0][2] 10000

execute store result score tempd0 int run data get storage math:io temp.dis[0] 10000
execute store result score tempd1 int run data get storage math:io temp.end_dis[0] 10000

scoreboard players operation ssloop int = graph_maxloop int
execute if score tempd0 int < tempd1 int if score ssloop int matches 1.. run function math:graph/main_ssloop
execute if score tempd0 int >= tempd1 int run scoreboard players set tempd0 int 0
execute store result storage math:io temp.dis[0] double 0.0001 run scoreboard players get tempd0 int

#循环
data modify storage math:io temp.dis append from storage math:io temp.dis[0]
data remove storage math:io temp.dis[0]
data remove storage math:io temp.dis_vec[0]
data remove storage math:io temp.end_dis[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:graph/main_sloop