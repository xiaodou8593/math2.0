#math:test/cube_loop
#生成
data modify storage math:io list prepend value [0.0d,0.0d,0.0d]

#z坐标
scoreboard players operation tempz int = loop int
scoreboard players operation tempx int = loop int
scoreboard players operation tempz int /= 256 int
execute store result storage math:io list[0][2] double 1 run scoreboard players remove tempz int 8

#xy坐标
scoreboard players operation tempx int %= 256 int
scoreboard players operation tempy int = tempx int
scoreboard players operation tempy int /= 16 int
execute store result storage math:io list[0][1] double 1 run scoreboard players remove tempy int 8
scoreboard players operation tempx int %= 16 int
execute store result storage math:io list[0][0] double 1 run scoreboard players remove tempx int 8

#递归迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:test/cube_loop