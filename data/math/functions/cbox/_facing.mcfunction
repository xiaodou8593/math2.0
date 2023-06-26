#math:cbox/_facing
#需要传入世界实体为执行者
tp @s ~ ~ ~
execute store result score stempx0 int run data get entity @s Pos[0] -10000
execute store result score stempy0 int run data get entity @s Pos[1] -10000
execute store result score stempz0 int run data get entity @s Pos[2] -10000
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score stempf0 int run data get entity @s Pos[0] 1000
execute store result score stempf1 int run data get entity @s Pos[1] 1000
execute store result score stempf2 int run data get entity @s Pos[2] 1000

scoreboard players operation stempx0 int += x int
scoreboard players operation stempy0 int += y int
scoreboard players operation stempy0 int += dy int
scoreboard players operation stempz0 int += z int

execute store result score stemp_max int run scoreboard players operation stemp_min int = stempx0 int
scoreboard players operation stemp_min int -= d int
scoreboard players operation stemp_max int += d int
scoreboard players operation stemp_min int *= 100 int
scoreboard players operation stemp_max int *= 100 int
scoreboard players operation stemp_min int /= stempf0 int
scoreboard players operation stemp_max int /= stempf0 int
execute if score stemp_min int > stemp_max int run scoreboard players operation stemp_min int >< stemp_max int
execute if score stempf0 int matches 0 run function math:cbox/sector/j0

execute store result score stemp1 int run scoreboard players operation stemp0 int = stempy0 int
scoreboard players operation stemp1 int += h int
scoreboard players operation stemp0 int *= 100 int
scoreboard players operation stemp1 int *= 100 int
scoreboard players operation stemp0 int /= stempf1 int
scoreboard players operation stemp1 int /= stempf1 int
execute if score stemp0 int > stemp1 int run scoreboard players operation stemp0 int >< stemp1 int
execute if score stempf1 int matches 0 run function math:cbox/sector/j1
scoreboard players operation stemp_min int > stemp0 int
scoreboard players operation stemp_max int < stemp1 int

execute store result score stemp1 int run scoreboard players operation stemp0 int = stempz0 int
scoreboard players operation stemp0 int -= l int
scoreboard players operation stemp1 int += l int
scoreboard players operation stemp0 int *= 100 int
scoreboard players operation stemp1 int *= 100 int
scoreboard players operation stemp0 int /= stempf2 int
scoreboard players operation stemp1 int /= stempf2 int
execute if score stemp0 int > stemp1 int run scoreboard players operation stemp0 int >< stemp1 int
execute if score stempf2 int matches 0 run function math:cbox/sector/j1
scoreboard players operation stemp_min int > stemp0 int
scoreboard players operation stemp_max int < stemp1 int

execute store result score res int if score stemp_min int <= stemp_max int