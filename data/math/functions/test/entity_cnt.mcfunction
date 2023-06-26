#math:test/entity_50
kill @e[tag=cnt_entity]
execute store result score temp int if entity @e
scoreboard players operation loop int = entity_cnt int
scoreboard players operation loop int -= temp int
execute if score loop int matches 1.. run function math:test/entity_loop