function math:_posto
function math:cbox/vanilla/_load
function math:cbox/_get
scoreboard players operation sstemp int = h int
scoreboard players operation sstemp int /= 2 int
execute if entity @s[type=painting] run scoreboard players operation y int -= sstemp int
execute if entity @s[type=item_frame] run scoreboard players operation y int -= sstemp int
execute if entity @s[type=glow_item_frame] run scoreboard players operation y int -= sstemp int
execute as @e[tag=math_marker,limit=1] run function math:cbox/_dsp