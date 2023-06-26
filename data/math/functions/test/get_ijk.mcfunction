#math:test/get_ijk
tp @s ^1.0 ^ ^
execute store result score tempi0 int run data get entity @s Pos[0] 1000
execute store result score tempi2 int run data get entity @s Pos[2] 1000

tp @s ^ ^1.0 ^
execute store result score tempj0 int run data get entity @s Pos[0] 1000
execute store result score tempj1 int run data get entity @s Pos[1] 1000
execute store result score tempj2 int run data get entity @s Pos[2] 1000