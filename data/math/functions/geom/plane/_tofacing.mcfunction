#math:geom/plane/_tofacing
#需要传入世界实体为执行者
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get f0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get f1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get f2 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~