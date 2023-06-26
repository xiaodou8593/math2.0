#math:test/f0
#计算点乘
scoreboard players operation tempd int = x int
scoreboard players operation tempd int *= i0 int
scoreboard players operation temp0 int = y int
scoreboard players operation temp0 int *= i1 int
scoreboard players operation tempd int += temp0 int
scoreboard players operation temp0 int = z int
scoreboard players operation temp0 int *= i2 int
scoreboard players operation tempd int += temp0 int
scoreboard players operation temp0 int = tempd int
scoreboard players operation tempd int /= 1000 int
scoreboard players operation temp0 int %= 1000 int

#计算点乘平方
scoreboard players operation temp0 int *= tempd int
scoreboard players operation temp0 int *= 2 int
scoreboard players operation temp0 int /= 1000 int
scoreboard players operation tempd2 int = tempd int
scoreboard players operation tempd2 int *= tempd int
scoreboard players operation tempd2 int += temp0 int

#计算模长平方
scoreboard players operation templ2 int = x int
scoreboard players operation templ2 int *= x int
scoreboard players operation temp0 int = y int
scoreboard players operation temp0 int *= y int
scoreboard players operation templ2 int += temp0 int
scoreboard players operation temp0 int = z int
scoreboard players operation temp0 int *= z int
scoreboard players operation templ2 int += temp0 int

#开根号
scoreboard players operation inp int = r int
scoreboard players operation inp int *= r int
scoreboard players operation inp int += tempd2 int
scoreboard players operation inp int -= templ2 int
function math:_sqrt
scoreboard players operation res int -= tempd int
execute if score inp int matches ..-1 run scoreboard players set res int 0