data modify entity @s item set value {id:"minecraft:arrow",Count:1b}
data modify entity @s transformation.scale set value [3.0f,3.0f,0.1f]

data modify storage math:io temp set value {axis:[0.0f,0.0f,1.0f],angle:0.0f}
execute store result score temp int run data get storage math:io 4d.charts[0].angle 10000
execute store result storage math:io temp.angle float 0.0001 run scoreboard players remove temp int 23562
data modify entity @s transformation.left_rotation set from storage math:io temp

data modify entity @s brightness set value {sky:15,block:15}