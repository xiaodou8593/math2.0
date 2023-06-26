#math:randstring/pull_loop
data modify storage math:io result append from storage math:io randstring[0]
data modify storage math:io randstring append from storage math:io randstring[0]
data remove storage math:io randstring[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 1.. run function math:randstring/pull_loop