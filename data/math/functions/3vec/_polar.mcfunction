#math:3vec/_polar
execute store result score @s 3vec_x run scoreboard players operation stempx int = 3vec_x int
execute store result score @s 3vec_y run scoreboard players operation stempy int = 3vec_y int
execute store result score @s 3vec_z run scoreboard players operation stempz int = 3vec_z int
execute if score 3vec_x int matches ..-1 run scoreboard players operation stempx int *= -1 int
execute if score 3vec_y int matches ..-1 run scoreboard players operation stempy int *= -1 int
execute if score 3vec_z int matches ..-1 run scoreboard players operation stempz int *= -1 int

scoreboard players operation 3vec_x int /= stempx int
scoreboard players operation 3vec_y int /= stempy int
scoreboard players operation 3vec_z int /= stempz int

#最大绝对值
scoreboard players operation stempd int = stempx int
execute if score stempy int > stempd int run scoreboard players operation stempd int = stempy int
execute if score stempz int > stempd int run scoreboard players operation stempd int = stempz int

#极化法向量
scoreboard players operation stempx int /= stempd int
scoreboard players operation stempy int /= stempd int
scoreboard players operation stempz int /= stempd int

execute store result score stempx int run scoreboard players operation 3vec_x int *= stempx int
execute store result score stempy int run scoreboard players operation 3vec_y int *= stempy int
execute store result score stempy int run scoreboard players operation 3vec_z int *= stempz int

#0/1取反
scoreboard players add stempx int 1
scoreboard players add stempy int 1
scoreboard players add stempz int 1
scoreboard players operation stempx int %= 2 int
scoreboard players operation stempy int %= 2 int
scoreboard players operation stempz int %= 2 int

#筛离表面坐标
scoreboard players operation @s 3vec_x *= stempx int
scoreboard players operation @s 3vec_y *= stempy int
scoreboard players operation @s 3vec_z *= stempz int