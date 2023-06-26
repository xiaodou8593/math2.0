#math:graph/_display
#显示函数，对临时对象进行显示
summon item 0 11 0 {Tags:["uuid_marker"],Item:{id:"minecraft:glass",Count:1b}}
execute store result score n int if data storage math:io list[]
scoreboard players set loop int 0
execute if score loop int < n int as @e[tag=uuid_marker,limit=1] run function math:graph/display/loop
kill @e[tag=uuid_marker]