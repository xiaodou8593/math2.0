#math:cbox/sector/cal
scoreboard players set res int -1

#高度筛选
scoreboard players operation stemph int = sector_y int
scoreboard players operation stemph int -= y int
scoreboard players operation stemph int -= dy int
execute if score stemph int matches ..-1 run scoreboard players set res int 0
execute if score stemph int >= h int run scoreboard players set res int 0

#半径平方
scoreboard players operation stemp_r2 int = sector_r int
scoreboard players operation stemp0 int = stemp_r2 int
scoreboard players operation stemp_r2 int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= stemp_r2 int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stemp_r2 int *= stemp_r2 int
scoreboard players operation stemp_r2 int *= 10000 int
scoreboard players operation stemp_r2 int += stemp0 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp_r2 int += stemp1 int

#截面中心落入了扇形
scoreboard players operation stempx int = x int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempx int -= sector_x int
scoreboard players operation stempz int = z int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempz int -= sector_z int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ 0.0

scoreboard players operation stemp_d2 int = stempx int
scoreboard players operation stemp0 int = stemp_d2 int
scoreboard players operation stemp_d2 int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int = stemp0 int
scoreboard players operation stemp0 int *= stemp_d2 int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stemp_d2 int *= stemp_d2 int
scoreboard players operation stemp_d2 int *= 10000 int
scoreboard players operation stemp_d2 int += stemp0 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp_d2 int += stemp1 int
scoreboard players operation stemp1 int = stempz int
scoreboard players operation stemp0 int = stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp2 int = stemp0 int
scoreboard players operation stemp0 int *= stemp1 int
scoreboard players operation stemp0 int *= 2 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp1 int *= 10000 int
scoreboard players operation stemp1 int += stemp0 int
scoreboard players operation stemp_d2 int += stemp1 int
scoreboard players operation stemp2 int *= stemp2 int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp_d2 int += stemp2 int

execute store result score stemp0 int run data get entity @s Rotation[0] -10000
scoreboard players operation stemp0 int -= sector_alpha int
scoreboard players operation stemp0 int %= 3600000 int
execute if score stemp0 int matches 1800000.. run scoreboard players remove stemp0 int 3600000
execute if score stemp0 int matches ..-1 run scoreboard players operation stemp0 int *= -1 int
execute if score stemp_d2 int <= stemp_r2 int if score stemp0 int <= sector_beta int if score res int matches -1 run scoreboard players set res int 1

execute if score res int matches -1 run function math:cbox/sector/next