#math:space/_xyzto
#输入{<x,int>,<y,int>,<z,int>},1w倍率，输出空间索引到res int
scoreboard players operation res int = z int
scoreboard players operation res int /= 10000 int
scoreboard players operation res int -= space_startz int
scoreboard players operation res int /= space_stepz int
scoreboard players operation res int *= space_lenxy int

scoreboard players operation stemp0 int = y int
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp0 int -= space_starty int
scoreboard players operation stemp0 int /= space_stepy int
scoreboard players operation stemp0 int *= space_lenx int
scoreboard players operation res int += stemp0 int

scoreboard players operation stemp0 int = x int
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp0 int -= space_startx int
scoreboard players operation stemp0 int /= space_stepx int
scoreboard players operation res int += stemp0 int