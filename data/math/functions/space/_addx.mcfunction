#math:space/_addx
#输入临时对象空间，输入执行者空间，将执行者空间沿着x轴拼接给临时对象空间
scoreboard players operation stempx int = @s space_lenx
scoreboard players operation stempx int *= @s space_stepx
scoreboard players operation stempx int /= space_lenx int
scoreboard players operation space_lenx int += stempx int

#更新面积参数
scoreboard players operation space_lenxy int = space_lenx int
scoreboard players operation space_lenxy int *= space_leny int