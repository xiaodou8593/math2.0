#math:space/_posto
#输入执行者位置，输出空间索引到res int
execute store result score res int run data get entity @s Pos[2]
scoreboard players operation res int /= 10000 int
scoreboard players operation res int -= space_startz int
scoreboard players operation res int /= space_stepz int
scoreboard players operation res int *= space_lenxy int

execute store result score stemp0 int run data get entity @s Pos[1]
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp0 int -= space_starty int
scoreboard players operation stemp0 int /= space_stepy int
scoreboard players operation stemp0 int *= space_lenx int
scoreboard players operation res int += stemp0 int

execute store result score stemp0 int run data get entity @s Pos[0]
scoreboard players operation stemp0 int /= 10000 int
scoreboard players operation stemp0 int -= space_startx int
scoreboard players operation stemp0 int /= space_stepx int
scoreboard players operation res int += stemp0 int