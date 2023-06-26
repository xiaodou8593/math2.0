#math:test/cbox
scoreboard players operation test_seed int = rand_seed int
#scoreboard players operation rand_seed int = test_seed int
kill @e[tag=cbox]
function math:cbox/_randnew
tag @e[tag=result,limit=1] add test

execute as @e[tag=cbox,limit=1] run function math:cbox/_get
function math:cbox/_center
execute at @s run function math:_xyz
function math:3vec/_ssrandnew
scoreboard players operation y int = @e[tag=cbox,limit=1] y
scoreboard players set 3vec_y int 4000
function math:3vec/_topos

kill @e[tag=sector]
execute at @s run function math:geom/sector/_randnew
tag @e[tag=result,limit=1] add test

execute as @e[tag=cbox,limit=1] run function math:cbox/_get
execute as @e[tag=sector,limit=1] run function math:cbox/_sector
scoreboard players set test_res int 6
execute if score res int matches 1 run scoreboard players set test_res int 4
execute if score res int matches 1 run say hit！