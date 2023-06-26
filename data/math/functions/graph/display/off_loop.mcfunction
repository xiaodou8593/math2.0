#math:graph/display/off_loop
data modify entity @s Thrower set from storage math:io list[0].display.uuid
execute on origin run function math:graph/display/off
data remove storage math:io list[0].display.uuid
#循环迭代
data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:graph/display/off_loop