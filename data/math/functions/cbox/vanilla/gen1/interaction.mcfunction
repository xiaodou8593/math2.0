execute store result score @s d run data get entity @s width 10000
execute store result score @s h run data get entity @s height 10000
scoreboard players operation @s d /= 2 int
scoreboard players operation @s l = @s d