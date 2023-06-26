#math:set/_tagsof
#输入math_marker为执行者，Tags置为待判集合字符串
data modify entity @s Tags set from storage math:io string_set

#获得前后长度
execute store result score stemp0 int if data storage math:io string_set[]
setblock 0 11 0 air
setblock 0 11 0 oak_sign{Text1:'{"nbt":"input","storage":"math:io"}'}
data modify entity @s Tags append from block 0 11 0 Text1
execute store result score stemp1 int if data entity @s Tags[]

#比较长度获得输出
execute store result score res int if score stemp0 int = stemp1 int

#tag复原
data modify entity @s Tags set value ["math_marker"]