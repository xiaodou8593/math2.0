scoreboard players set @s d 2500
scoreboard players set @s h 19750

scoreboard players set sstemp int 1
execute if data entity @s {Small:1b} run scoreboard players set sstemp int 2
execute if data entity @s {Marker:1b} run scoreboard players set sstemp int 1000000
scoreboard players operation @s d /= sstemp int
scoreboard players operation @s h /= sstemp int
scoreboard players operation @s l = @s d