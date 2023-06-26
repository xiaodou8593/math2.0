scoreboard players set sstemp int 0
execute if data entity @s {IsBaby:1b} run scoreboard players set sstemp int 1
execute store result score stempl int run data get entity @s Age
execute if score stempl int matches ..-1 run scoreboard players set sstemp int 1
execute if score sstemp int matches 0 run function math:cbox/vanilla/gen2/not_baby
execute if score sstemp int matches 1 run function math:cbox/vanilla/gen2/baby