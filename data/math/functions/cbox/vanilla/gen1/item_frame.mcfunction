execute store result score sstemp int run data get entity @s Facing
execute if score sstemp int matches 0..1 run function math:cbox/vanilla/gen1/if_0
execute if score sstemp int matches 2..3 run function math:cbox/vanilla/gen1/if_1
execute if score sstemp int matches 4..5 run function math:cbox/vanilla/gen1/if_2