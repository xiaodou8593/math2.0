tp @s ^ ^ ^1.0
execute store result score tempk0 int run data get entity @s Pos[2] 10000
execute store result score tempk1 int run data get entity @s Pos[0] 10000
execute store result score tempk2 int run data get entity @s Pos[1] 10000
scoreboard players operation tempk0 int *= cos int
scoreboard players operation tempk1 int *= cos int
scoreboard players operation tempk2 int *= cos int
scoreboard players operation tempk0 int /= 100000 int
scoreboard players operation tempk1 int /= 100000 int
scoreboard players operation tempk2 int /= 100000 int

#tellraw @a {"text":"---"}
#tellraw @a [{"text":"k:"},{"score":{"name":"tempk0","objective":"int"}},{"text":","},{"score":{"name":"tempk1","objective":"int"}},{"text":","},{"score":{"name":"tempk2","objective":"int"}},{"text":","},{"score":{"name":"tempk3","objective":"int"}}]

tp @s ^ ^1.0 ^
execute store result score tempj0 int run data get entity @s Pos[2] 1000
execute store result score tempj1 int run data get entity @s Pos[0] 1000
execute store result score tempj2 int run data get entity @s Pos[1] 1000

tp @s ^1.0 ^ ^
execute store result score tempi0 int run data get entity @s Pos[2] 1000
execute store result score tempi1 int run data get entity @s Pos[0] 1000