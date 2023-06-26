#描点
data modify storage math:io 4d.points append from storage math:io temp[][]

#递归迭代
execute store result storage math:io temp[0][][0] float 0.1 store result storage math:io temp[1][][1] float 0.1 store result storage math:io temp[2][][2] float 0.1 store result storage math:io temp[3][][3] float 0.1 run scoreboard players add loop int 1
execute if score loop int matches ..30 run function math:4d/objects/hypercube_loop