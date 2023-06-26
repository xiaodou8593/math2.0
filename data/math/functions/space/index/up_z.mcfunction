#math:space/index/up_z
execute store result entity @s Pos[1] double 1 run scoreboard players get space_starty int
execute store result entity @s Pos[2] double 1 store result score stempz int run scoreboard players operation @s space_z += space_stepz int
scoreboard players operation stempz int -= space_startz int
scoreboard players operation stempz int /= space_stepz int
execute if score stempz int >= space_lenz int run scoreboard players set res int 1