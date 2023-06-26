#math:test/loop
execute if entity @e
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:test/loop