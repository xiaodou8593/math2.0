#math:graph/display/phyx_sloop
#对每个节点
#execute if score loop int matches 1 if score sloop int matches 11 run tellraw @a "---"
#execute if score loop int matches 1 if score sloop int matches 11 run tellraw @a ["sloop:",{"score":{"name":"sloop","objective":"int"}}]
#execute if score loop int matches 1 if score sloop int matches 11 run tellraw @a ["velocity:[",{"score":{"name":"vx","objective":"int"}},{"text":","},{"score":{"name":"vy","objective":"int"}},{"text":"]"}]
execute store result score stempx int run data get storage math:io temp[0].display.uvw[0] 10000
execute store result score stempy int run data get storage math:io temp[0].display.uvw[1] 10000

execute store result entity @s Pos[2] double -0.0001 run scoreboard players operation stempx int -= x int
execute store result entity @s Pos[0] double -0.0001 run scoreboard players operation stempy int -= y int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0

scoreboard players operation stempx int *= stempx int
scoreboard players operation stempy int *= stempy int
scoreboard players operation stempx int += stempy int
scoreboard players operation stempx int /= 10000 int

#碰撞判定
scoreboard players operation stempx int > collision_r2 int

#库仑力
execute store result score tempf int run data get entity @s Pos[2] 10000
scoreboard players operation tempf int *= push_k int
scoreboard players operation tempf int /= stempx int
scoreboard players operation vx int += tempf int
execute store result score tempf int run data get entity @s Pos[0] 10000
scoreboard players operation tempf int *= push_k int
scoreboard players operation tempf int /= stempx int
scoreboard players operation vy int += tempf int
#execute if score loop int matches 1 if score sloop int matches 11 run tellraw @a ["velocity:[",{"score":{"name":"vx","objective":"int"}},{"text":","},{"score":{"name":"vy","objective":"int"}},{"text":"]"}]
#execute if score loop int matches 1 if score sloop int matches 11 run tellraw @a "---"

#循环迭代
data remove storage math:io temp[0]
scoreboard players remove sloop int 1
execute if score sloop int matches 2.. run function math:graph/display/phyx_sloop