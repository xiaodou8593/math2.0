#math:geom/sector/_randnew
tag @e remove result
summon marker ~ ~ ~ {Tags:["geom","sector","result"]}
execute as @e[tag=result,limit=1,type=minecraft:marker] run function math:geom/sector/randnew_set