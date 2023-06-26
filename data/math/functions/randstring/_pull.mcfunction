#math:randstring/_pull
data modify storage math:io result set value []
scoreboard players operation sloop int = inp int
execute if score sloop int matches 1.. run function math:randstring/pull_loop