scoreboard players set @s d 5000
scoreboard players set @s h 15000
scoreboard players set @s l 5000
execute store result score sstemp int run data get entity @s Peek 18000
execute as @e[tag=math_marker,limit=1] run function math:cbox/vanilla/gen1/shulker_cos
scoreboard players operation @s h -= sstemp int