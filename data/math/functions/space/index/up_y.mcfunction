#math:space/index/up_y
execute store result entity @s Pos[0] double 1 run scoreboard players get space_startx int
execute store result entity @s Pos[1] double 1 store result score stempy int run scoreboard players operation @s space_y += space_stepy int
scoreboard players operation stempy int -= space_starty int
scoreboard players operation stempy int /= space_stepy int
execute if score stempy int >= space_leny int run function math:space/index/up_z