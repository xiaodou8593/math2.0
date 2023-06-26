#math:space/_tounit
#输入执行者，输入空间索引<inp,int>，把执行者输出到单位空间(step当作1)中的位置
execute store result score stempy int run scoreboard players operation stempz int = inp int
scoreboard players operation stempz int /= space_lenxy int
execute store result score stempx int run scoreboard players operation stempy int %= space_lenxy int
scoreboard players operation stempy int /= space_lenx int
scoreboard players operation stempx int %= space_lenx int

execute store result entity @s Pos[0] double 1 run scoreboard players operation stempx int += space_startx int
execute store result entity @s Pos[1] double 1 run scoreboard players operation stempy int += space_starty int
execute store result entity @s Pos[2] double 1 run scoreboard players operation stempz int += space_startz int