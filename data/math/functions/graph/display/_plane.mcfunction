#math:graph/display/_plane
#输入<inp,int>，将临时对象转换为平面排布
execute store result score loop int if data storage math:io list[]
execute if score loop int matches 1.. run function math:graph/display/plane_loop