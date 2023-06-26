#math:cbox/vanilla/detect_loop

scoreboard players operation res int = min int
scoreboard players operation res int += max int
scoreboard players operation res int /= 2 int

scoreboard players operation stemp0 int = 3vec_x int
scoreboard players operation stemp0 int *= res int
scoreboard players operation stemp0 int /= 10000 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stemp0 int += stempx int
scoreboard players operation stemp0 int = 3vec_y int
scoreboard players operation stemp0 int *= res int
scoreboard players operation stemp0 int /= 10000 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stemp0 int += stempy int
scoreboard players operation stemp0 int = 3vec_z int
scoreboard players operation stemp0 int *= res int
scoreboard players operation stemp0 int /= 10000 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stemp0 int += stempz int

scoreboard players set stemp0 int 0
execute at @s if entity @e[tag=sstmp,limit=1,dx=0,dy=0,dz=0] positioned ~-0.9999 ~-0.9999 ~-0.9999 if entity @e[tag=sstmp,limit=1,dx=0,dy=0,dz=0] run scoreboard players set stemp0 int 1
scoreboard players remove res int 1
execute if score stemp0 int matches 0 run scoreboard players operation max int = res int
scoreboard players add res int 2
execute if score stemp0 int matches 1 run scoreboard players operation min int = res int

execute if score min int <= max int run function math:cbox/vanilla/detect_loop