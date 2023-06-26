#单位向量3
execute store result entity @s Rotation[0] float -0.0001 run data get storage math:io 4d.charts[{id:"w-xyz"}].angle 572958
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^15.0
execute store result score cos int run data get entity @s Pos[2] 10000
execute store result score tempp3 int run data get entity @s Pos[0] 1000
execute store result entity @s Rotation[1] float -0.0001 run data get storage math:io 4d.charts[{id:"z-xy"}].angle 572958
execute store result entity @s Rotation[0] float -0.0001 run data get storage math:io 4d.charts[{id:"y-x"}].angle 572958
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score tempp0 int run data get entity @s Pos[2] 10000
execute store result score tempp1 int run data get entity @s Pos[0] 10000
execute store result score tempp2 int run data get entity @s Pos[1] 10000
scoreboard players operation tempp0 int *= cos int
scoreboard players operation tempp1 int *= cos int
scoreboard players operation tempp2 int *= cos int
scoreboard players operation tempp0 int /= 100000 int
scoreboard players operation tempp1 int /= 100000 int
scoreboard players operation tempp2 int /= 100000 int

#单位向量012
execute store result entity @s Rotation[0] float -0.0001 run data get storage math:io 4d.charts[{id:"w-xyz"}].angle 572958
execute at @s positioned 0.0 0.0 0.0 rotated ~-90.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @s Pos[2] 10000
execute store result score tempk3 int run data get entity @s Pos[0] 1000
execute store result entity @s Rotation[1] float -0.0001 run data get storage math:io 4d.charts[{id:"z-xy"}].angle 572958
execute store result entity @s Rotation[0] float -0.0001 run data get storage math:io 4d.charts[{id:"y-x"}].angle 572958
execute at @s positioned 0.0 0.0 0.0 run function math:4d/get_ijk

tellraw @a {"text":"---"}
tellraw @a [{"text":"p:"},{"score":{"name":"tempp0","objective":"int"}},{"text":","},{"score":{"name":"tempp1","objective":"int"}},{"text":","},{"score":{"name":"tempp2","objective":"int"}},{"text":","},{"score":{"name":"tempp3","objective":"int"}}]
tellraw @a [{"text":"k:"},{"score":{"name":"tempk0","objective":"int"}},{"text":","},{"score":{"name":"tempk1","objective":"int"}},{"text":","},{"score":{"name":"tempk2","objective":"int"}},{"text":","},{"score":{"name":"tempk3","objective":"int"}}]
tellraw @a [{"text":"j:"},{"score":{"name":"tempj0","objective":"int"}},{"text":","},{"score":{"name":"tempj1","objective":"int"}},{"text":","},{"score":{"name":"tempj2","objective":"int"}}]
tellraw @a [{"text":"i:"},{"score":{"name":"tempi0","objective":"int"}},{"text":","},{"score":{"name":"tempi1","objective":"int"}}]