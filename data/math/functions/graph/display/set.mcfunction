#math:graph/display/set
#显示实体
execute on passengers run function math:graph/display/set_psg
#位置同步
execute store result score u int run data get storage math:io list[0].display.uvw[0] 10000
execute store result score v int run data get storage math:io list[0].display.uvw[1] 10000
execute store result score w int run data get storage math:io list[0].display.uvw[2] 10000
function math:uvw/_topos