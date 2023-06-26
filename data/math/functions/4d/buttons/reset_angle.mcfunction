execute store result storage math:io 4d.charts[{id:"w-xyz"}].angle float 0.0001 run data get storage math:io 4d.angles[0] 174.5329
execute store result storage math:io 4d.charts[{id:"z-xy"}].angle float 0.0001 run data get storage math:io 4d.angles[1] 174.5329
execute store result storage math:io 4d.charts[{id:"y-x"}].angle float 0.0001 run data get storage math:io 4d.angles[2] 174.5329

data remove storage math:io 4d.angles

function math:4d/buttons/upd