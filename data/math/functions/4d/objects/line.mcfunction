#起始坐标
execute store result score stempx int store result score stempx0 int run data get storage math:io input.start[0] 1000000
scoreboard players operation stempx int /= 1000 int
scoreboard players operation stempx0 int %= 1000 int
execute store result score stempy int store result score stempy0 int run data get storage math:io input.start[1] 1000000
scoreboard players operation stempy int /= 1000 int
scoreboard players operation stempy0 int %= 1000 int
execute store result score stempz int store result score stempz0 int run data get storage math:io input.start[2] 1000000
scoreboard players operation stempz int /= 1000 int
scoreboard players operation stempz0 int %= 1000 int
execute store result score stempw int store result score stempw0 int run data get storage math:io input.start[3] 1000000
scoreboard players operation stempw int /= 1000 int
scoreboard players operation stempw0 int %= 1000 int

#中止坐标
execute store result score stempdx int run data get storage math:io input.end[0] 1000
execute store result score stempdy int run data get storage math:io input.end[1] 1000
execute store result score stempdz int run data get storage math:io input.end[2] 1000
execute store result score stempdw int run data get storage math:io input.end[3] 1000

#距离
scoreboard players operation stempdx int -= stempx int
scoreboard players operation stempdy int -= stempy int
scoreboard players operation stempdz int -= stempz int
scoreboard players operation stempdw int -= stempw int

scoreboard players operation stempdx int *= 1000 int
scoreboard players operation stempdy int *= 1000 int
scoreboard players operation stempdz int *= 1000 int
scoreboard players operation stempdw int *= 1000 int

scoreboard players operation stempdx int /= inp int
scoreboard players operation stempdy int /= inp int
scoreboard players operation stempdz int /= inp int
scoreboard players operation stempdw int /= inp int

scoreboard players operation stempdx0 int = stempdx int
scoreboard players operation stempdy0 int = stempdy int
scoreboard players operation stempdz0 int = stempdz int
scoreboard players operation stempdw0 int = stempdw int

scoreboard players operation stempdx int /= 1000 int
scoreboard players operation stempdy int /= 1000 int
scoreboard players operation stempdz int /= 1000 int
scoreboard players operation stempdw int /= 1000 int

scoreboard players operation stempdx0 int %= 1000 int
scoreboard players operation stempdy0 int %= 1000 int
scoreboard players operation stempdz0 int %= 1000 int
scoreboard players operation stempdw0 int %= 1000 int

data modify storage math:io result set value []

#tellraw @a {"text":"---"}
#tellraw @a [{"text":"xyzw:"},{"score":{"name":"stempx","objective":"int"}},{"text":","},{"score":{"name":"stempy","objective":"int"}},{"text":","},{"score":{"name":"stempz","objective":"int"}},{"text":","},{"score":{"name":"stempw","objective":"int"}}]
#tellraw @a [{"text":"xyzw0:"},{"score":{"name":"stempx0","objective":"int"}},{"text":","},{"score":{"name":"stempy0","objective":"int"}},{"text":","},{"score":{"name":"stempz0","objective":"int"}},{"text":","},{"score":{"name":"stempw0","objective":"int"}}]
#tellraw @a [{"text":"dxyzw:"},{"score":{"name":"stempdx","objective":"int"}},{"text":","},{"score":{"name":"stempdy","objective":"int"}},{"text":","},{"score":{"name":"stempdz","objective":"int"}},{"text":","},{"score":{"name":"stempdw","objective":"int"}}]
#tellraw @a [{"text":"dxyzw0:"},{"score":{"name":"stempdx0","objective":"int"}},{"text":","},{"score":{"name":"stempdy0","objective":"int"}},{"text":","},{"score":{"name":"stempdz0","objective":"int"}},{"text":","},{"score":{"name":"stempdw0","objective":"int"}}]

scoreboard players operation sloop int = inp int
function math:4d/objects/line_loop