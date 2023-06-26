#math:test/prepend_loop
data modify storage test:8593 list prepend value 0
execute store result storage test:8593 list[0] int 1 run scoreboard players add loop int 1
execute if score loop int < test int run function math:test/prepend_loop