#math:space/_load
#需要传入世界实体为执行者
#遍历临时对象空间每个区块，若未强加载，则强加载，并把世界坐标返回到storage math:io result
data modify storage math:io result set value []

#x坐标区块网格化
execute store result score stempx1 int run scoreboard players operation stempx0 int = space_startx int
execute store result entity @s Pos[0] double 16 run scoreboard players operation stempx0 int /= 16 int
scoreboard players operation stempx1 int %= 16 int
scoreboard players operation stempx int = space_lenx int
scoreboard players operation stempx int *= space_stepx int
scoreboard players operation stempx int += stempx1 int
scoreboard players operation stempx int /= 16 int
scoreboard players operation stempx int > 1 int

#z坐标区块网格化
execute store result score stempz1 int run scoreboard players operation stempz0 int = space_startz int
execute store result entity @s Pos[2] double 16 run scoreboard players operation stempz0 int /= 16 int
scoreboard players operation stempx1 int %= 16 int
scoreboard players operation stempz int = space_lenz int
scoreboard players operation stempz int *= space_stepz int
scoreboard players operation stempz int += stempz1 int
scoreboard players operation stempz int /= 16 int
scoreboard players operation stempz int > 1 int

#遍历每个区块
execute if score stempx int matches 1.. at @s run function math:space/load/sloopx