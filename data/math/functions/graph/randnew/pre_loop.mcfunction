#math:graph/randnew/pre_loop
data modify storage math:io list prepend value 0
execute store result storage math:io list[0] int 1 run scoreboard players get loop int
#循环迭代
scoreboard players add loop int 1
execute if score loop int < tempn int run function math:graph/randnew/pre_loop