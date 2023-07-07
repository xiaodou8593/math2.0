#math:cbox/_randnew
tag @e remove result
summon marker ~ ~ ~ {Tags:["result","cbox"]}
execute as @e[tag=result,limit=1,type=minecraft:marker] run function math:cbox/randnew_set