#math:space/load/sloopz
execute store result score stemp0 int run forceload query ~ ~
execute if score stemp0 int matches 0 run function space:load/forceload
#循环迭代
scoreboard players remove sloopz int 1
execute if score sloopz int matches 1.. positioned ~ ~ ~16 run function math:space/load/sloopz