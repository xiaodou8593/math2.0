#math:uvw/_topos
#输入局部坐标系，输入uvw坐标，输出到执行者Pos和xyz记分板
scoreboard players operation @s x = u0 int
scoreboard players operation @s y = u1 int
scoreboard players operation @s z = u2 int
scoreboard players operation @s x *= u int
scoreboard players operation @s y *= u int
scoreboard players operation @s z *= u int

scoreboard players operation sstemp0 int = v0 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation @s x += sstemp0 int
scoreboard players operation sstemp0 int = v1 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation @s y += sstemp0 int
scoreboard players operation sstemp0 int = v2 int
scoreboard players operation sstemp0 int *= v int
scoreboard players operation @s z += sstemp0 int

scoreboard players operation sstemp0 int = w0 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation @s x += sstemp0 int
scoreboard players operation sstemp0 int = w1 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation @s y += sstemp0 int
scoreboard players operation sstemp0 int = w2 int
scoreboard players operation sstemp0 int *= w int
scoreboard players operation @s z += sstemp0 int

scoreboard players operation @s x /= 10000 int
scoreboard players operation @s y /= 10000 int
scoreboard players operation @s z /= 10000 int

execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation @s x += x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation @s y += y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation @s z += z int