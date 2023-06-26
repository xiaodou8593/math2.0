#math:space/_be
execute unless data storage math:io input.step run data modify storage math:io input.step set value [1,1,1]
execute store result score @s space_startx run data get storage math:io input.start[0]
execute store result score @s space_starty run data get storage math:io input.start[1]
execute store result score @s space_startz run data get storage math:io input.start[2]
execute store result score @s space_lenxy store result score @s space_lenx run data get storage math:io input.len[0]
execute store result score @s space_leny run data get storage math:io input.len[1]
execute store result score @s space_lenz run data get storage math:io input.len[2]
scoreboard players operation @s space_lenxy *= @s space_leny
execute store result score @s space_stepx run data get storage math:io input.step[0]
execute store result score @s space_stepy run data get storage math:io input.step[1]
execute store result score @s space_stepz run data get storage math:io input.step[2]