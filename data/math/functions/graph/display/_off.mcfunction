#math:graph/display/_off
#关闭临时对象的显示
summon item 0 11 0 {Tags:["uuid_marker"],Item:{id:"minecraft:glass",Count:1b}}
execute store result score loop int if data storage math:io list[]
execute if score loop int matches 1.. as @e[tag=uuid_marker,limit=1] run function math:graph/display/off_loop
kill @e[tag=uuid_marker]