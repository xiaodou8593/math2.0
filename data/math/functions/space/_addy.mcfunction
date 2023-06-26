#math:space/_addy
#输入临时对象空间，输入执行者空间，将执行者空间沿着y轴拼接给临时对象空间
scoreboard players operation stempy int = @s space_leny
scoreboard players operation stempy int *= @s space_stepy
scoreboard players operation stempy int /= space_leny int
scoreboard players operation space_leny int += stempy int

#更新面积参数
scoreboard players operation space_lenxy int = space_lenx int
scoreboard players operation space_lenxy int *= space_leny int