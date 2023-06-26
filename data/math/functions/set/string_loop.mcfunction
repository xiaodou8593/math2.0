#math:set/string_loop
#stemp[0]字符串化后加入string_set
data modify block 0 11 0 Text1 set value '{"nbt":"stemp[0]","storage":"math:io"}'
data modify storage math:io string_set append from block 0 11 0 Text1

#递归迭代
data remove storage math:io stemp[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:set/string_loop