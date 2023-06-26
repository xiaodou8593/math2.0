#描点

scoreboard players operation stempx int += stempdx int
scoreboard players operation stempy int += stempdy int
scoreboard players operation stempz int += stempdz int
scoreboard players operation stempw int += stempdw int
scoreboard players operation stempx0 int += stempdx0 int
scoreboard players operation stempy0 int += stempdy0 int
scoreboard players operation stempz0 int += stempdz0 int
scoreboard players operation stempw0 int += stempdw0 int

scoreboard players operation stempx1 int = stempx0 int
scoreboard players operation stempy1 int = stempy0 int
scoreboard players operation stempz1 int = stempz0 int
scoreboard players operation stempw1 int = stempw0 int
scoreboard players operation stempx1 int /= 1000 int
scoreboard players operation stempy1 int /= 1000 int
scoreboard players operation stempz1 int /= 1000 int
scoreboard players operation stempw1 int /= 1000 int
scoreboard players operation stempx0 int %= 1000 int
scoreboard players operation stempy0 int %= 1000 int
scoreboard players operation stempz0 int %= 1000 int
scoreboard players operation stempw0 int %= 1000 int

data modify storage math:io result prepend value [0.0f,0.0f,0.0f,0.0f]
execute store result storage math:io result[0][0] float 0.001 run scoreboard players operation stempx int += stempx1 int
execute store result storage math:io result[0][1] float 0.001 run scoreboard players operation stempy int += stempy1 int
execute store result storage math:io result[0][2] float 0.001 run scoreboard players operation stempz int += stempz1 int
execute store result storage math:io result[0][3] float 0.001 run scoreboard players operation stempw int += stempw1 int

#递归迭代
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:4d/objects/line_loop