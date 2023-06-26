#math:test/cbox
execute as @e[tag=test,tag=cbox,limit=1] run function math:cbox/_get
scoreboard players operation particle int = test_res int
scoreboard players set 3vec_n int 50
execute as @e[tag=math_marker,limit=1] run function math:cbox/_dsp

execute as @e[tag=test,tag=sector,limit=1] run function math:geom/sector/_get
scoreboard players operation particle int = test int
scoreboard players set arc_n int 50
execute as @e[tag=math_marker,limit=1] run function math:geom/sector/_dsp