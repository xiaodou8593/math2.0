#math:4d/buttons/switch0

execute at @s run playsound minecraft:block.lever.click player @s ~ ~ ~ 1.0 2.0

scoreboard players add 4d_running int 1
scoreboard players operation 4d_running int %= 2 int

scoreboard players set temp int 0