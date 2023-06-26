setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"nbt":"4d.charts[0].char0","storage":"math:io","interpret":true}'}

data modify entity @s background set value 0
data modify entity @s text set from block 0 11 0 Text1
data modify entity @s transformation.scale set value [3.5f,3.5f,0.1f]
data modify entity @s alignment set value "left"
data modify entity @s brightness set value {sky:15,block:15}