data modify storage math:io 4d.points set value []

scoreboard players set loop int 11664
execute if score loop int matches 1.. as @e[tag=math_marker,limit=1] run function math:4d/objects/hypersphere_loop