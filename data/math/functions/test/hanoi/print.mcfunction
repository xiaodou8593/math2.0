#hanoi/print
execute store result score temp0 int run data get entity @s Pos[1]
execute store result score temp1 int run data get entity @s Pos[2]
#获取第一个输出字符
execute if score temp0 int matches 0 run data modify storage math:io temp.char0 set from storage math:io input.chars[0]
execute if score temp0 int matches 1 run data modify storage math:io temp.char0 set from storage math:io input.chars[1]
execute if score temp0 int matches 2 run data modify storage math:io temp.char0 set from storage math:io input.chars[2]
#获取第二个输出字符
execute if score temp1 int matches 0 run data modify storage math:io temp.char1 set from storage math:io input.chars[0]
execute if score temp1 int matches 1 run data modify storage math:io temp.char1 set from storage math:io input.chars[1]
execute if score temp1 int matches 2 run data modify storage math:io temp.char1 set from storage math:io input.chars[2]
#输出
tellraw @a [{"nbt":"temp.char0","storage":"math:io"},{"text":"->"},{"nbt":"temp.char1","storage":"math:io"}]