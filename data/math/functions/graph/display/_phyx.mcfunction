#tellraw @a "---"
#tellraw @a ["test_step : ",{"score":{"name":"test_step","objective":"int"}}]
#math:graph/display/_phyx
#需要传入世界实体为执行者
function math:uvw/_store
#临时化
execute store result score center_x int run data get storage math:io input.center[0] 10000
execute store result score center_y int run data get storage math:io input.center[1] 10000
execute store result score center_k int run data get storage math:io input.center_force 10000

execute store result score collision_r2 int run data get storage math:io input.collision_r2 10000
execute store result score collision_k int run data get storage math:io input.collision_force 10000

execute store result score link_k int run data get storage math:io input.link_force 10000
execute store result score push_k int run data get storage math:io input.push_force 10000

#计算节点速度
data modify entity @s Pos[1] set value 0.0d
execute store result score n int if data storage math:io list[]
scoreboard players set loop int 0
execute if score loop int < n int run function math:graph/display/phyx_loop

#位置迭代
execute store result score loop int if data storage math:io list[]
execute if score loop int matches 1.. run function math:graph/display/phyx_ploop

function math:uvw/_get

scoreboard players add test_step int 1