#math:_rand
# 进行一次LCG随机数迭代
# 输出<random,int>
scoreboard players operation rand_seed int *= 1103515245 int
scoreboard players add rand_seed int 12345
scoreboard players operation random int = rand_seed int