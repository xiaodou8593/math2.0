#math:geom/sector/randnew_set
execute store result score @s x run data get entity @s Pos[0] 10000
execute store result score @s y run data get entity @s Pos[1] 10000
execute store result score @s z run data get entity @s Pos[2] 10000

scoreboard players set min int -1200000
scoreboard players set max int 1200000
function math:_random
scoreboard players operation @s sector_alpha = random int
scoreboard players set min int 0
function math:_random
scoreboard players operation @s sector_beta = random int

scoreboard players set min int 5000
scoreboard players set max int 50000
function math:_random
scoreboard players operation @s sector_r = random int