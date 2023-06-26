#math:cbox/randnew_set
scoreboard players set min int 1000
scoreboard players set max int 20000
function math:_random
scoreboard players operation @s d = random int
function math:_random
scoreboard players operation @s l = random int
scoreboard players set min int 1000
scoreboard players set max int 50000
function math:_random
scoreboard players operation @s h = random int

execute store result score @s x run data get entity @s Pos[0] 10000
execute store result score @s y run data get entity @s Pos[1] 10000
execute store result score @s z run data get entity @s Pos[2] 10000