#math:graph/display/phyx_loop
#列表当前项
scoreboard players operation inp int = loop int
function math:list/_index

execute store result score x int run data get storage math:io list[0].display.uvw[0] 10000
execute store result score y int run data get storage math:io list[0].display.uvw[1] 10000
execute store result score vx int run data get storage math:io list[0].display.velocity[0] 10000
execute store result score vy int run data get storage math:io list[0].display.velocity[1] 10000
#execute if score loop int = test int run tellraw @a ["velocity : [",{"score":{"name":"vx","objective":"int"}},{"text":", "},{"score":{"name":"vy","objective":"int"}},{"text":"]"}]

#对每个节点
data modify storage math:io temp set from storage math:io list
data remove storage math:io temp[0]
scoreboard players operation sloop int = n int
execute if score sloop int matches 2.. run function math:graph/display/phyx_sloop
#execute if score loop int = test int run tellraw @a ["velocity : [",{"score":{"name":"vx","objective":"int"}},{"text":", "},{"score":{"name":"vy","objective":"int"}},{"text":"]"}]

#对中心节点
scoreboard players operation tempf int = center_x int
scoreboard players operation tempf int -= x int
scoreboard players operation tempf int *= center_k int
scoreboard players operation tempf int /= 10000 int
scoreboard players operation vx int += tempf int
scoreboard players operation tempf int = center_y int
scoreboard players operation tempf int -= y int
scoreboard players operation tempf int *= center_k int
scoreboard players operation tempf int /= 10000 int
scoreboard players operation vy int += tempf int
#execute if score loop int = test int run tellraw @a ["velocity : [",{"score":{"name":"vx","objective":"int"}},{"text":", "},{"score":{"name":"vy","objective":"int"}},{"text":"]"}]

#对连接节点
data modify storage math:io temp set from storage math:io list[0].to
execute store result score sloop int if data storage math:io temp[]
execute if score sloop int matches 1.. run function math:graph/display/phyx_lloop
#execute if score loop int = test int run tellraw @a ["velocity : [",{"score":{"name":"vx","objective":"int"}},{"text":", "},{"score":{"name":"vy","objective":"int"}},{"text":"]"}]

#恢复
scoreboard players operation inp int = loop int
function math:list/_index

execute store result storage math:io list[0].display.velocity[0] double 0.0001 run scoreboard players get vx int
execute store result storage math:io list[0].display.velocity[1] double 0.0001 run scoreboard players get vy int

#循环迭代
scoreboard players add loop int 1
execute if score loop int < n int run function math:graph/display/phyx_loop