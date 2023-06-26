#math:cbox/sector/next
scoreboard players set res int 0

#四个顶点坐标
scoreboard players operation stempx0 int = stempx int
scoreboard players operation stempx0 int -= d int
scoreboard players operation stempx1 int = stempx int
scoreboard players operation stempx1 int += d int
scoreboard players operation stempz0 int = stempz int
scoreboard players operation stempz0 int -= l int
scoreboard players operation stempz1 int = stempz int
scoreboard players operation stempz1 int += l int

#半径1
scoreboard players operation stemp0 int = sector_alpha int
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players operation stemp0 int += sector_beta int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score stempf0 int run data get entity @s Pos[0] 1000
execute store result score stempf2 int run data get entity @s Pos[2] 1000
scoreboard players operation stemp_min int = stempx0 int
scoreboard players operation stemp_min int *= 1000 int
scoreboard players operation stemp_min int /= stempf0 int
scoreboard players operation stemp_max int = stempx1 int
scoreboard players operation stemp_max int *= 1000 int
scoreboard players operation stemp_max int /= stempf0 int
execute if score stemp_min int > stemp_max int run scoreboard players operation stemp_min int >< stemp_max int
execute if score stempf0 int matches 0 run function math:cbox/sector/j0
scoreboard players operation stemp0 int = stempz0 int
scoreboard players operation stemp0 int *= 1000 int
scoreboard players operation stemp0 int /= stempf2 int
scoreboard players operation stemp1 int = stempz1 int
scoreboard players operation stemp1 int *= 1000 int
scoreboard players operation stemp1 int /= stempf2 int
execute if score stemp0 int > stemp1 int run scoreboard players operation stemp0 int >< stemp1 int
execute if score stempf2 int matches 0 run function math:cbox/sector/j1
scoreboard players operation stemp_min int > stemp0 int
scoreboard players operation stemp_max int < stemp1 int
scoreboard players operation stemp_min int > 0 int
scoreboard players operation stemp_max int < sector_r int
execute if score stemp_min int <= stemp_max int run scoreboard players set res int 1

#半径2
scoreboard players operation stemp0 int = sector_alpha int
execute store result entity @s Rotation[0] float -0.0001 run scoreboard players operation stemp0 int -= sector_beta int
execute at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score stempf0 int run data get entity @s Pos[0] 1000
execute store result score stempf2 int run data get entity @s Pos[2] 1000
scoreboard players operation stemp_min int = stempx0 int
scoreboard players operation stemp_min int *= 1000 int
scoreboard players operation stemp_min int /= stempf0 int
scoreboard players operation stemp_max int = stempx1 int
scoreboard players operation stemp_max int *= 1000 int
scoreboard players operation stemp_max int /= stempf0 int
execute if score stemp_min int > stemp_max int run scoreboard players operation stemp_min int >< stemp_max int
execute if score stempf0 int matches 0 run function math:cbox/sector/j0
scoreboard players operation stemp0 int = stempz0 int
scoreboard players operation stemp0 int *= 1000 int
scoreboard players operation stemp0 int /= stempf2 int
scoreboard players operation stemp1 int = stempz1 int
scoreboard players operation stemp1 int *= 1000 int
scoreboard players operation stemp1 int /= stempf2 int
execute if score stemp0 int > stemp1 int run scoreboard players operation stemp0 int >< stemp1 int
execute if score stempf2 int matches 0 run function math:cbox/sector/j1
scoreboard players operation stemp_min int > stemp0 int
scoreboard players operation stemp_max int < stemp1 int
scoreboard players operation stemp_min int > 0 int
scoreboard players operation stemp_max int < sector_r int
execute if score stemp_min int <= stemp_max int run scoreboard players set res int 1

#边1
scoreboard players operation stempx2 int = stempx0 int
scoreboard players operation stempz2 int = stempz0 int
scoreboard players operation stempa int = d int
scoreboard players operation stempa int *= 2 int
scoreboard players set stempf0 int 1
scoreboard players set stempf2 int 0
execute if score res int matches 0 run function math:cbox/sector/arc

#边2
scoreboard players operation stempa int = l int
scoreboard players operation stempa int *= 2 int
scoreboard players set stempf0 int 0
scoreboard players set stempf2 int 1
execute if score res int matches 0 run function math:cbox/sector/arc

#边3
scoreboard players operation stempx2 int = stempx1 int
scoreboard players operation stempz2 int = stempz1 int
scoreboard players operation stempa int = d int
scoreboard players operation stempa int *= 2 int
scoreboard players set stempf0 int -1
scoreboard players set stempf2 int 0
execute if score res int matches 0 run function math:cbox/sector/arc

#边4
scoreboard players operation stempa int = l int
scoreboard players operation stempa int *= 2 int
scoreboard players set stempf0 int 0
scoreboard players set stempf2 int -1
execute if score res int matches 0 run function math:cbox/sector/arc