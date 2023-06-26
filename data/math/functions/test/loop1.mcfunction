#loop1
#循环操作
particle end_rod ^ ^ ^5.0
#循环状态迭代
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. rotated ~6.0 ~ run function math:test/loop1