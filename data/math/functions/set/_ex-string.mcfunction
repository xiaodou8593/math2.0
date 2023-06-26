#math:set/_ex-string
#输出置为空
data modify storage math:io string_set set value []
#遍历集合每一项
data modify storage math:io stemp set from storage math:io set
execute store result score sloop int if data storage math:io stemp[]
execute if score sloop int matches 1.. run function math:set/string_loop