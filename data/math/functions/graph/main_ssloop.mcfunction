#math:graph/main_ssloop
scoreboard players operation stempx int = tempi0 int
scoreboard players operation stempx int *= tempd0 int
scoreboard players operation stempx int /= 10000 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempx int += tempx int

scoreboard players operation stempy int = tempi1 int
scoreboard players operation stempy int *= tempd0 int
scoreboard players operation stempy int /= 10000 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stempy int += tempy int

scoreboard players operation stempz int = tempi2 int
scoreboard players operation stempz int *= tempd0 int
scoreboard players operation stempz int /= 10000 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempz int += tempz int

execute at @s run function math:particle/_dsp

#循环
scoreboard players operation tempd0 int += graph_step int
scoreboard players remove ssloop int 1
execute if score tempd0 int < tempd1 int if score ssloop int matches 1.. run function math:graph/main_ssloop