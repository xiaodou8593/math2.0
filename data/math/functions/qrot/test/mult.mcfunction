#math:qrot/test/mult
#需要传入世界实体为执行者

scoreboard players operation test int = rand_seed int
#scoreboard players operation rand_seed int = test int

tellraw @a "---qrot_mult_test---"
scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get random int
scoreboard players set min int -900000
scoreboard players set max int 900000
function math:_random
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get random int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score qrot_x int run data get entity @s Pos[0] 10000
execute store result score qrot_y int run data get entity @s Pos[1] 10000
execute store result score qrot_z int run data get entity @s Pos[2] 10000
scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get random int
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score qrot_w int run data get entity @s Pos[2] 10000
execute store result score sin int run data get entity @s Pos[0] 10000
scoreboard players operation qrot_x int *= sin int
scoreboard players operation qrot_x int /= 10000 int
scoreboard players operation qrot_y int *= sin int
scoreboard players operation qrot_y int /= 10000 int
scoreboard players operation qrot_z int *= sin int
scoreboard players operation qrot_z int /= 10000 int
function math:qrot/_print
function math:qrot/pose/_xyzwto
scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get random int
scoreboard players set min int -900000
scoreboard players set max int 900000
function math:_random
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get random int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score qrot_u0 int run data get entity @s Pos[0] 10000
execute store result score qrot_u1 int run data get entity @s Pos[1] 10000
execute store result score qrot_u2 int run data get entity @s Pos[2] 10000
function math:qrot/axis/_uvecto
scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
scoreboard players operation qrot_alpha int = random int
function math:qrot/_xyzw
function math:qrot/_print

scoreboard players operation rand_seed int = test int

#-----------------------------------------------------------------
scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get random int
scoreboard players set min int -900000
scoreboard players set max int 900000
function math:_random
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get random int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score qrot_x int run data get entity @s Pos[0] 10000
execute store result score qrot_y int run data get entity @s Pos[1] 10000
execute store result score qrot_z int run data get entity @s Pos[2] 10000
scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get random int
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score qrot_w int run data get entity @s Pos[2] 10000
execute store result score sin int run data get entity @s Pos[0] 10000
scoreboard players operation qrot_x int *= sin int
scoreboard players operation qrot_x int /= 10000 int
scoreboard players operation qrot_y int *= sin int
scoreboard players operation qrot_y int /= 10000 int
scoreboard players operation qrot_z int *= sin int
scoreboard players operation qrot_z int /= 10000 int
function math:qrot/_print
scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get random int
scoreboard players set min int -900000
scoreboard players set max int 900000
function math:_random
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players get random int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score @s qrot_x run data get entity @s Pos[0] 10000
execute store result score @s qrot_y run data get entity @s Pos[1] 10000
execute store result score @s qrot_z run data get entity @s Pos[2] 10000
scoreboard players set min int -1800000
scoreboard players set max int 1800000
function math:_random
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players get random int
execute at @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score @s qrot_w run data get entity @s Pos[2] 10000
execute store result score sin int run data get entity @s Pos[0] 10000
scoreboard players operation @s qrot_x *= sin int
scoreboard players operation @s qrot_x /= 10000 int
scoreboard players operation @s qrot_y *= sin int
scoreboard players operation @s qrot_y /= 10000 int
scoreboard players operation @s qrot_z *= sin int
scoreboard players operation @s qrot_z /= 10000 int
function math:qrot/_zprint
function math:qrot/_mult
function math:qrot/_print