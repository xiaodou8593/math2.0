#math:4d/buttons/upd

data modify storage math:io temp_rot set value {axis:[0.0f,0.0f,1.0f],angle:0.0f}
execute store result score stemp int run data get storage math:io 4d.charts[0].angle 10000
execute store result storage math:io temp_rot.angle float 0.0001 run scoreboard players remove stemp int 23562
data modify entity @e[tag=arrow,limit=1] transformation.left_rotation set from storage math:io temp_rot

setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"nbt":"4d.charts[0].char0","storage":"math:io","interpret":true}'}
data modify entity @e[tag=text0,limit=1] text set from block 0 11 0 Text1
data modify block 0 11 0 Text1 set value '{"nbt":"4d.charts[0].char1","storage":"math:io","interpret":true}'
data modify entity @e[tag=text1,limit=1] text set from block 0 11 0 Text1

scoreboard players set temp int 0