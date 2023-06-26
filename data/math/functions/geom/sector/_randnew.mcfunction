#math:geom/sector/_randnew
tag @e remove result
summon marker ~ ~ ~ {Tags:["geom","sector","result"]}
execute as @e[tag=result,limit=1] run function math:geom/sector/randnew_set