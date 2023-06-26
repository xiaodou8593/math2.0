#math:test/new
#实例化一对旋转实体
tag @e remove result
summon marker 0 11 0 {Tags:["result","center_entity"]}
summon marker 0 11 0 {Tags:["result","rotate_entity"]}
#设置旋转轴方向
tp @e[tag=result,tag=center_entity] ~ ~ ~ ~ ~
#设置半径5格
scoreboard players set @e[tag=result,tag=rotate_entity,limit=1] r 50000
#设置实体指针
execute as @e[tag=result,tag=center_entity,limit=1] store result score @s id run scoreboard players add #id id 1
scoreboard players operation @e[tag=result,tag=rotate_entity,limit=1] int = @e[tag=result,tag=center_entity,limit=1] id