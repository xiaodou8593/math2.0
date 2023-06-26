#math:graph/randnew/sloop
data modify storage math:io temp.to append from storage math:io list[0]
execute store result score stemp int run data get storage math:io list[0]
execute if score stemp int = loop int run data remove storage math:io temp.to[-1]
#循环迭代
data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:graph/randnew/sloop