#投影
execute store result score inp int run data get storage math:io 4d.points[0][0] 1000
execute store result score tempx1 int run data get storage math:io 4d.points[0][1] 1000
execute store result score tempx2 int run data get storage math:io 4d.points[0][2] 1000
execute store result score tempx3 int run data get storage math:io 4d.points[0][3] 1000
scoreboard players operation inp int += offset_x int
scoreboard players operation tempx1 int += offset_y int
scoreboard players operation tempx2 int += offset_z int
scoreboard players operation tempx3 int += offset_w int

scoreboard players operation inp int -= tempp0 int
scoreboard players operation tempx1 int -= tempp1 int
scoreboard players operation tempx2 int -= tempp2 int
scoreboard players operation tempx3 int -= tempp3 int

scoreboard players operation tempv0 int = inp int
scoreboard players operation tempv1 int = tempx1 int
scoreboard players operation tempv2 int = tempx2 int
scoreboard players operation tempv3 int = tempx3 int
#tellraw @a {"text":"---"}
#tellraw @a [{"text":"v:"},{"score":{"name":"tempv0","objective":"int"}},{"text":","},{"score":{"name":"tempv1","objective":"int"}},{"text":","},{"score":{"name":"tempv2","objective":"int"}},{"text":","},{"score":{"name":"tempv3","objective":"int"}}]

scoreboard players operation inp int *= tempp0 int
scoreboard players operation tempx1 int *= tempp1 int
scoreboard players operation tempx2 int *= tempp2 int
scoreboard players operation tempx3 int *= tempp3 int
scoreboard players operation inp int += tempx1 int
scoreboard players operation inp int += tempx2 int
scoreboard players operation inp int += tempx3 int
scoreboard players operation res int = 2tempp int
function math:hpo/_3div
#tellraw @a [{"text":"res:"},{"score":{"name":"res","objective":"int"}}]

scoreboard players operation tempv0 int *= res int
scoreboard players operation tempv1 int *= res int
scoreboard players operation tempv2 int *= res int
scoreboard players operation tempv3 int *= res int
scoreboard players operation tempv0 int /= 1000 int
scoreboard players operation tempv1 int /= 1000 int
scoreboard players operation tempv2 int /= 1000 int
scoreboard players operation tempv3 int /= 1000 int
#tellraw @a [{"text":"p:"},{"score":{"name":"tempp0","objective":"int"}},{"text":","},{"score":{"name":"tempp1","objective":"int"}},{"text":","},{"score":{"name":"tempp2","objective":"int"}},{"text":","},{"score":{"name":"tempp3","objective":"int"}}]
scoreboard players operation tempv0 int += tempp0 int
scoreboard players operation tempv1 int += tempp1 int
scoreboard players operation tempv2 int += tempp2 int
scoreboard players operation tempv3 int += tempp3 int
scoreboard players operation tempv0 int += tempp0 int
scoreboard players operation tempv1 int += tempp1 int
scoreboard players operation tempv2 int += tempp2 int
scoreboard players operation tempv3 int += tempp3 int

scoreboard players operation stempx int = tempv0 int
scoreboard players operation stempx int *= tempi0 int
scoreboard players operation stemp0 int = tempv1 int
scoreboard players operation stemp0 int *= tempi1 int
scoreboard players operation stempx int += stemp0 int
scoreboard players operation stempx int /= 1000 int
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation stempx int += x int

scoreboard players operation stempy int = tempv0 int
scoreboard players operation stempy int *= tempj0 int
scoreboard players operation stemp0 int = tempv1 int
scoreboard players operation stemp0 int *= tempj1 int
scoreboard players operation stempy int += stemp0 int
scoreboard players operation stemp0 int = tempv2 int
scoreboard players operation stemp0 int *= tempj2 int
scoreboard players operation stempy int += stemp0 int
scoreboard players operation stempy int /= 1000 int
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation stempy int += y int

scoreboard players operation stempz int = tempv0 int
scoreboard players operation stempz int *= tempk0 int
scoreboard players operation stemp0 int = tempv1 int
scoreboard players operation stemp0 int *= tempk1 int
scoreboard players operation stempz int += stemp0 int
scoreboard players operation stemp0 int = tempv2 int
scoreboard players operation stemp0 int *= tempk2 int
scoreboard players operation stempz int += stemp0 int
scoreboard players operation stemp0 int = tempv3 int
scoreboard players operation stemp0 int *= tempk3 int
scoreboard players operation stempz int += stemp0 int
scoreboard players operation stempz int /= 1000 int
#tellraw @a [{"text":"z:"},{"score":{"name":"stempz","objective":"int"}}]
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation stempz int += z int

execute at @s run function math:particle/_dsp