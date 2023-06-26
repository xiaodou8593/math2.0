#math:uvw/_base
#输入执行坐标，执行朝向，横滚角uvw_theta，将局部坐标系临时化
#需要传入世界实体为执行者
tp @s ~ ~ ~
execute store result score x int run data get entity @s Pos[0] 10000
execute store result score y int run data get entity @s Pos[1] 10000
execute store result score z int run data get entity @s Pos[2] 10000

execute positioned 0.0 0.0 0.0 run function math:uvw/get_uvw

scoreboard players operation u0 int *= sstemp_cos int
scoreboard players operation u2 int *= sstemp_cos int
scoreboard players operation sstempj0 int *= sstemp_sin int
scoreboard players operation sstempj2 int *= sstemp_sin int
scoreboard players operation u0 int += sstempj0 int
scoreboard players operation u2 int += sstempj2 int
scoreboard players operation u1 int *= sstemp_sin int
scoreboard players operation u0 int /= 10000 int
scoreboard players operation u1 int /= 10000 int
scoreboard players operation u2 int /= 10000 int

scoreboard players operation v0 int *= sstemp_cos int
scoreboard players operation v2 int *= sstemp_cos int
scoreboard players operation sstempi0 int *= sstemp_sin int
scoreboard players operation sstempi2 int *= sstemp_sin int
scoreboard players operation v0 int -= sstempi0 int
scoreboard players operation v2 int -= sstempi2 int
scoreboard players operation v1 int *= sstemp_cos int
scoreboard players operation v0 int /= 10000 int
scoreboard players operation v1 int /= 10000 int
scoreboard players operation v2 int /= 10000 int