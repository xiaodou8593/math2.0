kill @e[type=item,nbt={Item:{tag:{ui:1b}}}]

execute as @p run function math:4d/ui

execute if data storage math:io 4d.angles run function math:4d/buttons/reset_angle

execute if score 4d_running int matches 1 as @e[tag=math_marker,limit=1] run function math:4d/running