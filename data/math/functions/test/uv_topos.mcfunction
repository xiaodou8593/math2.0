#math:test/uv_topos
#x坐标
scoreboard players operation tempx int = tempx0 int
scoreboard players operation temp0 int = tempu int
scoreboard players operation temp0 int *= tempi0 int
scoreboard players operation temp0 int /= 1000 int
scoreboard players operation tempx int += temp0 int
scoreboard players operation temp0 int = tempv int
scoreboard players operation temp0 int *= tempj0 int
scoreboard players operation temp0 int /= 1000 int
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation tempx int += temp0 int

#y坐标
scoreboard players operation tempy int = tempy0 int
scoreboard players operation temp0 int = tempv int
scoreboard players operation temp0 int *= tempj1 int
scoreboard players operation temp0 int /= 1000 int
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation tempy int += temp0 int

#z坐标
scoreboard players operation tempz int = tempz0 int
scoreboard players operation tempu int *= tempi2 int
scoreboard players operation tempu int /= 1000 int
scoreboard players operation tempz int += tempu int
scoreboard players operation tempv int *= tempj2 int
scoreboard players operation tempv int /= 1000 int
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation tempz int += tempv int