#math:graph/display/set_psg
#文字显示
data modify entity @s CustomName set from storage math:io list[0].name
execute store result entity @s CustomNameVisible byte 1 if data storage math:io list[0].display{hide_name:0b}
#物品显示
data modify entity @s item set from storage math:io list[0].display.item