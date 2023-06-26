#math:cbox/_dsp
#需要传入世界实体为执行者
scoreboard players operation stempx0 int = x int
scoreboard players operation stempx0 int -= d int
scoreboard players operation stempx1 int = x int
scoreboard players operation stempx1 int += d int
scoreboard players operation stempz0 int = z int
scoreboard players operation stempz0 int -= l int
scoreboard players operation stempz1 int = z int
scoreboard players operation stempz1 int += l int
scoreboard players operation stempy0 int = y int
scoreboard players operation stempy1 int = y int
scoreboard players operation stempy1 int += h int
scoreboard players operation stempy0 int += dy int
scoreboard players operation stempy1 int += dy int

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get stempx0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get stempy0 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get stempz0 int
execute at @s run function math:cbox/dsp/branch0

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get stempx1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get stempy0 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get stempz1 int
execute at @s run function math:cbox/dsp/branch1

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get stempx0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get stempy1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get stempz1 int
execute at @s run function math:cbox/dsp/branch2

execute store result entity @s Pos[0] double 0.0001 run scoreboard players get stempx1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get stempy1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get stempz0 int
execute at @s run function math:cbox/dsp/branch3