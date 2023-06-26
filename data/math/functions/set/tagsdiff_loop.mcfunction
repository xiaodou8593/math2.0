#math:set/tagsdiff_loop
#检查stemp[0]是否在input中未出现
data modify block 0 11 0 Text1 set value '{"nbt":"stemp[0]","storage":"math:io"}'
data modify entity @s Tags append from block 0 11 0 Text1
execute store result score stempl int if data entity @s Tags[]
execute if score stempl int > stemp_l int run data modify storage math:io result append from storage math:io stemp[0]
#长度状态转移
scoreboard players operation stemp_l int = stempl int

#递归迭代
data remove storage math:io stemp[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:set/tagsdiff_loop