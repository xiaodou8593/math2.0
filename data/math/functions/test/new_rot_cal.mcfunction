#math:test/new_rot_cal
execute store result score cos int store result score tempr0 int store result score tempi0 int run data get storage math:io input.axis[0] 10000
execute store result score temp0 int store result score tempr1 int store result score tempi1 int run data get storage math:io input.axis[1] 10000
execute store result score temp1 int store result score tempr2 int store result score tempi2 int run data get storage math:io input.axis[2] 10000
scoreboard players operation cos int *= trans_x int
scoreboard players operation temp0 int *= trans_y int
scoreboard players operation temp1 int *= trans_z int
scoreboard players operation cos int += temp0 int
scoreboard players operation cos int += temp1 int
scoreboard players operation cos int /= 10000 int

scoreboard players operation tempr0 int *= cos int
scoreboard players operation tempr1 int *= cos int
scoreboard players operation tempr2 int *= cos int
scoreboard players operation tempr0 int /= 10000 int
scoreboard players operation tempr1 int /= 10000 int
scoreboard players operation tempr2 int /= 10000 int

scoreboard players operation trans_x int -= tempr0 int
scoreboard players operation trans_y int -= tempr1 int
scoreboard players operation trans_z int -= tempr2 int

scoreboard players operation tempk2 int = tempi0 int
scoreboard players operation tempk2 int *= trans_y int
scoreboard players operation temp0 int = trans_x int
scoreboard players operation temp0 int *= tempi1 int
scoreboard players operation tempk2 int -= temp0 int
scoreboard players operation tempk2 int /= 10000 int

scoreboard players operation tempk0 int = tempi1 int
scoreboard players operation tempk0 int *= trans_z int
scoreboard players operation temp0 int = trans_y int
scoreboard players operation temp0 int *= tempi2 int
scoreboard players operation tempk0 int -= temp0 int
scoreboard players operation tempk0 int /= 10000 int

scoreboard players operation tempk1 int = tempi2 int
scoreboard players operation tempk1 int *= trans_x int
scoreboard players operation temp0 int = trans_z int
scoreboard players operation temp0 int *= tempi0 int
scoreboard players operation tempk1 int -= temp0 int
scoreboard players operation tempk1 int /= 10000 int

execute store result entity @s Rotation[0] float -0.0001 run data get storage math:io input.angle 572957.79513
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @s Pos[2] 10000
execute store result score sin int run data get entity @s Pos[0] 10000

scoreboard players operation trans_x int *= cos int
scoreboard players operation trans_y int *= cos int
scoreboard players operation trans_z int *= cos int
scoreboard players operation trans_x int /= 10000 int
scoreboard players operation trans_y int /= 10000 int
scoreboard players operation trans_z int /= 10000 int

scoreboard players operation tempk0 int *= sin int
scoreboard players operation tempk1 int *= sin int
scoreboard players operation tempk2 int *= sin int
scoreboard players operation tempk0 int /= 10000 int
scoreboard players operation tempk1 int /= 10000 int
scoreboard players operation tempk2 int /= 10000 int

scoreboard players operation trans_x int += tempk0 int
scoreboard players operation trans_y int += tempk1 int
scoreboard players operation trans_z int += tempk2 int