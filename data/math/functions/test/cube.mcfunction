#math:test/cube
#生成均匀点阵
data modify storage math:io list set value []
scoreboard players set loop int 4069
function math:test/cube_loop
#随机打乱
function math:list/_shuffle