#math:cbox/_sector
#输入平面扇形对象为执行者，判断是否相交，输出到res int
scoreboard players operation sector_x int = @s x
scoreboard players operation sector_y int = @s y
scoreboard players operation sector_z int = @s z
scoreboard players operation sector_r int = @s sector_r
scoreboard players operation sector_beta int = @s sector_beta
scoreboard players operation sector_alpha int = @s sector_alpha

execute as @e[tag=math_marker,limit=1] run function math:cbox/sector/cal