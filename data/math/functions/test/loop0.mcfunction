#loop0
#循环操作:进入第二重循环
scoreboard players set sloop int 60
function math:test/loop1
#循环状态迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. rotated 0.0 ~6.0 run function math:test/loop0