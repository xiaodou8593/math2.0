execute store result score sstemp int run data get entity @s PuffState
scoreboard players set @s h 3500
execute if score sstemp int matches 1 run scoreboard players set @s h 5000
execute if score sstemp int matches 2 run scoreboard players set @s h 7000
scoreboard players operation @s d = @s h
execute store result score @s l run scoreboard players operation @s d /= 2 int