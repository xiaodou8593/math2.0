execute store result score sstemp int run data get entity @s SleepTimer
execute if score sstemp int matches 1.. run function math:cbox/vanilla/gen1/player_sleep
execute if score sstemp int matches 0 run function math:cbox/vanilla/gen1/player_else