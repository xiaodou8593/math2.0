#math:qrot/pose/_ex-sincos
#扩展函数：扩展beta角的正余弦属性
#需要传入世界实体为执行者
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get qrot_beta int
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score qrot_cbeta int run data get entity @s Pos[2] 10000
execute store result score qrot_sbeta int run data get entity @s Pos[0] 10000