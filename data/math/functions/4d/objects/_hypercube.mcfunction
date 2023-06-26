data modify storage math:io 4d.points set value []

data modify storage math:io temp set value [[],[],[],[]]

data modify storage math:io temp[0] append value [0.0f,3.0f,3.0f,3.0f]
data modify storage math:io temp[0] append value [0.0f,3.0f,3.0f,-3.0f]
data modify storage math:io temp[0] append value [0.0f,3.0f,-3.0f,3.0f]
data modify storage math:io temp[0] append value [0.0f,3.0f,-3.0f,-3.0f]
data modify storage math:io temp[0] append value [0.0f,-3.0f,3.0f,3.0f]
data modify storage math:io temp[0] append value [0.0f,-3.0f,3.0f,-3.0f]
data modify storage math:io temp[0] append value [0.0f,-3.0f,-3.0f,3.0f]
data modify storage math:io temp[0] append value [0.0f,-3.0f,-3.0f,-3.0f]

data modify storage math:io temp[1] append value [3.0f,0.0f,3.0f,3.0f]
data modify storage math:io temp[1] append value [3.0f,0.0f,3.0f,-3.0f]
data modify storage math:io temp[1] append value [3.0f,0.0f,-3.0f,3.0f]
data modify storage math:io temp[1] append value [3.0f,0.0f,-3.0f,-3.0f]
data modify storage math:io temp[1] append value [-3.0f,0.0f,3.0f,3.0f]
data modify storage math:io temp[1] append value [-3.0f,0.0f,3.0f,-3.0f]
data modify storage math:io temp[1] append value [-3.0f,0.0f,-3.0f,3.0f]
data modify storage math:io temp[1] append value [-3.0f,0.0f,-3.0f,-3.0f]

data modify storage math:io temp[2] append value [3.0f,3.0f,0.0f,3.0f]
data modify storage math:io temp[2] append value [3.0f,3.0f,0.0f,-3.0f]
data modify storage math:io temp[2] append value [3.0f,-3.0f,0.0f,3.0f]
data modify storage math:io temp[2] append value [3.0f,-3.0f,0.0f,-3.0f]
data modify storage math:io temp[2] append value [-3.0f,3.0f,0.0f,3.0f]
data modify storage math:io temp[2] append value [-3.0f,3.0f,0.0f,-3.0f]
data modify storage math:io temp[2] append value [-3.0f,-3.0f,0.0f,3.0f]
data modify storage math:io temp[2] append value [-3.0f,-3.0f,0.0f,-3.0f]

data modify storage math:io temp[3] append value [3.0f,3.0f,3.0f,0.0f]
data modify storage math:io temp[3] append value [3.0f,3.0f,-3.0f,0.0f]
data modify storage math:io temp[3] append value [3.0f,-3.0f,3.0f,0.0f]
data modify storage math:io temp[3] append value [3.0f,-3.0f,-3.0f,0.0f]
data modify storage math:io temp[3] append value [-3.0f,3.0f,3.0f,0.0f]
data modify storage math:io temp[3] append value [-3.0f,3.0f,-3.0f,0.0f]
data modify storage math:io temp[3] append value [-3.0f,-3.0f,3.0f,0.0f]
data modify storage math:io temp[3] append value [-3.0f,-3.0f,-3.0f,0.0f]

execute store result storage math:io temp[0][][0] float 0.1 store result storage math:io temp[1][][1] float 0.1 store result storage math:io temp[2][][2] float 0.1 store result storage math:io temp[3][][3] float 0.1 run scoreboard players set loop int -30
execute if score loop int matches ..30 run function math:4d/objects/hypercube_loop