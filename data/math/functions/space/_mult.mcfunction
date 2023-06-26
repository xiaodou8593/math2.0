#math:space/_mult
#输入临时对象空间，输入执行者空间，定义空间乘法：
#将临时对象空间的每个格子扩展成执行者空间的大小
scoreboard players operation space_stepx int = @s space_lenx
scoreboard players operation space_stepx int *= @s space_stepx
scoreboard players operation space_stepy int = @s space_leny
scoreboard players operation space_stepy int *= @s space_stepy
scoreboard players operation space_stepz int = @s space_lenz
scoreboard players operation space_stepz int *= @s space_stepz