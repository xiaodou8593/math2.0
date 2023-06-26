#math:space/_toxyz
#输入执行者，输入空间索引<inp,int>，输出到空间中的坐标到{<x,int>,<y,int>,<z,int>},1w倍率
execute store result score y int run scoreboard players operation z int = inp int
scoreboard players operation z int /= space_lenxy int
execute store result score x int run scoreboard players operation y int %= space_lenxy int
scoreboard players operation y int /= space_lenx int
scoreboard players operation x int %= space_lenx int

scoreboard players operation x int *= space_stepx int
scoreboard players operation y int *= space_stepy int
scoreboard players operation z int *= space_stepz int

scoreboard players operation x int += space_startx int
scoreboard players operation y int += space_starty int
scoreboard players operation z int += space_startz int

scoreboard players operation x int *= 10000 int
scoreboard players operation y int *= 10000 int
scoreboard players operation z int *= 10000 int