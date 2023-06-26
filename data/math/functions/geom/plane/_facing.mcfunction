#math:geom/plane/_facing
#需要传入世界实体为执行者
tp @s ~ ~ ~
execute store result score stempx0 int store result score stempt int run data get entity @s Pos[0] -10000
execute store result score stempy0 int store result score stempy int run data get entity @s Pos[1] -10000
execute store result score stempz0 int store result score stempz int run data get entity @s Pos[2] -10000
scoreboard players operation stempt int += x int
scoreboard players operation stempy int += y int
scoreboard players operation stempz int += z int
scoreboard players operation stempt int /= 10 int
scoreboard players operation stempy int /= 10 int
scoreboard players operation stempz int /= 10 int

scoreboard players operation stempt int *= f0 int
scoreboard players operation stempy int *= f1 int
scoreboard players operation stempz int *= f2 int
scoreboard players operation stempt int += stempy int
scoreboard players operation stempt int += stempz int

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score 3vec_x int store result score stempi0 int run data get entity @s Pos[0] 1000
execute store result score 3vec_y int store result score stempi1 int run data get entity @s Pos[1] 1000
execute store result score 3vec_z int store result score stempi2 int run data get entity @s Pos[2] 1000

scoreboard players operation stempi0 int *= f0 int
scoreboard players operation stempi1 int *= f1 int
scoreboard players operation stempi2 int *= f2 int
scoreboard players operation stempi0 int += stempi1 int
scoreboard players operation stempi0 int += stempi2 int
scoreboard players operation stempi0 int /= 10000 int

scoreboard players set res int 1
scoreboard players operation stempt int /= stempi0 int
execute unless score stempt int matches -128000..128000 run scoreboard players set res int 0
execute if score res int matches 1 run function math:geom/plane/facing_cross