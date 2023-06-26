#math:set/diff_loop
#检查stemp[0]是否在input中未出现
data modify storage math:io stemp_set set from storage math:io input
execute store result score stemp0 int run data modify storage math:io stemp_set[] set from storage math:io stemp[0]
execute if score stemp0 int = stemp1 int run data modify storage math:io result append from storage math:io stemp[0]

#递归迭代
data remove storage math:io stemp[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:set/diff_loop