#math:test/loop3
tp @s ~ ~ ~ ~ 0.0
scoreboard players set sloop int 0
execute if score sloop int matches ..19 run function math:test/loop4
#循环状态迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. rotated ~6.0 0.0 run function math:test/loop3