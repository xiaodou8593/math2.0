#math:randstring/_back
# 输入<inp,int>
# 反向转动字符集
scoreboard players operation sloop int = inp int
execute if score sloop int matches 1.. run function math:randstring/back_loop