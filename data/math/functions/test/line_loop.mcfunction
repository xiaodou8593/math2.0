#math:test/line_loop
particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a
#循环迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. positioned ^ ^ ^0.1 run function math:test/line_loop