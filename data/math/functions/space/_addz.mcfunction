#math:space/_addz
#输入临时对象空间，输入执行者空间，将执行者空间沿着z轴拼接给临时对象空间
scoreboard players operation stempz int = @s space_lenz
scoreboard players operation stempz int *= @s space_stepz
scoreboard players operation stempz int /= space_lenz int
scoreboard players operation space_lenz int += stempz int