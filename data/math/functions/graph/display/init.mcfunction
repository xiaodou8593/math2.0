#math:graph/display/init
summon area_effect_cloud 0 11 0 {Tags:["stmp","upd_aec","graph_node","graph_entity"],Duration:2147483647,Passengers:[{Tags:["graph_entity"],id:"minecraft:item_display",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.25f,0.25f,0.25f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}]}
data modify storage math:io list[0].display.uuid set from entity @e[tag=stmp,limit=1] UUID
tag @e remove stmp