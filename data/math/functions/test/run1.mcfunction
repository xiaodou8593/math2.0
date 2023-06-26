#math:test/run1
kill @e[tag=test]
summon area_effect_cloud 0 15 -0.5 {Duration:2147483647,Tags:["upd_aec","test","test0"],Passengers:[{id:"minecraft:item_display",Tags:["test"],item:{id:"minecraft:yellow_wool",Count:1b}}]}
summon item_display 0 15.375 1.5 {Tags:["test","test0","upd_aec"],item:{id:"minecraft:green_wool",Count:1b}}
schedule function math:test/run0 5s replace