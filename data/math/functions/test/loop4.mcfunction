#math:test/loop4
scoreboard players operation stemp int = sloop int
scoreboard players operation stemp int *= 94248 int
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players remove stemp int 900000
execute at @s run particle end_rod ^ ^ ^5.0
#循环迭代
scoreboard players add sloop int 1
execute if score sloop int matches ..19 run function math:test/loop4