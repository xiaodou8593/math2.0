#math:qrot/axis/_facingto
#转换函数：朝向转换为旋转基
#需要传入世界实体为执行者
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score qrot_u0 int run data get entity @s Pos[0] 10000
execute store result score qrot_u1 int run data get entity @s Pos[1] 10000
execute store result score qrot_u2 int run data get entity @s Pos[2] 10000

function math:qrot/axis/_uvecto