#math:_xyz
#需要传入世界实体为执行者
tp @s ~ ~ ~
execute store result score x int run data get entity @s Pos[0] 10000
execute store result score y int run data get entity @s Pos[1] 10000
execute store result score z int run data get entity @s Pos[2] 10000