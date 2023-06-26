#math:space/index/set
execute store result entity @s Pos[0] double 1 run scoreboard players operation @s space_x = space_startx int
execute store result entity @s Pos[1] double 1 run scoreboard players operation @s space_y = space_starty int
execute store result entity @s Pos[2] double 1 run scoreboard players operation @s space_z = space_startz int