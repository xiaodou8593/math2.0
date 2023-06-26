#math:graph/display/line
execute store result score tempx int run data get entity @s Pos[0] 10000
execute store result score tempy int run data get entity @s Pos[1] 10000
execute store result score tempz int run data get entity @s Pos[2] 10000
scoreboard players add tempy int 3500

data modify storage math:io temp set from storage math:io list[0].display
execute store result score sloop int if data storage math:io temp.dis[]
execute if score sloop int matches 1.. as @e[tag=math_marker,limit=1] run function math:graph/main_sloop
data modify storage math:io list[0].display.dis set from storage math:io temp.dis