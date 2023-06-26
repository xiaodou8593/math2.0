#math:test/entity_loop
summon marker 0 11 0 {Tags:["cnt_entity"]}
#递归迭代
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function math:test/entity_loop