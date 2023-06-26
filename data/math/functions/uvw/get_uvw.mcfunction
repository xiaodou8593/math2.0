#math:uvw/get_uvw
tp @s ^1.0 ^ ^
execute store result score sstempi0 int store result score u0 int run data get entity @s Pos[0] 10000
execute store result score sstempi2 int store result score u2 int run data get entity @s Pos[2] 10000
tp @s ^ ^1.0 ^
execute store result score sstempj0 int store result score v0 int run data get entity @s Pos[0] 10000
execute store result score u1 int store result score v1 int run data get entity @s Pos[1] 10000
execute store result score sstempj2 int store result score v2 int run data get entity @s Pos[2] 10000
tp @s ^ ^ ^1.0
execute store result score w0 int run data get entity @s Pos[0] 10000
execute store result score w1 int run data get entity @s Pos[1] 10000
execute store result score w2 int run data get entity @s Pos[2] 10000

execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get uvw_theta int
execute rotated as @s rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score sstemp_cos int run data get entity @s Pos[2] 10000
execute store result score sstemp_sin int run data get entity @s Pos[0] 10000