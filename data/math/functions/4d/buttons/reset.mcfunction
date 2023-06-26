#math:4d/buttons/reset
scoreboard players set temp int 0

execute at @s run playsound minecraft:block.piston.extend player @s ~ ~ ~ 1.0 1.5

execute at @s anchored eyes positioned ^ ^ ^8 as @e[tag=math_marker,limit=1] run function math:4d/_dsp