#math:test/run
summon item_display 0 11 0 {item:{id:"minecraft:dragon_head",Count:1b},Tags:["stmp","test"]}
tp @e[tag=stmp,limit=1] ^ ^ ^2.5 ~ ~
scoreboard players set @e[tag=stmp,limit=1] killtime 5
tag @e remove stmp