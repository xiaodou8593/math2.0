#描点
data modify storage math:io 4d.points append from storage math:io stemp[][0]

#递归迭代
data remove storage math:io stemp[][0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:4d/objects/hypertetrahedron_loop