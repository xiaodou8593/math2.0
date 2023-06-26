#math:test/new_rot
#设置偏移{<@s,trans_x>,<@s,trans_y>,<@s,trans_z>},1w倍率
#输入旋转轴角 math:io input
#以展示实体为执行者

data modify entity @s transformation.left_rotation set from storage math:io input

scoreboard players operation trans_x int = @s trans_x
scoreboard players operation trans_y int = @s trans_y
scoreboard players operation trans_z int = @s trans_z
execute as @e[tag=math_marker,limit=1] run function math:test/new_rot_cal

execute store result entity @s transformation.translation[0] float 0.0001 run scoreboard players operation trans_x int += tempr0 int
execute store result entity @s transformation.translation[1] float 0.0001 run scoreboard players operation trans_y int += tempr1 int
execute store result entity @s transformation.translation[2] float 0.0001 run scoreboard players operation trans_z int += tempr2 int