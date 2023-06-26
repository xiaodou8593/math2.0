execute store result score stempl int run data get entity @s variant
execute if score stempl int matches 13..14 run function math:cbox/vanilla/gen1/pl3_4
execute if score stempl int matches 15 run function math:cbox/vanilla/gen1/pl5
execute if score stempl int matches 16..17 run function math:cbox/vanilla/gen1/pl6_7
execute if score stempl int matches 18.. run function math:cbox/vanilla/gen1/pl8_

execute store result score sstemp int run data get entity @s facing
execute if score sstemp int matches 0 run function math:cbox/vanilla/gen1/p_f0
execute if score sstemp int matches 2 run function math:cbox/vanilla/gen1/p_f0
execute if score sstemp int matches 1 run function math:cbox/vanilla/gen1/p_f1
execute if score sstemp int matches 3 run function math:cbox/vanilla/gen1/p_f1