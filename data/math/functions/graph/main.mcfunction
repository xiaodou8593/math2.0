#math:graph/main
summon item 0 11 0 {Tags:["uuid_marker"],Item:{id:"minecraft:glass",Count:1b}}
execute as @e[tag=uuid_marker,limit=1] run function math:graph/main_loop
kill @e[tag=uuid_marker]

#data modify storage math:io list append from storage math:io list[0]
#data remove storage math:io list[0]
#scoreboard players add list_phi int 1
#execute store result score n int if data storage math:io list[]
#scoreboard players operation list_phi int %= n int

function math:list/_shuffle