#math:test/run2
execute facing entity @p eyes positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^0.25
data modify entity @s Motion set from entity @e[tag=math_marker,limit=1] Pos