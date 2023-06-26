#math:space/load/sloopx
scoreboard players operation sloopz int = stempz int
execute if score sloopz int matches 1.. run function math:space/load/sloopz
#循环迭代
scoreboard players remove stempx int 1
execute if score stempx int matches 1.. positioned ~16 ~ ~ run function math:space/load/sloopx