scoreboard players add upd_aec int 1
execute as @e[tag=upd_aec] store result entity @s Air short 1 run scoreboard players operation upd_aec int %= 10 int

execute store result score temp int if entity @e[tag=math_marker]
execute unless score temp int matches 1 run function math:math_marker

schedule function math:tick 1t replace