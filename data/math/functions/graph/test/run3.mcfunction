#math:graph/test/run3
execute as @e[tag=test,limit=1] run function math:graph/_get
data modify storage math:io input set from storage math:io test.phyx
function math:graph/display/_phyx
function math:graph/_display