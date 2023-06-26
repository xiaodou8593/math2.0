#math:set/_tagsdiff
#输入math_marker为执行者
data modify entity @s Tags set value []
#结果置空
data modify storage math:io result set value []
#临时告示牌
setblock 0 11 0 air
setblock 0 11 0 oak_sign

#减集合字符串
execute store result score stemp_l int if data storage math:io string_input[]
data modify entity @s Tags set from storage math:io string_input

#遍历被减集合每一项
data modify storage math:io stemp set from storage math:io set
execute store result score sloop int if data storage math:io stemp[]
execute if score sloop int matches 1.. run function math:set/tagsdiff_loop

#tag复原
data modify entity @s Tags set value ["math_marker"]