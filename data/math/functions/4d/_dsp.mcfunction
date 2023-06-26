#执行环境
execute facing entity @p eyes positioned ^ ^-2.0 ^ run tp @s ~ ~ ~ ~ ~
data modify storage dcmd:io run_space.rot set from entity @s Rotation
data modify storage dcmd:io run_space.pos set from entity @s Pos
function dcmd:_reset

#初始化
data modify storage dcmd:io input.strings set value ["kill @e[tag=4d_display]"]
data modify storage dcmd:io input.strings append value "data modify entity @e[tag=math_marker,limit=1] Pos set from storage dcmd:io run_space.pos"
data modify storage dcmd:io input.strings append value "data modify entity @e[tag=math_marker,limit=1] Rotation set from storage dcmd:io run_space.rot"
function dcmd:_static

#中心
data modify storage dcmd:io input.strings set value ['[{"text":"execute at @e[tag=math_marker,limit=1] run summon minecraft:marker ^ ^2.6 ^ {Tags:[4d_display,center],Rotation:"},{"nbt":"run_space.rot","storage":"dcmd:io"},{"text":"}"}]']
function dcmd:_exec

#背景板
data modify storage dcmd:io input.return set value "execute as @e[tag=textboard,limit=1] run function math:4d/textboard"
data modify storage dcmd:io input.strings set value ['[{"text":"execute at @e[tag=math_marker,limit=1] run summon minecraft:text_display ~ ~ ~ {Tags:[4d_display,textboard],Rotation:"},{"nbt":"run_space.rot","storage":"dcmd:io"},{"text":"}"}]']
function dcmd:_exec

#横坐标轴
data modify storage dcmd:io input.return set value "execute as @e[tag=arrow0,limit=1] run function math:4d/arrow0"
data modify storage dcmd:io input.strings set value ['[{"text":"execute at @e[tag=math_marker,limit=1] run summon minecraft:text_display ^-0.5 ^-0.4 ^0.1 {Tags:[4d_display,arrow0],Rotation:"},{"nbt":"run_space.rot","storage":"dcmd:io"},{"text":"}"}]']
function dcmd:_exec

#纵坐标轴
data modify storage dcmd:io input.return set value "execute as @e[tag=arrow1,limit=1] run function math:4d/arrow1"
data modify storage dcmd:io input.strings set value ['[{"text":"execute at @e[tag=math_marker,limit=1] run summon minecraft:text_display ^-1.5 ^2.2 ^0.1 {Tags:[4d_display,arrow1],Rotation:"},{"nbt":"run_space.rot","storage":"dcmd:io"},{"text":"}"}]']
function dcmd:_exec

#横坐标标签
data modify storage dcmd:io input.return set value "execute as @e[tag=text0,limit=1] run function math:4d/text0"
data modify storage dcmd:io input.strings set value ['[{"text":"execute at @e[tag=math_marker,limit=1] run summon minecraft:text_display ^2.1 ^0.0 ^0.1 {Tags:[4d_display,text0],Rotation:"},{"nbt":"run_space.rot","storage":"dcmd:io"},{"text":"}"}]']
function dcmd:_exec

#纵坐标标签
data modify storage dcmd:io input.return set value "execute as @e[tag=text1,limit=1] run function math:4d/text1"
data modify storage dcmd:io input.strings set value ['[{"text":"execute at @e[tag=math_marker,limit=1] run summon minecraft:text_display ^-2.35 ^4.1 ^0.1 {Tags:[4d_display,text1],Rotation:"},{"nbt":"run_space.rot","storage":"dcmd:io"},{"text":"}"}]']
function dcmd:_exec

#指针
data modify storage dcmd:io input.return set value "execute as @e[tag=arrow,limit=1] run function math:4d/arrow"
data modify storage dcmd:io input.strings set value ['[{"text":"execute at @e[tag=math_marker,limit=1] run summon minecraft:item_display ^ ^2.5 ^0.1 {Tags:[4d_display,arrow],Rotation:"},{"nbt":"run_space.rot","storage":"dcmd:io"},{"text":"}"}]']
function dcmd:_exec

function dcmd:_new