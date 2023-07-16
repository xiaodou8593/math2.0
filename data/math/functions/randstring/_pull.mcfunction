#math:randstring/_pull
# 输出前<inp,int>个字符
# 输出到storage math:io result
data modify storage math:io result set value []
scoreboard players operation sloop int = inp int
execute if score sloop int matches 1.. run function math:randstring/pull_loop