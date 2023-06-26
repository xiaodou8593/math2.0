#math:test/origin
data modify entity @s Thrower set from entity @s UUID
execute on origin run say 1

#这是一个区块没加载的地方
tp @s 859345 0 859345
execute if entity @s run say 2
execute at @s if entity @e[tag=uuid_marker,limit=1,distance=..1] run say 3
execute on origin run say 4

tp @s 0 11 0
execute on origin run say 5