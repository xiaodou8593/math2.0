#math:graph/test/run2

kill @e[tag=test]
function math:graph/display/_off

summon marker 0 11 0 {Tags:["test"]}
data modify storage math:io input set from storage math:io test
function math:graph/_ssnew
scoreboard players set inp int 5
function math:graph/display/_plane
execute as @e[tag=test,limit=1] run function math:graph/_store

data modify storage math:io test.phyx set value {center:[2.0d,2.0d],center_force:0.15d,collision_r2:0.5d,link_force:0.025d,push_force:0.015d}

scoreboard players set test_step int 1
execute as @e[tag=test,limit=1] run function math:graph/_get
data modify storage math:io input set from storage math:io test.phyx
function math:graph/display/_phyx
function math:graph/_display
execute as @e[tag=test,limit=1] run function math:graph/_store