#math:randstring/back_loop
data modify storage math:io randstring prepend from storage math:io randstring[-1]
data remove storage math:io randstring[-1]
#循环迭代
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:randstring/back_loop