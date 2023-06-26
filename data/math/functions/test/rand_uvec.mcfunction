#math:test/rand_uvec
#随机朝向
scoreboard players set min int 0
scoreboard players set max int 359999
function math:_random
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get random int
scoreboard players set min int -90000
scoreboard players set max int 90000
function math:_random
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get random int
#获得uvec
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score i0 int run data get entity @s Pos[0] 1000
execute store result score i1 int run data get entity @s Pos[1] 1000
execute store result score i2 int run data get entity @s Pos[2] 1000