#math:cbox/sector/arc_next
#tellraw @a ["sqrt:",{"score":{"name":"sqrt","objective":"int"}}]
function math:sqrt/_3self
scoreboard players operation sqrt int /= 100 int
scoreboard players operation stempd int /= 10 int
#tellraw @a ["sqrt:",{"score":{"name":"sqrt","objective":"int"}}]
#tellraw @a ["stempd:",{"score":{"name":"stempd","objective":"int"}}]
#tellraw @a ["stemp_r2:",{"score":{"name":"stemp_r2","objective":"int"}}]
#tellraw @a ["pos:[",{"score":{"name":"stempx2","objective":"int"}},{"text":","},{"score":{"name":"stempz2","objective":"int"}},{"text":"]"}]
#tellraw @a ["f:[",{"score":{"name":"stempf0","objective":"int"}},{"text":","},{"score":{"name":"stempf2","objective":"int"}},{"text":"]"}]

#第一个交点
scoreboard players operation stempt int = stempd int
scoreboard players operation stempt int += sqrt int
scoreboard players operation sstempx int = stempf0 int
scoreboard players operation sstempx int *= stempt int
scoreboard players operation sstempx int *= 10 int
scoreboard players operation sstempz int = stempf2 int
scoreboard players operation sstempz int *= stempt int
scoreboard players operation sstempz int *= 10 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation sstempx int += stempx2 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation sstempz int += stempz2 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ 0.0

execute store result score stemp0 int run data get entity @s Rotation[0] -10000
scoreboard players operation stemp0 int -= sector_alpha int
scoreboard players operation stemp0 int %= 3600000 int
execute if score stemp0 int matches 1800000.. run scoreboard players remove stemp0 int 3600000
execute if score stemp0 int matches ..-1 run scoreboard players operation stemp0 int *= -1 int
scoreboard players operation stempt int *= 10 int
execute if score stempt int matches 0.. if score stempt int < stempa int if score stemp0 int <= sector_beta int run scoreboard players set res int 1

#第二个交点
scoreboard players operation stempt int = stempd int
scoreboard players operation stempt int -= sqrt int
scoreboard players operation sstempx int = stempf0 int
scoreboard players operation sstempx int *= stempt int
scoreboard players operation sstempx int *= 10 int
scoreboard players operation sstempz int = stempf2 int
scoreboard players operation sstempz int *= stempt int
scoreboard players operation sstempz int *= 10 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation sstempx int += stempx2 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation sstempz int += stempz2 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ 0.0

execute store result score stemp0 int run data get entity @s Rotation[0] -10000
scoreboard players operation stemp0 int -= sector_alpha int
scoreboard players operation stemp0 int %= 3600000 int
execute if score stemp0 int matches 1800000.. run scoreboard players remove stemp0 int 3600000
execute if score stemp0 int matches ..-1 run scoreboard players operation stemp0 int *= -1 int
scoreboard players operation stempt int *= 10 int
execute if score stempt int matches 0.. if score stempt int < stempa int if score stemp0 int <= sector_beta int run scoreboard players set res int 1