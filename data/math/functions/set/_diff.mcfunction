#math:set/_diff
#结果置空
data modify storage math:io result set value []

#获得input集合有多少项
execute store result score stemp1 int if data storage math:io input[]

#遍历被减集合每一项
data modify storage math:io stemp set from storage math:io set
execute store result score sloop int if data storage math:io stemp[]
execute if score sloop int matches 1.. run function math:set/diff_loop