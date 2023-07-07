#math:_randiter
# 切换随机数迭代器
execute store result storage math:io rand_lst[0] int 1 run scoreboard players get rand_seed int
data modify storage math:io rand_lst append from storage math:io rand_lst[0]
data remove storage math:io rand_lst[0]
execute store result score rand_seed int run data get storage math:io rand_lst[0]