#math:graph/display/loop
scoreboard players operation inp int = loop int
function math:list/_index

#显示同步
execute unless data storage math:io list[0].display.uuid run function math:graph/display/init
data modify entity @s Thrower set from storage math:io list[0].display.uuid
execute on origin run function math:graph/display/set

#距离信息
execute store result score stempx int run data get storage math:io list[0].display.uvw[0] 1000
execute store result score stempy int run data get storage math:io list[0].display.uvw[1] 1000
execute store result score stempz int run data get storage math:io list[0].display.uvw[2] 1000
data modify storage math:io stemp set value {dis:[],end_dis:[]}
data modify storage math:io stemp.to set from storage math:io list[0].to
execute store result score sloop int if data storage math:io stemp.to[]
execute if score sloop int matches 1.. as @e[tag=math_marker,limit=1] run function math:graph/display/sloop

#复原
scoreboard players operation inp int = loop int
function math:list/_index
data modify storage math:io list[0].display.dis set from storage math:io stemp.dis
data modify storage math:io list[0].display.end_dis set from storage math:io stemp.end_dis
data modify storage math:io list[0].display.dis_vec set from storage math:io stemp.dis_vec

#循环迭代
scoreboard players add loop int 1
execute if score loop int < n int run function math:graph/display/loop