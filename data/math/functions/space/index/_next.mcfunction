#math:space/index/_next
scoreboard players set res int 0
execute store result entity @s Pos[0] double 1 store result score stempx int run scoreboard players operation @s space_x += space_stepx int
scoreboard players operation stempx int -= space_startx int
scoreboard players operation stempx int /= space_stepx int
execute if score stempx int >= space_lenx int run function math:space/index/up_y