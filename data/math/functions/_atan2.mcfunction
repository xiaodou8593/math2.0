#math:_atan2
#需要传入世界实体为执行者
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get u int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get v int
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s 0.0 0.0 0.0 ~ ~
execute store result score res int run data get entity @s Rotation[0] -10000