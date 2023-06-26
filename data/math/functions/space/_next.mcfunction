#math:space/_next
#输入执行者位置，把执行者输出到空间中的下一个位置
#如果迭代到头，<res,int>输出1
scoreboard players set res int 0
execute store result score stempx int run data get entity @s Pos[0]
execute store result entity @s Pos[0] double 1 run scoreboard players operation stempx int += space_stepx int
scoreboard players operation stempx int -= space_startx int
scoreboard players operation stempx int /= space_stepx int
execute if score stempx int >= space_lenx int run function math:space/next/up_y