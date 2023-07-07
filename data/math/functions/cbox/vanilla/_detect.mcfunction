#math:cbox/vanilla/_detect
execute as 0-0-0-8593-0 run function math:3vec/_facingto
execute store result score stempx int run data get entity @s Pos[0] 10000
execute store result score stempy int run data get entity @s Pos[1] 10000
execute store result score stempz int run data get entity @s Pos[2] 10000

scoreboard players set min int 0
scoreboard players set max int 160000
tag @s add sstmp
execute as 0-0-0-8593-0 run function math:cbox/vanilla/detect_loop
tag @s remove sstmp

tellraw @a [{"selector":"@s"},": ",{"score":{"name":"res","objective":"int"}}]