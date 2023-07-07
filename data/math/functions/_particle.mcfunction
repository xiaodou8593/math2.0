#math:_particle
# 进行粒子显示
# 输入粒子分数<particle,int>
execute if score particle int matches 1..9 run function math:particle/1_9
execute if score particle int matches 10..18 run function math:particle/10_18
execute if score particle int matches 19..27 run function math:particle/19_27