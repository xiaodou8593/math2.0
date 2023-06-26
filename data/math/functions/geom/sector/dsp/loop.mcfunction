#math:geom/sector/dsp/loop
scoreboard players operation sstemp0 int += stemp0 int
scoreboard players operation sstemp1 int += stemp1 int
scoreboard players operation sstemp2 int = sstemp1 int
scoreboard players operation sstemp2 int /= arc_n int
scoreboard players operation sstemp1 int %= arc_n int
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players operation sstemp0 int += sstemp2 int
execute at @s positioned 0.0 ~ 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score stempf0 int run data get entity @s Pos[0] 1000
execute store result score stempf2 int run data get entity @s Pos[2] 1000

scoreboard players operation stempf0 int *= sector_r int
scoreboard players operation stempf0 int /= 1000 int
scoreboard players operation stempf2 int *= sector_r int
scoreboard players operation stempf2 int /= 1000 int

execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempf0 int += x int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempf2 int += z int
execute at @s run function math:particle/_dsp

#循环
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:geom/sector/dsp/loop