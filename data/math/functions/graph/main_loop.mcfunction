#math:graph/main_loop
data modify entity @s Thrower set from storage math:io list[0].display.uuid
execute on origin run function math:graph/display/line