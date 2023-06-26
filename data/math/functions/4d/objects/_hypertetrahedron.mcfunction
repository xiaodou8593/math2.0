data modify storage math:io temp set value []
data modify storage math:io temp append value [0.0,0.0,0.0,4.000000]
data modify storage math:io temp append value [0.0,0.0,3.872983,-1.000000]
data modify storage math:io temp append value [0.0,3.651484,-1.290994,-1.000000]
data modify storage math:io temp append value [3.162278,-1.825742,-1.290994,-1.000000]
data modify storage math:io temp append value [-3.162278,-1.825742,-1.290994,-1.000000]

data modify storage math:io stemp set value []

scoreboard players set inp int 100
data modify storage math:io input.start set value [0.0d,0.0d,0.0d,0.0d]

data modify storage math:io input.end set from storage math:io temp[0]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.end set from storage math:io temp[1]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.end set from storage math:io temp[2]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.end set from storage math:io temp[3]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.end set from storage math:io temp[4]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.start set from storage math:io temp[0]
data modify storage math:io input.end set from storage math:io temp[1]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result
data modify storage math:io input.end set from storage math:io temp[2]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.start set from storage math:io temp[1]
data modify storage math:io input.end set from storage math:io temp[2]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result
data modify storage math:io input.end set from storage math:io temp[3]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.start set from storage math:io temp[2]
data modify storage math:io input.end set from storage math:io temp[3]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result
data modify storage math:io input.end set from storage math:io temp[4]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.start set from storage math:io temp[3]
data modify storage math:io input.end set from storage math:io temp[4]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result
data modify storage math:io input.end set from storage math:io temp[0]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io input.start set from storage math:io temp[4]
data modify storage math:io input.end set from storage math:io temp[0]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result
data modify storage math:io input.end set from storage math:io temp[1]
function math:4d/objects/line
data modify storage math:io stemp append from storage math:io result

data modify storage math:io 4d.points set value []

scoreboard players operation loop int = inp int
execute if score loop int matches 1.. run function math:4d/objects/hypertetrahedron_loop