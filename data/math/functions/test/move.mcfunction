#math:test/move
#调用F()
function math:test/f0

#移动
scoreboard players operation res_x int = i0 int
scoreboard players operation res_y int = i1 int
scoreboard players operation res_z int = i2 int
scoreboard players operation res_x int *= res int
scoreboard players operation res_y int *= res int
scoreboard players operation res_z int *= res int
scoreboard players operation res_x int /= 1000 int
scoreboard players operation res_y int /= 1000 int
scoreboard players operation res_z int /= 1000 int
scoreboard players operation res_x int += x int
scoreboard players operation res_y int += y int
scoreboard players operation res_z int += z int