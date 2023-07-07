#math:_atan2
# 计算平面向量的方向角
# 需要传入世界实体为执行者
# 输入{<u,int>,<v,int>}
# 输出<res,int>
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get u int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get v int
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s 0.0 0.0 0.0 ~ ~
execute store result score res int run data get entity @s Rotation[0] -10000