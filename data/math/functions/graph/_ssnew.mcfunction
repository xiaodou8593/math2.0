#math:graph/_ssnew
#需要传入世界实体为执行者
#把图的数据模板实例化为临时对象
data modify storage math:io list set from storage math:io input.nodes
scoreboard players set list_phi int 0

#局部坐标系临时化
execute store result score uvw_theta int run data get storage math:io input.uvw_theta 10000
data modify entity @s Pos set from storage math:io input.pos
data modify entity @s Rotation set from storage math:io input.rot
execute at @s run function math:uvw/_base