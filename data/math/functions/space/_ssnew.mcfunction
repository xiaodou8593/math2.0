#math:space/_ssnew
execute unless data storage math:io input.step run data modify storage math:io input.step set value [1,1,1]
execute store result score space_startx int run data get storage math:io input.start[0]
execute store result score space_starty int run data get storage math:io input.start[1]
execute store result score space_startz int run data get storage math:io input.start[2]
execute store result score space_lenxy int store result score space_lenx int run data get storage math:io input.len[0]
execute store result score space_leny int run data get storage math:io input.len[1]
execute store result score space_lenz int run data get storage math:io input.len[2]
scoreboard players operation space_lenxy int *= space_leny int
execute store result score space_stepx int run data get storage math:io input.step[0]
execute store result score space_stepy int run data get storage math:io input.step[1]
execute store result score space_stepz int run data get storage math:io input.step[2]